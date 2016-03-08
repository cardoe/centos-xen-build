FROM centos:7
MAINTAINER Doug Goldstein <cardoe@cardoe.com>

# update repo and install Xen depends
RUN yum -y update; yum clean all;
RUN yum -y install gcc gcc-c++ ncurses-devel zlib-devel openssl-devel python-devel libuuid-devel pkgconfig gettext flex bison libaio-devel glib2-devel yajl-devel pixman-devel glibc-devel glibc-devel.i686 make binutils git wget acpica-tools python-markdown patch; yum clean all;

RUN mkdir /build
WORKDIR /build

