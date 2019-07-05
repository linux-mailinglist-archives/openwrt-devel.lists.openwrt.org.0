Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A2260AB8
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 19:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fc3X4tDOJK5e3oYPvrC4ObFUZbCcNGL+llavlV0j1LA=; b=UP/t4MNZb4SFwn
	x2W6SuwjjXSCkqAxt4pAqGwYTiJgqDP0AL0Nt04+XLhG57TWJfut5GZSjcQljS2y9g+2fQSRUwyRX
	uEnKIGrztKi5DWab9/xB/88kIB02fOR6HZ3tBLW7XhcPvMFVIfP1OKrH/pSDzjzcSrgJ+LUGoiOJw
	OHDbvNACivbwKfqNq56NDVHLd+gvU8HyHrOPBSintqMuKl9SnKxYT4rkUvG9BJqjNUbgWCw+9p7Or
	Hma8DeS115NlmT11J7a87bFn3UsGvzQRF8gC/uz4qmC/iiu/bAzZE2Yxr8oZyyYRJk0tk9b3YIQ1m
	2CVzeyCVaB889nVAEskA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjRcu-0002xI-Qx; Fri, 05 Jul 2019 17:04:00 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjRcn-0002w0-LP
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 17:03:55 +0000
Received: from localhost.localdomain ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MeCd5-1iGaBM1v6t-00bGCF for <openwrt-devel@lists.openwrt.org>; Fri, 05
 Jul 2019 19:03:51 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  5 Jul 2019 19:03:48 +0200
Message-Id: <20190705170348.3311-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:QeQlwL8QiVAkKZuXlCCujxEE+NRjKrdvxQ661wpIIvkgj1jtd8P
 leVsiOHd91+4QcKKQCOu5ZIaTawh8Gfepqw+ibot29jCCF2S41yZeP8jqcCaUHtXYTkXVzw
 AEpHNi2psLeSPY5Yae3p0xkynaOv3LMp0XDomIFTTMCArDZZsn2Hpp4Q0528BacaW1zrc7D
 HrRidlDA9FJnBZiOSmwHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PSjHzhP9vPA=:JoDpmLns9ytajwr1toakQR
 AtEccIe9++fzM2AAmxQk/QWLFfUZ0eVKPFJQ42MV/N6NzEvcWAA607NBJnQbm5+t+4cTmdlRF
 fFqjoQfO259oUSU15yO7X74JyyszEOCcaGyNVp+HSJIWRWyhLaR8QtwdUsMB8tMXJmbzU0Xef
 UuuaUq6Aml5tFw3f3NkxK7O1Y3OkIurxrDsWR4Rt1SSV5k/pUlZp0zlfPiIv+73iYRtUi5BTh
 +MI4/rD+xVeF9NUJZQdfq1hlho2p4elC937jAYeMTJhvWLKSRXYFauaJ66Za9PlhlsF78LNA7
 mykSHjmLHoIXuvXTfyIsS4TJPrg+OvhQbO0BHiMh5EbPKmm3ncHA3zGmUn7bpBzLn/AOfbdoc
 y1+iNu1dt7rGqiwX/niEtA0rS/NnAGIYPXt5NI5I0CcNhFyt/neddti6jemmS1527y19S/iFS
 v7OucQZyB05gZtp7Xj9HkfipOl2Y093FrG7IjPEvcsROMVD/wEmpUetZCB77f1QwGn/a0NWyJ
 /mto2aQs1Qm2X7FOw1LHPTFp0knhkZn/H75AzUBiFNUgBnvmnT8S8mmKxfMYzAleClK3hL8Q6
 5vjAifObheJKcZcNYIRXwEiiH/5lKlb/EMrUXvIG3veii8zfE8uCFc8M3HIuJNQYBuWKcahE5
 PJoOUDTYJtbOu4lNDgHpaNmjCLm2xzvN+LZsu0/aAw8bxAVHunBskGQHK2TZ8qWiBcy6uj0xh
 EafVeFQDMFf9cKTZTRHFelFMcoeKm3HgCIlBYp0lWlHqblWOG/uCU11elg0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_100353_990847_79EE6A47 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Add DEVICE_VENDOR for Ubiquiti
 Routerstation
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

This has been overlooked.

Reported by: Chen Minqiang (@ptpt52)

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic-ubnt.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index abe45a14db..6db083861f 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -205,6 +205,7 @@ TARGET_DEVICES += ubnt_unifiac-pro
 
 define Device/ubnt_routerstation_common
   DEVICE_PACKAGES := -kmod-ath9k -wpad-mini -uboot-envtools kmod-usb-ohci kmod-usb2 fconfig
+  DEVICE_VENDOR := Ubiquiti
   ATH_SOC := ar7161
   IMAGE_SIZE := 16128k
   IMAGES += factory.bin
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
