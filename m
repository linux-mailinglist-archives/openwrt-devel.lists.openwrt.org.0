Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09074A3BB
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 16:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T8dRTYeHPPnjOqpgJa9E4ruaK/dRpbwXV0h5GZKRKFg=; b=livqN/Z+g+8Wc4
	QGATbsUfGWgjEE9ZjNWW0dSZO8MyG+FHheYNH9xBIsgUSfLKQEgMohE64TWIupvbcIBVqyy7up067
	RNHIeNbsfMDVLL2RpNJmuFMzXjvpGRVEBjpy+QWrqABAyC4+U4q1XmavmE4SRQlFmtpAqgZowgk3A
	C2GKGGN9ojQz8olvzeTRHqMNT/GcVLAqi5tYQjrtcJwz2eU5BE1bFcLwAs+vlJkbLBNBWSxZhJFzI
	1muzn2GOkigwyObapOmVoGkhJZydAoID5fAlkUIc6rB/9ieNk3yJLo3+h+i0u9FeU613FPwCqB+Ch
	q+CPEk6UrZYXFBP9I0gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdExw-00025k-7z; Tue, 18 Jun 2019 14:20:04 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdExj-00025H-Uu
 for openwrt-devel@lists.openwrt.org; Tue, 18 Jun 2019 14:19:53 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEVBc-1hokEV3s66-00G4dr for <openwrt-devel@lists.openwrt.org>; Tue, 18
 Jun 2019 16:19:46 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 18 Jun 2019 16:19:42 +0200
Message-Id: <20190618141942.1571-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:pnIrUNCocEISwrgDD4OFhz5xLiY6m3QnsEEw24lk3Dx/xI0BTZR
 56wZkdehkm9PCyUv+Q8kqAD2iyzfkeMEXAe219f+48Oc9dk6dT5RaD1b6d1fuEbwRrCbnro
 JV6XpwAOxPWshpSfCRqpPF1zYu9xUDDfTx9uAX1UdsMglm8vP1Z/thwMsNFU+qicRqw8voE
 D/GHvevftbtKhzRjmmC9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ees4pIhxhlM=:c2oAGLBFD4jA+k0E8hph0L
 rx8MP84X8WXm/ASBG9Z8WbwjfESk6T11zZz6ZbUfUK8ZgYX83zp474XnJO+EfabuEEcX2L6HR
 laSFbOWK7yHI+TJljvpIJSw4LLpKAcUzKa86/jomodviUsr/qa+cAJDM9DibSbikotAtmyxkd
 EeXt1fA70mn8ARbi8fc45Oh69yvCVH4BaD2aH4feCcYKVnvrvki0k9C2TjFonrYJgW5U1u8Wn
 36ErSUNROA8P5CW1qXeveLM5kwsx5x0KiVJM26p6rQr6kuHNa0r4o306/SiG0Hk/4MahH+10i
 4ljG8ddKKY9sBoxEA9DeLEU1YxQ5mnokFb1hsfMALUeXOfGVODnG+S8hLargwMxMjJteY95ys
 aEwcRC/IrFP5fV7JVbZOSKZfZWzopyxrYbRpstx2NcSEs2DLzUpP067Hf1DAE44zd2s+p8ys5
 /jp1ue6UuoQTw6SaL7wEHbIpQkTA5daAidQsObxlFC/oYSKOL0j7GeLkVfMUUI+bJGTDgzibh
 nZlrTz0l6zu5yxmNCWqe8zQvGqmc7FanXcpVVZT9cu/ZaJwl/uDC/RRDvBv93XgklPzz0bEmk
 /jDIs3ZdAiCfM2hdOFQKU7P06xLbtwtxfvlT1uG78d4ZmJ/qkbYYMPa+uE4NEbrw5gdpa6B0N
 irYEJA/7zuz2La1DlWKUsr/ystlS5dVKYS+nvmkY54JCgxv68ShWhChcLjlsnY4zHAQBggN8t
 i4704+KP3lZjeBM8kj9UTurROlBOD6opAjo+zKCDwEA0dvJWRZoJz3yLb0c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_071952_290434_FC4D1659 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] openwrt-19.07: ath79: Add SUPPORTED_DEVICES
 for Archer C7 v1/v2
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The identifier for both devices is "archer-c7" on ar71xx, set here:
https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/base-files/lib/ar71xx.sh#L348
https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/base-files/lib/ar71xx.sh#L511

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is a trivial backport to openwrt-19.07.

The required migration for C7v2 is already included, since it was
merged before branching off openwrt-19.07.
---
 target/linux/ath79/image/generic-tp-link.mk | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 8431e3a347..4757df49c6 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -81,6 +81,7 @@ define Device/tplink_archer-c7-v1
   DEVICE_TITLE := TP-Link Archer C7 v1
   DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0x75000001
+  SUPPORTED_DEVICES += archer-c7
 endef
 TARGET_DEVICES += tplink_archer-c7-v1
 
@@ -90,6 +91,7 @@ define Device/tplink_archer-c7-v2
   DEVICE_TITLE := TP-Link Archer C7 v2
   DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0xc7000002
+  SUPPORTED_DEVICES += archer-c7
   IMAGES += factory-us.bin factory-eu.bin
   IMAGE/factory-us.bin := append-rootfs | mktplinkfw factory -C US
   IMAGE/factory-eu.bin := append-rootfs | mktplinkfw factory -C EU
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
