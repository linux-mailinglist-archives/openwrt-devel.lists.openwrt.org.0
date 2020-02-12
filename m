Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303C815A90D
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 13:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v4G9PZSZe87lyDwj+Z7c64nmlhWqOlag/gYSrisskh0=; b=Nf7gbQiJ5GyEi/
	IL9PUD0QIeFvW7fs8Sly2RPhCmG/Qd+LuHmdLTGCTPuB/aet+xQoefqrmYvLnL1OkbVNRj3LOM8zG
	MIOMswVQnanFKm+t4G+Kl2QQLEhKPjInvS6TxqAjpybk3nAlFVpH+aitARbyH07zIcyjt1zk9IQBE
	nRLenMJjfq1XU8GCNDg1LtC9cukZG4xsNaz6qz0dujASpC80jos9alu0S+cAh2+mMkzFIFqaNXA0E
	jtRl3m+Bk8rq6Z+pwT0OSgC8Uy7AaN0T3ickE8ieiNGqKb7QNtFfVq29AcMpUwZdfu2ODMbFcZ6KR
	q9E6Vsmo6jEkvbPN0gMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1r4A-0002Nh-LK; Wed, 12 Feb 2020 12:24:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1r44-0002NF-4w
 for openwrt-devel@bombadil.infradead.org; Wed, 12 Feb 2020 12:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=jGkXfo66PbiC6KLYOQjrBk8drx6LIEjxU1g603b/mV8=; b=ai59mJdLXV63ncFv0n4U2xt7J6
 +pdIBy1VJuIz4aX4tH+xm7nP2ZsgxN3t6q87vk+bo8ZaMaT5osMmmeQU419xgbnDcBcyHApOO8CUk
 SYrukoXmxjdQJ8Kx+DE78BDsow0DCXCwaqm2JixtQ3IPYUH/sezsnE+9z4s9AgBrxz1umlL+CdJ6j
 z9uFSKf/RJwgEQs6ILxdUL1I4lD0Mn222VfwbOW9kn9zYPGk8gWAZQ+XIT4n9H9wkRqY8pgDuIzhp
 sbLTVB485t5k9pb2FFOQqTf4fXi+c3koEnD8zDx8JbsKb6K/Qm6Xtv3mkJsAdc9MwkMVP/7U3Q0cF
 7AcQ3k9A==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1r3y-0000hM-Iq
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 12:24:22 +0000
X-QQ-mid: bizesmtp17t1581510183tllxp3k8
Received: from P65xSA.lan (unknown [112.94.102.31])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 20:23:02 +0800 (CST)
X-QQ-SSF: 0140000000700060F3F0B00A0000000
X-QQ-FEAT: QSPOcZ5XRR/CBcwn11WU0AvL4LeQYYlcu0L3xEC7GWvWV96c5Wy5+MJn2aSY4
 XcQei8O594rACnkeom/NTG0NcGR8XLAMxNJtDBm+TSZozFRweR9mGcruD9yKdM7KRCdEGUU
 Zc3wf1oz/NCJKELHZH76qpxuyciDAHaYjIkfK7ExJgNAlT3oY/ZH1eJ5EfoDURpFWnyc5qo
 +T3IAxqdTZGtYUZHEyo/K4rlhizjwTM7Hn7pi9/Gx+JbMrWzf5Mev6rcsi1Mg5cTbjd9vBr
 xBNrgAejCCoo6v14XP+hgmTLVUiFULKzcPtg365vaPupspszCpvtzIBksqoi1D10e5ugFZv
 HxCFF5ayZayOOz9S/M=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 20:23:01 +0800
Message-Id: <20200212122301.15712-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] iproute2: update to 5.5.0, enable LTO
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Update iproute2 to 5.5.0
Enable LTO to save several KB of size

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/network/utils/iproute2/Makefile                |  8 ++++----
 .../network/utils/iproute2/patches/100-configure.patch |  2 +-
 .../iproute2/patches/115-add-config-xtlibdir.patch     |  2 +-
 .../iproute2/patches/140-keep_libmnl_optional.patch    |  2 +-
 .../iproute2/patches/145-keep_libelf_optional.patch    |  2 +-
 .../iproute2/patches/150-keep_libcap_optional.patch    |  2 +-
 .../iproute2/patches/175-reduce-dynamic-syms.patch     | 10 +++++-----
 .../iproute2/patches/180-drop_FAILED_POLICY.patch      |  2 +-
 .../iproute2/patches/200-drop_libbsd_dependency.patch  |  2 +-
 9 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
index d11a13facc..34b768a906 100644
--- a/package/network/utils/iproute2/Makefile
+++ b/package/network/utils/iproute2/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=iproute2
-PKG_VERSION:=5.4.0
-PKG_RELEASE:=2
+PKG_VERSION:=5.5.0
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/linux/utils/net/iproute2
-PKG_HASH:=fe97aa60a0d4c5ac830be18937e18dc3400ca713a33a89ad896ff1e3d46086ae
+PKG_HASH:=bac543435cac208a11db44c9cc8e35aa902befef8750594654ee71941c388f7b
 PKG_BUILD_PARALLEL:=1
 PKG_BUILD_DEPENDS:=iptables
 PKG_LICENSE:=GPL-2.0
@@ -121,7 +121,7 @@ define Build/Configure
 		> $(PKG_BUILD_DIR)/include/SNAPSHOT.h
 endef
 
-TARGET_CFLAGS += -ffunction-sections -fdata-sections
+TARGET_CFLAGS += -ffunction-sections -fdata-sections -flto
 TARGET_LDFLAGS += -Wl,--gc-sections
 TARGET_CPPFLAGS += -I$(STAGING_DIR)/usr/include/libnl-tiny
 
diff --git a/package/network/utils/iproute2/patches/100-configure.patch b/package/network/utils/iproute2/patches/100-configure.patch
index 248b1c0e01..0c19b2086a 100644
--- a/package/network/utils/iproute2/patches/100-configure.patch
+++ b/package/network/utils/iproute2/patches/100-configure.patch
@@ -1,6 +1,6 @@
 --- a/configure
 +++ b/configure
-@@ -32,7 +32,8 @@ int main(int argc, char **argv) {
+@@ -34,7 +34,8 @@ int main(int argc, char **argv) {
  }
  EOF
  
diff --git a/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch b/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch
index 720a7ac1e9..fa5ab8b9af 100644
--- a/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch
+++ b/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch
@@ -8,5 +8,5 @@
 +	CFLAGS += -DXT_LIB_DIR=\"$(XT_LIB_DIR)\"
 +endif
  
- YACC := bison
  LEX := flex
+ CFLAGS += -DYY_NO_INPUT
diff --git a/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch b/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch
index d255ae7b0e..20cd0766a1 100644
--- a/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch
+++ b/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch
@@ -1,6 +1,6 @@
 --- a/configure
 +++ b/configure
-@@ -255,7 +255,7 @@ check_selinux()
+@@ -257,7 +257,7 @@ check_selinux()
  
  check_mnl()
  {
diff --git a/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch b/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch
index 2e3ad18809..d25c719f8e 100644
--- a/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch
+++ b/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch
@@ -1,6 +1,6 @@
 --- a/configure
 +++ b/configure
-@@ -228,7 +228,7 @@ EOF
+@@ -230,7 +230,7 @@ EOF
  
  check_elf()
  {
diff --git a/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch b/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
index 05336a737c..d15549e3d2 100644
--- a/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
+++ b/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
@@ -1,6 +1,6 @@
 --- a/configure
 +++ b/configure
-@@ -313,7 +313,7 @@ EOF
+@@ -315,7 +315,7 @@ EOF
  
  check_cap()
  {
diff --git a/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch b/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch
index 0385bd737b..545b3c2c06 100644
--- a/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch
+++ b/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch
@@ -9,7 +9,7 @@
  endif
  
  TCLIB := tc_core.o
-@@ -141,7 +141,7 @@ MODDESTDIR := $(DESTDIR)$(LIBDIR)/tc
+@@ -140,7 +140,7 @@ MODDESTDIR := $(DESTDIR)$(LIBDIR)/tc
  all: tc $(TCSO)
  
  tc: $(TCOBJ) $(LIBNETLINK) libtc.a
@@ -18,15 +18,15 @@
  
  libtc.a: $(TCLIB)
  	$(QUIET_AR)$(AR) rcs $@ $^
-@@ -163,6 +163,7 @@ install: all
+@@ -162,6 +162,7 @@ install: all
  clean:
- 	rm -f $(TCOBJ) $(TCLIB) libtc.a tc *.so emp_ematch.yacc.h; \
- 	rm -f emp_ematch.yacc.*
+ 	rm -f $(TCOBJ) $(TCLIB) libtc.a tc *.so emp_ematch.tab.h; \
+ 	rm -f emp_ematch.tab.*
 +	rm -f dynsyms.list
  
  q_atm.so: q_atm.c
  	$(QUIET_CC)$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -shared -fpic -o q_atm.so q_atm.c -latm
-@@ -202,4 +203,15 @@ static-syms.h: $(wildcard *.c)
+@@ -201,4 +202,15 @@ static-syms.h: $(wildcard *.c)
  		sed -n '/'$$s'[^ ]* =/{s:.* \([^ ]*'$$s'[^ ]*\) .*:extern char \1[] __attribute__((weak)); if (!strcmp(sym, "\1")) return \1;:;p}' $$files ; \
  	done > $@
  
diff --git a/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch b/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch
index 449d4512fe..10c6b50b5d 100644
--- a/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch
+++ b/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch
@@ -31,7 +31,7 @@ Subject: [PATCH] add support for dropping with FAILED_POLICY
  		if (!end || end == arg || *end || res > 255)
 --- a/include/uapi/linux/rtnetlink.h
 +++ b/include/uapi/linux/rtnetlink.h
-@@ -235,6 +235,7 @@ enum {
+@@ -242,6 +242,7 @@ enum {
  	RTN_THROW,		/* Not in this table		*/
  	RTN_NAT,		/* Translate this address	*/
  	RTN_XRESOLVE,		/* Use external resolver	*/
diff --git a/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch b/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch
index f6ec945297..0d3cbe8dfb 100644
--- a/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch
+++ b/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch
@@ -1,6 +1,6 @@
 --- a/configure
 +++ b/configure
-@@ -299,14 +299,8 @@ EOF
+@@ -301,14 +301,8 @@ EOF
      if $CC -I$INCLUDE -o $TMPDIR/strtest $TMPDIR/strtest.c >/dev/null 2>&1; then
  	echo "no"
      else
-- 
2.25.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
