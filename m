Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92265184C20
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 17:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sOPuHLVoYoO2xEJri+MtufHSVcUNScJtznBtiT9x/mE=; b=TP4ercCz99KZD6RO5h9TBTeRUL
	ecjznYqkBdowkdnC0CPUyVrLf49Df/8FRIDl9lonEug31dpcpKSDYoQ3u85D71E8KUaDYfHCb5z1T
	aFRsD8oci2/Pbq4u9MxbsmFJD5BXEbWDD8aKV3B03wZcJBMIefaRHRdyJF/teOdjmkEVRpfAiAeUP
	/rqpshuLWKFq0IhAM7c6HrVExYvEO2H6skuOdl7lPn+CylaCUgwIU5rqw3rEuPE/qsp1AJz1GlaHN
	i1qWY21B8u/wrKxu4HJzxVv/l+YByyYGRbSjHtPDN9hTTp2bgS31DhkqBBWteq+mAruLdZrs4+sxl
	fduLQT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmwa-0005gF-3Q; Fri, 13 Mar 2020 16:13:52 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmwG-0005Pm-9o
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 16:13:40 +0000
Received: from buildfff.adridolf.com ([188.193.174.43]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MkHd3-1jaY1h2Icz-00kjki for <openwrt-devel@lists.openwrt.org>; Fri, 13
 Mar 2020 17:13:28 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 17:11:22 +0100
Message-Id: <20200313161122.32858-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200313161122.32858-1-freifunk@adrianschmutzler.de>
References: <20200313161122.32858-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:RKYkPM3v2bc6sFdnJ/tyAmU0PIEt0g1X4CujUTYPEj1vbcOReqT
 iXJcY5SbHHlDjtAzHekFsdze8g5vXeDKe37+xhkk3YoAu+H6uqBsOkWGlI8xY+5wPxXnfTm
 QEwn7bPdsb17qq8hK+y0rsp+Uyz/GfuegyytXyl54C2GOTE7+tgBMrugVjlb8t2ptyBGJPb
 wQeCro5MKxxwfYvUYzIFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TOGvEOX7Ug0=:LMr3uwUTYZ9rxtG4RPJvBR
 JBNyWfvv0u0k1bdNpcBpCv3jOALSJuYBU+fRI8G6K2luigNGNP8bTTp0qw1P/ZyxJ/J2oGcOb
 O7MOLMiUBa8k1ntSXDL7RfoytQMZDbRvuDoCTufOc2E+xPZ4ho730nea713nOMevqII+YSBNl
 jUy7uymAatLnnYRMIDISfU1FLi6TQGx9LkMi6YHy5NvZ7cqVhjU9OwEoffffNAxh3rYQUybyR
 7uTAZRe3sI3h/0rFRaYNejDXI/YPTJu1kxCS34Yzvqnq44cwEURSWC0abkNvmcj05JakhIYx0
 FkynpMYtHEYlq9/NzldnYgJL+s5eaK1UOm+OX6cahhO+vsS8liccPABgjVp8c+fOP0az93MgF
 qSl157ns2RQLbY0ok/WLC5t01PORLQZPeNMhF9rxdPd5DXgkj+kp4gKDkviIKHkqfnnf7nY/+
 3zFdr4DTVTi+Q/SxU83AdgNMOT9xLe+2BUd9shVmbl4RcD1z3IcrDk6dTG78h+NTYh+D7UT2e
 nooDkTpGI0ZBERamkoYfKGvfgD0+TOEBiGSlBbz4T919jDLty0XJk6BHayZ5AGsp6n+GVYlkR
 2d+LX2nZOEqXSo3nHMe3N0nWWT06Xn2/K3yXPCH7n5x3XUg5ANR3mrLEieIHbL3ELJ0ocFmjz
 ciLPjgM6g0GEynW4H47uNl9tD5891PTMjgMXyTcMgdmj2oqSYYOLbQsX/VQXANiviq7n8Y/Du
 OPMSMJEmL5DAY9s3t9T5aT0eQfsvoC27F3o10VBrGx3JH68Oh2oNIHdsZy96UZ+Bjn/q82igK
 Xl5eLC7uJ+zKqXbSlErqP73nrhNt5lqQ01T4zcHEGPqv/rrDf1vGkLqRroFjjbq51XuPfwH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091332_677718_E71A3948 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 3/3] base-files: move find_mtd_chardev() to
 /lib/functions.sh
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

While find_mtd_index() and find_mtd_part() are located in
/lib/functions.sh, find_mtd_chardev() has been located in
/lib/functions/system.sh.

Move the latter to the former file to keep similar functions
together.

While at it, fix some corresponding includes.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/Makefile                               | 2 +-
 package/base-files/files/lib/functions.sh                 | 8 ++++++++
 package/base-files/files/lib/functions/system.sh          | 8 --------
 .../ath79/base-files/lib/functions/mikrotik-caldata.sh    | 2 ++
 .../linux/lantiq/xrx200/base-files/etc/board.d/02_network | 1 +
 5 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index 8e252153fe..87c43fdc0c 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=215
+PKG_RELEASE:=216
 PKG_FLAGS:=nonshared
 
 PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-files/
diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index a77b669709..0438e9e25a 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -302,6 +302,14 @@ find_mtd_part() {
 	echo "${INDEX:+$PREFIX$INDEX}"
 }
 
+find_mtd_chardev() {
+	local INDEX=$(find_mtd_index "$1")
+	local PREFIX=/dev/mtd
+
+	[ -d /dev/mtd ] && PREFIX=/dev/mtd/
+	echo "${INDEX:+$PREFIX$INDEX}"
+}
+
 group_add() {
 	local name="$1"
 	local gid="$2"
diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index c7aa7bf75c..b5c68acb15 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -53,14 +53,6 @@ get_mac_label() {
 	echo $macaddr
 }
 
-find_mtd_chardev() {
-	local INDEX=$(find_mtd_index "$1")
-	local PREFIX=/dev/mtd
-
-	[ -d /dev/mtd ] && PREFIX=/dev/mtd/
-	echo "${INDEX:+$PREFIX$INDEX}"
-}
-
 mtd_get_mac_ascii() {
 	local mtdname="$1"
 	local key="$2"
diff --git a/target/linux/ath79/base-files/lib/functions/mikrotik-caldata.sh b/target/linux/ath79/base-files/lib/functions/mikrotik-caldata.sh
index 9c4016ee5d..81e262d874 100644
--- a/target/linux/ath79/base-files/lib/functions/mikrotik-caldata.sh
+++ b/target/linux/ath79/base-files/lib/functions/mikrotik-caldata.sh
@@ -4,6 +4,8 @@
 # Helper function to extract MAC addresses and calibration data for MikroTik
 #
 
+. /lib/functions/caldata.sh
+
 mikrotik_caldata_extract() {
 	local part=$1
 	local offset=$(($2))
diff --git a/target/linux/lantiq/xrx200/base-files/etc/board.d/02_network b/target/linux/lantiq/xrx200/base-files/etc/board.d/02_network
index f39898263d..6bb52ccf0c 100755
--- a/target/linux/lantiq/xrx200/base-files/etc/board.d/02_network
+++ b/target/linux/lantiq/xrx200/base-files/etc/board.d/02_network
@@ -3,6 +3,7 @@
 # Copyright (C) 2011-2015 OpenWrt.org
 #
 
+. /lib/functions.sh
 . /lib/functions/uci-defaults.sh
 . /lib/functions/system.sh
 . /lib/functions/lantiq.sh
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
