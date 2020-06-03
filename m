Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBDC1ED650
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 20:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a+fGrNEmUKYKxD07RsGTLvlcZAgHa/36tpGLpmA0lI4=; b=ZJi3SkRI/1f51E
	8CiKnZPDE7kEBau60nSH55ROEZI6By5hKj9/xle8pbZUUpjnnBJfx20vOmRJaS7lYQf6cgrBcwfVb
	4MirzSS0iGpca0LU5iO3BecYHLGyngmqCZ4LMAMzVOAGEFGeWyN18QG6ZoiGg/I00RddoLZsmJUVJ
	wJjBsEDd704gqpC6vUoBb2gL5G2dpnk8MwqmcPVROKtbHYMXJ9z2beBcXcTNCxpSugT8SmhOlTAQN
	fCw0EXeL2h/syeocR+48Jtt4rR4KXeqq3HPDsJr7VQCnNZmko3aVSd+sRTbiOejcaI/9RaDq5Iczr
	31TZhnjFKYU8Z7OpwhnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYMm-0000v4-H7; Wed, 03 Jun 2020 18:43:56 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYMg-0000uP-7o
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 18:43:51 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mk178-1jIAuT1cnw-00kN4C; Wed, 03 Jun 2020 20:43:41 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  3 Jun 2020 20:42:22 +0200
Message-Id: <20200603184222.14201-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:VU8brtbkTKITfG5dyE5fwQbE1aTTDybK06uGzPScmmeqeql3c1U
 ZK2CoD0gdXSc3DEMjZ7Lb81iInYYZDwAOoLsfoKq7IDKhZ7zEGoLIeir/M5MTijmlJo+mxF
 W/2DCaPTrlIB6eqQHcTuWTKS3Z5VIcxW+dAiLPoGFIEs2TJOFQSKc0YJFfCflDttTenTx3h
 q2FXjEvAyLftX2YSG1GAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:f87y2f5I0Eo=:J5Je+aXt3pkW99pF2A3eC+
 adTj4hNR2kRISTMS6YetHqdR2slsiGUJq1VzYZaQp2/JPagDaQAvMxq7vfHO6qmvSNLYs+oKT
 Ca/T2N3/AywYPf+c1iITySLbiyWPxrYRh9e7l1HIwL90iM5vtM2nmyoJtah9jQzN+Cj8rri66
 O1Nfznbptyyo58nLLwK7eyzGRfv1MLuY7Kh/824mltDFUbN07C52qxWGbLwIU4Gb+2ShbLoO0
 VzAdGDzrl1U44/Sj+03vkMvekPTw1CPIt6fvO0NCQeK58hQF5GMPliHa6lYcc/1F2bbofroKl
 XHp/Zp1nMlx7R9lE9b0nrulAAUnKZh3NXA78n4o+vAACblYNHwM3ihchtAx2rxDEDdjhkpEoZ
 pXqRBlWd/Bf4qK8hWloqBHjHMAUcIXQkVk9LQ0NxoaQIqMYP8WupUs6HTCx+xOMvQcYhPf7dP
 bc5VOQwrPFM+C/GxEBkGO3GdU4h4GVWXtKXWJWdJYf5TSu3WrRobXmYZN+r0o5W+R+BSiJNuT
 8ZdpI+vuwPs7cZ/ukm4fT6NERpLV2ubaP7M9uij+chKuWTW+aLJa0nRCu+aNWc7PCeXIKuS5B
 6OQLk9GW6n/zzNr3oGbyWavDOMOERrM1b01VUJhO5Q+PHPbet1efuE2bH0hVPtNDHuFBIFQIb
 RzRFfNn4Ghli3H5AUzhd3t8d29/lWABRRcy68XhEVV63y0YK2kXgMDy1zOWN3v4Kfq0q4DoxQ
 LNyWQ+UluF2gblw0uvv6nFHeN7UsB14jpO6U21omXxE7afI9mT/+lxRaE++JXPylA/xmy7oag
 FH5d221nBTXt2vOhxSw8XJppLTrKVL6DVqnyrJP768AmbPz67HebVsDJECrtZFbtPJQnt4P
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_114350_569235_698BC99B 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mvebu: drop WiFi migration script
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
Cc: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>

This migration script is meant for migration between 17.01 and newer
releases. Since 17.01 is EOL for quite some time already, let's just
drop it.

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
[extend commit message]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ieee80211/00-wifi-config-migrate          | 41 -------------------
 1 file changed, 41 deletions(-)
 delete mode 100644 target/linux/mvebu/base-files/etc/hotplug.d/ieee80211/00-wifi-config-migrate

diff --git a/target/linux/mvebu/base-files/etc/hotplug.d/ieee80211/00-wifi-config-migrate b/target/linux/mvebu/base-files/etc/hotplug.d/ieee80211/00-wifi-config-migrate
deleted file mode 100644
index a8173b3117..0000000000
--- a/target/linux/mvebu/base-files/etc/hotplug.d/ieee80211/00-wifi-config-migrate
+++ /dev/null
@@ -1,41 +0,0 @@
-#!/bin/sh
-
-# The pcie-controller device was renamed to pcie in Linux kernel 4.14
-# commit 28fbb9c539e2 ("ARM: dts: marvell: fix PCI bus dtc warnings").
-# This script migrates the path in the UCI configuration from the old
-# name to the new name and also back, when am upgrade or downgrade is
-# done. It checks if the name exists before changing the configuration.
-# This has to be done before the 10-wifi-detect script from mac80211 is
-# executed because this would add the devices again under the new path
-# name.
-
-. /lib/functions.sh
-
-PATH_CHANGED=0
-
-rename_wifi_path() {
-	local path_old=$(uci get wireless.${1}.path)
-	local path_new=$(echo ${path_old} | sed "${2}")
-
-	if [ -e "/sys/devices/platform/${path_new}" ] && [ ${path_old} != ${path_new} ]
-	then 
-		uci set wireless.${1}.path=${path_new}
-		PATH_CHANGED=1
-	fi
-}
-
-rename_wifi_path_list() {
-	# migration from kernel 4.9 to 4.14
-	rename_wifi_path $1 "s/soc:pcie-controller/soc:pcie/"
-	# migration from kernel 4.14 to 4.9
-	rename_wifi_path $1 "s/soc:pcie/soc:pcie-controller/"
-}
-
-[ "${ACTION}" = "add" ] && {
-	[ ! -e /etc/config/wireless ] && return
-
-	config_load wireless
-	config_foreach rename_wifi_path_list wifi-device
-
-	[ "$PATH_CHANGED" = "1" ] && uci commit wireless
-}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
