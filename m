Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D58F477A
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 12:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IvH8jqXVz8Du54SuUwJg4s0SQc7rQDrKAvLXcqFQG3U=; b=TzaBRVj78UJwKj
	Lmjr2TzZ4yTafMH9MxhI8s1uE9P9kr3tsQtWKbh8ikY+WyF2kv3sq49mEFCMqKFi9MGHPagnM9FwR
	NkloKJmRDCB94Kc4jI4wvglF7+cI7rO1vdqksA5MEtLKk5IFJVBaf12tBdOzhf/6KvkY5CaqdHPKF
	QHg7qqN6lLPxmtGzjYkcgj/UJo41rCBtYJz4wX16ay1JTWJIZzf9pzSZagDEk82Vu0A+r+20d+SDM
	qbT9wDuZOaXNUPgjBiJ6VJHd7mpAtfDj/Hmj9Gfra8Tr+1ddld/KS5xfrIztmQ4x03UVzDKHaoZQM
	ArXiP+sBElPTp3/yLTiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2mp-0000mc-Ft; Fri, 08 Nov 2019 11:50:43 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2mj-0000m2-6K
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 11:50:38 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MbjBo-1hvdRP2pSA-00dIx2 for <openwrt-devel@lists.openwrt.org>; Fri, 08
 Nov 2019 12:50:33 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 12:50:31 +0100
Message-Id: <20191108115031.1464-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:OzlH6LlCmTsbDUsD4et+L24ElmUnfALzVSKZvljPtNW67owfb0X
 Ra8MQBWS0oWDdEGCH6Khtn0hPOqj8+udlVz+o6BvNLFePWYi/Nl328iRAKqnPqWaEik4TUP
 qNmoHa3+b61zAlhlkwi6fSsLwTUFhc/BFsZVaob0dsIFVhkuAcSrldltwIIty29VNudbC7Y
 a6ncSmP+b72J6w2pKmcPA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xO60AdCOQJY=:oyCi/Yhcd8CAtTo0BCf+Kh
 SpfuR5cp338wzs60jAlLH5ugVBbNtyPufCnPXKJzCBqmOPuAbaE72SLmJCW1fzbHYJKzs+4sT
 1KDUYnT7jxusYIlvCKgyWevsWTX0DTPP2VaOHDqxVb4I8whvXbk0EpY/V0lrLS3vX52ux4/Bm
 /1XcRj5+SNfMHK7Xml2Zeey/rg/LGJwzT+iKgSClrPxB04biRK4lb7mub++tj3BPEj48kWC3/
 nzRgivkPt63EwfLvbk3SKAJaK7ppLA42t/AaWZui3M8XUlW5o22XKEZ7qKUYdWlxmQFGcibkK
 fTrKQHg06XSfSPmVlAkU/O0/4WvAbrxn9HXwwGOdKU42fBNzosLn5VhUM6oHEDdquY4tUDdsw
 N5XxV2jMo8ZETnWW0SmgWEydYN1BJeuufCyKCwz7VpnW0DejE+GN0hJ0qNiH41krr+aZd2LNZ
 cglMTNIRxj/BMREaRNYO2i+uY7RNy4N65lnXb5UKfRC72HRAnljL4DF5/fCH/PO3xl+dPxfTK
 wOvawP5KRMU0cRicLItfu3mu+Ixvn1CF7L3DLuSTuN5s0E+vStqZxkLGQ4g1EROc3xA8XmXjf
 gfh7oAIsOZDlXe4vnIIc5FDSlIf6cX/9zpSMHB76C9H8oDHj4mcXQkHYjY35bpp3o/JURlLAu
 QffBqsE8zWdjLKVFeECvF8MhSSgOxrMwV9WYwNGM5aJu7vDX0FvDJmpcOSq4IG+uKxFufqun/
 wAhFec1U9mIjw+lsjJuGM6htSCDrgDXgI2xWleM1OXlOtllHaj7LZ3uE5j9dj0tfrH8HGEFX1
 VRVeXUsGS1QDEbSB8S7+OS34RXb/1XsYpUAgzkRqZiOBLB377wSic6tiY/rYSntdgYD9x618+
 moGUblcA/JRM+saijXuAOUyDm8HpK0VEgsSev+v/c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_035037_524280_3F988D37 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] base-files: remove shebang from
 uci-defaults files
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

uci-defaults are sourced and non-executable, so they do not require
a shebang.

While at it, apply consistent naming scheme.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/etc/uci-defaults/10_migrate-shadow     | 2 --
 .../base-files/files/etc/uci-defaults/12_network-generate-ula   | 2 --
 .../etc/uci-defaults/{13_fix_group_user => 13_fix-group-user}   | 2 --
 3 files changed, 6 deletions(-)
 rename package/base-files/files/etc/uci-defaults/{13_fix_group_user => 13_fix-group-user} (94%)

diff --git a/package/base-files/files/etc/uci-defaults/10_migrate-shadow b/package/base-files/files/etc/uci-defaults/10_migrate-shadow
index a354844fe4..481444f35e 100644
--- a/package/base-files/files/etc/uci-defaults/10_migrate-shadow
+++ b/package/base-files/files/etc/uci-defaults/10_migrate-shadow
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 ppwd="$(sed -ne '/^root:/s/^root:\([^:]*\):.*$/\1/p' /etc/passwd)"
 spwd="$(sed -ne '/^root:/s/^root:\([^:]*\):.*$/\1/p' /etc/shadow)"
 
diff --git a/package/base-files/files/etc/uci-defaults/12_network-generate-ula b/package/base-files/files/etc/uci-defaults/12_network-generate-ula
index 8871427c60..19d7ed7f2e 100644
--- a/package/base-files/files/etc/uci-defaults/12_network-generate-ula
+++ b/package/base-files/files/etc/uci-defaults/12_network-generate-ula
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 [ "$(uci -q get network.globals.ula_prefix)" != "auto" ] && exit 0
 
 r1=$(dd if=/dev/urandom bs=1 count=1 |hexdump -e '1/1 "%02x"')
diff --git a/package/base-files/files/etc/uci-defaults/13_fix_group_user b/package/base-files/files/etc/uci-defaults/13_fix-group-user
similarity index 94%
rename from package/base-files/files/etc/uci-defaults/13_fix_group_user
rename to package/base-files/files/etc/uci-defaults/13_fix-group-user
index e6dae2419f..bf9febdfe4 100644
--- a/package/base-files/files/etc/uci-defaults/13_fix_group_user
+++ b/package/base-files/files/etc/uci-defaults/13_fix-group-user
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 
 for file in `grep -sl Require-User /usr/lib/opkg/info/*.control`; do
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
