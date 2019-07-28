Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0EE780D9
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 20:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x6YG/EGeychaNrjBeHbD4f4/6er730+OAB989qkT+78=; b=C/lhb69SrNk7Cu
	4QmBHE7ikK5bAt6HxgUPwkEsYFbRBpOw5OOJWHpQNMzhJdvV5Z8uR1nLcMfZDy/ZhRBlHcl1R6Uwx
	PRBWKlQGPx//3DF8CAlOv8fhtVY5kMi+WrfSKklzetE4rfDwSClTBoD516fmWjbTnzAKpPpUzBd9A
	CbqXNpBfI7mhwMZA3XTQaw5KoOzYIVTSED8+RwBRSaJ2qsIAorf4iesrKlbZoFYr6VprzWOk5+t+Z
	X/rq49c0JnoGytIJrghJkBjp5FLaIZ9HqwiJ1wDugZ5LVorBQrqD1Es9RIdEoERex7ISYv3cYYkcQ
	bXdUVy1MM95rJzFz+XFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrnbC-0002vu-AK; Sun, 28 Jul 2019 18:08:46 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrnb2-0002vD-6a
 for openwrt-devel@lists.openwrt.org; Sun, 28 Jul 2019 18:08:37 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MZSJa-1hvYq21uVS-00WUyJ for <openwrt-devel@lists.openwrt.org>; Sun, 28
 Jul 2019 20:08:28 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 28 Jul 2019 20:08:24 +0200
Message-Id: <20190728180824.46951-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:y7PQTg8fCN1hv7ske3jQl8VS87O437L24FPPg0ECk/w812CEgSG
 QkLO9dE8oNWb6mQD+LP6pg6O62BjvwANHQ06b1kek42wbTl+NvtFVdF8NXJ9fhCPj9fL1AR
 uyzm+G1DXV1Q4ahDDjPSqktslqeZqLoOtBEhl4zSyuKwX4vAFeSZ66YrSgiFxtkOGxYYTO0
 xVefzdCF5foVQki/04cDQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3kXwybmkMzA=:tC40rIAWle5+TX+AnvUBWT
 CKxvt8R3LdHfqjnEIr1nrBA4Mw09NPv2G9JfxGYNeffcMPbBQIGpE5huGq3JcjLFApK9lf159
 gneNEYAgCv80/Jma5qR0kS2m8FZ2R6e0FSK1dpQS+Zjdk9ekCuKJlN0+6K9OCi6JbNVwgpLiq
 OQEbypMm37rcYScmGLeQLp7+ji8fzdDwk0M+zg5NLSqRPlyY6L7HPvFdXoNdj/dytk0TJcFJ2
 JrYKtd2l5V5WN49q9WaBjXOrEANBl3EUTWoG2mXDW1zlsApHGjPl9yBCQCIiXmr8em31xoVv5
 0+Fh6aKKwUj55QEi8migZMQjrl8i2FRwQZ8F01ImTFKiNeL9UzTY1WIwJsMQeHdU23B/4tyzQ
 GjrSK+H0xoUKekPfvwb2bh/nEYxydfvuHfawsQRR3K5AbEjaZh9rvEbW6QZXjmBcrxBKpuSnx
 qIMrAQVlJq9LX8O0sJEyKFNJpohsx3ntYlWM07uZ6vdYMwH4myEl0XtaexCJehvAhn/zEnjNH
 AGW84CJgorRIDuB4VfbAOvFVx5KymXTiSos14rDFn4Khc7XOpQLONcU3vT8sRT1rfBYY9k6ss
 eiDI87jhQmuu9yugb6le1LjwqQZa0A2WjXJ8nWFuZoxpAThS/nFjdsmzWWaoX1HUawOP5nN1t
 hHmDSPI1iIsFyizcAAWrBBv6iojeQTSeivhH8uguAepZuovujkoytN+WjEgN4rI22F4aZ+9jN
 eyFx+OHZPzuTna/pbbDWbAWunSasqlKulrTChrGGIASBeTxQx+RVg/jXhpU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_110836_536650_98B6F3CC 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Fix indent in TP-Link TL-WR842N v3
 DTS file
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
 target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts b/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
index c173add252..17fa09dc78 100644
--- a/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
+++ b/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
@@ -110,7 +110,7 @@
 };
 
 &usb_phy {
-        status = "okay";
+	status = "okay";
 };
 
 &spi {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
