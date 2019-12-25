Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CBC12A856
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Dec 2019 15:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b2EPWiEIIK7jNYJ+dGH+CI36PIUzcF8buDxt607HlI8=; b=afU3CT/wN+w4L2
	xkPGAuqVBsVsWJU1k5Gz2xvZZA21eZdgLvNYuYLYgSLfXnRF3jdi75kg8vctWm3B74b9SAN14diYD
	9vLmRBq2O2M67s0o0k2j6tRQEcennF9q83wELHP/fTKZqAuF7JaonW1cjZaLiBClMQV1TpKXDLSsW
	uB94MfVYZ4aR8RXiuGo338SVdfS73X7WEfAvtCPSLTuEaCm80NPCSYvIZyw4p7NX9F9o8rEcYB14z
	xhyLwJhQuPCgFoJEPMVhl4Qb81rkV8x+mw3EjsQv30TjHsTTHbuhNY7YdEUbBzhmrKCwE0gHygKY6
	F2y3+fdWOqThlbUiuyQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik7qp-0001gi-Mx; Wed, 25 Dec 2019 14:41:27 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik7qj-0001fw-6Q
 for openwrt-devel@lists.openwrt.org; Wed, 25 Dec 2019 14:41:22 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 36284FA64D; Wed, 25 Dec 2019 15:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577284860;
 bh=G6ru/kKOvq83DWiVNwChkAXTLX/vyghCO/1X0qmOeDY=;
 h=From:To:Subject:Date:From;
 b=g1wjiQBssoxVtyXv1p056IKYPf0CuuqAPY+Gpj8qxgE0SsT3wpt/iwiHkrA7e+8JU
 mwwjxotDVzTYBxr93UzcVaKQq3EbLerE1l7ZG27Z/iAILs2Ta52w4EtmYI1rDf2G53
 PKvREwqcK0a4iBivhLKaT5NG8A4wCy8S30tKOK30=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 5494DFA646
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Dec 2019 15:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577284859;
 bh=G6ru/kKOvq83DWiVNwChkAXTLX/vyghCO/1X0qmOeDY=;
 h=From:To:Subject:Date:From;
 b=d8Wt9bpp1Gf8LhqFhT9fzlOPhnWm7gqgnL8znbcC9L2w0fnWc3G+YuK70eT8szuFE
 kRwqR8BSNzaFMXZ5nfmAY7it3sBVTZL9fyuKqFoVcXd1zJmH9IDmi1gLj8G6qMljn5
 /7NjUM6t8mMrD7dZ0cWbQ1CJDDavYGHqol/5aXqA=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Dec 2019 15:38:51 +0100
Message-Id: <20191225143851.12368-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_064121_380917_50BC66E7 
X-CRM114-Status: UNSURE (   9.42  )
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
Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: rename DIR-860L entries
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
index e5706dd5ef..31f7220eee 100755
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
 dlink,dir-878-a1)
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 465ee33434..c46b26e790 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -272,7 +272,7 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan:3" "2:lan:4" "3:lan:1" "4:lan:2" "0:wan" "6@eth0"
 		;;
-	dir-860l-b1|\
+	dlink,dir-860l-b1|\
 	elecom,wrc-1167ghbk2-s|\
 	elecom,wrc-2533gst|\
 	elecom,wrc-1900gst|\
@@ -555,7 +555,7 @@ ramips_setup_macs()
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
index 2af4b21622..53d00d31bd 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -115,7 +115,7 @@ define Device/asus_rt-ac57u
 endef
 TARGET_DEVICES += asus_rt-ac57u
 
-define Device/dir-860l-b1
+define Device/dlink_dir-860l-b1
   $(Device/seama)
   DTS := DIR-860L-B1
   BLOCKSIZE := 64k
@@ -125,7 +125,7 @@ define Device/dir-860l-b1
   DEVICE_TITLE := D-Link DIR-860L B1
   DEVICE_PACKAGES := kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
 endef
-TARGET_DEVICES += dir-860l-b1
+TARGET_DEVICES += dlink_dir-860l-b1
 
 define Device/dlink_dir-878-a1
   DTS := DIR-878-A1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
