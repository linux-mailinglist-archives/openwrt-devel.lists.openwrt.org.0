Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3CB18B07D
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 10:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PQdxULOckDATw1muuBzRf34cDxdmOlbbUKRM0OtTXf4=; b=rNv+YtwumYPrcR
	E8NlnjVdYHfwZVsDgU5Gots9YpmDtDlviNpvZKscoPGnonOhuQJUkZMJldXgSb7mz6OYvGhA9OfYv
	V0lvyc9k4HYOubS4V42Hubu2ePrQJ/Mb5fra/If1BOu0DwUeBc4+TbdBwHkVx6ob9OA/4BlGQkOsp
	KHUH4uDFjEeIw9KKsP0EeDm5ETBMOHrloykgy85dQq71YymdzGNKK2nlLvH05suZYYZb0NK27dGPh
	f0c1p2KoJke9StXnfKNVnRFJXQZtnRiLC1dZRhTTLCecOQetPwGuk46fBRHcHhulqCjVxOcBdwDC7
	IGZ6aAa2WDoRjbyWXz3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErnl-00073V-UV; Thu, 19 Mar 2020 09:49:21 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErnc-00072j-1A
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 09:49:14 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0A3400D05284FF92C4A429.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0a:3400:d052:84ff:92c4:a429])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 1D4C81FFEB;
 Thu, 19 Mar 2020 10:49:07 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Mar 2020 10:48:55 +0100
Message-Id: <20200319094855.97684-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_024912_224679_65C5C8DF 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: align Ubiquiti AC Pro ethernet map
 to factory
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
Cc: Florian Klink <flokli@flokli.de>,
 Lucian Cristian <lucian.cristian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The Uniquiti AC Pro and Ubiquiti AC Mesh Pro currently have the
"Primary" and "Secondary" ethernet ports configured to offer LAN as well
as WAN. However, Uiquiti describes the following behavior for the
devices Ethernet ports:

 > Secondary UniFi Access Point (UAP) Ethernet ports don't
 > provide PoE passthrough (to run current to a second powered
 > device), but they do support data passthrough.
 > It serves as a bridged interface between main / secondary
 > Ethernet port.

To reduce confusion for users (as LAN and WAN functionality is not
visible on the device itself), configure both ports to offer LAN
functionality. Users can still configure a WAN interface on a port they
are able to choose.

CC: Lucian Cristian <lucian.cristian@gmail.com>
Reported-by: Florian Klink <flokli@flokli.de>
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../linux/ath79/generic/base-files/etc/board.d/02_network  | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index dbb722482b..610e3e3ce8 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -183,8 +183,6 @@ ath79_setup_interfaces()
 		;;
 	nec,wg1200cr|\
 	ubnt,nanostation-ac|\
-	ubnt,unifiac-mesh-pro|\
-	ubnt,unifiac-pro|\
 	yuncore,a782|\
 	yuncore,xd4200)
 		ucidef_add_switch "switch0" \
@@ -305,6 +303,11 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "5:lan" "1:wan"
 		;;
+	ubnt,unifiac-mesh-pro|\
+	ubnt,unifiac-pro)
+		ucidef_add_switch "switch0" \
+			"0@eth0" "2:lan:1" "3:lan:2"
+		;;
 	zbtlink,zbt-wd323|\
 	xiaomi,mi-router-4q)
 		ucidef_set_interface_wan "eth1"
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
