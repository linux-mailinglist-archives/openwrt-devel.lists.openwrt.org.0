Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD8583050
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 13:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Kpvq8YBZ6nU0FN/MjjpH0UfiXaXdb1J0Tqxg1yBpd8=; b=Uzgcrjl5pxZEYSw79nwWq5qk41
	2bKGl0DkRNkrJD3SAdx/gEIUw6phHWDBSKUOIWS3ck5AQwBWsmI7ozlTV+K1sBJkeUH7fc7s59Gwy
	u7VhGrdpOYhXZrK5ob0qRO74fpqm1H90+ipmsZIrgND3iYrXPuWCxZKgBH2xOdy6Ry2aOegLpF+v/
	qEJQ4FI2bA+qBRYHSEoig+U567KLnEg9PERgwjmWcKeaKGjAsgm1RLSE6MMzHq7EYTG4F/PxtvB1A
	bi99Azoiu0d8od9aoI1pzvR6mcUnjmut+7pQxZqjy0yTdfE3Q5dMFIhaw+/o7U61uDeIYuzLL5oP/
	v6U+EYWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxOT-0006oZ-9w; Tue, 06 Aug 2019 11:12:41 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxNB-0005zt-5Q
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 11:11:23 +0000
Received: (wp-smtpd smtp.wp.pl 34113 invoked from network);
 6 Aug 2019 13:11:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565089875; bh=LTsGN0d4FOoj1cr5s7t2G0kZU2ptkbeuAX7BwUsyN9Q=;
 h=From:To:Subject;
 b=MJ0FTfrATUJatIloSMNf8DMj4PjbqI71kOoD9GM8vEkj4MZ26i0UN/eIFgQsUVtOK
 cG4wtmH/6z6icWpYQuxtoGRhjjdyXIq6MGi2UcM39EaSZw6wdCIUKJk/wgb9OyPV3W
 yH96Ly/LPgEaviFaBkLG5hgBmJ3C1GMG7AMIUcT0=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 13:11:15 +0200
Date: Tue, 6 Aug 2019 13:02:34 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190806130234.4a3268fb@kosmio.komorska>
In-Reply-To: <20190806125153.07c9b005@kosmio.komorska>
References: <20190806125153.07c9b005@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: cf5f230065bfddc81f6558604358147e
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [IWNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_041121_384053_CA8DE3AC 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 7/7] ath79: WNR2000v3: change WPS button to
 interrupt-driven GPIO key
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

WNR2000v3 has one button (WPS) connected to AR7241 GPIO directly.
This patch changes its servicing method from polling to IRQ.
All other buttons, connected to wireless chip GPIO pins, remain polled.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
index 57260ffd1e..6ab32d3188 100644
--- a/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
@@ -22,8 +22,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		wps {
 			label = "wps";
@@ -31,6 +30,11 @@
 			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
 			debounce-interval = <60>;
 		};
+	};
+
+	ath9k-keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
 
 		reset {
 			label = "reset";
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
