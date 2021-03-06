PACKAGE_VERSION='1.1.16'
DEBIAN_REVISION_NUMBER=1
ICUB_SOURCES_VERSION="trunk"
# Always use a revision number >=1
SUPPORTED_DISTRO_LIST="trusty vivid wheezy jessie"
#if [ "$PLATFORM_KEY" == "wheezy" ]
#then
#	IPOPT="Ipopt-3.10.1"
#else 
	IPOPT="Ipopt-3.11.7"
#fi

APT_OPTIONS="-q --no-install-recommends -y --force-yes"
SVN_OPTIONS="-q --force --non-interactive"  # -q is quiet option, do not prints out each file downloaded, less verbose log file.

# Basic dependencies, yarp with version and libode will be added to the dependencies list in the build-icub-package if and when needed because ICUB_REQYARP_VERSION variable can change and depends on icub source.
# See build-iCub-package.sh file, for further details

#ICUB_DEPENDENCIES="libace-dev, libgsl0-dev, libc6, python (<= 3), libncurses5-dev, libgtkmm-2.4-dev, libglademm-2.4-dev, libqt4-dev, libqt4-opengl-dev, libcv-dev, libhighgui-dev, libcvaux-dev,  libsdl1.2-dev, subversion, git, gfortran, freeglut3-dev, cmake (>= 2.8.7), libxmu-dev, libode1 (>= 0.11.1), libode-dev"  #Debian control file wants commas (,) to separate name of packages
#BUILD_DEPENDENCIES="libace-dev libgsl0-dev cmake wget unzip subversion gfortran libncurses5-dev libgtkmm-2.4-dev libglademm-2.4-dev libqt4-dev libqt4-opengl-dev libcv-dev libhighgui-dev libcvaux-dev freeglut3-dev libsdl1.2-dev libxmu-dev "	# apt-get do not wants commas

ICUB_COMMON_CONFLICT="coinor-libipopt0, coinor-libipopt-dev"  

#if [ "$PLATFORM_KEY" != "squeeze" ] 
#then
#	ICUB_DEPENDENCIES="$ICUB_DEPENDENCIES, libopencv-dev"     	# Debian control file wants commas (,) to separate name of packages
#	BUILD_DEPENDENCIES="$BUILD_DEPENDENCIES libopencv-dev"	# apt-get DO NOT wants commas
#fi
#
#if [ "$PLATFORM_KEY" == "trusty" ] 
#then
#	ICUB_DEPENDENCIES="$ICUB_DEPENDENCIES, libblas-dev"     	# Debian control file wants commas (,) to separate name of packages
#	BUILD_DEPENDENCIES="$BUILD_DEPENDENCIES libblas-dev"	# apt-get DO NOT wants commas
#fi

ICUB_DEPS_COMMON="libace-dev libgsl0-dev libc6 python libncurses5-dev libcv-dev libhighgui-dev libcvaux-dev libsdl1.2-dev subversion git gfortran cmake libxmu-dev libode1 libode-dev wget unzip qtbase5-dev qtdeclarative5-dev qtmultimedia5-dev libqt5svg5 libopencv-dev freeglut3-dev libtinyxml-dev libgoocanvasmm-dev"
ICUB_DEPS_trusty="libblas-dev qtdeclarative5-qtquick2-plugin qtdeclarative5-window-plugin qtdeclarative5-qtmultimedia-plugin qtdeclarative5-controls-plugin qtdeclarative5-dialogs-plugin libgtkdataboxmm-dev"
ICUB_DEPS_vivid="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgtkdataboxmm-dev"
ICUB_DEPS_wheezy="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls"
ICUB_DEPS_jessie="qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtmultimedia qml-module-qtquick-dialogs qml-module-qtquick-controls libgtkdataboxmm-dev"
ICUB_DEPS_BACKPORTS_STRING_wheezy="deb http://backports.debian.org/debian-backports/ wheezy-backports main"
ICUB_DEPS_BACKPORTS_STRING_vivid=""
ICUB_DEPS_BACKPORTS_STRING_trusty=""
ICUB_DEPS_BACKPORTS_STRING_jessie=""

ICUB_REPO_URL="https://github.com/robotology/icub-main"
ICUB_PACKAGE_MAINTAINER="Matteo Brunettini <matteo.brunettini@iit.it>"
