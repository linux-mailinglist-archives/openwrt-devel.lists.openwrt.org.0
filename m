Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F6A18FD21
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 19:55:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mJPmuGDMYby2FZvGv28ZbAWiFZsuR+3r1Q2wxqvV19g=; b=AIYKnGShu1wtMz
	Rf7njH9I85pmR8uJZjXmvF1UMyFYpAxvaYctbKaUwn5y1tqOrShn96aOvZtl/U8qqcQvgMREzXOWE
	4dKvNfV4uYTXUZyVvRNVOI0LjdZeL+R7QMCcX8sYg6e7/u98PurJ4b1QxcjSBSwYxTFkyIGFydljg
	4XSsDjfRxE1BTurLRCMJsdgdV9uQVWDgGrNoPGbVBdmGtcC9udyHasK3CItp4+lNDR0x17AIjupHj
	ArgdR8j7tOgJl50QNsJR7g6nN4xEkgg9L3TCC5/asAZSbWu1Kh2iUDm+wK0sBhGBbdciHQ3FoBK1+
	PEwv+fDrGtsR77naK+ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSDl-0001f1-IY; Mon, 23 Mar 2020 18:54:45 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSDe-0001eO-WD
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 18:54:40 +0000
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 22530200004;
 Mon, 23 Mar 2020 18:54:27 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Mar 2020 08:53:46 -1000
Message-Id: <20200323185345.1727219-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_115439_171221_9F82C248 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] x86/geode: fixup FEATURE inheritance
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

In the geode subtarget all default x86 features were overwritten via :=
instead of extending them via +=.

This patch fixes the inheritance and thereby the compilation of
x86/geode target.

Compile tested x86/geode.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/geode/target.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/x86/geode/target.mk b/target/linux/x86/geode/target.mk
index f4c7b9564e..f69e8cada5 100644
--- a/target/linux/x86/geode/target.mk
+++ b/target/linux/x86/geode/target.mk
@@ -1,5 +1,5 @@
 BOARDNAME:=AMD Geode based systems
-FEATURES:=pci usb gpio
+FEATURES += pci usb gpio
 DEFAULT_PACKAGES += \
 			kmod-crypto-hw-geode kmod-crypto-cbc \
 			kmod-ath5k kmod-ath9k \
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
