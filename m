Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A91128FE6
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 21:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5udssc22fVq0T8LwO0RYCnoxCwrq4O+CfFBZcycuuw=; b=TBDekjV72ecepZ
	XF56PxJ9WMxCdXpO4W+p3ifyMzzPcobr2Ro4jvuDNjF8mZf6hzw+WCTsljAKi6wlXKTsmBgE7mu03
	/YULxqNFuUIZIs8+oD5KkDg8pOsWVz97OA9JnbJ7NjihqBk8/kkvLnTFAdUiVurTpnCstVOwFbHQU
	iIz8RbRjG1ajAiD3w/eKX+eptSIr+WFYY/1piBKBPIQ9SzkQKCTHlBrH/JvZkTZW7z1Loy7KZGHkd
	dMsKICC3WYm0V2S4Ef8qtEDN9dQ1o4nslKCGBSyXcGkDzajmlegezME7err1e4S2zCLq34bo+oBwn
	n51vR/Fz2/WHhZsOdknA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij8IV-0000zg-I2; Sun, 22 Dec 2019 20:57:55 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij8IJ-0000yG-6y
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 20:57:45 +0000
Received: (wp-smtpd smtp.wp.pl 20155 invoked from network);
 22 Dec 2019 21:57:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1577048257; bh=d0me/1ftgsU3OZDJir0n4seJ4yz9eiR+1QBbNxE01SU=;
 h=From:To:Cc:Subject;
 b=ANwfEvFr5LWnictiZOnwvtULIK3TsmMH4K3n9S/7/K9Khfn9qlODGTZe9DdJbpxFO
 hdM6IURaDyFxT5bLJ4IWYi+G8XiTIGpkVZDhI663MT5xM5WdoCia1nBh+tB84uvcv5
 0oZOxky9tTI0YdWV+Gt/okTA4ok1nkGx6IcHKcwo=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Dec 2019 21:57:37 +0100
Date: Sun, 22 Dec 2019 21:51:48 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191222215148.201c30d9@kosmio.komorska>
In-Reply-To: <20191222215052.6901e39f@kosmio.komorska>
References: <20191222215052.6901e39f@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 9d8fa3d1e83d1f016efc9bd176e0796d
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [UQM0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_125743_788052_29E8B9F8 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 1/4] mac80211: ath9k: add GPIO mask dts
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
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
