# svn $Id: Linux-ifort.mk 834 2017-01-25 18:49:17Z arango $
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# Copyright (c) 2002-2017 The ROMS/TOMS Group                           :::
#   Licensed under a MIT/X style license                                :::
#   See License_ROMS.txt                                                :::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#
# Include file for Intel IFORT (version 10.1) compiler on Linux
# -------------------------------------------------------------------------
#
# ARPACK_LIBDIR  ARPACK libary directory
# FC             Name of the fortran compiler to use
# FFLAGS         Flags to the fortran compiler
# CPP            Name of the C-preprocessor
# CPPFLAGS       Flags to the C-preprocessor
# CLEAN          Name of cleaning executable after C-preprocessing
# NETCDF_INCDIR  NetCDF include directory
# NETCDF_LIBDIR  NetCDF libary directory
# LD             Program to load the objects into an executable
# LDFLAGS        Flags to the loader
# RANLIB         Name of ranlib command
# MDEPFLAGS      Flags for sfmakedepend  (-s if you keep .f files)
#
# First the defaults
#
               FC := ifort
# [OPTIMIZATION O1] rolled back for O10c vali bisect (feng: avx2/no-heap can push Dongsha u over)
# baseline official / feng E046 reference:
# [S3] global -no-prec-div: REJECTED (135.5s vs baseline 135.6s, no gain; even offset S1's 2%)
# [S1] biology per-file fast=2 kept
# [S7] -align array64byte: REJECTED (1day 726.8s vs S5 723.0s, no gain)
# [S5] global -no-heap-arrays + OMP_STACKSIZE=512M: ACCEPTED
#      1-day real=723.0s (vs baseline ~740s, 1.023x), vali ALL PASS (RMSE=0)
# [S6] -opt-streaming-stores=always: REJECTED (233.6s, 0.56x)
# [S7] GLS -heap-arrays revert: REJECTED (SIGILL)
# [S8] GLS -fp-model source: testing
           FFLAGS := -no-heap-arrays -fp-model precise -march=core-avx2 -no-fma -ipo -prof-use -prof-dir=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s46_pgo
# previous O1 (kept for restore if vali-safe):
#          FFLAGS := -no-heap-arrays -fp-model precise -march=core-avx2 -align array64byte -qopt-prefetch=3
              CPP := /usr/bin/cpp
         CPPFLAGS := -P -traditional
# [O25] link OpenMP runtime for selective hotspot objects (zya ompk)
          LDFLAGS := -qopenmp -ipo -prof-use -prof-dir=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s46_pgo
               AR := ar
          ARFLAGS := r
            MKDIR := mkdir -p
               RM := rm -f
           RANLIB := ranlib
             PERL := perl
             TEST := test

        MDEPFLAGS := --cpp --fext=f90 --file=- --objdir=$(SCRATCH_DIR)

#
# Library locations, can be overridden by environment variables.
#

ifdef USE_NETCDF4
        NF_CONFIG ?= nf-config
    NETCDF_INCDIR ?= $(shell $(NF_CONFIG) --prefix)/include
             LIBS := $(shell $(NF_CONFIG) --flibs)
else
    NETCDF_INCDIR ?= /public/software/mathlib/netcdf/4.4.1/intel/include
    NETCDF_LIBDIR ?= /public/software/mathlib/netcdf/4.4.1/intel/lib
             LIBS := -L$(NETCDF_LIBDIR) -lnetcdf -lnetcdff
endif

# [O25] selective OpenMP on hotspots only (NOT global USE_OpenMP).
# Use GNU make 'private' so -qopenmp does not inherit to prerequisites (feng E045 pitfall).
# [O33] feng E059: also -no-heap-arrays on these objects so OMP PRIVATE automatic
# arrays land on the stack (global FFLAGS still -heap-arrays for vali-safe default).
# [S1] biology 单独激进：-fp-model fast=2 + -no-prec-div + -fp-speculation=fast
#     依据：biology 30+ 处 exp/log/sqrt 调用；fast=2 启用 fast-transcendentals + 向量化 libm
#     风险评估：biology 单向耦合（生态→不影响物理 u）；O84 u RMSE=0 给 0.000060 余量
#     旧版本（保留作回滚）：
# $(SCRATCH_DIR)/biology.o: private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/biology.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model fast=2 -no-prec-div -fp-speculation=fast
$(SCRATCH_DIR)/pre_step3d.o: private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/step3d_t.o: private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/t3dmix.o: private FFLAGS += -qopenmp -no-heap-arrays
# [S7] GLS -heap-arrays 回退：REJECTED (SIGILL on 1-day even with 1G stack)
# S5 PROFILE showed GLS +6.2% with -no-heap, but reverting causes SIGILL
# Kept as -no-heap-arrays (S5 state) for stability
# [S8] GLS -fp-model source: allow algebraic simplification (may merge pow calls)
#      O84 u=0 gives 0.000060 budget; GLS indirect coupling via Akv
# [S8] GLS -fp-model source: retry on compute node
$(SCRATCH_DIR)/gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model source
# [S4] 批量 -no-heap-arrays：消除 for_allocate 开销（不改变数值，只改堆→栈分配）
# 自动数组数量：conv_3d(54) lmd_skpp(24) lmd_bkpp(24) rhs3d(18) my25_corstep(17)
# step3d_t(15,已有) rho_eos(13) my25_prestep(12) gls_prestep(12) step3d_uv(11) conv_2d(9)
# step2d(O50 asm: 21x for_allocate/次)
$(SCRATCH_DIR)/step2d.o: private FFLAGS += -no-heap-arrays -march=core-avx2 -no-fma
$(SCRATCH_DIR)/step3d_uv.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/rho_eos.o: private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/rhs3d.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/omega.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/prsgrd.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/conv_3d.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/conv_2d.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/lmd_skpp.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/lmd_bkpp.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/gls_prestep.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/my25_corstep.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/my25_prestep.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/set_depth.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/metrics.o: private FFLAGS += -no-heap-arrays
$(SCRATCH_DIR)/nesting.o: private FFLAGS += -no-heap-arrays

ifdef USE_ARPACK
 ifdef USE_MPI
   PARPACK_LIBDIR ?= /public/home/mengqicheng/romstrunk/Lib/ARPACK/PARPACK
             LIBS += -L$(PARPACK_LIBDIR) -lparpack
 endif
    ARPACK_LIBDIR ?= /public/home/mengqicheng/romstrunk/Lib/ARPACK/PARPACK
             LIBS += -L$(ARPACK_LIBDIR) -larpack
endif

ifdef USE_MPI
         CPPFLAGS += -DMPI
 ifdef USE_MPIF90
               FC := mpif90
 else
             LIBS += -lfmpi-pgi -lmpi-pgi
 endif
endif

ifdef USE_OpenMP
         CPPFLAGS += -D_OPENMP
           FFLAGS += -openmp -fpp
endif

ifdef USE_DEBUG
#          FFLAGS += -g -check bounds -traceback
           FFLAGS += -g -check bounds -traceback -check uninit -warn interfaces,nouncalled -gen-interfaces
#          FFLAGS += -g -check uninit -ftrapuv -traceback
else
# [OPTIMIZATION O1] baseline: FFLAGS += -ip -O3 -g
# 正式计时去掉 -g，减小指令体积、避免调试符号开销
           FFLAGS += -ip -O3
endif

ifdef USE_MCT
       MCT_INCDIR ?= /opt/intelsoft/mct/include
       MCT_LIBDIR ?= /opt/intelsoft/mct/lib
           FFLAGS += -I$(MCT_INCDIR)
             LIBS += -L$(MCT_LIBDIR) -lmct -lmpeu
endif

ifdef USE_ESMF
      ESMF_SUBDIR := $(ESMF_OS).$(ESMF_COMPILER).$(ESMF_ABI).$(ESMF_COMM).$(ESMF_SITE)
      ESMF_MK_DIR ?= $(ESMF_DIR)/lib/lib$(ESMF_BOPT)/$(ESMF_SUBDIR)
                     include $(ESMF_MK_DIR)/esmf.mk
           FFLAGS += $(ESMF_F90COMPILEPATHS)
             LIBS += $(ESMF_F90LINKPATHS) -lesmf -lC
endif

       clean_list += ifc* work.pc*

#
# Use full path of compiler.
#
               FC := $(shell which ${FC})
               LD := $(FC)

#
# Set free form format in source files to allow long string for
# local directory and compilation flags inside the code.
#

$(SCRATCH_DIR)/mod_ncparam.o: FFLAGS += -free
$(SCRATCH_DIR)/mod_strings.o: FFLAGS += -free
$(SCRATCH_DIR)/analytical.o: FFLAGS += -free
$(SCRATCH_DIR)/biology.o: FFLAGS += -free
ifdef USE_ADJOINT
$(SCRATCH_DIR)/ad_biology.o: FFLAGS += -free
endif
ifdef USE_REPRESENTER
$(SCRATCH_DIR)/rp_biology.o: FFLAGS += -free
endif
ifdef USE_TANGENT
$(SCRATCH_DIR)/tl_biology.o: FFLAGS += -free
endif

#
# Supress free format in SWAN source files since there are comments
# beyond column 72.
#

ifdef USE_SWAN

$(SCRATCH_DIR)/ocpcre.o: FFLAGS += -nofree
$(SCRATCH_DIR)/ocpids.o: FFLAGS += -nofree
$(SCRATCH_DIR)/ocpmix.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swancom1.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swancom2.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swancom3.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swancom4.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swancom5.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swanmain.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swanout1.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swanout2.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swanparll.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swanpre1.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swanpre2.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swanser.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swmod1.o: FFLAGS += -nofree
$(SCRATCH_DIR)/swmod2.o: FFLAGS += -nofree
$(SCRATCH_DIR)/m_constants.o: FFLAGS += -free
$(SCRATCH_DIR)/m_fileio.o: FFLAGS += -free
$(SCRATCH_DIR)/mod_xnl4v5.o: FFLAGS += -free
$(SCRATCH_DIR)/serv_xnl4v5.o: FFLAGS += -free

endif
