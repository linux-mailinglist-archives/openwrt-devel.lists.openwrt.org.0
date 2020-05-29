Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200E91E84BB
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 19:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqgX//NIyj1QoHyF1NyXEeXU+3QlD2b++vSEAv1FFew=; b=aGnu2FH3Zh02l0
	gASs6NvoAqHdNOzyyhWGD9A93+e2hnTjjZE5kDtKNtW7MYUoDIwJbgtd3QBa/dJRhqBz2rjFIRdDB
	rvM2SP7vTipifQwF5t3D6tPL0t7JAzMtUDFf6dUSRwB70egAKsWV8cUzGluGr6CqLh323NGK1zvjb
	jkBbDZqT0TMuCb0uqPKihjqG4xnwDOZuJfV+jYyYaNTaHRb+jn2OifhMin03eLPmCDSR5nvTbiAfn
	wArSqg/zdnT6qTUTTphPVWWlVWRfl7NmPJxW1remUf5z/wfPoawuP9Uv99zPUJS6SKgp87fRKBiT7
	1h9JB8JGZwOZkk0OC97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeijU-00041X-1L; Fri, 29 May 2020 17:23:48 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeijE-0003v2-1t
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 17:23:33 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MD9Kj-1jnHJe3bAv-0099gc; Fri, 29 May 2020 19:23:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 May 2020 19:22:37 +0200
Message-Id: <20200529172238.43399-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:C8jyiQKX3suzrXlIVJm8f9gIQtHEb7SEaJNazYsPKrVJyPPnldp
 L9aO9mavLbNnoTdi4ee3R4MhDv08wHym0UaFk3FASZEkfC95a4f5kTq1baMJlaGPdyKbsOi
 dX/6ZXztaRTU2a/HSILIhdAPpCY3o4+Y3hmwsw5k+uYfuHmfqFX37O+4z4IZkmjUHPXiyCv
 wPyLNkefnP2xYtV3ZXuWA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vhY/xSCvuBQ=:XjZmSZ8LvjoO6hBr3nLYWe
 g80IshZHvKvPxik7ymREKLKhPc5GYMNGF+rxZEMKBzHynRBJE79XvklJkrrK3oAP4nIeCF18F
 oIsxHzXdsClw3fqgtO0u28w0DkWvwjxbdvAauvCbEh6syfuFTbjdVuI8acebripGA800xsILP
 DRpYksp95XVDTLDcj59o/mfV2fex3PFxAuZPzgv5DpJofT/q09x/nJDdxzQhy/OHCQ5Exognr
 IqxOsaNW3rjRRVtKmQxSQjlc6f5Vr7MoWLLSnaeNljFC/N7QgD14bWOsjZmHtxYCqssvXvgMJ
 DnmcUZDzJqUUhUirxZX2s2btczGY4pje9ouUfeB7aEVScfNPLwkE7g2TNE0guxP0w6J8cSaoz
 eGBCpb+TLWyV6UJYr86eoDCho3ksp4GrhnUChZtHzSQCeeXDY4UwatVsIS3H1TSgbVwcnnDrD
 Y18ZyyMN4xeSOwIZslJiGtqVcymfm2K8p4B/DBQmUxi2iwYpD/FlbDvmyF32MKXznCo2VrKfQ
 EGczjBqj047rmOERbhHdoGMPb62Kcde2RouSf9iqVsCNQ6I5FbEngXeAGXw/2tvMK5Q4Gq6Fj
 0q671hSTBPqgR/tBgc4wFZZcU1/3y5fs+j9gCp3HwQWc7sbsDNV1pk+X4Bzny9XQo99yCqsg2
 gykCbZq+BtbX2jnagQL9HGRs6Aq83VnWH3aoBt4ERZZOnb+y0dZFhGHYrELbKAA5dcTWPxQle
 v8PNMTuBFqOV7gaiC1UrhActqvvzM2IazWag0eXDpTKlEVTrGmexs5BEOFHXVKNPpDiGzdqlY
 r8FHToHchVcTyzkxQB5xAykvBgHw4WhF4mKtC0L0pEsJpJtOLvGI+DcGwX4nDhDSkj6/M4o
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102332_390475_04B2E698 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/3] treewide: provide consistent basic
 DEVICE_TYPE
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

While the effective "default" based on frequent use is "router", the
DEVICE_TYPE variable actually provides a "basic" configuration without
selecting any additional packages.

This is currently set up with the identifier "bootloader", which seems
to be not used at all. However, the only targets not using "router" or
"nas" are actually archs38 and arc770, which use their own value
"developerboard" for DEVICE_TYPE which seems to have been invented when
these targets where added. The latter is not implemented in target.mk,
though, and will fall back to the "basic" set of packages then.

So, to clean this up and make it more readable, let's just define a
DEVICE_TYPE "basic" and use it for the aforementioned cases.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/target.mk             | 3 ++-
 target/linux/arc770/Makefile  | 2 +-
 target/linux/archs38/Makefile | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/target.mk b/include/target.mk
index 9bd4c14936..a2ceb7f783 100644
--- a/include/target.mk
+++ b/include/target.mk
@@ -14,11 +14,12 @@ DEVICE_TYPE?=router
 
 # Default packages - the really basic set
 DEFAULT_PACKAGES:=base-files libc libgcc busybox dropbear mtd uci opkg netifd fstools uclient-fetch logd urandom-seed urngd
+# For the basic set
+DEFAULT_PACKAGES.basic:=
 # For nas targets
 DEFAULT_PACKAGES.nas:=block-mount fdisk lsblk mdadm
 # For router targets
 DEFAULT_PACKAGES.router:=dnsmasq iptables ip6tables ppp ppp-mod-pppoe firewall odhcpd-ipv6only odhcp6c kmod-ipt-offload
-DEFAULT_PACKAGES.bootloader:=
 
 ifneq ($(DUMP),)
   all: dumpinfo
diff --git a/target/linux/arc770/Makefile b/target/linux/arc770/Makefile
index 8150f147c5..018d6e5448 100644
--- a/target/linux/arc770/Makefile
+++ b/target/linux/arc770/Makefile
@@ -13,7 +13,7 @@ SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=4.14
 
-DEVICE_TYPE:=developerboard
+DEVICE_TYPE:=basic
 
 define Target/Description
 	Synopsys DesignWare boards
diff --git a/target/linux/archs38/Makefile b/target/linux/archs38/Makefile
index 55708a09b0..5b3650ef8d 100644
--- a/target/linux/archs38/Makefile
+++ b/target/linux/archs38/Makefile
@@ -14,7 +14,7 @@ SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=5.4
 
-DEVICE_TYPE:=developerboard
+DEVICE_TYPE:=basic
 
 define Target/Description
 	Synopsys DesignWare boards
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
