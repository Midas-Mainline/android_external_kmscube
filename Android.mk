#
#  Copyright (c) 2012 Rob Clark <rob@ti.com>
#
#  Permission is hereby granted, free of charge, to any person obtaining a
#  copy of this software and associated documentation files (the "Software"),
#  to deal in the Software without restriction, including without limitation
#  the rights to use, copy, modify, merge, publish, distribute, sublicense,
#  and/or sell copies of the Software, and to permit persons to whom the
#  Software is furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice (including the next
#  paragraph) shall be included in all copies or substantial portions of the
#  Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
#  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

COMMON_SRC_FILES := \
	common.c \
	cube-tex.c \
	cube-smooth.c \
	drm-atomic.c \
	drm-common.c \
	drm-legacy.c \
	dump.c \
	esTransform.c \
	frame-512x512-NV12.c \
	frame-512x512-RGBA.c

#	gst-decoder.c \
#	cube-video.c \
#	texturator.c \

LOCAL_SRC_FILES := \
	$(COMMON_SRC_FILES) \
	kmscube.c

LOCAL_SHARED_LIBRARIES := \
	libdrm \
	libgbm \
	libEGL \
	libGLESv2 \
	libpng

LOCAL_EXPORT_C_INCLUDE_DIRS := \
	$(LOCAL_PATH)

LOCAL_CLANG := false
LOCAL_MODULE := kmscube
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
