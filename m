Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2DB886CF
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 01:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6b3pApW+K/Go49J1wFbvfPn9/LNOZZHYTb2KEmcfxkc=; b=KDzyqHa8RQSJNA
	i/y8FnhWtsaQTh7GojbU+m2gMAdV6HBB5iWZIXpn04Nd7G806uu7QZIcUe9IG7rU9Q3y4nuEE/NVc
	+vhADx/Pa+CXhQcGMw48EjdOViPh1UvUs8UTrTCprqs+Get5ahUtTBptwZtFBZ8FQsjQRjvGo0XbH
	iT+aQOAowFyaYDysNcieHjC6xhbSvMdbo+cfn6o0titwJjlsvbQkgMihACBwDZfVDWzBUB57N7SRT
	T6T0jjTudziVrhU3C198X/W1cUJiQInTW25/1RqoEp5LSjB8S6KaoMyyjAHv+nnK79P7/M4VhHoUF
	s0z97VxG1eM1vN5Qkp+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwE0o-0005u2-W4; Fri, 09 Aug 2019 23:09:30 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwE0h-0005t7-G3
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 23:09:25 +0000
Received: from dbauer-x250.ffda.io (unknown
 [IPv6:2001:67c:2ed8:100e:f11d:acff:365f:90c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id DF2B522252;
 Sat, 10 Aug 2019 01:09:16 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 10 Aug 2019 01:09:03 +0200
Message-Id: <20190809230904.15822-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_160923_680308_11D344CB 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] lantiq: correct Fritz!Box 7412 button
 logic level
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
Cc: AndyBinder@gmx.de, Valentin.Spreckels@Informatik.Uni-Oldenburg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The AVM FRITZ!Box 7412 buttons are both active low, which is currently
incorrectly defined in the device-tree.

This leads to the device booting directly into failsafe.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts
index baf3d69fb5..97817595e9 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts
@@ -34,13 +34,13 @@
 		
 		wps {
 			label = "wps";
-			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_WPS_BUTTON>;
 		};
 		
 		dect {
 			label = "dect";
-			gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_PHONE>;
 		};
 	};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
