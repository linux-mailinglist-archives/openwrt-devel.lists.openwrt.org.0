Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53D64F155
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 01:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kq/LLcMOTRbHSifqQQu3p5KSNNQXA9GkMm2XSFycq2M=; b=MUF0LJ0HDg/JX9
	aZTxMuXSgV2jkYrHeQmG1T79P3AK+s42qvhWR2y7iiMtFOgVMK1XbimNHKEz514u18WoOaLpIISK1
	jx2g6g/6faDtkD+/IEeTGfRfUnRqg+/sSmHACvOtCbTks1ccH6WKvdvIz1P6kAeL8AcdFvnX/n7J9
	JjQb0TXbgn1FAaP6oLn8d5YcGdcQ5s6356Qzsn7xPp8KEzgOyHC+s1GSXatpSyns7GU5LQZK3TNKA
	unvwruRMa0cS11+u0XxdhWaM+xJsHZuEGEM2rH+aucmBGoShsgUgtCUim8VHgfKg6gzivnU/59zAY
	zEfwJxRC6gbWs5t4laeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTMG-0003b9-GQ; Fri, 21 Jun 2019 23:54:16 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTM5-0003ah-Ng
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 23:54:07 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Md6V1-1iE59e38lP-00aAc6 for <openwrt-devel@lists.openwrt.org>; Sat, 22
 Jun 2019 01:54:01 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Jun 2019 01:53:57 +0200
Message-Id: <20190621235357.992-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:1R1x4OBqIRlgam/AGFcypj2Ecjmem+yQTbx16lVhVUz2HPeKGr/
 4aSvY45/6gJY/sL4K8lS5D1oLKyi5j+uj/oMtyCfYo8KTQMQ2CbJ/3aT/VG6LgZDNvKRIPa
 /tF65PS8ckXlBYHW3Oj5FAnmxD/qicUZG+BK4RVXhnd/t93XISmV32hH6k7yHl5IL9JqUpN
 seLyP3dxBanapXVItDLfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DT9Qg8q6Fb4=:ZEdSJ5SAaWWAqqC1EwASn2
 8A3Ys362PcDbpZJRMBvBZ1EVnndK4GsBPZy9XCewe6YoXQ/PSxInFerP9K4VtwdyL1xQQ+jD8
 3ZzWMg9tV278KDPv0rBcM1bTzWxJtBTnMAYBIMvMpjk9NJacBCdeRkvlB5YUriFbAWaS942SM
 KsWF4ke0div4Lq85FkOl+9T7JDnaSiVeiNTR36wEkTzf/BW762WL4T3zeO4R9+lCvf0MDw6h/
 3O3vuteCYdcLrSaHg3hPRqOgNxG1Sv9Sl8ZxTJS3V79xmH18RkfgUSBj37iM04TbeP5ZrZlMX
 EFQIXR1A+HlHAIiKjhKGuBxOGSiGcDspLy/D+wETUXHhDB9JVPUoQZe9c6pMOFIHo4Z+c48w1
 K/Yd6c/D7FCh2jDcOHbaI+GCrS6M1KJa80qFS0+PIcNlIdJe4KWGNb78nZ1BOhlar5MqBEPAQ
 /u41/U+35XTJeqBq377dqV8hT9FXSdUpeHftznC13BudembsHOqlVHW85sGkMhaskryq2ZN4k
 /c7aI/5coYfPj0iKPW/fCWWOR6YvCetm013RrW6uG/04y75RAEuLfJiAvQFVDiQRGPku/+NLO
 M3Lqht4bsVgO+UBnxltF7DPG1gC0xB5xYSGYX1UacZD4ce4FTUUALWpiufYXwliC+U5uDW0kC
 SqaTvpcyQrfAuwU3DvxQOn6RgIm2vNBt9Rjk33cSK4cf3ASyQibm6YRoe+49b4JzV8pHgrtf1
 75LUW/S6XOzIe05DtOy8C7il2x2JD2DdGXT2zhDJ23l6rrVSY4YBB8w8Xnw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_165405_923479_9C1F3902 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Code style improvements in
 10_fix_wifi_mac
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

This fixes one comparison and several useless echos.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This patch is trivial and has not been tested (due to lack of devices).
---
 .../base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac    | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index 2da2e8bfb0..bdb8b71ff7 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -1,6 +1,6 @@
 #!/bin/ash
 
-[ "$ACTION" == "add" ] || exit 0
+[ "$ACTION" = "add" ] || exit 0
 
 PHYNBR=${DEVPATH##*/phy}
 
@@ -17,18 +17,18 @@ case "$board" in
 		# There is no eeprom data for 5 GHz wlan in "art" partition
 		# which would allow to patch the macaddress
 		[ "$PHYNBR" -eq 1 ] && \
-			echo $(macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1) > /sys${DEVPATH}/macaddress
+			macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1 > /sys${DEVPATH}/macaddress
 		;;
 	iodata,wn-ac1600dgr)
 		# There is no eeprom data for 5 GHz wlan in "art" partition
 		# which would allow to patch the macaddress
 		[ "$PHYNBR" -eq 0 ] && \
-			echo $(macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1) > /sys${DEVPATH}/macaddress
+			macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1 > /sys${DEVPATH}/macaddress
 		;;
 	phicomm,k2t)
 		# The K2T factory firmware does use LAN mac address as the 2.4G wifi mac address
 		[ "$PHYNBR" -eq 1 ] && \
-			echo $(k2t_get_mac "lan_mac") > /sys${DEVPATH}/macaddress
+			k2t_get_mac "lan_mac" > /sys${DEVPATH}/macaddress
 		;;
 	*)
 		;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
