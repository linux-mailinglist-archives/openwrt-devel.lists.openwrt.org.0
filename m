Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCCF8089E
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 01:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RRwHFd7TyzHDu9Zr/Y299sRqgBaka2cKO9y9ezlk1rM=; b=rf4VjDgyb8pX7OH6w8R+CtKGms
	6/x2uuwsVEtP0H/1qG9dclWTqP0k3jov5bstlJBqHdM6JIP6oeoDQZWZg6ipjJWxtHnmHQNxnpnlR
	uObYl3Q23pWzaVu/2MU9RRfUY4wSioZJaB5ZhJLf3SPL0u9TxoVg0agA1VnK5vAnaOZ0MMmesi2mp
	bnawX1Yao0L7w81DFQNP1YU1H1MRyJvOnY6zBewyB2CSWrxgTNlc/AZrUvIUFWESTeZfUrrFkczoi
	T71CY/eibNud43L3Ru+40n1SIcDr6lckgy+9ggCA1F95Fs6yOgV1YaBfcbjNh1rRJTcEmK4lUGYSS
	BJbbHo1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu3gC-0000rj-TH; Sat, 03 Aug 2019 23:43:17 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu3g5-0000qy-HD
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 23:43:11 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M5PyX-1htEKO2pgT-001Ssb for <openwrt-devel@lists.openwrt.org>; Sun, 04
 Aug 2019 01:43:01 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 01:42:56 +0200
Message-Id: <20190803234256.2880-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190803234256.2880-1-freifunk@adrianschmutzler.de>
References: <20190803234256.2880-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:8sInsU/XMVdHvL9X1niZF9ZpNq4JAi5ikHlGr/WY9fo+5LK98NK
 fr8UAFnaMGw0mvtATPft1XwGK+EHkfhcrxEJy4z9DYw6GH2gw8TE9aKOoA2m1t3HAD8TrIp
 IsHb3az1aiFmfFKd5dACJn+Ml86kE79AapgxBYoBEdzFWAC0zquDf48atRyUEkxjD6Isuw2
 yq0F/nIUCzm/KSiGn+8uw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8RoRNZSJ0kA=:LC4gI+g985r9lBhEre0UQ/
 kZkP6h1duGCHLudZGgR4zOeAS5epNDesuFRYb3UuKGZr2fJE0SmVMRA0UR/4kfZqcSlT+M3iJ
 ULe09OFvIxTQF7WbpqaJjdepZ5rySYtsan9LiqTcqDtUA25UoJW6BXchrbATrQ/gCfdJvMN0b
 UJkdJc+t78h2XC3Hd3NmOzFGid5P3t04mTivf1UpKdMk4Z75QryDDPtZwPpaYnt96k48tJpYz
 8Be1nV6elmt86surJp9gFtL6lzYoe0HVtc0hHjka4OgaRnKa61ZpkU0yZvwZokBMTYRtlOEYr
 D+0h3OC5N/DQ7BwINHKQWEQoirorBL4i+crvnId8Soy0VE63+ldCSsgLi05XqPXbz5lVvg/Z9
 yyy6qUpnAzKLUrnEGfqKRJO/Ea+6LP5dFIny862k62BmlQUvm2kWdnJsB2rgYtQj7E20DOuON
 aAJMr8EAuaA/PGGzPlTOxTpiNDisY4tHWWdWSL2cJFefXwrqmo9xv4wzNgs2JSxpBLczU6T1r
 erPMYgE/75edx9/udicCPCLqCN5WWuCJ4c1ZJwdmsqdl4l0mokXeabYWoqInLvBSDiKW0+awl
 MEZGQgChTMc/5d91JVoRicXz4z2kjvABnhQeMqpnHm6NiaIUixgkH6gMIXtIyHmToPstLv/Ij
 bbf3Tpl0HGGthydgc40Z8udFJPnhsNJYsI6wySdMG+O9WW9gobN9vhxW7HEe42DrnfLnbG01M
 FMAAOlp2/yMU2FJ03rrq9WuknciGlU4QSF7mZD4LufoSylvANm6CPVDTKkM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_164309_871408_AC152EDB 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/2] mediatek: fix typo in Banana Pi R64
 device title
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

The DEVICE_TITLE introduced in 66458c49aa14 ("mediatek: add
v4.19 support") is mistyped. Fix it.

Reported-by: @86423355844265459587182778
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/mediatek/image/mt7622.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mediatek/image/mt7622.mk b/target/linux/mediatek/image/mt7622.mk
index 1644a3ea68..4d648804f0 100644
--- a/target/linux/mediatek/image/mt7622.mk
+++ b/target/linux/mediatek/image/mt7622.mk
@@ -17,7 +17,7 @@ endef
 TARGET_DEVICES += MTK-LYNX-RFB1
 
 define Device/BPI-R64
-  DEVICE_TITLE := Bannan Pi R64
+  DEVICE_TITLE := Banana Pi R64
   DEVICE_DTS := mt7622-bananapi-bpi-r64
   DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
   DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb3 \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
