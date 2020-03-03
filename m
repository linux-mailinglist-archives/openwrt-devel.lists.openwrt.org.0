Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D6B178300
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 20:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IroNcHqPINeG5ANvHtTkuq+ayKO/nl21ZtJE24Ueimg=; b=WqoYLWuL7UCNYH
	xBmUupdmvq2+oLI5TxbNce807tcobyPTiaatEaBpdclqz9J3Qxl4mfWxFt3p9k1U75psXysAqrh/4
	wyVKc72PcQNxAVUadpSi+JMHDTP9Xs7KjLe7n6Q1b/K/hKt+euFHFP1aW2LIBcKtm+quCrD3Z2Y4g
	Y2BwMRUn+1CFMpwhe/ryclvIFpmTqvZ65S4p8EA8N5XecVxSEa6x3FETtHl/vnO7BsTeM+pCqC49T
	MsuT34HsxrK7TDyKj5/6/Ow3aDtlJhqZ3NirG3zJiKfmt+6pMP2DKrqR42Wx8NJBjC0579n4PBhGe
	u+1sRz7tp5zMzRSn7y1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9D57-0005Fy-1Q; Tue, 03 Mar 2020 19:19:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9D4u-0005FY-4Q
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 19:19:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id j7so5797030wrp.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Mar 2020 11:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8UrlVffmXvFBgrR/4nER7yiSF7FlcuCdgXwU2+o57Do=;
 b=Z+Q2IKerXKJy1B4xxzFZ4uoAUAaX7A0cnWvp8ARfCXdPdo3WRiaqkABnpoNtBjdQsb
 ZLhVA44rwHaLTVnvhSXoK8nx+h18Q4iG6cWXK4O5pH65HR4n5UAqFx9sOkVn1gp3mRJr
 ZHhRI+FoEvXDCJ7ebF/kh5gT8i542a/BqQLe5mi72IhRn7g6pkA1nh2ZRo85pyMJi4ja
 GqYw0VgqhqAnbdHXgOy1Kh28hIldIiP79M3ktvjJNga0Uq8VO5mwtFDGQD5uL+UF8x2b
 Q94MfRbAvK0TOeWlTejAjruyNHVzKtlDa66Y9bJ/Us/uh7IvtOuZ24R/viOGheD8Wyog
 jJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8UrlVffmXvFBgrR/4nER7yiSF7FlcuCdgXwU2+o57Do=;
 b=qL922JQLtrzJWy0Wflhn4z/hQ0E6SWJEV0BbQJz50+MTtXMiEpE1duFAYpTpI6W+m/
 2w+q3/guXZEgQH3uBdbDWY0tD79VlZwgx4WfVB0o+dAnuGwSKr65e7v578u0cdCK8XYH
 sDeLsf7b7I7r8lU74Eh9df4J/AUQM5nRGGAxanS+7or3ogHC/WIi5WgoooYUbQ0gnv6K
 CHUcqJ1qRXeFxaYHeZLkLx/nIns/PTK+hxjWC63X8xsy8xbkYzx1m2IgrdjP18CH7vfQ
 j6p3dWs7H4GQ2IZTUssFI24zQLhh2Gpd+9iO6v9LRkh9y7pEzefKHuoxGFpEedVvQYea
 l56g==
X-Gm-Message-State: ANhLgQ3uYWw3UvfD1ztGuX0rn0NBMxLNZn9lVU0WWGFNQdyXioq9ieIH
 QxXwf9u2fuVG2pVwoYAt2FsE8Gm2N0yb866o1dgXoBxFx+HmrTsMdvVx089cWoujHC/3IBXT1XV
 aGQfJ4OoSU5m3NsjevIbpx+fvqrjGHvHMpQErpuhD5NuV/ABWlWlHh5iWHJ72Ep4d42zExKiQ2r
 pIxEfkHZMz
X-Google-Smtp-Source: ADFU+vtsl4lgCyhwVGKh1CsQCkyncuybMu73GdrqPiqCfklESDTgYUHtd9wQ3ymR3fRcyoin/Mxtrg==
X-Received: by 2002:adf:ce8c:: with SMTP id r12mr6997977wrn.189.1583263178100; 
 Tue, 03 Mar 2020 11:19:38 -0800 (PST)
Received: from localhost.localdomain (dh207-97-208.xnet.hr. [88.207.97.208])
 by smtp.googlemail.com with ESMTPSA id g14sm36084390wrv.58.2020.03.03.11.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 11:19:37 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 20:19:30 +0100
Message-Id: <20200303191931.917613-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_111940_315777_2E2442C7 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] ipq40xx: 5.4: fix networking PHY driver
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
Cc: Robert Marko <robert.marko@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In 5.4 kernel old u32 array way of setting network features was dropped and linkmode is now the only way.
So lets migrate the PHY driver to support linkmode.
Also, now in order for gigabit to work, PHY driver needs to advertise PHY_GBIT_FEATURES instead of PHY_BASIC_FEATURES

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch |  6 +++---
 .../706-ar40xx-abort-probe-on-missig-phy.patch        | 11 -----------
 2 files changed, 3 insertions(+), 14 deletions(-)

diff --git a/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch b/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch
index 6df447fcd5..083de038a2 100644
--- a/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch
+++ b/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch
@@ -1837,8 +1837,8 @@
 +	if (phydev->mdio.addr == 0)
 +		ar40xx_priv->phy = phydev;
 +
-+	phydev->supported |= SUPPORTED_1000baseT_Full;
-+	phydev->advertising |= ADVERTISED_1000baseT_Full;
++	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, phydev->supported);
++	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, phydev->advertising);
 +	return 0;
 +}
 +
@@ -1877,7 +1877,7 @@
 +	.phy_id		= 0x004d0000,
 +	.name		= "QCA Malibu",
 +	.phy_id_mask	= 0xffff0000,
-+	.features	= PHY_BASIC_FEATURES,
++	.features	= PHY_GBIT_FEATURES,
 +	.probe		= ar40xx_phy_probe,
 +	.remove		= ar40xx_phy_remove,
 +	.config_init	= ar40xx_phy_config_init,
diff --git a/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch b/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch
index cda05bfb9f..19474bff0d 100644
--- a/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch
+++ b/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch
@@ -1,16 +1,5 @@
 --- a/drivers/net/phy/ar40xx.c
 +++ b/drivers/net/phy/ar40xx.c
-@@ -1808,8 +1808,8 @@ ar40xx_phy_probe(struct phy_device *phyd
- 	if (phydev->mdio.addr == 0)
- 		ar40xx_priv->phy = phydev;
- 
--	phydev->supported |= SUPPORTED_1000baseT_Full;
--	phydev->advertising |= ADVERTISED_1000baseT_Full;
-+	phy_set_max_speed(phydev, SPEED_1000);
-+	linkmode_copy(phydev->advertising, phydev->supported);
- 	return 0;
- }
- 
 @@ -2021,6 +2021,12 @@ static int ar40xx_probe(struct platform_
  	/* register switch */
  	swdev = &priv->dev;
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
