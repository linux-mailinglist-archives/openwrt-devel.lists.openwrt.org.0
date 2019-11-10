Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9093F6BDF
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 00:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wvpxTZ0iJRCQr7h2qorp2EaXD8JnMFLaUTBY3Jeg9Xg=; b=YGTuakj55KqcHgX6/VrfKXX4Yi
	o7ptA7JyWlUR7eEnGyVB/5x2UOJ68oj/ZB+W4NPs66lhqI+BUuW57qZNict1jlVMdbzk52oAWTBq2
	+i956LLwnbJRBxH/K0YKve93+ggqd5Qke6E2Jm0hv/pU8x1RAbSzCEOss6LmlX+CnEn9Cx388ejdB
	0G5RkdSJ871ynmDF6KslW1+0yO9K4Ieh5+fxlbLvDsnXIBrkVcklFf0ZIyHiPhOTZTWQiVx78SYfY
	de4WP7UGQ7n5labotVKOYSDQr8BA041e90JADrWx+lAZIfz9NmQBnpa1sUtXDIY2DeRcLzKbA4HE+
	dI6ypJ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTwh9-0001Cu-SS; Sun, 10 Nov 2019 23:32:35 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTwh0-0001Bu-7F
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 23:32:27 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MvryJ-1hf0672Hhf-00svMV for <openwrt-devel@lists.openwrt.org>; Mon, 11
 Nov 2019 00:32:20 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 00:32:17 +0100
Message-Id: <20191110233217.2656-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110233217.2656-1-freifunk@adrianschmutzler.de>
References: <20191110233217.2656-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:gqwu/yTyMIf6izDr5ccFBqcwpjl377EnROn2DlIWeEt2M/Bx7dK
 rE9U+daUpdbFE7cLeE7rtX4Q8ED8fPn7mtUdoqINj2/kVeKISJuN/dz94wCAfmaT1gzpCex
 oFzFSF3RKbUcfLdYHm6FEOWyUcHRgssUHQC/obmBUctuOiSHc+4yhor4HEMHDSYe1fyFPh4
 c3liE6NLsQGM3A8ulN+tw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:D1U5RpVkpmU=:EiFAZxctPAdbyR1eTYMUsA
 wTwM3K4EluJjww40YWpSdnJ2mps0PDEdFhntFBz0YMh+350XD0GcCyrrUuRlWWwWmuFvoQOrz
 EaGJyp+YjeJY689GYeRetrw/XJJ4SmW6IYP9twXIThwS3YfN2ntjyChLNlZGwBnIosuM92az7
 PppDVm4yYAfJsgO4UiIXOGl4x2R7q62RCZwmeVNOcLYuOpIfIeEZt+R9N+RllepjX1SgB9oBH
 sogFBtoc7PU5MyCE1yqx8Tt0Di55uJ7kF2wZFI/pJiaSZaccIKHEwF/+4pH+sF6OHz4wbL3Tp
 3mPiHvNFBsgo61au1zTpUu6S018S/MZ+OKZZ7/BAK0ZBOplCHE4Bcb81mCtzx5DbsFTUDxgPy
 TQtjABBx3aApWvcU18b8LHstwjYlXzqar799XJTo1vlhAwWYUGaFIoHlh/1VPcnFNZ9WVX7KM
 USh1y7WnOONgk+JIg+8dr8RUgHoBgziN+E0Wl+2pQhpAj6vhc/QNiao5QWfS1LUofHWoSsRrj
 zQugRR0Ee6B5tgXp3Fq1OVf1nHT9Rb6UovalL4Vsi+92xg6OGs4YdcJySJ6UO9MeipiimvXG7
 CfajD+fbEW88v+R9F1QcXDRBO9m8a6OkAIEhCq8aj7ute3y32TIu5HlGP1XBSxY4HpMoaqrFI
 nTjS43xSVSDMwke3zwC7DQ8vdHo8NFbOkb1MFiuRYCIm3cUrH+0wIT54eaoeHkBhoN7wnI7YE
 15KqEff26nC+9KuChXtuUqEo5rxDwMM2aclBk7vuimlM1nwFn9QqDjL9cVL9RW5X/r4rCRlDg
 ZHvQqEhoOgN0EXvjdGqx7sgOCQrHovJzq1dSRzuKwJn9H8pJRyeRJMM9F1k+tve+/RHMcYjLR
 iZZtonYNM3jKQC+in6dYrAhFtJ6IQg6qaAbwdm0j8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_153226_555361_0B64DC08 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: read label MAC address from
 flash instead of using phy0/phy1
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

This replaces all uses of $(cat /sys/class/ieee80211/phyX/macaddress)
by retrieval from the proper flash locations. This will make
02_network independent of WiFi setup again.

For the AVM FRITZ!WLAN Repeater 300E this replacement is non-trivial.
As it would be the only device in the whole trunk to keep the old
mechanism, this drops label MAC address for this device for now.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Is there an easy way to retrieve phy0 MAC address from fritz-300e?
Can it by deduced from the caldata extraction by assuming the
standard MAC offset after reverse?
---
 target/linux/ath79/generic/base-files/etc/board.d/02_network | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 34f6e31047..a8ab07aef5 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -292,11 +292,10 @@ ath79_setup_macs()
 	ubnt,nanostation-m|\
 	ubnt,rocket-m|\
 	ubnt,unifi)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary art 0x1002)
 		;;
 	avm,fritz300e)
 		lan_mac=$(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
 		;;
 	avm,fritz4020)
 		lan_mac=$(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
