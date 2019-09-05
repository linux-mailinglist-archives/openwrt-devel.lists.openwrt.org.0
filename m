Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C67AA459
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 15:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UPCtrnaLLaBhb7Cjg37Ox025bv4qsGCTAcMJv64hQDg=; b=juykVlFXLewNki/JtehMYT0Q8d
	mGlUC+DndKm2X69VybHR7bsCSHvfqh5pjZYeW/h0G6vsAuCOcUhz5dUJIDecdnNMaXfm6BYsYnTS8
	XQbY1vYNZDQ0H53p6tmZhzB6Uk3dRXoh3FLRlugizHe6edqUahOsJWCHom/kuZOK+gm2ZfK5OZ7ju
	OE+eXUE/mAO6yYHB5a+HO3sFRPsKhiLbGTAGIt6HVXo+BK43X7GbTWAgLUpaD28QY9J4MXSLN8N+d
	2kjkGjh+SK5mdPVd1kXvCqR+/lPj6hXx7Bj4nwL0NBs4dPxoUlrg/Fjw9zcrhrm4mDZcK08eERF17
	idE0hgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rlt-0007le-3J; Thu, 05 Sep 2019 13:25:57 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rlV-0007aG-9M
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 13:25:34 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mn2eH-1iXoGj0Swh-00k8Y4 for <openwrt-devel@lists.openwrt.org>; Thu, 05
 Sep 2019 15:25:30 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 15:25:26 +0200
Message-Id: <20190905132526.2376-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905132526.2376-1-freifunk@adrianschmutzler.de>
References: <20190905132526.2376-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:zoNIPU3V1Ao+qArMCP7huaGPDPJ/i54hzHhzDAb+9Vkd52tH/yL
 FJXV5/SSzPXCKqnf3zYIjx3xcQ6fmJDx9ktwy4G5ek/JlO3wRi2bboQIUzf22GTNV+ZT4N+
 II7IDiKxD1OScKNsFQ4ZcnDb8P7iTLeLrDVcJByfmiozyO9RZd0U8vOx7VkY13zXNyvRgc/
 TBI6Z4o9gBXqdsDbaI4Cw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:maNx5+NkMLQ=:8MjE3BZXC+mJUE75/t17C0
 IlASplZXscuzSltoIaHn3BoOmyiB1BFqGbWXrGJwKZkqpfQBEYPP8iTmWpWzlp5KU/VXo+jAm
 vp//zJVXiaPtESFg7ErXt/81w2FhY2f1fHN1ZcBg8gwiq22BTrKvGDn1mhHX9CRpr0CMlG2Yf
 AcX7MacxzmEzVdTJPTbead01EfpRzKGHo6vquDilehQnTtMjZA9q8fnHffHFzuJecW57lQzc+
 ophAnCxFIaqRmmEYXhZMB1kI+3pRDUKT5tA3YYvpl+T7snFiln14suDaYcHZ4Axs1lM4ftoAS
 d4mrZ18xZFRDkjk9NfaWzNfh76jaiHr37I84G+PwqHzedYDcnHWQdkC7xLsz2lSG2gHqP3Ho8
 1UCPbqEA0LM83Ky4R0ajrbzYZRfETJ3Qp4cisWJLbW4oWfkNVvITy0quLvRaYqYbremldtCD7
 x4uVKDShktQVxLwdFcSaEKfcjjr1mOYbHTjGF99mM/AFB8M9QBGgxlckcooCpVuZbuxd2JuaC
 TlV3Di4HH1mhUjIjMuir0t6r86v1WdWa0eGC0WssFHfJihLFR8J6m5rLS/jR94cttZZrEEYSt
 mBKRw2uO22NjebnKg63FiDvHLKuQa8ZSu/J6ROXxpiSgRLtSVAzThVvtWFhmoCgbeh82yJnEK
 LJ+8GpIHfi5QrVjM+DG4Vg2KowcBcgEbmgkAF1WQYx/+GV5dRCrxFLcnhqU/kM408oxZzBTi1
 Mrhnza2v0y6kw04z0RJp4IBibGexYHTROhygYdCjxnIKZpkvsmHJwGf40J2hJ5WL7cbLHsuwI
 7fjy2UIMBzYbPWt0CuxhODtyZWcKJX9AkE7W4qeqqwUlg626rBuGqYdWmG1M02oU1GVIEHr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_062533_619918_BFA1DE50 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] ath79: apply alphabetical sorting to
 entries in 10_fix_wifi_mac
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac    | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index 52efd8baaa..8c8b7932bc 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -17,16 +17,16 @@ case "$board" in
 	adtran,bsap1840)
 		macaddr_add "$(mtd_get_mac_binary 'Board data' 2)" $(($PHYNBR * 8 + 1)) > /sys${DEVPATH}/macaddress
 		;;
-	iodata,wn-ag300dgr)
+	iodata,wn-ac1600dgr)
 		# There is no eeprom data for 5 GHz wlan in "art" partition
 		# which would allow to patch the macaddress
-		[ "$PHYNBR" -eq 1 ] && \
+		[ "$PHYNBR" -eq 0 ] && \
 			macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1 > /sys${DEVPATH}/macaddress
 		;;
-	iodata,wn-ac1600dgr)
+	iodata,wn-ag300dgr)
 		# There is no eeprom data for 5 GHz wlan in "art" partition
 		# which would allow to patch the macaddress
-		[ "$PHYNBR" -eq 0 ] && \
+		[ "$PHYNBR" -eq 1 ] && \
 			macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1 > /sys${DEVPATH}/macaddress
 		;;
 	phicomm,k2t)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
