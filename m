Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822DCDD640
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 05:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sd3wdt6FKvV5BwJLxd8hEl9NCZcg2eUciYSMup2gXGg=; b=BHD6a82eFcyyIL
	5rsMZ37w7aKNc3JYTCNfAyV2CvOmsW4C4ZIUJMskTpTxrSjm6dbk9w3CD5g36lwAab5H2LrJe6OcI
	8vQyigm6+bQpKpHZhyvyCIPNp1rqDrFTfbbE2lnA6kooURfvTvoptfGxYKw2f7osI4JFW9PdTA8kF
	cKu3X5Ui6/sBnLZLHG806ixSyWJX+APTiRFdm7aHybRoI6PCcFQx4ZIJmgsLhqFfb4I0uIiNxLY6I
	pkB33ST69a1GVPN8LLQtBCGI938hzMq5N0dxocCMsceUuH6yc7K3PmIgI6gWNPCBHfcrc0UMtD/KI
	HqAi9h8oDdkT6mkWcgXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLf2M-0002hR-KR; Sat, 19 Oct 2019 03:04:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLf2F-0002h4-A5
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 03:04:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so4960519pfo.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 18 Oct 2019 20:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HLpfdJYJMhxlhL1kNShSqCxltAA5MI/0fj6B8KagxSk=;
 b=m94NHalQ8kca6K6rTapQvQ1rGTNsv5R0/eyOzXdF6PTcY8+LlbehP3G0Lm1m95I4un
 hiPD3ni0h/uEELe/WTdml0oIdzVk/5utODnD6gMoSPgtD+wByIUbKLl647GqL4B3Donl
 xbSgUbIJIzknyyo1w5socyEuHJlZV1i18fBMkZjHjRxCX/O3PBd90HSwHZf8VqdfQExv
 PaGsljl/XYV9py8Ad+Rw6MHud1dGSlvZkQDeRKrG/WwcxzSZpaxCv+I187mwBHzt5vDU
 Z0E5XsiR5P+Is4Xb87H0X1jW52R51kq1w93lr0TGk0Wi8VdlnC3FcyVvj3Sc3aaTYOK4
 HkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HLpfdJYJMhxlhL1kNShSqCxltAA5MI/0fj6B8KagxSk=;
 b=qmcovcd+O88xnS/BXBftvHBRQBeNyuiuDUOy8sEWVMzq+Ovu7A8CnJ3hUKQO9jjOzn
 8U2EYnumXtzdTrGy9xrPdvzdBOexhbd23+JvlZKgBTd9CCxaDXXlA5f9Ev8U57/mI4K0
 6AnFqGGykiT0nV2XKhryetta3/BUfxZKr57Od9Tcr4u4f7BOVprb4jAyd3jknZW5/jZ/
 bm5UcdBmThkAl+y8BpHOIRb2l+1jMZJAHO5zTf4kv3TJtv6aNxKL2x50/nfz7CTELLvU
 1bXoCZjHh6f3XH9561vwVqY9oFks0LRbGza6kw3ARepm17gIPDvd9vDNSAgCj2aVLL/s
 qU0A==
X-Gm-Message-State: APjAAAVH8d6xJjqzIG/CBV7y/grftagGSvCNO6wTGr6Wv1cZmDnVqDIy
 NnxFrncwRHUSLxPawdnPMaw=
X-Google-Smtp-Source: APXvYqw6waVHA0p1gd3yDN0RS831T/JCLpXH/IBNat7xvlYYCkrrxHQj6cwI3szY2FIVanoLu9CwfQ==
X-Received: by 2002:a62:ab02:: with SMTP id p2mr10372322pff.92.1571454245879; 
 Fri, 18 Oct 2019 20:04:05 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id f74sm9555954pfa.34.2019.10.18.20.04.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 20:04:04 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: nbd@nbd.name
Date: Sat, 19 Oct 2019 03:03:50 +0000
Message-Id: <20191019030350.17062-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_200407_354764_3B996FCB 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] libpcap: build with cmake
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org,
 rosenp@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The main motivation is to drop and stop maintaining
"100-debian_shared_lib.patch".  It lacks the logic to include custom
implementation of several functions like pcap_strlcpy() which can cause
build failures when glibc is used [2]

CAN and CAN-USB support related symbols are now handled by general linux
support, see [1]

"-ffunction-sections -fdata-sections" were removed as they should help
much for shared libraries

Size comparison before and after the change

  -rw-r--r-- 1 yunion yunion 238042 Oct 18 11:42 ipkg-x86_64/libpcap/usr/lib/libpcap.so.1

  lrwxrwxrwx 1 yunion yunion     16 Oct 18 13:03 ipkg-x86_64/libpcap/usr/lib/libpcap.so.1 -> libpcap.so.1.9.1
  -rwxr-xr-x 1 yunion yunion 229867 Oct 18 13:03 ipkg-x86_64/libpcap/usr/lib/libpcap.so.1.9.1

[1] On Linux, handle all CAN captures with pcap-linux.c, in cooked mode,
    https://github.com/the-tcpdump-group/libpcap/commit/93ca5ff7030aaf1219e1de05ec89a68384bfc50b
[2] https://github.com/openwrt/packages/issues/10270

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
v2 <- v1

 - Added PKG_LICENSE_FILES definition
 - Removed custom Build/InstallDev to use the cmake.mk provided one.  It
   will install .a libs.  This should be okay for now.
 - Use capitalized ON/OFF for cmake booleans as does so by majority of
   other packages in this repo

 package/libs/libpcap/Makefile                 |  82 +++------
 .../patches/100-debian_shared_lib.patch       | 168 ------------------
 .../102-makefile_disable_manpages.patch       |  77 --------
 .../libpcap/patches/102-skip-manpages.patch   |  75 ++++++++
 4 files changed, 104 insertions(+), 298 deletions(-)
 delete mode 100644 package/libs/libpcap/patches/100-debian_shared_lib.patch
 delete mode 100644 package/libs/libpcap/patches/102-makefile_disable_manpages.patch
 create mode 100644 package/libs/libpcap/patches/102-skip-manpages.patch

diff --git a/package/libs/libpcap/Makefile b/package/libs/libpcap/Makefile
index fae955a54d..69af9d0700 100644
--- a/package/libs/libpcap/Makefile
+++ b/package/libs/libpcap/Makefile
@@ -9,22 +9,23 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libpcap
 PKG_VERSION:=1.9.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=http://www.us.tcpdump.org/release/ \
         http://www.tcpdump.org/release/
 PKG_HASH:=635237637c5b619bcceba91900666b64d56ecb7be63f298f601ec786ce087094
-PKG_FIXUP:=patch-libtool
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
-PKG_INSTALL:=1
+CMAKE_INSTALL:=1
 PKG_BUILD_PARALLEL:=1
+
 PKG_LICENSE:=BSD-3-Clause
+PKG_LICENSE_FILES:=LICENSE
 
 include $(INCLUDE_DIR)/package.mk
-include $(INCLUDE_DIR)/kernel.mk
+include $(INCLUDE_DIR)/cmake.mk
 
 define Package/libpcap
   SECTION:=libs
@@ -44,55 +45,30 @@ define Package/libpcap/config
 	source "$(SOURCE)/Config.in"
 endef
 
-TARGET_CFLAGS += \
-	-ffunction-sections \
-	-fdata-sections
-
-CONFIGURE_VARS += \
-	ac_cv_linux_vers=$(LINUX_VERSION) \
-	ac_cv_header_libusb_1_0_libusb_h=no
-
-ifeq ($(CONFIG_PCAP_HAS_NETFILTER),)
-CONFIGURE_VARS += \
-	ac_cv_netfilter_can_compile=no
-endif
-
-CONFIGURE_ARGS += \
-	--enable-shared \
-	--disable-yydebug \
-	--with-pcap=linux \
-	--without-septel \
-	--without-dag \
-	--without-libnl \
-	--without-snf \
-	--disable-can \
-	--disable-canusb \
-	--disable-dbus \
-	--disable-bluetooth
-
-ifeq ($(CONFIG_IPV6),y)
-CONFIGURE_ARGS += \
-	--enable-ipv6
-endif
-
-MAKE_FLAGS += \
-	CCOPT="$(TARGET_CFLAGS) -I$(BUILD_DIR)/linux/include"
-
-define Build/Configure
-	$(call Build/Configure/Default)
-	$(if $(CONFIG_PCAP_HAS_USB),,$(SED) '/^#define PCAP_SUPPORT_USB/D' $(PKG_BUILD_DIR)/config.h)
-	$(if $(CONFIG_PCAP_HAS_USB),,$(SED) 's/pcap-usb-linux.c *//' $(PKG_BUILD_DIR)/Makefile)
-	$(if $(CONFIG_PCAP_HAS_BT),,$(SED) '/^#define PCAP_SUPPORT_BT/D' $(PKG_BUILD_DIR)/config.h)
-	$(if $(CONFIG_PCAP_HAS_BT),,$(SED) 's/pcap-bt-linux.c *//' $(PKG_BUILD_DIR)/Makefile)
-endef
-
-define Build/InstallDev
-	$(INSTALL_DIR) $(1)/usr/include
-	$(CP) $(PKG_INSTALL_DIR)/usr/include/pcap* $(1)/usr/include/
-
-	$(INSTALL_DIR) $(1)/usr/lib
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libpcap.{a,so*} $(1)/usr/lib/
-endef
+CMAKE_OPTIONS += \
+	-DBUILD_SHARED_LIBS=ON \
+	-DBUILD_WITH_LIBNL=OFF \
+
+# grep 'option(DISABLE_' CMakeLists.txt | cut -f2 -d'(' | cut -f1 -d' ' | sort --unique
+CMAKE_OPTIONS += \
+	-DDISABLE_DAG=ON \
+	-DDISABLE_DBUS=ON \
+	-DDISABLE_NETMAP=ON \
+	-DDISABLE_RDMA=ON \
+	-DDISABLE_SEPTEL=ON \
+	-DDISABLE_SNF=ON \
+	-DDISABLE_TC=ON \
+
+# Debugging options
+CMAKE_OPTIONS += \
+	-DBDEBUG=OFF \
+	-DYYDEBUG=OFF \
+
+CMAKE_OPTIONS += $(if $(CONFIG_PCAP_HAS_USB)       ,,-DDISABLE_USB=ON)
+CMAKE_OPTIONS += $(if $(CONFIG_PCAP_HAS_BT)        ,,-DDISABLE_BLUETOOTH=ON)
+CMAKE_OPTIONS += $(if $(CONFIG_PCAP_HAS_NETFILTER) ,,-DPCAP_SUPPORT_NETFILTER=OFF)
+
+CMAKE_OPTIONS += $(if $(CONFIG_IPV6),-DINET6=ON,-DINET6=OFF)
 
 define Package/libpcap/install
 	$(INSTALL_DIR) $(1)/usr/lib
diff --git a/package/libs/libpcap/patches/100-debian_shared_lib.patch b/package/libs/libpcap/patches/100-debian_shared_lib.patch
deleted file mode 100644
index 454490fbfa..0000000000
--- a/package/libs/libpcap/patches/100-debian_shared_lib.patch
+++ /dev/null
@@ -1,168 +0,0 @@
-Debian-specific modifications to the upstream Makefile.in to
-build a shared library.
-
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -40,6 +40,13 @@ mandir = @mandir@
- srcdir = @srcdir@
- VPATH = @srcdir@
- 
-+# some defines for shared library compilation
-+LIBVERSION=1
-+LIBNAME=pcap
-+LIBRARY=lib$(LIBNAME).a
-+SOLIBRARY=lib$(LIBNAME).so
-+SHAREDLIB=$(SOLIBRARY).$(LIBVERSION)
-+
- #
- # You shouldn't need to edit anything below.
- #
-@@ -69,7 +76,8 @@ INSTALL_RPCAPD=@INSTALL_RPCAPD@
- EXTRA_NETWORK_LIBS=@EXTRA_NETWORK_LIBS@
- 
- # Standard CFLAGS for building members of a shared library
--FULL_CFLAGS = $(CCOPT) @V_LIB_CCOPT_FAT@ $(SHLIB_CCOPT) $(INCLS) $(DEFS) $(CFLAGS)
-+FULL_CFLAGS = $(CCOPT) @V_LIB_CCOPT_FAT@ $(SHLIB_CCOPT) $(INCLS) $(DEFS) $(CFLAGS) $(CPPFLAGS)
-+CFLAGS_SHARED = -shared -Wl,-soname,$(SHAREDLIB)
- 
- INSTALL = @INSTALL@
- INSTALL_PROGRAM = @INSTALL_PROGRAM@
-@@ -84,7 +92,11 @@ YACC = @YACC@
- # problem if you don't own the file but can write to the directory.
- .c.o:
- 	@rm -f $@
--	$(CC) $(FULL_CFLAGS) -c $(srcdir)/$*.c
-+	$(CC) $(FULL_CFLAGS) -c -o $@ $(srcdir)/$*.c
-+
-+%_pic.o: %.c %.o
-+	@rm -f $@
-+	$(CC) -fPIC $(FULL_CFLAGS) -c -o $@ $(srcdir)/$*.c
- 
- PSRC =	pcap-@V_PCAP@.c @USB_SRC@ @BT_SRC@ @BT_MONITOR_SRC@ @NETFILTER_SRC@ @DBUS_SRC@ @NETMAP_SRC@ @RDMA_SRC@
- FSRC =  @V_FINDALLDEVS@
-@@ -101,6 +113,7 @@ SRC =	$(PSRC) $(FSRC) $(CSRC) $(SSRC) $(
- # We would like to say "OBJ = $(SRC:.c=.o)" but Ultrix's make cannot
- # hack the extra indirection
- OBJ =	$(PSRC:.c=.o) $(FSRC:.c=.o) $(CSRC:.c=.o) $(SSRC:.c=.o) $(GENSRC:.c=.o) $(LIBOBJS)
-+OBJ_PIC = $(PSRC:.c=_pic.o) $(FSRC:.c=_pic.o) $(CSRC:.c=_pic.o) $(SSRC:.c=_pic.o) $(GENSRC:.c=_pic.o)
- PUBHDR = \
- 	pcap.h \
- 	pcap-bpf.h \
-@@ -155,7 +168,7 @@ TAGFILES = \
- 
- CLEANFILES = $(OBJ) libpcap.a libpcap.so.`cat $(srcdir)/VERSION` \
- 	$(PROG)-`cat $(srcdir)/VERSION`.tar.gz $(GENSRC) $(GENHDR) \
--	lex.yy.c pcap-config libpcap.pc
-+	lex.yy.c pcap-config libpcap.pc $(OBJ_PIC)
- 
- MAN1 = pcap-config.1
- 
-@@ -392,7 +405,7 @@ libpcap.a: $(OBJ)
- 	$(AR) rc $@ $(OBJ) $(ADDLARCHIVEOBJS)
- 	$(RANLIB) $@
- 
--shared: libpcap.$(DYEXT)
-+shared: $(SHAREDLIB)
- 
- libpcap.so: $(OBJ)
- 	@rm -f $@
-@@ -468,6 +481,12 @@ libpcap.shareda: $(OBJ)
- #
- libpcap.none:
- 
-+$(SHAREDLIB): $(OBJ_PIC)
-+	-@rm -f $@
-+	-@rm -f $(SOLIBRARY)
-+	$(CC) $(CFLAGS_SHARED) $(LDFLAGS) -o $(SHAREDLIB) $(OBJ_PIC) -lc $(LIBS)
-+	ln -s $(SHAREDLIB) $(SOLIBRARY)
-+
- scanner.c: $(srcdir)/scanner.l
- 	$(LEX) -P pcap_ --header-file=scanner.h --nounput -o scanner.c $<
- scanner.h: scanner.c
-@@ -480,6 +499,9 @@ scanner.h: scanner.c
- scanner.o: scanner.c grammar.h
- 	$(CC) $(FULL_CFLAGS) -c scanner.c
- 
-+scanner_pic.o: scanner.c grammar.h
-+	$(CC) -fPIC $(FULL_CFLAGS) -o $@ -c scanner.c
-+
- grammar.c: $(srcdir)/grammar.y
- 	$(YACC) -p pcap_ -o grammar.c -d $<
- grammar.h: grammar.c
-@@ -492,6 +514,9 @@ grammar.h: grammar.c
- grammar.o: grammar.c scanner.h
- 	$(CC) $(FULL_CFLAGS) -c grammar.c
- 
-+grammar_pic.o: grammar.c scanner.h
-+	$(CC) -fPIC $(FULL_CFLAGS) -o $@ -c grammar.c
-+
- gencode.o: $(srcdir)/gencode.c grammar.h scanner.h
- 	$(CC) $(FULL_CFLAGS) -c $(srcdir)/gencode.c
- 
-@@ -539,6 +564,9 @@ pcap-config: $(srcdir)/pcap-config.in ./
- 	mv $@.tmp $@
- 	chmod a+x $@
- 
-+bpf_filter_pic.o: bpf_filter.c
-+	$(CC) -fPIC $(FULL_CFLAGS) -c bpf_filter.c -o $@
-+
- #
- # Remote pcap daemon.
- #
-@@ -632,14 +660,11 @@ install: install-shared install-archive
- 		    $(DESTDIR)$(mandir)/man@MAN_MISC_INFO@/`echo $$i | sed 's/.manmisc.in/.@MAN_MISC_INFO@/'`; done
- 
- install-shared: install-shared-$(DYEXT)
--install-shared-so: libpcap.so
-+install-shared-so: $(SHAREDLIB)
- 	[ -d $(DESTDIR)$(libdir) ] || \
- 	    (mkdir -p $(DESTDIR)$(libdir); chmod 755 $(DESTDIR)$(libdir))
--	VER=`cat $(srcdir)/VERSION`; \
--	MAJOR_VER=`sed 's/\([0-9][0-9]*\)\..*/\1/' $(srcdir)/VERSION`; \
--	$(INSTALL_PROGRAM) libpcap.so.$$VER $(DESTDIR)$(libdir)/libpcap.so.$$VER; \
--	ln -sf libpcap.so.$$VER $(DESTDIR)$(libdir)/libpcap.so.$$MAJOR_VER; \
--	ln -sf libpcap.so.$$MAJOR_VER $(DESTDIR)$(libdir)/libpcap.so
-+	$(INSTALL_DATA) $(SHAREDLIB) $(DESTDIR)$(libdir)/
-+	ln -sf $(SHAREDLIB) $(DESTDIR)$(libdir)/$(SOLIBRARY)
- install-shared-dylib: libpcap.dylib
- 	[ -d $(DESTDIR)$(libdir) ] || \
- 	    (mkdir -p $(DESTDIR)$(libdir); chmod 755 $(DESTDIR)$(libdir))
---- a/aclocal.m4
-+++ b/aclocal.m4
-@@ -507,7 +507,7 @@ AC_DEFUN(AC_LBL_SHLIBS_INIT,
- 			esac
- 			;;
- 		    esac
--		    V_SHLIB_CCOPT="$V_SHLIB_CCOPT $PIC_OPT"
-+		    V_SHLIB_CCOPT="$V_SHLIB_CCOPT"
- 		    V_SONAME_OPT="-Wl,-soname,"
- 		    V_RPATH_OPT="-Wl,-rpath,"
- 		    ;;
-@@ -570,7 +570,7 @@ AC_DEFUN(AC_LBL_SHLIBS_INIT,
- 		    #
- 		    # "cc" is GCC.
- 		    #
--		    V_SHLIB_CCOPT="$V_SHLIB_CCOPT -fpic"
-+		    V_SHLIB_CCOPT="$V_SHLIB_CCOPT"
- 		    V_SHLIB_CMD="\$(CC)"
- 		    V_SHLIB_OPT="-shared"
- 		    V_SONAME_OPT="-Wl,-soname,"
---- a/pcap-config.in
-+++ b/pcap-config.in
-@@ -41,16 +41,6 @@ do
- 	esac
- 	shift
- done
--if [ "$V_RPATH_OPT" != "" ]
--then
--	#
--	# If libdir isn't /usr/lib, add it to the run-time linker path.
--	#
--	if [ "$libdir" != "/usr/lib" ]
--	then
--		RPATH=$V_RPATH_OPT$libdir
--	fi
--fi
- if [ "$static" = 1 ]
- then
- 	#
diff --git a/package/libs/libpcap/patches/102-makefile_disable_manpages.patch b/package/libs/libpcap/patches/102-makefile_disable_manpages.patch
deleted file mode 100644
index bd1702be0f..0000000000
--- a/package/libs/libpcap/patches/102-makefile_disable_manpages.patch
+++ /dev/null
@@ -1,77 +0,0 @@
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -588,14 +588,6 @@ install: install-shared install-archive
- 	    (mkdir -p $(DESTDIR)$(includedir); chmod 755 $(DESTDIR)$(includedir))
- 	[ -d $(DESTDIR)$(includedir)/pcap ] || \
- 	    (mkdir -p $(DESTDIR)$(includedir)/pcap; chmod 755 $(DESTDIR)$(includedir)/pcap)
--	[ -d $(DESTDIR)$(mandir)/man1 ] || \
--	    (mkdir -p $(DESTDIR)$(mandir)/man1; chmod 755 $(DESTDIR)$(mandir)/man1)
--	[ -d $(DESTDIR)$(mandir)/man3 ] || \
--	    (mkdir -p $(DESTDIR)$(mandir)/man3; chmod 755 $(DESTDIR)$(mandir)/man3)
--	[ -d $(DESTDIR)$(mandir)/man@MAN_FILE_FORMATS@ ] || \
--	    (mkdir -p $(DESTDIR)$(mandir)/man@MAN_FILE_FORMATS@; chmod 755 $(DESTDIR)$(mandir)/man@MAN_FILE_FORMATS@)
--	[ -d $(DESTDIR)$(mandir)/man@MAN_MISC_INFO@ ] || \
--	    (mkdir -p $(DESTDIR)$(mandir)/man@MAN_MISC_INFO@; chmod 755 $(DESTDIR)$(mandir)/man@MAN_MISC_INFO@)
- 	for i in $(PUBHDR); do \
- 		$(INSTALL_DATA) $(srcdir)/$$i \
- 		    $(DESTDIR)$(includedir)/$$i; done
-@@ -605,59 +597,6 @@ install: install-shared install-archive
- 	[ -d $(DESTDIR)$(libdir)/pkgconfig ] || \
- 	    (mkdir -p $(DESTDIR)$(libdir)/pkgconfig; chmod 755 $(DESTDIR)$(libdir)/pkgconfig)
- 	$(INSTALL_DATA) libpcap.pc $(DESTDIR)$(libdir)/pkgconfig/libpcap.pc
--	for i in $(MAN1); do \
--		$(INSTALL_DATA) $(srcdir)/$$i \
--		    $(DESTDIR)$(mandir)/man1/$$i; done
--	for i in $(MAN3PCAP_NOEXPAND); do \
--		$(INSTALL_DATA) $(srcdir)/$$i \
--		    $(DESTDIR)$(mandir)/man3/$$i; done
--	for i in $(MAN3PCAP_EXPAND:.in=); do \
--		$(INSTALL_DATA) $$i \
--		    $(DESTDIR)$(mandir)/man3/$$i; done
--	(cd $(DESTDIR)$(mandir)/man3 && \
--	rm -f pcap_datalink_val_to_description.3pcap && \
--	$(LN_S) pcap_datalink_val_to_name.3pcap \
--		 pcap_datalink_val_to_description.3pcap && \
--	rm -f pcap_datalink_val_to_description_or_dlt.3pcap && \
--	$(LN_S) pcap_datalink_val_to_name.3pcap \
--		 pcap_datalink_val_to_description_or_dlt.3pcap && \
--	rm -f pcap_dump_fopen.3pcap && \
--	$(LN_S) pcap_dump_open.3pcap pcap_dump_fopen.3pcap && \
--	rm -f pcap_freealldevs.3pcap && \
--	$(LN_S) pcap_findalldevs.3pcap pcap_freealldevs.3pcap && \
--	rm -f pcap_perror.3pcap && \
--	$(LN_S) pcap_geterr.3pcap pcap_perror.3pcap && \
--	rm -f pcap_sendpacket.3pcap && \
--	$(LN_S) pcap_inject.3pcap pcap_sendpacket.3pcap && \
--	rm -f pcap_free_datalinks.3pcap && \
--	$(LN_S) pcap_list_datalinks.3pcap pcap_free_datalinks.3pcap && \
--	rm -f pcap_free_tstamp_types.3pcap && \
--	$(LN_S) pcap_list_tstamp_types.3pcap pcap_free_tstamp_types.3pcap && \
--	rm -f pcap_dispatch.3pcap && \
--	$(LN_S) pcap_loop.3pcap pcap_dispatch.3pcap && \
--	rm -f pcap_minor_version.3pcap && \
--	$(LN_S) pcap_major_version.3pcap pcap_minor_version.3pcap && \
--	rm -f pcap_next.3pcap && \
--	$(LN_S) pcap_next_ex.3pcap pcap_next.3pcap && \
--	rm -f pcap_open_dead_with_tstamp_precision.3pcap && \
--	$(LN_S) pcap_open_dead.3pcap \
--		 pcap_open_dead_with_tstamp_precision.3pcap && \
--	rm -f pcap_open_offline_with_tstamp_precision.3pcap && \
--	$(LN_S) pcap_open_offline.3pcap pcap_open_offline_with_tstamp_precision.3pcap && \
--	rm -f pcap_fopen_offline.3pcap && \
--	$(LN_S) pcap_open_offline.3pcap pcap_fopen_offline.3pcap && \
--	rm -f pcap_fopen_offline_with_tstamp_precision.3pcap && \
--	$(LN_S) pcap_open_offline.3pcap pcap_fopen_offline_with_tstamp_precision.3pcap && \
--	rm -f pcap_tstamp_type_val_to_description.3pcap && \
--	$(LN_S) pcap_tstamp_type_val_to_name.3pcap pcap_tstamp_type_val_to_description.3pcap && \
--	rm -f pcap_getnonblock.3pcap && \
--	$(LN_S) pcap_setnonblock.3pcap pcap_getnonblock.3pcap)
--	for i in $(MANFILE); do \
--		$(INSTALL_DATA) `echo $$i | sed 's/.manfile.in/.manfile/'` \
--		    $(DESTDIR)$(mandir)/man@MAN_FILE_FORMATS@/`echo $$i | sed 's/.manfile.in/.@MAN_FILE_FORMATS@/'`; done
--	for i in $(MANMISC); do \
--		$(INSTALL_DATA) `echo $$i | sed 's/.manmisc.in/.manmisc/'` \
--		    $(DESTDIR)$(mandir)/man@MAN_MISC_INFO@/`echo $$i | sed 's/.manmisc.in/.@MAN_MISC_INFO@/'`; done
- 
- install-shared: install-shared-$(DYEXT)
- install-shared-so: $(SHAREDLIB)
diff --git a/package/libs/libpcap/patches/102-skip-manpages.patch b/package/libs/libpcap/patches/102-skip-manpages.patch
new file mode 100644
index 0000000000..28f572c913
--- /dev/null
+++ b/package/libs/libpcap/patches/102-skip-manpages.patch
@@ -0,0 +1,75 @@
+From f172e36e436d714f4def1439b13efd147a6a8411 Mon Sep 17 00:00:00 2001
+From: Yousong Zhou <yszhou4tech@gmail.com>
+Date: Fri, 18 Oct 2019 12:43:22 +0000
+Subject: [PATCH] skip manpages
+
+---
+ CMakeLists.txt | 55 --------------------------------------------------
+ 1 file changed, 55 deletions(-)
+
+diff --git a/CMakeLists.txt b/CMakeLists.txt
+index 55b93f14..acf1a904 100644
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -2397,61 +2397,6 @@ if(NOT MSVC)
+     configure_file(${CMAKE_CURRENT_SOURCE_DIR}/libpcap.pc.in ${CMAKE_CURRENT_BINARY_DIR}/libpcap.pc @ONLY)
+     install(PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/pcap-config DESTINATION bin)
+     install(FILES ${CMAKE_CURRENT_BINARY_DIR}/libpcap.pc DESTINATION lib/pkgconfig)
+-
+-    #
+-    # Man pages.
+-    #
+-    # For each section of the manual for which we have man pages
+-    # that require macro expansion, do the expansion.
+-    #
+-    set(MAN1 "")
+-    foreach(MANPAGE ${MAN1_NOEXPAND})
+-        set(MAN1 ${MAN1} ${CMAKE_CURRENT_SOURCE_DIR}/${MANPAGE})
+-    endforeach(MANPAGE)
+-    install(FILES ${MAN1} DESTINATION ${CMAKE_INSTALL_MANDIR}/man1)
+-
+-    set(MAN3PCAP "")
+-    foreach(MANPAGE ${MAN3PCAP_NOEXPAND})
+-        set(MAN3PCAP ${MAN3PCAP} ${CMAKE_CURRENT_SOURCE_DIR}/${MANPAGE})
+-    endforeach(MANPAGE)
+-    foreach(TEMPLATE_MANPAGE ${MAN3PCAP_EXPAND})
+-        string(REPLACE ".in" "" MANPAGE ${TEMPLATE_MANPAGE})
+-        configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${TEMPLATE_MANPAGE} ${CMAKE_CURRENT_BINARY_DIR}/${MANPAGE} @ONLY)
+-        set(MAN3PCAP ${MAN3PCAP} ${CMAKE_CURRENT_BINARY_DIR}/${MANPAGE})
+-    endforeach(TEMPLATE_MANPAGE)
+-    install(FILES ${MAN3PCAP} DESTINATION ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_datalink_val_to_name.3pcap pcap_datalink_val_to_description.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_dump_open.3pcap pcap_dump_fopen.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_findalldevs.3pcap pcap_freealldevs.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_geterr.3pcap pcap_perror.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_inject.3pcap pcap_sendpacket.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_list_datalinks.3pcap pcap_free_datalinks.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_list_tstamp_types.3pcap pcap_free_tstamp_types.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_loop.3pcap pcap_dispatch.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_major_version.3pcap pcap_minor_version.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_next_ex.3pcap pcap_next.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_open_dead.3pcap pcap_open_dead_with_tstamp_precision.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_open_offline.3pcap pcap_open_offline_with_tstamp_precision.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_open_offline.3pcap pcap_fopen_offline.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_open_offline.3pcap pcap_fopen_offline_with_tstamp_precision.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_tstamp_type_val_to_name.3pcap pcap_tstamp_type_val_to_description.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-    install_manpage_symlink(pcap_setnonblock.3pcap pcap_getnonblock.3pcap ${CMAKE_INSTALL_MANDIR}/man3)
+-
+-    set(MANFILE "")
+-    foreach(TEMPLATE_MANPAGE ${MANFILE_EXPAND})
+-        string(REPLACE ".manfile.in" ".${MAN_FILE_FORMATS}" MANPAGE ${TEMPLATE_MANPAGE})
+-        configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${TEMPLATE_MANPAGE} ${CMAKE_CURRENT_BINARY_DIR}/${MANPAGE} @ONLY)
+-        set(MANFILE ${MANFILE} ${CMAKE_CURRENT_BINARY_DIR}/${MANPAGE})
+-    endforeach(TEMPLATE_MANPAGE)
+-    install(FILES ${MANFILE} DESTINATION ${CMAKE_INSTALL_MANDIR}/man${MAN_FILE_FORMATS})
+-
+-    set(MANMISC "")
+-    foreach(TEMPLATE_MANPAGE ${MANMISC_EXPAND})
+-        string(REPLACE ".manmisc.in" ".${MAN_MISC_INFO}" MANPAGE ${TEMPLATE_MANPAGE})
+-        configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${TEMPLATE_MANPAGE} ${CMAKE_CURRENT_BINARY_DIR}/${MANPAGE} @ONLY)
+-        set(MANMISC ${MANMISC} ${CMAKE_CURRENT_BINARY_DIR}/${MANPAGE})
+-    endforeach(TEMPLATE_MANPAGE)
+-    install(FILES ${MANMISC} DESTINATION ${CMAKE_INSTALL_MANDIR}/man${MAN_MISC_INFO})
+ endif(NOT MSVC)
+ 
+ # uninstall target

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
