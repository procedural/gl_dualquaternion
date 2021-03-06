# Makefile generated by XPJ for linux32
-include Makefile.custom
ProjectName = NvUI
NvUI_cppfiles   += ./../../src/NvUI/NvBitFont.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvEmbeddedAsset.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvTweakBar.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvTweakVar.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUI.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIButton.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIContainer.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIGraphic.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIGraphicFrame.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIPopup.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUISlider.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIText.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUITexture.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIValueBar.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIValueText.cpp
NvUI_cppfiles   += ./../../src/NvUI/NvUIWindow.cpp

NvUI_cpp_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.debug.P, $(NvUI_cppfiles)))))
NvUI_c_debug_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.debug.P, $(NvUI_cfiles)))))
NvUI_debug_dep      = $(NvUI_cpp_debug_dep) $(NvUI_c_debug_dep)
-include $(NvUI_debug_dep)
NvUI_cpp_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.release.P, $(NvUI_cppfiles)))))
NvUI_c_release_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.release.P, $(NvUI_cfiles)))))
NvUI_release_dep      = $(NvUI_cpp_release_dep) $(NvUI_c_release_dep)
-include $(NvUI_release_dep)
NvUI_debug_hpaths    := 
NvUI_debug_hpaths    += ./../../src/NvUI
NvUI_debug_hpaths    += ./../../include
NvUI_debug_hpaths    += ./../../externals/include
NvUI_debug_hpaths    += ./../../externals/include/GLFW
NvUI_debug_lpaths    := 
NvUI_debug_defines   := $(NvUI_custom_defines)
NvUI_debug_defines   += LINUX=1
NvUI_debug_defines   += _LIB
NvUI_debug_defines   += _DEBUG
NvUI_debug_libraries := 
NvUI_debug_libraries += pthread
NvUI_debug_libraries += glfw3
NvUI_debug_common_cflags	:= $(NvUI_custom_cflags)
NvUI_debug_common_cflags    += -MMD
NvUI_debug_common_cflags    += $(addprefix -D, $(NvUI_debug_defines))
NvUI_debug_common_cflags    += $(addprefix -I, $(NvUI_debug_hpaths))
NvUI_debug_common_cflags  += -m32
NvUI_debug_cflags	:= $(NvUI_debug_common_cflags)
NvUI_debug_cflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvUI_debug_cflags  += -g
NvUI_debug_cppflags	:= $(NvUI_debug_common_cflags)
NvUI_debug_cppflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvUI_debug_cppflags  += -g
NvUI_debug_lflags    := $(NvUI_custom_lflags)
NvUI_debug_lflags    += $(addprefix -L, $(NvUI_debug_lpaths))
NvUI_debug_lflags    += -Wl,--start-group $(addprefix -l, $(NvUI_debug_libraries)) -Wl,--end-group
NvUI_debug_lflags  += -m32
NvUI_debug_objsdir  = $(OBJS_DIR)/NvUI_debug
NvUI_debug_cpp_o    = $(addprefix $(NvUI_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvUI_cppfiles)))))
NvUI_debug_c_o      = $(addprefix $(NvUI_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(NvUI_cfiles)))))
NvUI_debug_obj      = $(NvUI_debug_cpp_o) $(NvUI_debug_c_o)
NvUI_debug_bin      := ./../../lib/linux32/libNvUID.a

clean_NvUI_debug: 
	@$(ECHO) clean NvUI debug
	@$(RMDIR) $(NvUI_debug_objsdir)
	@$(RMDIR) $(NvUI_debug_bin)

build_NvUI_debug: postbuild_NvUI_debug
postbuild_NvUI_debug: mainbuild_NvUI_debug
mainbuild_NvUI_debug: prebuild_NvUI_debug $(NvUI_debug_bin)
prebuild_NvUI_debug:

$(NvUI_debug_bin): $(NvUI_debug_obj) 
	@mkdir -p `dirname ./../../lib/linux32/libNvUID.a`
	@$(AR) rcs $(NvUI_debug_bin) $(NvUI_debug_obj)
	@$(ECHO) building $@ complete!

NvUI_debug_DEPDIR = $(dir $(@))/$(*F)
$(NvUI_debug_cpp_o): $(NvUI_debug_objsdir)/%.o:
	@$(ECHO) NvUI: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cppfiles))...
	@mkdir -p $(dir $(@))
	@$(CXX) $(NvUI_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cppfiles))))))
	@cp $(NvUI_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cppfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvUI_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cppfiles))))).debug.P; \
	  rm -f $(NvUI_debug_DEPDIR).d

$(NvUI_debug_c_o): $(NvUI_debug_objsdir)/%.o:
	@$(ECHO) NvUI: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cfiles))...
	@mkdir -p $(dir $(@))
	@$(CC) $(NvUI_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cfiles))))))
	@cp $(NvUI_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvUI_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_debug_objsdir),, $@))), $(NvUI_cfiles))))).debug.P; \
	  rm -f $(NvUI_debug_DEPDIR).d

NvUI_release_hpaths    := 
NvUI_release_hpaths    += ./../../src/NvUI
NvUI_release_hpaths    += ./../../include
NvUI_release_hpaths    += ./../../externals/include
NvUI_release_hpaths    += ./../../externals/include/GLFW
NvUI_release_lpaths    := 
NvUI_release_defines   := $(NvUI_custom_defines)
NvUI_release_defines   += LINUX=1
NvUI_release_defines   += _LIB
NvUI_release_defines   += NDEBUG
NvUI_release_libraries := 
NvUI_release_libraries += pthread
NvUI_release_libraries += glfw3
NvUI_release_common_cflags	:= $(NvUI_custom_cflags)
NvUI_release_common_cflags    += -MMD
NvUI_release_common_cflags    += $(addprefix -D, $(NvUI_release_defines))
NvUI_release_common_cflags    += $(addprefix -I, $(NvUI_release_hpaths))
NvUI_release_common_cflags  += -m32
NvUI_release_cflags	:= $(NvUI_release_common_cflags)
NvUI_release_cflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvUI_release_cflags  += -O2
NvUI_release_cppflags	:= $(NvUI_release_common_cflags)
NvUI_release_cppflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvUI_release_cppflags  += -O2
NvUI_release_lflags    := $(NvUI_custom_lflags)
NvUI_release_lflags    += $(addprefix -L, $(NvUI_release_lpaths))
NvUI_release_lflags    += -Wl,--start-group $(addprefix -l, $(NvUI_release_libraries)) -Wl,--end-group
NvUI_release_lflags  += -m32
NvUI_release_objsdir  = $(OBJS_DIR)/NvUI_release
NvUI_release_cpp_o    = $(addprefix $(NvUI_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvUI_cppfiles)))))
NvUI_release_c_o      = $(addprefix $(NvUI_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(NvUI_cfiles)))))
NvUI_release_obj      = $(NvUI_release_cpp_o) $(NvUI_release_c_o)
NvUI_release_bin      := ./../../lib/linux32/libNvUI.a

clean_NvUI_release: 
	@$(ECHO) clean NvUI release
	@$(RMDIR) $(NvUI_release_objsdir)
	@$(RMDIR) $(NvUI_release_bin)

build_NvUI_release: postbuild_NvUI_release
postbuild_NvUI_release: mainbuild_NvUI_release
mainbuild_NvUI_release: prebuild_NvUI_release $(NvUI_release_bin)
prebuild_NvUI_release:

$(NvUI_release_bin): $(NvUI_release_obj) 
	@mkdir -p `dirname ./../../lib/linux32/libNvUI.a`
	@$(AR) rcs $(NvUI_release_bin) $(NvUI_release_obj)
	@$(ECHO) building $@ complete!

NvUI_release_DEPDIR = $(dir $(@))/$(*F)
$(NvUI_release_cpp_o): $(NvUI_release_objsdir)/%.o:
	@$(ECHO) NvUI: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cppfiles))...
	@mkdir -p $(dir $(@))
	@$(CXX) $(NvUI_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cppfiles))))))
	@cp $(NvUI_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cppfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvUI_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cppfiles))))).release.P; \
	  rm -f $(NvUI_release_DEPDIR).d

$(NvUI_release_c_o): $(NvUI_release_objsdir)/%.o:
	@$(ECHO) NvUI: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cfiles))...
	@mkdir -p $(dir $(@))
	@$(CC) $(NvUI_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cfiles))))))
	@cp $(NvUI_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvUI_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvUI_release_objsdir),, $@))), $(NvUI_cfiles))))).release.P; \
	  rm -f $(NvUI_release_DEPDIR).d

clean_NvUI:  clean_NvUI_debug clean_NvUI_release
	@rm -rf $(DEPSDIR)
