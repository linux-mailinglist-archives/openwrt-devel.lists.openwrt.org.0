Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F9013AF9A
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 17:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FUaItREiyRKbJN4XfspHmUcwJrA/qD/QyBXnB/GTTWY=; b=hCFxNvwgisSsQs
	nlkHrmSF9+XJcCqegXvZcfLafmlEQOB9ToXfys7RuDXS5Y6g/6EVamUXFstwu+hp+5aUsKEL4yweM
	BHb9Z/gp0+ua6fhqHS0n4wDI82P1QkjXPL35BSEmaOQCbh+P4MC/ojd5ny/Dht00JVl1RNLOxvolp
	z0w5S6qLhWBCXaeggK+b2OqciC5F1eqwAQg5iIILnMmUz8omBlm5nEo3RMSnZTISKZ5rJ0axkoKYr
	zhS9lUDmnTkM5CDqKE4YTORPJ1L2pebBuqkxr7g9egYVQ9H6y3TLo42pfpcAVGAv+t7ypIzW/lb7T
	O5c/6DPsPa/zvZz7Jz+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPEy-0004wn-5W; Tue, 14 Jan 2020 16:40:28 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPEn-0004rH-Ps
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 16:40:22 +0000
Received: (wp-smtpd smtp.tlen.pl 39469 invoked from network);
 14 Jan 2020 17:40:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1579020010; bh=RzajVqXLKf9a3YzVWVJupP6YfLaHVq9QueejyqeMcUM=;
 h=From:To:Subject;
 b=Vro3RI3Jh0zzNikq2uUZ2/9fTRvWMBOvwBUZ5MIs6iHf/Aoa9l1WO0eQEc8K4J0C7
 V0eNe8GbjLPXfprh5NDCN6Y2QwUBt1XT1sF7rg28U7NDA/UjgOp5eFSMpvzxwZbhl1
 QTiR0pr2UaP4n6rImuTMn3wQzeIDgGNNxN1tzFHw=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 14 Jan 2020 17:40:10 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Jan 2020 17:40:04 +0100
Message-Id: <20200114164004.3883-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-WP-MailID: 609cc1e43b9d5e216665c7fbf287caf4
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [IWJx]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_084018_161170_C06AAB72 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ath79: wlr-7100: use ath10k-ct smallbuffers
 package variant
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

The memory hacks got removed from ath10k with 1e27bef ("mac80211: remove
ath10k_pci memory hacks"). As this device has low amount of RAM, switch
to ath-10k-ct small buffers variant, to avoid the OOM Reaper.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/image/generic.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 18dad80d5d..abc6f96a80 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -986,7 +986,7 @@ define Device/sitecom_wlr-7100
   DEVICE_VENDOR := Sitecom
   DEVICE_MODEL := WLR-7100
   DEVICE_VARIANT := v1 002
-  DEVICE_PACKAGES := ath10k-firmware-qca988x kmod-ath10k kmod-usb2
+  DEVICE_PACKAGES := ath10k-firmware-qca988x-ct kmod-ath10k-ct-smallbuffers kmod-usb2
   IMAGES += factory.dlf
   IMAGE/factory.dlf := append-kernel | pad-to $$$$(BLOCKSIZE) | \
 	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
