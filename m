Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4076B12AE40
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 20:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wvImDrVBfiw2SZ045dDMtYOY3bFkvBKgXmNN8FFqYoI=; b=Zr2BYn1RGRdpOG
	EakkynNWYXoJ6Fg77QVcsVv8Te4GhSBGSAeFN45/GEemPbnYjvLkhMznsz3qG1Q2V814O+ni+xFnc
	RPmiUDITKn6Tp9AvCpkBoZMpw+laBxxNOHK6DtClSCaYKLcb4R0wdkhF7oznP4iAMN9mnVGKLO3Ui
	noNfL2/MtDNPhPATKqrOQzBLZvSt8jrt4v4nsVHv3VvrpXOyqOubZ+GE4albdsOtdHgvhmovPnkyK
	z+nlY8rM+ck3UBWJ52C7NLmtsoEEqAphG4pLvAtviqHeNylJplbajOlEhJuxTwLucZBIfZHYYI3u8
	lc72V0fh3JN3d4w8PsXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYbb-00040F-Gb; Thu, 26 Dec 2019 19:15:31 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYbV-0003zi-6F
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 19:15:26 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id C2C53FA687; Thu, 26 Dec 2019 20:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577387709;
 bh=tgv0O6Tar9xlGrLrhwvCYCzLeWJpVGQbvnL2z2LQlTQ=;
 h=From:To:Subject:Date:From;
 b=MO3c5DpoGj5vBWzwCKi7lr4xeLae8O0W1c3JswE+o11oDHLF9f30VN1WZUKkQ7jxp
 GnDyGdExB4FpmpEffvw79LqfZ4DRRarByosY9TDuiM8e7mssF1x598xSG96+ZbuMTW
 tCmA+EsaiDB91b+DWsv/S/5NhqHC4UJ4cZU47vKU=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id DCA80FA684
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 20:15:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577387708;
 bh=tgv0O6Tar9xlGrLrhwvCYCzLeWJpVGQbvnL2z2LQlTQ=;
 h=From:To:Subject:Date:From;
 b=N9q0IALztxJBZ6dN3YShXODPlQAyDgwaQAcV7Af0OnZAVw2Arl9Kj4l4dlDlZBmif
 /MjXTwIMyVFmCsbN1tDtaAodmF08PfToYxhCLIYTNhRnJmiqKDYjROv1dd4UBc+zP7
 AsWhWC/Jxq7oRLfOX7xq+rIT4kWe88zqR5Zo52mk=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Dec 2019 20:12:11 +0100
Message-Id: <20191226191211.5262-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_111525_377022_00FDF795 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2] ramips: rename DIR-860L entries
 according to the new manufacturer / device spec
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

Most images follow the openwrt-target-subtarget-manufacturer-device
naming specification, but the D-Link DIR-860L rev B1 does not. This
patch brings it in line.

Master had this updated a while ago, it's okay there.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ramips/base-files/etc/board.d/01_leds            | 2 +-
 target/linux/ramips/base-files/etc/board.d/02_network         | 4 ++--
 .../linux/ramips/base-files/etc/uci-defaults/09_fix-checksum  | 2 +-
 target/linux/ramips/image/mt7621.mk                           | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index fb74a2c87b..f08f6d7b1d 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -160,7 +160,7 @@ dlink,dwr-922-e2)
 	ucidef_set_led_netdev "signalstrength" "signalstrength" "$boardname:green:sigstrength" "wwan0" "link"
 	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0" "tx rx"
 	;;
-dir-860l-b1)
+dlink,dir-860l-b1)
 	ucidef_set_led_netdev "wan" "wan" "$boardname:green:net" "eth0.2"
 	;;
 ex2700|\
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 77cc8d63f9..38d2d38c2b 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -271,7 +271,7 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan:3" "2:lan:4" "3:lan:1" "4:lan:2" "0:wan" "6@eth0"
 		;;
-	dir-860l-b1|\
+	dlink,dir-860l-b1|\
 	elecom,wrc-1167ghbk2-s|\
 	elecom,wrc-2533gst|\
 	elecom,wrc-1900gst|\
@@ -553,7 +553,7 @@ ramips_setup_macs()
 	dch-m225)
 		lan_mac=$(mtd_get_mac_ascii factory lanmac)
 		;;
-	dir-860l-b1)
+	dlink,dir-860l-b1)
 		lan_mac=$(mtd_get_mac_ascii factory lanmac)
 		wan_mac=$(mtd_get_mac_ascii factory wanmac)
 		;;
diff --git a/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum b/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
index 54deb5b2e0..40746c6af4 100644
--- a/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
+++ b/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
@@ -17,7 +17,7 @@ case "$board" in
 cy-swr1100 | \
 dch-m225 | \
 dir-645 | \
-dir-860l-b1)
+dlink,dir-860l-b1)
 	fix_checksum seama
 	;;
 dlink,dap-1522-a1)
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 7eb59188fb..6507e40f86 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -110,7 +110,7 @@ define Device/asus_rt-ac57u
 endef
 TARGET_DEVICES += asus_rt-ac57u
 
-define Device/dir-860l-b1
+define Device/dlink_dir-860l-b1
   $(Device/seama)
   DTS := DIR-860L-B1
   BLOCKSIZE := 64k
@@ -120,7 +120,7 @@ define Device/dir-860l-b1
   DEVICE_TITLE := D-Link DIR-860L B1
   DEVICE_PACKAGES := kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
 endef
-TARGET_DEVICES += dir-860l-b1
+TARGET_DEVICES += dlink_dir-860l-b1
 
 define Device/mediatek_ap-mt7621a-v60
   DTS := AP-MT7621A-V60
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
