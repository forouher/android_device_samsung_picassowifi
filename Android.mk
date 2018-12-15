ifneq ($(filter n2awifi,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
