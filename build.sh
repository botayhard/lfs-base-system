#!/bin/bash
set -e

mkdir -pv /sources/logs
export MAKEFLAGS='-j'

echo
echo "*********************************"
echo "* Creating file and directories *"
echo "*********************************"
echo

sh /scripts/setup.sh > /sources/logs/setup 2>&1
echo Done!

echo
echo "*********************"
echo "* Building programs *"
echo "*********************"
echo

# 6.7. Linux-5.2.8 API Headers
echo "Building: 6.7. Linux-5.2.8 API Headers"
sh /scripts/linux-headers-5.2.8.sh > /sources/logs/linux-headers-5.2.8 2>&1
# 6.8. Man-pages-5.02
echo "Building: 6.8. Man-pages-5.02"
sh /scripts/man-pages-5.02.sh > /sources/logs/man-pages-5.02 2>&1
# 6.9. Glibc-2.30
echo "Building: 6.9. Glibc-2.30"
sh /scripts/glibc-2.30.sh > /sources/logs/glibc-2.30 2>&1
# 6.10. Adjusting the Toolchain
echo "Building: 6.10. Adjusting the Toolchain"
sh /scripts/adjust-toolchain.sh > /sources/logs/adjust-toolchain 2>&1
# 6.11. Zlib-1.2.11
echo "Building: 6.11. Zlib-1.2.11"
sh /scripts/zlib-1.2.11.sh > /sources/logs/zlib-1.2.11 2>&1
# 6.12. File-5.37
echo "Building: 6.12. File-5.37"
sh /scripts/file-5.37.sh > /sources/logs/file-5.37 2>&1
# 6.13. Readline-8.0
echo "Building: 6.13. Readline-8.0"
sh /scripts/readline-8.0.sh > /sources/logs/readline-8.0 2>&1
# 6.14. M4-1.4.18
echo "Building: 6.14. M4-1.4.18"
sh /scripts/m4-1.4.18.sh > /sources/logs/m4-1.4.18 2>&1
# 6.15. Bc-2.1.3
echo "Building: 6.15. Bc-2.1.3"
sh /scripts/bc-2.1.3.sh > /sources/logs/bc-2.1.3 2>&1
# 6.16. Binutils-2.32
echo "Building: 6.16. Binutils-2.32"
sh /scripts/binutils-2.32.sh > /sources/logs/binutils-2.32 2>&1
# 6.17. GMP-6.1.2
echo "Building: 6.17. GMP-6.1.2"
sh /scripts/gmp-6.1.2.sh > /sources/logs/gmp-6.1.2 2>&1
# 6.18. MPFR-4.0.2
echo "Building: 6.18. MPFR-4.0.2"
sh /scripts/mpfr-4.0.2.sh > /sources/logs/mpfr-4.0.2 2>&1
# 6.19. MPC-1.1.0
echo "Building: 6.19. MPC-1.1.0"
sh /scripts/mpc-1.1.0.sh > /sources/logs/mpc-1.1.0 2>&1
# 6.20. Shadow-4.7
echo "Building: 6.20. Shadow-4.7"
sh /scripts/shadow-4.7.sh > /sources/logs/shadow-4.7 2>&1
# 6.21. GCC-9.2.0
echo "Building: 6.21. GCC-9.2.0"
sh /scripts/gcc-9.2.0.sh > /sources/logs/gcc-9.2.0 2>&1
# 6.22. Bzip2-1.0.8
echo "Building: 6.22. Bzip2-1.0.8"
sh /scripts/bzip2-1.0.8.sh > /sources/logs/bzip2-1.0.8 2>&1
# 6.23. Pkg-config-0.29.2
echo "Building: 6.23. Pkg-config-0.29.2"
sh /scripts/pkg-config-0.29.2.sh > /sources/logs/pkg-config-0.29.2 2>&1
# 6.24. Ncurses-6.1
echo "Building: 6.24. Ncurses-6.1"
sh /scripts/ncurses-6.1.sh > /sources/logs/ncurses-6.1 2>&1
# 6.25. Attr-2.4.48
echo "Building: 6.25. Attr-2.4.48"
sh /scripts/attr-2.4.48.sh > /sources/logs/attr-2.4.48 2>&1
# 6.26. Acl-2.2.53
echo "Building: 6.26. Acl-2.2.53"
sh /scripts/acl-2.2.53.sh > /sources/logs/acl-2.2.53 2>&1
# 6.27. Libcap-2.27
echo "Building: 6.27. Libcap-2.27"
sh /scripts/libcap-2.27.sh > /sources/logs/libcap-2.27 2>&1
# 6.28. Sed-4.7
echo "Building: 6.28. Sed-4.7"
sh /scripts/sed-4.7.sh > /sources/logs/sed-4.7 2>&1
# 6.29. Psmisc-23.2
echo "Building: 6.29. Psmisc-23.2"
sh /scripts/psmisc-23.2.sh > /sources/logs/psmisc-23.2 2>&1
# 6.30. Iana-Etc-2.30
echo "Building: 6.30. Iana-Etc-2.30"
sh /scripts/iana-etc-2.30.sh > /sources/logs/iana-etc-2.30 2>&1
# 6.31. Bison-3.4.1
echo "Building: 6.31. Bison-3.4.1"
sh /scripts/bison-3.4.1.sh > /sources/logs/bison-3.4.1 2>&1
# 6.32. Flex-2.6.4
echo "Building: 6.32. Flex-2.6.4"
sh /scripts/flex-2.6.4.sh > /sources/logs/flex-2.6.4 2>&1
# 6.33. Grep-3.3
echo "Building: 6.33. Grep-3.3"
sh /scripts/grep-3.3.sh > /sources/logs/grep-3.3 2>&1
# 6.34. Bash-5.0
echo "Building: 6.34. Bash-5.0"
sh /scripts/bash-5.0.sh > /sources/logs/bash-5.0 2>&1
# 6.35. Libtool-2.4.6
echo "Building: 6.35. Libtool-2.4.6"
sh /scripts/libtool-2.4.6.sh > /sources/logs/libtool-2.4.6 2>&1
# 6.36. GDBM-1.18.1
echo "Building: 6.36. GDBM-1.18.1"
sh /scripts/gdbm-1.18.1.sh > /sources/logs/gdbm-1.18.1 2>&1
# 6.37. Gperf-3.1
echo "Building: 6.37. Gperf-3.1"
sh /scripts/gperf-3.1.sh > /sources/logs/gperf-3.1 2>&1
# 6.38. Expat-2.2.7
echo "Building: 6.38. Expat-2.2.7"
sh /scripts/expat-2.2.7.sh > /sources/logs/expat-2.2.7 2>&1
# 6.39. Inetutils-1.9.4
echo "Building: 6.39. Inetutils-1.9.4"
sh /scripts/inetutils-1.9.4.sh > /sources/logs/inetutils-1.9.4 2>&1
# 6.40. Perl-5.30.0
echo "Building: 6.40. Perl-5.30.0"
sh /scripts/perl-5.30.0.sh > /sources/logs/perl-5.30.0 2>&1
# 6.41. XML::Parser-2.44
echo "Building: 6.41. XML::Parser-2.44"
sh /scripts/XML-Parser-2.44.sh > /sources/logs/XML-Parser-2.44 2>&1
# 6.42. Intltool-0.51.0
echo "Building: 6.42. Intltool-0.51.0"
sh /scripts/intltool-0.51.0.sh > /sources/logs/intltool-0.51.0 2>&1
# 6.43. Autoconf-2.69
echo "Building: 6.43. Autoconf-2.69"
sh /scripts/autoconf-2.69.sh > /sources/logs/autoconf-2.69 2>&1
# 6.44. Automake-1.16.1
echo "Building: 6.44. Automake-1.16.1"
sh /scripts/automake-1.16.1.sh > /sources/logs/automake-1.16.1 2>&1
# 6.45. Xz-5.2.4
echo "Building: 6.45. Xz-5.2.4"
sh /scripts/xz-5.2.4.sh > /sources/logs/xz-5.2.4 2>&1
# 6.46. Kmod-26
echo "Building: 6.46. Kmod-26"
sh /scripts/kmod-26.sh > /sources/logs/kmod-26 2>&1
# 6.47. Gettext-0.20.1
echo "Building: 6.47. Gettext-0.20.1"
sh /scripts/gettext-0.20.1.sh > /sources/logs/gettext-0.20.1 2>&1
# 6.48. Libelf 0.177
echo "Building: 6.48. Libelf 0.177"
sh /scripts/libelf-0.177.sh > /sources/logs/libelf-0.177 2>&1
# 6.49. Libffi-3.2.1
echo "Building: 6.49. Libffi-3.2.1"
sh /scripts/libffi-3.2.1.sh > /sources/logs/libffi-3.2.1 2>&1
# 6.50. OpenSSL-1.1.1c
echo "Building: 6.50. OpenSSL-1.1.1c"
sh /scripts/openssl-1.1.1c.sh > /sources/logs/openssl-1.1.1c 2>&1
# 6.51. Python-3.7.4
echo "Building: 6.51. Python-3.7.4"
sh /scripts/python-3.7.4.sh > /sources/logs/python-3.7.4 2>&1
# 6.52. Ninja-1.9.0
echo "Building: 6.52. Ninja-1.9.0"
sh /scripts/ninja-1.9.0.sh > /sources/logs/ninja-1.9.0 2>&1
# 6.53. Meson-0.51.1
echo "Building: 6.53. Meson-0.51.1"
sh /scripts/meson-0.51.1.sh > /sources/logs/meson-0.51.1 2>&1
# 6.54. Coreutils-8.31
echo "Building: 6.54. Coreutils-8.31"
sh /scripts/coreutils-8.31.sh > /sources/logs/coreutils-8.31 2>&1
# 6.55. Check-0.12.0
echo "Building: 6.55. Check-0.12.0"
sh /scripts/check-0.12.0.sh > /sources/logs/check-0.12.0 2>&1
# 6.56. Diffutils-3.7
echo "Building: 6.56. Diffutils-3.7"
sh /scripts/diffutils-3.7.sh > /sources/logs/diffutils-3.7 2>&1
# 6.57. Gawk-5.0.1
echo "Building: 6.57. Gawk-5.0.1"
sh /scripts/gawk-5.0.1.sh > /sources/logs/gawk-5.0.1 2>&1
# 6.58. Findutils-4.6.0
echo "Building: 6.58. Findutils-4.6.0"
sh /scripts/findutils-4.6.0.sh > /sources/logs/findutils-4.6.0 2>&1
# 6.59. Groff-1.22.4
echo "Building: 6.59. Groff-1.22.4"
sh /scripts/groff-1.22.4.sh > /sources/logs/groff-1.22.4 2>&1
# 6.60. GRUB-2.04
echo "Building: 6.60. GRUB-2.04"
sh /scripts/grub-2.04.sh > /sources/logs/grub-2.04 2>&1
# 6.61. Less-551
echo "Building: 6.61. Less-551"
sh /scripts/less-551.sh > /sources/logs/less-551 2>&1
# 6.62. Gzip-1.10
echo "Building: 6.62. Gzip-1.10"
sh /scripts/gzip-1.10.sh > /sources/logs/gzip-1.10 2>&1
# 6.63. IPRoute2-5.2.0
echo "Building: 6.63. IPRoute2-5.2.0"
sh /scripts/iproute2-5.2.0.sh > /sources/logs/iproute2-5.2.0 2>&1
# 6.64. Kbd-2.2.0
echo "Building: 6.64. Kbd-2.2.0"
sh /scripts/kbd-2.2.0.sh > /sources/logs/kbd-2.2.0 2>&1
# 6.65. Libpipeline-1.5.1
echo "Building: 6.65. Libpipeline-1.5.1"
sh /scripts/libpipeline-1.5.1.sh > /sources/logs/libpipeline-1.5.1 2>&1
# 6.66. Make-4.2.1
echo "Building: 6.66. Make-4.2.1"
sh /scripts/make-4.2.1.sh > /sources/logs/make-4.2.1 2>&1
# 6.67. Patch-2.7.6
echo "Building: 6.67. Patch-2.7.6"
sh /scripts/patch-2.7.6.sh > /sources/logs/patch-2.7.6 2>&1
# 6.68. Man-DB-2.8.6.1
echo "Building: 6.68. Man-DB-2.8.6.1"
sh /scripts/man-db-2.8.6.1.sh > /sources/logs/man-db-2.8.6.1 2>&1
# 6.69. Tar-1.32
echo "Building: 6.69. Tar-1.32"
sh /scripts/tar-1.32.sh > /sources/logs/tar-1.32 2>&1
# 6.70. Texinfo-6.6
echo "Building: 6.70. Texinfo-6.6"
sh /scripts/texinfo-6.6.sh > /sources/logs/texinfo-6.6 2>&1
# 6.71. Vim-8.1.1846
echo "Building: 6.71. Vim-8.1.1846"
sh /scripts/vim-8.1.1846.sh > /sources/logs/vim-8.1.1846 2>&1
# 6.72. Procps-ng-3.3.15
echo "Building: 6.72. Procps-ng-3.3.15"
sh /scripts/procps-ng-3.3.15.sh > /sources/logs/procps-ng-3.3.15 2>&1
# 6.73. Util-linux-2.34
echo "Building: 6.73. Util-linux-2.34"
sh /scripts/util-linux-2.34.sh > /sources/logs/util-linux-2.34 2>&1
# 6.74. E2fsprogs-1.45.3
echo "Building: 6.74. E2fsprogs-1.45.3"
sh /scripts/e2fsprogs-1.45.3.sh > /sources/logs/e2fsprogs-1.45.3 2>&1
# 6.75. Sysklogd-1.5.1
echo "Building: 6.75. Sysklogd-1.5.1"
sh /scripts/sysklogd-1.5.1.sh > /sources/logs/sysklogd-1.5.1 2>&1
# 6.76. Sysvinit-2.95
echo "Building: 6.76. Sysvinit-2.95"
sh /scripts/sysvinit-2.95.sh > /sources/logs/sysvinit-2.95 2>&1
# 6.77. Eudev-3.2.8
echo "Building: 6.77. Eudev-3.2.8"
sh /scripts/eudev-3.2.8.sh > /sources/logs/eudev-3.2.8 2>&1


