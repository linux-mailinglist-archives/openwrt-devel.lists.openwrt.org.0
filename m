Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE9CBB6CF
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 16:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dNluY121A9t95a106SMfmenDP9B3tyjSfnH8Efl7ehw=; b=FI84aExulG1Y/U
	HKDgLSeYpjxbiNk8nqTVf7HYAKVq8QpyIBVMUE/IC6W/MK5AfYCcgf0UTZ0jCjZDRbmNuMIDmqack
	oEUor/ah53oUyCidswVlFHKf1WW4eDTqz7H8wFOsUQPaIeOf7Irt7pPdGg+PBMjTWG+81V9SnrAdb
	DPWpYBmwI9whJ4CbJXWtHufJnXG8y68jKu1KMXAqjp5XX9VQSBaGOTiTbdblLO9F0yTIv4MLSuIPq
	SU4FhlyXIqhF13Fwhqtziq0E3TamxdLgwcC5/wvA/+IMcAxdojxPqYaDWWzl9+t0XNz1HLTBfcN8Z
	ZjbX0+c2c4oEsLUz+V3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPNb-0004fI-2H; Mon, 23 Sep 2019 14:31:55 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPNR-0004eo-PP
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 14:31:47 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N4eOd-1i5M3W14el-011jXg for <openwrt-devel@lists.openwrt.org>; Mon, 23
 Sep 2019 16:31:41 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Sep 2019 16:31:38 +0200
Message-Id: <20190923143138.2976-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:g8eCk5E8qVrgqgb7+0my1sgweeLp0tr/+0Sf0D4Jq9RGfeL+YTR
 GlrgQIlMSlKlI9fitU4LqZaSxYnRKRP5jJ2dYluImIQUwpAJXc8JlpS9OHm5B2xkUozElWS
 cUz0E5fDY/UDBgPG0D6hxvCNKH4mRkDD5MEDSOJ+srywtxAdEURCu+S0Gch6VLNHTSZBb8i
 dWD31op32BJIn+0ws3T7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:g0RjBUkDqh8=:SeVTTSuB059xa2IOChbK89
 NRnHkfoQf69VJPvpu3AVvSRHnQBQkJaDJCzpNXXX6G6t82QmDXk3EiEXWrhegf41T7CiHIHkR
 aGoLJDxFbuO92X18u+rGfq9xwm835xDL4x6QSVcHD+2zI/Zxe1L8DkmoPnOP3wLiYbDMsnoAM
 osyoH2vCBq7jgaYRNRo9CLv/WZX5K2bRnTAzI+YXa/gTePViZETUPHHsrgpurE+oQXp24EJJR
 eEABhup4OsUn4uPcO6Tkgv9bq5CPmJAIinBCl01r4s/sAud+2aoUee6jwIkR9hnM3a7p/1Zov
 U/7ASekUsmjh567clUhMWjnEzkOPKEsoPTM1ZAdvC/s1MIpc5FgvFqh5QqMUNtK8R8163NfF+
 Yq3huNhv8DCNd9HRZ5xaAB7s4MpliLCcH3L0HeFk29XVTs6VdlDlsRWp9oa1eagrdJUpDjmVR
 /4WdoVs65Yqg56VtLZQcuiYYvJ1NqJN95AaRGZ7ESZUzUogozlBuPVWLRkyJVLR8pJW69cRVY
 UQhtP/+wq6L36ciABdR8XLlnbzYDobar8O1l35AMBtzNyHi2EX+fqWACHr1Zn8xESRsxY3bkK
 8W6K70YSaHlQgme6T1VmHJxTSgrv6v0lt1YrqQFqEm87tHA0hNpXrecYZcfaB66G+JDeDRhzM
 r0M/nOvBehcgbrhAO/+gRhqc0o9bdW+n6zcgj8r0zTupXSEObaMv5iPfyYvZc8MXJW8TK4SES
 aWdcIHfV3BvEGazgp0aKhZnZxDdpzVMNcpsUwHsW5WbXDwNV7X50kge+ELzzKt6q3dBSfqsSc
 IloM5ZFtH/dgp91ihwf8O5q4Qi8em86ukG4T65HzOW1IqfrNBvJjFqNSDit0BetqmOoHzgGev
 ahZehZwdodLWRTKaVdzJpD6PQj4p2LyXDYQLNJJPE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_073146_127871_62C616E4 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: add label MAC address for FritzBox
 4040
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

This adds label MAC address for the AVM FritzBox 4040, the first
device in ipq40xx target.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ipq40xx/base-files/etc/board.d/02_network | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index e5ba7260f3..082724ebfc 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -77,6 +77,9 @@ ipq40xx_setup_macs()
 		wan_mac=$(mtd_get_mac_binary_ubi Factory 0x5006)
 		lan_mac=$(mtd_get_mac_binary_ubi Factory 0x1006)
 		;;
+	avm,fritzbox-4040)
+		label_mac=$(cat /sys/class/net/eth0/address)
+		;;
 	engenius,ens620ext)
 		wan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
 		lan_mac=$(macaddr_add "$wan_mac" 1)
@@ -89,6 +92,7 @@ ipq40xx_setup_macs()
 
 	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
 	[ -n "$wan_mac" ] && ucidef_set_interface_macaddr "wan" $wan_mac
+	[ -n "$label_mac" ] && ucidef_set_label_macaddr $label_mac
 }
 
 board_config_update
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
