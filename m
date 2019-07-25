Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CB57502C
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 15:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q0GtA7p4qpbkXb1NiM0elrwicSPNoR3GUtw7+gkXl1E=; b=CfaNs1s9pSG1AI
	OyhJBo1RmYmY/eymcj6dqzy8U0OVusCMd2mSHcQAZaWcG5L+yoLtm0b5Xi7gxGA0HZ40ZVl31BFps
	9NiRJHVlGlbvZyedOvTcv2DkrP3+IyiSVx0nZGKXUlJZhjReqy05NtEf/PMuxwRSDYsk9qdd25B8e
	4NAg5pOz0rtgHlTXy0UQdxnBz0Zl8bKbXxH2swV7vqOcJS4r8QTMrn38ruZIn3dHi876dcoxezSHW
	/rG+hHe509c4C+eTXAj06dgdWiECU15MlqTfxUyGYn2Ifm/tWxWtGF5uMHUgOHstdz9FYMw+7gpaX
	CbPchaZPKWvJSWcTh5Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeAm-0007qx-3k; Thu, 25 Jul 2019 13:52:44 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqe9s-00075M-P0
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 13:51:51 +0000
Received: (wp-smtpd smtp.tlen.pl 17591 invoked from network);
 25 Jul 2019 15:51:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1564062697; bh=zNKvM1BFeN5oPs/VU39/1G3f4cDINrXNgNj0ZJTotqM=;
 h=From:To:Subject;
 b=u/vJoEWdnwkgPYqjXNautNwjAWwqkcFdmOYzte32XQwBVVFuK/gZOo00cOlN5hHBH
 ZWWffCoTF8MZCCfwKAiCy413T1AxBTpBRAK1aw88Qu/afG+cg65D4FOCwodTDUJxE2
 PHbnX6yjukulGE5+gsdzfLNmbbdmduy4H7fcPG74=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Jul 2019 15:51:37 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 15:51:30 +0200
Message-Id: <20190725135130.4267-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-WP-MailID: e34e744b76a0856ced3c5a44abe19687
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [AfH1]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_065149_225952_F61F4494 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2] mvebu: enable xHCI USB controller
 connected to PCIe
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

This commit fixes regression on Linksys WRT1900 (Mamba) where this device
doesn't have USB 3.0 controller integrated in SoC, instead it has Etron
EJ168 connected to PCIe lane. Previously enabled in kernel 4.4 and 4.9,
was lost in transition to 4.14.

Fixes: 4ccad92 ("mvebu: Add support for kernel 4.14")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
v1 -> v2
move unrelated to fix change in kmod-usb3 package to separate patch

 target/linux/mvebu/config-4.14 | 1 +
 target/linux/mvebu/config-4.19 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/target/linux/mvebu/config-4.14 b/target/linux/mvebu/config-4.14
index dca685cffe..7a0caeeb61 100644
--- a/target/linux/mvebu/config-4.14
+++ b/target/linux/mvebu/config-4.14
@@ -482,6 +482,7 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_MVEBU=y
+CONFIG_USB_XHCI_PCI=y
 CONFIG_USB_XHCI_PLATFORM=y
 CONFIG_USE_OF=y
 CONFIG_VECTORS_BASE=0xffff0000
diff --git a/target/linux/mvebu/config-4.19 b/target/linux/mvebu/config-4.19
index 5a554a0bda..5fb93fa8e7 100644
--- a/target/linux/mvebu/config-4.19
+++ b/target/linux/mvebu/config-4.19
@@ -484,6 +484,7 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_MVEBU=y
+CONFIG_USB_XHCI_PCI=y
 CONFIG_USB_XHCI_PLATFORM=y
 CONFIG_USE_OF=y
 CONFIG_VFP=y
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
