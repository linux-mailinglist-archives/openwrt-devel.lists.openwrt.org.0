Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8DD7FD34
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 17:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xMOswtxq8i5Xl7Xrpxvh6npRUVcfWEOB55SA8kxbJ78=; b=bVqOFUQlB3+GhC
	5lAPHKP1tY/RzuU8dYgavDqkuVrkF5fI9SFrfsBWkYpbfeiq+YmWwYIrroiTY19tYy6cwe75qV5eY
	lsInHK38IAGbDUx2GVD6OWWZQfDIwXUPdIpuH9Wypr9u1dvd99cGfUSX8MQAlOuFl9cSh3SuBzGqz
	qqYP/oeHVUQm8yWTL/OAGp5E3AdOGnyTgngv7gu6zToVnmS3hNReZ4BhAyD0/REqHKRIP6rftZRjc
	mizQVMdOwfkZ22JSKH1ujxVQOuwuB51TpeR1hTSWkXYi16lVotM43oqkMXaHzh8rp5iu+9bG36zob
	6xIJxeAd+tdl/sktXaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZGa-0004EB-CL; Fri, 02 Aug 2019 15:14:48 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZGT-0004De-4F
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 15:14:42 +0000
Received: (wp-smtpd smtp.wp.pl 40507 invoked from network);
 2 Aug 2019 17:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1564758874; bh=BYZChXoAUp8FIu28TP4iQ9LU5Ju55NzmiUm3a8C3Y1M=;
 h=From:To:Subject;
 b=rufMkcSxpJ5mZTC1iWK2UgR+cdzqJP/yacFOyTwGTUFDt/CbiiWFKvJIBMbn9HmJ8
 wScDw/2HN7CElmYVuVV4TqmkNw+lg6hk37g4flB4/58eO6ZOltUDeckQL7dd53qimF
 H5SeBW5PHTU74Wn8Go58caIHIqpwL+TJiMDXlRP4=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 2 Aug 2019 17:14:34 +0200
Date: Fri, 2 Aug 2019 17:12:34 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190802164312.305da24d@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 0a6577a42025e59ddfc72c1268498e3d
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [0fOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_081441_505661_6389D27D 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ar71xx: WNR2200: remove redundant GPIO for
 WLAN LED
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

Without this patch, an extra entry appears for AR9287 GPIO
that duplicates WLAN LED but in fact drives nothing:

gpiochip1: GPIOs 502-511, ath9k-phy0:
 gpio-502 (                    |netgear:blue:wlan   ) out hi
 gpio-503 (                    |netgear:amber:test  ) out hi
 gpio-504 (                    |netgear:green:power ) out lo
 gpio-505 (                    |rfkill              ) in  hi
 gpio-507 (                    |wps                 ) in  hi
 gpio-508 (                    |reset               ) in  hi
 gpio-510 (                    |ath9k-phy0          ) out hi <===!

The pin pointed above is default LED GPIO (8) for AR9287.
For WNR2200 it is not connected anywhere - pin 0 drives blue WLAN
LED instead - but initialization code is missing that information.

This fix calls ap9x_pci_setup_wmac_led_pin() function at device
setup, forcing WLAN LED pin to be 0 and removing redundant entry.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-wnr2200.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-wnr2200.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-wnr2200.c
index 54217220f7..74166c5376 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-wnr2200.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-wnr2200.c
@@ -222,6 +222,7 @@ static void __init wnr2200_setup(void)
 
 	wnr2200_get_wmac(wlan_mac_addr, WNR2200_MAC0_OFFSET,
 			 WNR2200_MAC1_OFFSET, WNR2200_WMAC_OFFSET);
+	ap9x_pci_setup_wmac_led_pin(0, 0);
 	ap91_pci_init(art + WNR2200_PCIE_CALDATA_OFFSET, wlan_mac_addr);
 
 	ath79_register_leds_gpio(-1, ARRAY_SIZE(wnr2200_leds_gpio),
-- 
2.22.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
