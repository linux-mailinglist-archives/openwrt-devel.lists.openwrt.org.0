Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D231911F377
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 19:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RIIeMTeuHqpQ9i3+Fyq5hQyUE3teKdFjCMp9LhBv/wU=; b=oki1Zz8IQuSyYM
	CTEIIskFpCKFC8dsDFUqqGplyn7Ik4nmWlb+3e9E08eJhy/QETLrKFHz+BT/ILp5jvX3KDk9HkHc+
	3e/uILDU8ffMH4cRg5AeVOPiBgYyWIOxB3OKBPF+z7DS1wqV1eq6gscSqNYnV0Dtq/oCCVHm5iTIc
	n0OfssB/oWrQxeOpeQzajpTj++eSlV87Gyh/w8LhbN+LvcwcMpfcMLbpuWpI6+Aqd1Cp14GjuW4hh
	P5EMzsg6U+BRRnjyVE+B+f0DPinsbT9IpSBI0a6bUtoNmd1MWhV1T32UOfaMiTEhHuiRVEMyAIUu7
	gxvT57sdNj+ONzfOclzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBxD-0006VD-7K; Sat, 14 Dec 2019 18:15:47 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBx4-0006Ug-T0
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 18:15:41 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F2D4A00DC3E52FF663D89E0.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2d:4a00:dc3e:52ff:663d:89e0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 1855D22733
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 19:15:33 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Dec 2019 19:15:21 +0100
Message-Id: <20191214181521.163145-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_101539_082065_C9E2C50F 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ar71xx: indicate upgrade using system LED
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

This enables the system LED to indicate a running firmware upgrade. This
pattern is used on most platforms provided by the generic base-files
package. ar71xx uses it's own implementation for the system-LED, where
the upgrade case is not yet implemented.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ar71xx/base-files/etc/diag.sh | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/target/linux/ar71xx/base-files/etc/diag.sh b/target/linux/ar71xx/base-files/etc/diag.sh
index 8ff75627a5..c5fe5bdcc1 100644
--- a/target/linux/ar71xx/base-files/etc/diag.sh
+++ b/target/linux/ar71xx/base-files/etc/diag.sh
@@ -575,6 +575,9 @@ set_state() {
 	preinit_regular)
 		status_led_blink_preinit_regular
 		;;
+	upgrade)
+		status_led_blink_preinit_regular
+		;;
 	done)
 		status_led_on
 		case $(board_name) in
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
