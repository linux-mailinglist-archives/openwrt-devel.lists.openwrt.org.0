Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D53A128892
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Dec 2019 11:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5udssc22fVq0T8LwO0RYCnoxCwrq4O+CfFBZcycuuw=; b=gvf85Vctvjo91Q
	YR5jIsygcwoHamMEdj8gH4xdoSfjYjzzc/TL8/JSs35VJWPKujvoQ0c3qO3e857RbOXkRVk0jWIXL
	TbG09VSlPetD1C9EtGK+U0Qdl+rR1BPNx72bsmpCjdwV5s+6ClciMw/QLscEo01qu3ei3MCjjj5e/
	CIEwSpEx01S/m+GHj92YneoSAbq6nwbsaxtK6PJ3QsKaAEs6NOLvoym2dUr8f+pwDZl1Eu78X+h0R
	TvGTgAHfDCXYDsnz4lxVPjTUY0BqUoltJevw/xrt+QSNEINS8wVdION+6LpKU6zdzZ05Wbvb6FJHM
	MMdTclNokR6+IvoVpyfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iicAi-0006lf-BG; Sat, 21 Dec 2019 10:39:44 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iicAY-0006jf-8g
 for openwrt-devel@lists.openwrt.org; Sat, 21 Dec 2019 10:39:36 +0000
Received: (wp-smtpd smtp.wp.pl 20921 invoked from network);
 21 Dec 2019 11:39:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1576924764; bh=d0me/1ftgsU3OZDJir0n4seJ4yz9eiR+1QBbNxE01SU=;
 h=From:To:Cc:Subject;
 b=UVS2sCC2OPmKkK8JIMk+q3AyZQ57mg0ocnMhfUQnTZONZS+qy3gjwuWalwXOne3ak
 ihKljuIKk5Z3e/DBXE0EUmgg9qvYZqJ4DQJqS5zn/wichfsT1YhtFHOZe7e+6Y76qk
 v5CHAWrXNt/Mc9VhJD0Z4t7iucK9J4wL4HgS0fm8=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 21 Dec 2019 11:39:24 +0100
Date: Fri, 20 Dec 2019 23:09:48 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191220230948.7702c39d@kosmio.komorska>
In-Reply-To: <20191220230848.3bcd6e3a@kosmio.komorska>
References: <20191112140214.59f2971f@kosmio.komorska>
 <20191220230848.3bcd6e3a@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: cc7ceaa397f351ea8478ec66103c822b
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [oTP0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_023934_693163_D50D284D 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/3] mac80211: ath9k: add GPIO mask dts
 property
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds 'qca,gpio-mask=<u32>' device tree property to ath9k node.
This optional setting is a hack and should only be used in very special
(and rare) cases when a button or LED is wired to a GPIO pin normally
masked out (due to being one-way etc). Netgear WNDR4300 v2 is one such
example - it uses GPI9 for RFKILL.

See ath9k/reg.h *_GPIO_MASK constants.

Use with caution and expect to see stream of kernel warnings if wrong
mask value is provided.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../patches/ath/553-ath9k_of_gpio_mask.patch  | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 package/kernel/mac80211/patches/ath/553-ath9k_of_gpio_mask.patch

diff --git a/package/kernel/mac80211/patches/ath/553-ath9k_of_gpio_mask.patch b/package/kernel/mac80211/patches/ath/553-ath9k_of_gpio_mask.patch
new file mode 100644
index 0000000000..72b99050c4
--- /dev/null
+++ b/package/kernel/mac80211/patches/ath/553-ath9k_of_gpio_mask.patch
@@ -0,0 +1,25 @@
+--- a/drivers/net/wireless/ath/ath9k/init.c
++++ b/drivers/net/wireless/ath/ath9k/init.c
+@@ -654,6 +654,12 @@ static int ath9k_of_init(struct ath_soft
+ 	return 0;
+ }
+ 
++static void ath9k_of_gpio_mask(struct ath_softc *sc)
++{
++	of_property_read_u32(sc->dev->of_node, "qca,gpio-mask",
++			     &sc->sc_ah->caps.gpio_mask);
++}
++
+ static int ath9k_init_softc(u16 devid, struct ath_softc *sc,
+ 			    const struct ath_bus_ops *bus_ops)
+ {
+@@ -758,6 +764,9 @@ static int ath9k_init_softc(u16 devid, s
+ 	if (ret)
+ 		goto err_hw;
+ 
++	/* GPIO mask quirk */
++	ath9k_of_gpio_mask(sc);
++
+ 	ret = ath9k_init_queues(sc);
+ 	if (ret)
+ 		goto err_queues;
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
