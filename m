Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15F61DC920
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 10:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6PMkuVHravulw9/cUtGqlHExaiWdokWYdBbv+Bsc9nw=; b=HDPJl7iWFeRkrb
	vLI3kcnmkRaGZ6d9ngjvF8hscGdl+FRCpjQJDiec+OzhgVyFx0Gf1YTHeeJC9KyloUZybqIXT2PLB
	7FmmgFKGuQbxmjq6sX1PnXiSZSqrOkvmHZZF22rvry3qjBLj4xb5NyLI2BF2lKWYk4KktUgt/WeDp
	rlYqAylpkoZYy4LbYid9KM0w2YFAJDBYvd5Prscl0ctmsXtFWC2KGGoCLzJ/LYjxUhia2xg18ZhMw
	qQzhBK4KNKsUZSkvryQ+ZWu1YzKU/JvVaXgeFnsGUQ2z+N+7a45S8rlE03iKB/XSE1I4xUdrO3r71
	1y60v3U99/94AxdEimbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbh3I-0004jG-1F; Thu, 21 May 2020 08:59:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbh3B-0004Fm-2v
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 08:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sddGQ36xBYIbNjxmCn1MqsU4AhgqBmvlM/UwWeqkOGI=; b=xUHz/bEUrJlq81TFHOj1B59awD
 GCMoQSru6EKOhgbJBpKX1nQggDGSFZ8YnF0zwQ5QrOB+gysOZycnUBgMVzDm2UWFpynQ8UBOjSIy1
 JQn7LvcJwv86kwJb/G4f5d+GgEGnf7c2fIcyFmTijtM2GsSc9D9fJyOtqoV6yPoxE47SOV9ouRQj6
 ovILNbcN1aENnBsqs6eJOWVH2Bgj3Isy76YXqyLOmSjlTerDbz6vwjtVgxP6qOBUSh27e+FGyd6VH
 x3hT86MTUa5heuylGRoxOg8iYrjfTX6SCFm0BJjoZHboE0EGA/5dEHgDhGJRNEoI4S81hRuRYoPvr
 zO4xqbUw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34990)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jbh11-0001yp-8E; Thu, 21 May 2020 09:57:23 +0100
Received: from rmk by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@shell.armlinux.org.uk>)
 id 1jbh10-0008V1-Gb; Thu, 21 May 2020 09:57:22 +0100
From: Russell King <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jbh10-0008V1-Gb@shell.armlinux.org.uk>
Date: Thu, 21 May 2020 09:57:22 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_015937_133908_FB4480F9 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/3] kernel: backport gpio emulated open
 drain output fix
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

Backport the GPIO emulated open drain output fix from v5.5, which is
required for the i2c-pxa backport.

Signed-off-by: Russell King <linux@armlinux.org.uk>
---
This patch is against yesterday's openwrt master:
   300b7fe85a74 ("ipq40xx: add support for Aruba AP-365")

 ...b-fix-up-emulated-open-drain-outputs.patch | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 target/linux/generic/backport-5.4/802-v5.5-gpiolib-fix-up-emulated-open-drain-outputs.patch

diff --git a/target/linux/generic/backport-5.4/802-v5.5-gpiolib-fix-up-emulated-open-drain-outputs.patch b/target/linux/generic/backport-5.4/802-v5.5-gpiolib-fix-up-emulated-open-drain-outputs.patch
new file mode 100644
index 000000000000..311d4ed44865
--- /dev/null
+++ b/target/linux/generic/backport-5.4/802-v5.5-gpiolib-fix-up-emulated-open-drain-outputs.patch
@@ -0,0 +1,45 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: Linus Walleij <linus.walleij@linaro.org>,Bartosz Golaszewski <bgolaszewski@baylibre.com>,linux-gpio@vger.kernel.org
+Subject: [PATCH] gpiolib: fix up emulated open drain outputs
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+gpiolib has a corner case with open drain outputs that are emulated.
+When such outputs are outputting a logic 1, emulation will set the
+hardware to input mode, which will cause gpiod_get_direction() to
+report that it is in input mode. This is different from the behaviour
+with a true open-drain output.
+
+Unify the semantics here.
+
+Suggested-by: Linus Walleij <linus.walleij@linaro.org>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/gpio/gpiolib.c | 8 ++++++++
+ 1 file changed, 8 insertions(+)
+
+diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
+index 104ed299d5ea..99d19f80440e 100644
+--- a/drivers/gpio/gpiolib.c
++++ b/drivers/gpio/gpiolib.c
+@@ -220,6 +220,14 @@ int gpiod_get_direction(struct gpio_desc *desc)
+ 	chip = gpiod_to_chip(desc);
+ 	offset = gpio_chip_hwgpio(desc);
+ 
++	/*
++	 * Open drain emulation using input mode may incorrectly report
++	 * input here, fix that up.
++	 */
++	if (test_bit(FLAG_OPEN_DRAIN, &desc->flags) &&
++	    test_bit(FLAG_IS_OUT, &desc->flags))
++		return 0;
++
+ 	if (!chip->get_direction)
+ 		return -ENOTSUPP;
+ 
+-- 
+2.20.1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
