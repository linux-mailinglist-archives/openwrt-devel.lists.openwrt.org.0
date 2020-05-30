Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5606B1E900F
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 11:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jobxx45HEo9AoGGcGp+jdMwmfwSUY79ENpev+ujePIE=; b=SWzfzwz0+FDyhi
	A3jdBsFDhl7AWM42GhlQ0QsTrtSTSINv4AOiDTF8skBT6cvqIOAYqKRwODox/YLJUCT0rNUeTitIk
	XX9qdZyH83MCJSWxCyUmFfPuwpXO0ERA3yLFf6YvT+Gsi5IYKez68xF5pcJsi1mDi+Kcp+bl6t/Xs
	VNhpiNdVMYcYRDLxuotVkJpfKZCv2pPcSwmjMweHm1vvedV3C2l3PTC8ZMLFmjYU+1i659uQwChOT
	hPDk07Lk0isbrxSbrErMie1cYjRSQAjGHMRonyiZcMlDgKNvIdJMPGkDSx3YhU+c1m6iCo+K5Yq+/
	0cxHJHPGctTYErcI3SFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jexo2-0003ML-5R; Sat, 30 May 2020 09:29:30 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jexnn-0003FT-AB
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 09:29:16 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3suW-1ix8di17z6-00zkBk; Sat, 30 May 2020 11:29:10 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 30 May 2020 11:28:15 +0200
Message-Id: <20200530092816.1610-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200530092816.1610-1-freifunk@adrianschmutzler.de>
References: <20200530092816.1610-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:dGQM3Xs5NYDgtDtRRBPTSWn6mr5+BmqDcFyK7ebWcKDTWgNtHQa
 QfN2UvUF4QVmPlToQZOEvjwsJ4DE4NW4QURp1fEw0BlwPDJ+KspZcLydY5QROlEU9KKFWGJ
 LobbaPDXMShiCuOQ6t2zJpy7ecAtnN3B1lkHzxy3rwbY/rqpgIYDfc8PGxL3hS3zCOE9V1c
 Wz4OZqpFnWcfw/CSXvh1Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lfvKnNEuKHc=:DhKxCtXM0DsPdLdM5gSFsc
 XJGxumqokv4q20yG/fSMdgb4ZpCxp987NkGgWTfbXzlci+oxhY5LAbdDEqDkjDj4e3TabalT0
 6/vLKFM1qG+pjHpbOYGQMtosT4r/WJ8iiQVtsLuldkLh5jbSP+pz/3qYE8k/N+19B/oJFcBkg
 tjlRUuwH7y+0UnTD35T0xl6Jc0Kk8PlW5/YxYK+xLonsPxz8jHosi5xzKpOv09M66xMM17jNJ
 rsTxleMMnCdepxuzrLXMtQyqU1AlWmd7XYfgiU6MEsXj0jxuXW511grh1VjGobiwArryOJGyM
 25L5WYRoMdy2b3Nh++ASyNvHKN9GVl00Tpy+9VKmyQSxwA4BEMLq8aopHgVqRzCHBTwaRS8i6
 rAp+wjoP+lhg/3+OH7vq5lNPZSJeuKZR73o7EeXXtbhoJiZv4uQ8odLn1c585eCk+mKMr4X7o
 sKFfgG3+HAH1DBvnPhTMUeiJg951K5/J+TH1xoJyhbDhrF+wmrmrx7H5bUOG9RHR4iZjwraZM
 003pPSCskJaXcJHGs6RkhFoHOcPRDKwSuYSjxIWs7z20hZgpH/j//IJGC52cyNXKCTZ710Vj2
 SzjFqY+WjSTc7KYb5f7j/uUaxNTJF4Mg7767ERM7pnmtEBzJnmpItno4kjvEALx+epopdyjdd
 vpgXqjfzNLPZ2XBumhWJ0O8CbxOW9IpFvt4YaI3Irjvd1cDpDMc9r/fAs2R99+VHMf4iiEsEL
 9PqWBU3C0ccwAksYyMV/jFW5r327XnKUKz02TziaMive0dEzoiHxX+KYVicGI2bxTYuXrVtga
 TmVheS5aAM/LojnBJcw4dabRKHb/kgVXA0Tpo55BDdbtxvyyKkaCKuKipEO+NfgmVh+ijK4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_022915_642504_DFB9BF65 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v2 2/3] treewide: provide consistent basic
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Sungbo Eo <mans0n@gorani.run>,
 Christian Lamparter <chunkeey@gmail.com>
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

Cc: Christian Lamparter <chunkeey@gmail.com>
Cc: Sungbo Eo <mans0n@gorani.run>
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
