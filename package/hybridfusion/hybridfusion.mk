################################################################################
#
# Hybridfusion
#
################################################################################

HYBRIDFUSION_VERSION = master
#HYBRIDFUSION_SITE = $(call github,sh0,hybridfusion,$(HYBRIDFUSION_VERSION))
HYBRIDFUSION_SITE = $(TOPDIR)/../hybridfusion
HYBRIDFUSION_SITE_METHOD = local
HYBRIDFUSION_LICENSE = Apache-2.0
HYBRIDFUSION_LICENSE_FILES = LICENSE

HYBRIDFUSION_DEPENDENCIES = avahi eigen zstd systemd librealsense

HYBRIDFUSION_CONF_OPTS += \
	-DBUILD_CLIENT_FREENECT2=OFF \
	-DBUILD_CLIENT_REALSENSE2=ON \
	-DBUILD_SERVER=OFF

$(eval $(cmake-package))