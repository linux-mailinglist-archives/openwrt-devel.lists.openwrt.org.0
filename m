Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC11D3C58
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=73/M+rjnrcnE8/AeFWlalz98Ija4ICqHqfgbqWZNJBs=; b=ow0VF+mrBxSMeFnKOV4ddfDUmH
	pdHELC4HbX+PLnb81p/pC9dNFsUPSbOIb30JDfJvZ2mf7jLf5sZUD9/EztmFpTKRCVRDVaPDUCs4l
	OlENEbMmxzzB8XHVLdVPRKq7ynpPMnmnFDRWEFc4fQblxiVkdhGI8TdAt6cDMsyOln7DOY6fkxTyp
	91KJ79RiyNmPM+CPN4oq+/RlA8PfIMaz75QGta9jXhwYTrvSTklS/ea2QYkCfKS4YK7USfjFMkPGt
	2Jto+6CXrfHtQuj3shCb6F11pajtmjAjlyYq8KieWILgNnyXyoRTvtjFddNqrvR8xIQxLa2NDo2Fu
	00hTvtSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrHL-0000ct-FA; Fri, 11 Oct 2019 09:32:07 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrGu-0000L0-9z
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:42 +0000
Received: (wp-smtpd smtp.wp.pl 36660 invoked from network);
 11 Oct 2019 11:31:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786297; bh=97m5hNJNSnbATwUxpELTU2ezHQPkzlVRWagOVGQFlpE=;
 h=From:To:Subject;
 b=xCKo6PwvIr8rQQbMB9pkwkQ04nPGxc+xfvcOt7u1EIjn2Vj3J4pRKg3sQ5pv69nSV
 dD8ZeCfyvMvKSN24bqgF8cPCRyTPnop+FKnDmPkxeZUvRvjzy/MOCdNVGiU98z+cFf
 rYSec+o2Z3otud33G791K1dnqXZJM61OyjqkJKPQ=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:37 +0200
Date: Fri, 11 Oct 2019 10:41:51 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011104151.23ee9dd7@kosmio.komorska>
In-Reply-To: <20191011104033.058b5e34@kosmio.komorska>
References: <20191011104033.058b5e34@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: f5f1e3edeae121b90f073b2b9cc167a7
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [kUME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023140_535990_8EC99F46 
X-CRM114-Status: UNSURE (   8.11  )
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ar71xx: WNDR4300: use standard labels
 for buttons
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

GPIO key labels have been changed to standard ones (rfkill, reset, wps).
It does not affect button functionality.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-wndr4300.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-wndr4300.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-wndr4300.c
index d129bb7854..339216da1b 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-wndr4300.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-wndr4300.c
@@ -107,7 +107,7 @@ static struct gpio_led wndr4300_leds_gpio[] __initdata = {
 
 static struct gpio_keys_button wndr4300_gpio_keys[] __initdata = {
 	{
-		.desc		= "Reset button",
+		.desc		= "reset",
 		.type		= EV_KEY,
 		.code		= KEY_RESTART,
 		.debounce_interval = WNDR4300_KEYS_DEBOUNCE_INTERVAL,
@@ -115,7 +115,7 @@ static struct gpio_keys_button wndr4300_gpio_keys[] __initdata = {
 		.active_low	= 1,
 	},
 	{
-		.desc		= "WPS button",
+		.desc		= "wps",
 		.type		= EV_KEY,
 		.code		= KEY_WPS_BUTTON,
 		.debounce_interval = WNDR4300_KEYS_DEBOUNCE_INTERVAL,
@@ -123,7 +123,7 @@ static struct gpio_keys_button wndr4300_gpio_keys[] __initdata = {
 		.active_low	= 1,
 	},
 	{
-		.desc		= "Wireless button",
+		.desc		= "rfkill",
 		.type		= EV_KEY,
 		.code		= KEY_RFKILL,
 		.debounce_interval = WNDR4300_KEYS_DEBOUNCE_INTERVAL,
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
