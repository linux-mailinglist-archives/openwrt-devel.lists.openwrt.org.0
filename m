Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78FA72F64
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3BBam8DoS4wpkNtO+C6axEoaZInmASAY8jFWX6j+2Ic=; b=J4fJOzH7daibgS
	O0VbV42m0xGCitXlKCXDkPmLCOnopJzCJnsAU1Dcp+9tAFbQuQNaZEio4yI9P5+l8J3BsebuCz0lC
	YfpaeZPj9ZcEazeLVdzXt3Dw6xaKNoLQQwkGH5PdSjdWG5HjyoHXKQr24FtRLdtvUV4VtekpoT+Ka
	G1QV68651gXYgrxiDHTP185O7BjR7ne5bLdjA0/O4QA787DKn8hBd5mMlXS1EKYaw6sIJfj/O+MYi
	vZNrYjHnQRtZikdUpsu8ga0QN4vW+YOr6Wv5BNmO7YbNRMHB8h+zAWiy/14mYYONDe+oWQRrh2nvd
	X5gwYraJF2+aqRIu1lrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGvJ-0004Wq-Ff; Wed, 24 Jul 2019 13:03:13 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGvC-0004W9-T7
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:03:08 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M6UuX-1hjwCd2Arh-00703e for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 15:03:02 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 15:02:54 +0200
Message-Id: <20190724130254.1252-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:03C5kFl/BlP6mLRZlcHSoK16Lv++lydklpiliPkfeFpSbS7ityi
 uglZaWuzz7sYlGC4I0/89nwHNUpi3eT0tZNGWK3bERz4QyWuxhmoOsZ4M/Tp2dCHPwMaZIn
 V9JQK0vlGxPiX/SaU4YXIH6Y38fQtJGwOwntl6cinjjOdCBgHe4HOWA2bStfn/gEF+JtF5F
 uicMhna2IRB1ELI4g9ntA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2eP3HU2J6ds=:viWn6TsxJeF2TS+65I0ZY7
 xI2zzEjOCCshdxijuKuPzpVc1iDo2krHlnyspryb5UjOsWovySSEnuEHKyE3ASIVzVYyRDYRa
 U5Wl6ZmQrTH1BKePFO6uIOQxUHolp5Yxg0hQ2up5k8jfQuamnFRL2vq7SdZM3PsD2e243Htkd
 Ucdo1Jwpz3h8pNOYlkGFvl4X1UCantfJvVlCC2I9i5JHWMKvhN+Lk3B+6L9vmT7H1x9uB6nYm
 KdANZJFPXwoOSFWiwdBGIKfr0u8wX76FKZgHDSvxaWcX6nP9fKawn3Tt8mHAa+J7mNv3YuKsS
 xOeFUnCv/anb+5otgCQK74TAZuf1U6S++25xcI0UKG5j0MsK93D9ZZaP52Nr3Y0yRpaSM0EyJ
 Xd0BmjUSi/GVD8epoa32dKiNeKMqW/yzeStANvSQFTAgk83yhb5R5WAM/KTLSypKBtlU1Fxqi
 f/BHfV4ecRVVsGd9N30v3KoXGn9lNeW2vaqUcQlw+qpFfBhRmItUbmOLK7fUkh+nrnmBA+Ydc
 FjqbZW49ztcjDS/ONb2RLCYMfgvqgpw5zSi0ZARRYJPm09pxp+1eb2YRg/KXvpdWUCRgof+td
 8BIu/okQipn4InGDkNyoHUWIrD1V7eJhEg8PE77VorR6EKu4fm71Nyur82B/YuuupjpRa2iJk
 +mwjKL3TAXik3MLDpS2h3W2VzZTEVNuXvhZcxIZZ0fyEyXbOwH8uvG13tCgeVzN42Fj2SLrOv
 BdBu2DHw7cdlWeDF1+6wVo/NgiSxdlqTAVlwED3n3nJVhjtcZ+aZlcfcs7k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_060307_231043_DD362474 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: Replace backticks by $(...)
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

While at it, remove some useless cat commands.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/base-files/etc/board.d/02_network     | 8 ++++----
 .../base-files/lib/preinit/07_set_preinit_iface_ramips    | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index a2b7d1cf33..6524eaf09d 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -14,10 +14,10 @@ ramips_setup_rt3x5x_vlans()
 	local wanports=""
 	local lanports=""
 	for port in 5 4 3 2 1 0; do
-		if [ `swconfig dev rt305x port $port get disable` = "1" ]; then
+		if [ "$(swconfig dev rt305x port $port get disable)" = "1" ]; then
 			continue
 		fi
-		if [ `swconfig dev rt305x port $port get lan` = "0" ]; then
+		if [ "$(swconfig dev rt305x port $port get lan)" = "0" ]; then
 			wanports="$port:wan $wanports"
 		else
 			lanports="$port:lan $lanports"
@@ -480,7 +480,7 @@ ramips_setup_interfaces()
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "7t@eth0"
 		;;
 	*)
-		RT3X5X=`cat /proc/cpuinfo | egrep "(RT3.5|RT5350)"`
+		RT3X5X=$(egrep "(RT3.5|RT5350)" /proc/cpuinfo)
 		if [ -n "${RT3X5X}" ]; then
 			ramips_setup_rt3x5x_vlans
 		else
@@ -599,7 +599,7 @@ ramips_setup_macs()
 	hiwifi,hc5861|\
 	hiwifi,hc5861b|\
 	hiwifi,hc5962)
-		lan_mac=`mtd_get_mac_ascii bdinfo "Vfac_mac "`
+		lan_mac=$(mtd_get_mac_ascii bdinfo "Vfac_mac ")
 		[ -n "$lan_mac" ] || lan_mac=$(cat /sys/class/net/eth0/address)
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
diff --git a/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips b/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
index a395956d04..0a485c5ee8 100644
--- a/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
+++ b/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
@@ -4,7 +4,7 @@
 #
 
 ramips_set_preinit_iface() {
-	RT3X5X=`cat /proc/cpuinfo | egrep "(RT3.5|RT5350|MT7628|MT7688|MT7620|MT7621)"`
+	RT3X5X=$(egrep "(RT3.5|RT5350|MT7628|MT7688|MT7620|MT7621)" /proc/cpuinfo)
 
 	if [ -n "${RT3X5X}" ]; then
 		# The ethernet switch driver enables VLAN by default, but
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
