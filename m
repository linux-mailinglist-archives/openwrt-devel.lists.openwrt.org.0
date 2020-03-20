Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56EF18D68F
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 19:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tEpSx/513fVWTHtqITHtncZTbE3OWIO55dc4NY5/2jA=; b=Q8ebXgDpT3PcR0
	K9Tik5DOB2ZCqYPQ4HM5B8PlNBfhzx0cQ9aBC5XfVu7b5t6LdVVkYfw9Lg6G4mZhLJVHebPrPY8bu
	1s+r48CpYp2lp4maPNRUzMlJQmg60uCYtsuGp3AWOM6wFvXFVfHwtUTZsoQHfynOobsFy8Dn0eAlo
	qNIoWWzM/53s6fKynVmHAITcXFb5imCD2+tPXNW8jNEWlKjVtjXJli5khF42WT5+wcaswg1WLTaJs
	7fW4EUNi9dZAcEVG1wux5TlXjyzllIjE0qA5E276b9vc25qCdc+Fd8hgIr0Jb7LZr6PFKAb8LQxhQ
	FtJ9NvCrFVlB4KeVDtaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFM3f-0007uX-Jc; Fri, 20 Mar 2020 18:07:47 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFM3Y-0007u6-Fk
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 18:07:42 +0000
IronPort-SDR: G1m1GWzai2oZ8K7DHmqdTOhKdCSpM6lyUVynpskGvjSg4DZGLRsqAJ4YdnZlL4Scv7Fd7iVWe3
 axgIDMqZCajQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 11:07:38 -0700
IronPort-SDR: ie6gIVMV17bmMJUsMSnT2PkZYTTVfSSv2ExbFJuuDk/eOBteTzBcLh5wZNQ9h91MuBvyVqLi5W
 5dO2F8JNLe/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,285,1580803200"; d="scan'208";a="245559770"
Received: from pon-swdev1.imu.intel.com ([10.91.128.250])
 by orsmga003.jf.intel.com with ESMTP; 20 Mar 2020 11:07:37 -0700
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 19:07:31 +0100
Message-Id: <20200320180731.22426-1-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_110740_550368_B4DECD7E 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] libpcap: Update shared-lib patch from
 Debian to fix linking problems
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
Cc: hauke@hauke-m.de, Hauke Mehrtens <hauke.mehrtens@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates the shared-lib patch to the recent version from debian
found here:
https://salsa.debian.org/rfrancoise/libpcap/-/blob/debian/1.9.1-2/debian/patches/shared-lib.diff

This patch makes it include missing/strlcpy.o to the shared library
which is needed for OpenWrt glibc builds, otherwise there is an
undefined symbol and tcpdump and other builds are failing.

Fixes: 44f11353de04 ("libpcap: update to 1.9.1")
Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 package/libs/libpcap/Makefile                 |   4 +-
 .../patches/100-debian_shared_lib.patch       | 194 ++++++++++++++----
 .../102-makefile_disable_manpages.patch       |   6 +-
 .../103-makefile_flex_workaround.patch        |   2 +-
 4 files changed, 157 insertions(+), 49 deletions(-)

diff --git a/package/libs/libpcap/Makefile b/package/libs/libpcap/Makefile
index fae955a54d..9a78216e3a 100644
--- a/package/libs/libpcap/Makefile
+++ b/package/libs/libpcap/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libpcap
 PKG_VERSION:=1.9.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=http://www.us.tcpdump.org/release/ \
@@ -32,7 +32,7 @@ define Package/libpcap
   TITLE:=Low-level packet capture library
   URL:=http://www.tcpdump.org/
   MENU:=1
-  ABI_VERSION:=1
+  ABI_VERSION:=2
 endef
 
 define Package/libpcap/description
diff --git a/package/libs/libpcap/patches/100-debian_shared_lib.patch b/package/libs/libpcap/patches/100-debian_shared_lib.patch
index 454490fbfa..ab70417de7 100644
--- a/package/libs/libpcap/patches/100-debian_shared_lib.patch
+++ b/package/libs/libpcap/patches/100-debian_shared_lib.patch
@@ -3,12 +3,13 @@ build a shared library.
 
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -40,6 +40,13 @@ mandir = @mandir@
+@@ -40,6 +40,14 @@ mandir = @mandir@
  srcdir = @srcdir@
  VPATH = @srcdir@
  
 +# some defines for shared library compilation
-+LIBVERSION=1
++MAJ=0.8
++LIBVERSION=$(shell head -1 debian/changelog | perl -nle 'm/\S+\s+\((\S+)-\S+\)/ and print $$1')
 +LIBNAME=pcap
 +LIBRARY=lib$(LIBNAME).a
 +SOLIBRARY=lib$(LIBNAME).so
@@ -17,38 +18,38 @@ build a shared library.
  #
  # You shouldn't need to edit anything below.
  #
-@@ -69,7 +76,8 @@ INSTALL_RPCAPD=@INSTALL_RPCAPD@
+@@ -69,7 +77,8 @@ INSTALL_RPCAPD=@INSTALL_RPCAPD@
  EXTRA_NETWORK_LIBS=@EXTRA_NETWORK_LIBS@
  
  # Standard CFLAGS for building members of a shared library
 -FULL_CFLAGS = $(CCOPT) @V_LIB_CCOPT_FAT@ $(SHLIB_CCOPT) $(INCLS) $(DEFS) $(CFLAGS)
 +FULL_CFLAGS = $(CCOPT) @V_LIB_CCOPT_FAT@ $(SHLIB_CCOPT) $(INCLS) $(DEFS) $(CFLAGS) $(CPPFLAGS)
-+CFLAGS_SHARED = -shared -Wl,-soname,$(SHAREDLIB)
++CFLAGS_SHARED = -shared -Wl,-soname,$(SOLIBRARY).$(MAJ) -Wl,--version-script=libpcap-symbols.lds
  
  INSTALL = @INSTALL@
  INSTALL_PROGRAM = @INSTALL_PROGRAM@
-@@ -84,7 +92,11 @@ YACC = @YACC@
+@@ -84,7 +93,11 @@ YACC = @YACC@
  # problem if you don't own the file but can write to the directory.
  .c.o:
  	@rm -f $@
 -	$(CC) $(FULL_CFLAGS) -c $(srcdir)/$*.c
 +	$(CC) $(FULL_CFLAGS) -c -o $@ $(srcdir)/$*.c
 +
-+%_pic.o: %.c %.o
++%_pic.o: %.c
 +	@rm -f $@
 +	$(CC) -fPIC $(FULL_CFLAGS) -c -o $@ $(srcdir)/$*.c
  
  PSRC =	pcap-@V_PCAP@.c @USB_SRC@ @BT_SRC@ @BT_MONITOR_SRC@ @NETFILTER_SRC@ @DBUS_SRC@ @NETMAP_SRC@ @RDMA_SRC@
  FSRC =  @V_FINDALLDEVS@
-@@ -101,6 +113,7 @@ SRC =	$(PSRC) $(FSRC) $(CSRC) $(SSRC) $(
+@@ -101,6 +114,7 @@ SRC =	$(PSRC) $(FSRC) $(CSRC) $(SSRC) $(
  # We would like to say "OBJ = $(SRC:.c=.o)" but Ultrix's make cannot
  # hack the extra indirection
  OBJ =	$(PSRC:.c=.o) $(FSRC:.c=.o) $(CSRC:.c=.o) $(SSRC:.c=.o) $(GENSRC:.c=.o) $(LIBOBJS)
-+OBJ_PIC = $(PSRC:.c=_pic.o) $(FSRC:.c=_pic.o) $(CSRC:.c=_pic.o) $(SSRC:.c=_pic.o) $(GENSRC:.c=_pic.o)
++OBJ_PIC = $(PSRC:.c=_pic.o) $(FSRC:.c=_pic.o) $(CSRC:.c=_pic.o) $(SSRC:.c=_pic.o) $(GENSRC:.c=_pic.o) $(LIBOBJS:.o=_pic.o)
  PUBHDR = \
  	pcap.h \
  	pcap-bpf.h \
-@@ -155,7 +168,7 @@ TAGFILES = \
+@@ -155,7 +169,7 @@ TAGFILES = \
  
  CLEANFILES = $(OBJ) libpcap.a libpcap.so.`cat $(srcdir)/VERSION` \
  	$(PROG)-`cat $(srcdir)/VERSION`.tar.gz $(GENSRC) $(GENHDR) \
@@ -57,7 +58,7 @@ build a shared library.
  
  MAN1 = pcap-config.1
  
-@@ -392,7 +405,7 @@ libpcap.a: $(OBJ)
+@@ -392,7 +406,7 @@ libpcap.a: $(OBJ)
  	$(AR) rc $@ $(OBJ) $(ADDLARCHIVEOBJS)
  	$(RANLIB) $@
  
@@ -66,20 +67,21 @@ build a shared library.
  
  libpcap.so: $(OBJ)
  	@rm -f $@
-@@ -468,6 +481,12 @@ libpcap.shareda: $(OBJ)
+@@ -468,6 +482,13 @@ libpcap.shareda: $(OBJ)
  #
  libpcap.none:
  
 +$(SHAREDLIB): $(OBJ_PIC)
 +	-@rm -f $@
-+	-@rm -f $(SOLIBRARY)
++	-@rm -f $(SOLIBRARY) $(SOLIBRARY).$(MAJ)
 +	$(CC) $(CFLAGS_SHARED) $(LDFLAGS) -o $(SHAREDLIB) $(OBJ_PIC) -lc $(LIBS)
-+	ln -s $(SHAREDLIB) $(SOLIBRARY)
++	ln -s $(SHAREDLIB) $(SOLIBRARY).$(MAJ)
++	ln -s $(SOLIBRARY).$(MAJ) $(SOLIBRARY)
 +
  scanner.c: $(srcdir)/scanner.l
  	$(LEX) -P pcap_ --header-file=scanner.h --nounput -o scanner.c $<
  scanner.h: scanner.c
-@@ -480,6 +499,9 @@ scanner.h: scanner.c
+@@ -480,6 +501,9 @@ scanner.h: scanner.c
  scanner.o: scanner.c grammar.h
  	$(CC) $(FULL_CFLAGS) -c scanner.c
  
@@ -89,17 +91,36 @@ build a shared library.
  grammar.c: $(srcdir)/grammar.y
  	$(YACC) -p pcap_ -o grammar.c -d $<
  grammar.h: grammar.c
-@@ -492,6 +514,9 @@ grammar.h: grammar.c
+@@ -492,6 +516,10 @@ grammar.h: grammar.c
  grammar.o: grammar.c scanner.h
  	$(CC) $(FULL_CFLAGS) -c grammar.c
  
-+grammar_pic.o: grammar.c scanner.h
++grammar_pic.o: grammar.c
++	@rm -f $@
 +	$(CC) -fPIC $(FULL_CFLAGS) -o $@ -c grammar.c
 +
  gencode.o: $(srcdir)/gencode.c grammar.h scanner.h
  	$(CC) $(FULL_CFLAGS) -c $(srcdir)/gencode.c
  
-@@ -539,6 +564,9 @@ pcap-config: $(srcdir)/pcap-config.in ./
+@@ -504,9 +532,17 @@ snprintf.o: $(srcdir)/missing/snprintf.c
+ strlcat.o: $(srcdir)/missing/strlcat.c
+ 	$(CC) $(FULL_CFLAGS) -o $@ -c $(srcdir)/missing/strlcat.c
+ 
++strlcat_pic.o: $(srcdir)/missing/strlcat.c
++	@rm -f $@
++	$(CC) -fPIC $(FULL_CFLAGS) -o $@ -c $(srcdir)/missing/strlcat.c
++
+ strlcpy.o: $(srcdir)/missing/strlcpy.c
+ 	$(CC) $(FULL_CFLAGS) -o $@ -c $(srcdir)/missing/strlcpy.c
+ 
++strlcpy_pic.o: $(srcdir)/missing/strlcpy.c
++	@rm -f $@
++	$(CC) -fPIC $(FULL_CFLAGS) -o $@ -c $(srcdir)/missing/strlcpy.c
++
+ strtok_r.o: $(srcdir)/missing/strtok_r.c
+ 	$(CC) $(FULL_CFLAGS) -o $@ -c $(srcdir)/missing/strtok_r.c
+ 
+@@ -539,6 +575,9 @@ pcap-config: $(srcdir)/pcap-config.in ./
  	mv $@.tmp $@
  	chmod a+x $@
  
@@ -109,12 +130,8 @@ build a shared library.
  #
  # Remote pcap daemon.
  #
-@@ -632,14 +660,11 @@ install: install-shared install-archive
- 		    $(DESTDIR)$(mandir)/man@MAN_MISC_INFO@/`echo $$i | sed 's/.manmisc.in/.@MAN_MISC_INFO@/'`; done
- 
- install-shared: install-shared-$(DYEXT)
--install-shared-so: libpcap.so
-+install-shared-so: $(SHAREDLIB)
+@@ -635,11 +674,9 @@ install-shared: install-shared-$(DYEXT)
+ install-shared-so: libpcap.so
  	[ -d $(DESTDIR)$(libdir) ] || \
  	    (mkdir -p $(DESTDIR)$(libdir); chmod 755 $(DESTDIR)$(libdir))
 -	VER=`cat $(srcdir)/VERSION`; \
@@ -123,7 +140,8 @@ build a shared library.
 -	ln -sf libpcap.so.$$VER $(DESTDIR)$(libdir)/libpcap.so.$$MAJOR_VER; \
 -	ln -sf libpcap.so.$$MAJOR_VER $(DESTDIR)$(libdir)/libpcap.so
 +	$(INSTALL_DATA) $(SHAREDLIB) $(DESTDIR)$(libdir)/
-+	ln -sf $(SHAREDLIB) $(DESTDIR)$(libdir)/$(SOLIBRARY)
++	ln -sf $(SHAREDLIB) $(DESTDIR)$(libdir)/$(SOLIBRARY).$(MAJ)
++	ln -sf $(SOLIBRARY).$(MAJ) $(DESTDIR)$(libdir)/$(SOLIBRARY)
  install-shared-dylib: libpcap.dylib
  	[ -d $(DESTDIR)$(libdir) ] || \
  	    (mkdir -p $(DESTDIR)$(libdir); chmod 755 $(DESTDIR)$(libdir))
@@ -147,22 +165,112 @@ build a shared library.
  		    V_SHLIB_CMD="\$(CC)"
  		    V_SHLIB_OPT="-shared"
  		    V_SONAME_OPT="-Wl,-soname,"
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
+--- /dev/null
++++ b/libpcap-symbols.lds
+@@ -0,0 +1,106 @@
++{
++  global:
++    bpf_dump;
++    bpf_filter;
++    bpf_image;
++    bpf_validate;
++    eproto_db;
++    pcap_breakloop;
++    pcap_can_set_rfmon;
++    pcap_close;
++    pcap_compile;
++    pcap_compile_nopcap;
++    pcap_datalink;
++    pcap_datalink_name_to_val;
++    pcap_datalink_val_to_description;
++    pcap_datalink_val_to_name;
++    pcap_dispatch;
++    pcap_dump;
++    pcap_dump_close;
++    pcap_dump_file;
++    pcap_dump_flush;
++    pcap_dump_fopen;
++    pcap_dump_ftell;
++    pcap_dump_open;
++    pcap_ether_aton;
++    pcap_ether_hostton;
++    pcap_file;
++    pcap_fileno;
++    pcap_findalldevs;
++    pcap_fopen_offline;
++    pcap_freealldevs;
++    pcap_freecode;
++    pcap_get_selectable_fd;
++    pcap_geterr;
++    pcap_getnonblock;
++    pcap_inject;
++    pcap_is_swapped;
++    pcap_lib_version;
++    pcap_list_datalinks;
++    pcap_lookupdev;
++    pcap_lookupnet;
++    pcap_loop;
++    pcap_major_version;
++    pcap_minor_version;
++    pcap_nametoaddr;
++    pcap_nametoaddrinfo;
++    pcap_nametoeproto;
++    pcap_nametollc;
++    pcap_nametonetaddr;
++    pcap_nametoport;
++    pcap_nametoportrange;
++    pcap_nametoproto;
++    pcap_next;
++    pcap_next_etherent;
++    pcap_next_ex;
++    pcap_open_dead;
++    pcap_open_live;
++    pcap_open_offline;
++    pcap_perror;
++    pcap_sendpacket;
++    pcap_set_datalink;
++    pcap_setdirection;
++    pcap_setfilter;
++    pcap_setnonblock;
++    pcap_snapshot;
++    pcap_stats;
++    pcap_statustostr;
++    pcap_strerror;
++    pcap_version;
++    /* introduced in pcap 1.0 */
++    pcap_activate;
++    pcap_create;
++    pcap_datalink_ext;
++    pcap_free_datalinks;
++    pcap_offline_filter;
++    pcap_set_buffer_size;
++    pcap_set_promisc;
++    pcap_set_rfmon;
++    pcap_set_snaplen;
++    pcap_set_timeout;
++    /* introduced in pcap 1.2 */
++    pcap_set_tstamp_type;
++    pcap_list_tstamp_types;
++    pcap_free_tstamp_types;
++    pcap_tstamp_type_name_to_val;
++    pcap_tstamp_type_val_to_name;
++    pcap_tstamp_type_val_to_description;
++    /* introduced in pcap 1.5 */
++    pcap_set_immediate_mode;
++    pcap_set_tstamp_precision;
++    pcap_get_tstamp_precision;
++    pcap_open_dead_with_tstamp_precision;
++    pcap_open_offline_with_tstamp_precision;
++    pcap_fopen_offline_with_tstamp_precision;
++    /* introduced in pcap 1.7 */
++    pcap_dump_open_append;
++    /* introduced in pcap 1.9.0 */
++    pcap_bufsize;
++    pcap_dump_ftell64;
++    pcap_get_required_select_timeout;
++    pcap_set_protocol_linux;	/* linux-only */
++    /* introduced in pcap 1.9.1 */
++    pcap_datalink_val_to_description_or_dlt;
++  local:
++    *;
++};
diff --git a/package/libs/libpcap/patches/102-makefile_disable_manpages.patch b/package/libs/libpcap/patches/102-makefile_disable_manpages.patch
index bd1702be0f..5c8e69683a 100644
--- a/package/libs/libpcap/patches/102-makefile_disable_manpages.patch
+++ b/package/libs/libpcap/patches/102-makefile_disable_manpages.patch
@@ -1,6 +1,6 @@
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -588,14 +588,6 @@ install: install-shared install-archive
+@@ -599,14 +599,6 @@ install: install-shared install-archive
  	    (mkdir -p $(DESTDIR)$(includedir); chmod 755 $(DESTDIR)$(includedir))
  	[ -d $(DESTDIR)$(includedir)/pcap ] || \
  	    (mkdir -p $(DESTDIR)$(includedir)/pcap; chmod 755 $(DESTDIR)$(includedir)/pcap)
@@ -15,7 +15,7 @@
  	for i in $(PUBHDR); do \
  		$(INSTALL_DATA) $(srcdir)/$$i \
  		    $(DESTDIR)$(includedir)/$$i; done
-@@ -605,59 +597,6 @@ install: install-shared install-archive
+@@ -616,59 +608,6 @@ install: install-shared install-archive
  	[ -d $(DESTDIR)$(libdir)/pkgconfig ] || \
  	    (mkdir -p $(DESTDIR)$(libdir)/pkgconfig; chmod 755 $(DESTDIR)$(libdir)/pkgconfig)
  	$(INSTALL_DATA) libpcap.pc $(DESTDIR)$(libdir)/pkgconfig/libpcap.pc
@@ -74,4 +74,4 @@
 -		    $(DESTDIR)$(mandir)/man@MAN_MISC_INFO@/`echo $$i | sed 's/.manmisc.in/.@MAN_MISC_INFO@/'`; done
  
  install-shared: install-shared-$(DYEXT)
- install-shared-so: $(SHAREDLIB)
+ install-shared-so: libpcap.so
diff --git a/package/libs/libpcap/patches/103-makefile_flex_workaround.patch b/package/libs/libpcap/patches/103-makefile_flex_workaround.patch
index 93e07c69c2..e6597ae12f 100644
--- a/package/libs/libpcap/patches/103-makefile_flex_workaround.patch
+++ b/package/libs/libpcap/patches/103-makefile_flex_workaround.patch
@@ -3,7 +3,7 @@
 
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -59,7 +59,7 @@ MKDEP = @MKDEP@
+@@ -60,7 +60,7 @@ MKDEP = @MKDEP@
  CCOPT = @V_CCOPT@
  SHLIB_CCOPT = @V_SHLIB_CCOPT@
  INCLS = -I. @V_INCLS@
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
