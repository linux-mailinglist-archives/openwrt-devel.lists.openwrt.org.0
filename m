Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35CCE4AEC
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 14:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7MtBhx/Q5e62xTNcRAYhJuGvc6b7px6eiHp62Fk/WGs=; b=KH11conzb1smux
	KCGGKmAOcS6YGDAExW5GRKM9Q00c31iunt2JoA2xE2kd6NX3S9+5BLExMhXwpn8PPQjtKohgDtTfO
	PvdyDN6oSHp1Eb6oeC6RszNOl5YXeTZ/7DRLlloZaNLyAAMs8VbtnY6l5NmFl3EOc3825fwimOO6i
	KKaJwogylRPhlRYBkMBKcn9S1/eV/jRK4UHf5DhniSI3KGXUVjdiIZ7PwUnLFegTs99WVY7xflPi0
	8M8fuYfjrwTwrBwaCgmtUWiJ4crD81rWVDC8L+FlHAb+NhdPBnfEvMSQDlw54Xbhyxljlq3JcDjhN
	quIeEJsCJwVg2e5thxlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyYz-0004ta-Vq; Fri, 25 Oct 2019 12:19:30 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyYr-0004t9-7F
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 12:19:22 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N2V8T-1i0MRh2WhL-013u3J; Fri, 25 Oct 2019 14:19:14 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 25 Oct 2019 14:19:12 +0200
Message-Id: <20191025121912.3709-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:KqXfQHcUV+4/R663clWE2fQKr8BOFxcX+16uscwrFvqxnbIpkKa
 WNrCjrF4fEkxT9uwGXJgi9KBPsn00ctKGnvL11SrPDVGzZHhcBdzs667T0mW9WFqXY6K/5B
 iCUcR742KMGOFFSB3A2sRFGvOHBob6Lyen9cEqJpHk9zZDBNECx/p50bWj+WB4QBO5FZSOC
 hkuVCBVLksJHj7kaf2Qhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oNXg9hr5rm8=:jVBR9vpZBBOldD1IUfAesS
 vmUM5ymBtQbMckc6vXEnICLeoANwi1jRjWN53ggznc2urRLYgoPLvT9GdSNAB/RoNYO3Q9UPz
 byL3jwNPrwwLZLRiLheIzoc6ZAabSVkHBxfKW2T0LAup8FxWaGa6vTdqYll8Sds1kII2C3CDc
 flMcW9taQb1+8ImGaUKTkVKamSkcvSEUkczdBU+jY6dNly460RDQ2coeCjRjAWZ2k0aj5OLyy
 Xc+WcY2y0ZJEjERRFomAVqPVFWQz7F8BUKd2jb87ZQ9GKD+1QvS+JbyTO9syujtFv8/ElwX2y
 0GJDs24iIBIO6XxPk9h30ZwWBYAdxM9MeBaxyTCcFpQCyUEc5F14SVkPJoV9cHz8V8bSX1+BF
 LeSZMP2bbxR5pVwjU9sB7LdrmotK4Mw62BLozb5KYc40rRXQdgeKYPcYhOHsI8iW6lV3sMifk
 1f582LgbSk+tWuPWJW94brKVoy80IOQ+/Y/Zf1B47jA3uMwC1LYkwFL/wia2QeVdH9TYJiv18
 Glulohr4P6h+9WEfSe8mJQfF1RfjpBnEscxqxydlcsnzUGfT/XoK7bCGIbmj2qvk36cgEiGD2
 ZkZHbUST/RA897hvQr6WftVWPo65UHp/rUKuvj5RS+ITslHQl3VKRjJdymSGrfpuMhY//CDc2
 nUX9c/rr+Pe0nlH6JWcfkHoJ/kza9C/LfMAVntQgrJJDHa5tMCQmlR2SE4N97Z9iXNq7aUM2V
 128Bt/BOIygnZ7Za6E8fGUqUzfAQSCCAjybAZ8VfZv+PcmwPunOqZBgcWQHVyU8vmsj0DYYXQ
 IRsZcoLReA81JF0Sb8fU9fZg16zX0c8J/TkP7B40GHkinYz6pEza9r9RdbdB4RZyAnSDiZAWM
 PvTG+08/8h8Al68+K0hUu0bWwms1UZ+8TgatBv4Ac=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_051921_554063_B64C265C 
X-CRM114-Status: UNSURE (   8.13  )
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
Subject: [OpenWrt-Devel] [PATCH] ramips: remove phy0tpt trigger from
 RT-AC65P/RT-AC85P power LED
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
Cc: Birger Koblitz <mail@birger-koblitz.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch removes a phy0tpt trigger from the power LED, which
seems to have been added by mistake.

WiFi LEDs using phy0radio and phy1radio triggers are present and
used correctly.

Cc: Birger Koblitz <mail@birger-koblitz.de>

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi b/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi
index d0f8a4b3ca..e8b11e5d59 100644
--- a/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi
+++ b/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi
@@ -46,7 +46,6 @@
 		led_power: power {
 			label = "rt-ac85p:blue:power";
 			gpios = <&gpio0 4 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy0tpt";
 		};
 		wlan2g {
 			label = "rt-ac85p:blue:wlan2g";
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
