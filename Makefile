PROJECT_NAME := goloader
ifdef APP_DEBUG
CXXFLAGS += -DAPP_DEBUG
ifdef BT_DEBUG
CXXFLAGS += -DBT_DEBUG
endif
endif

CXXFLAGS+= -DAPP_TEXTSIZE2=1

include $(IDF_PATH)/make/project.mk
