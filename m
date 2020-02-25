Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CF416EE9B
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 20:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dd+EsPUvmC2GhkBlPdcOD19+HFdwJtvBW5kkqdTYrDw=; b=MB467dFd3GcmzlCXo0ie82aqfS
	CMCeiOqAdkBC78GDAmBoIncvyaXSqIuwkYWpVkd+LEuGFgnigVhAz8uFHw/ZgXtstonUA/KoZ3Owy
	+jI0bEEs6gw4VgbhqYDUhLSGkE34sQn0OM4BidUq7ZiAeb95DSlw5ktQCWMObjpHUOt7DFtkxcL7Y
	gv9wnVGAcCar+2jO5/9Znk/Ilsp7eHg9U7znFY43EskIzBefEw7FzuIQgeMGfDZ1L06SwS1BBeqlA
	k0UzonqYxIDpI1JU8nbuHT4st9ySOzGxfvlpJLXey6uKvkDd3v6nQEVhS0e4aiDn+WLLZf42xNeA7
	wpfptPFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fZ7-0006Ey-17; Tue, 25 Feb 2020 19:08:21 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fYu-0006C1-NT
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 19:08:11 +0000
Received: (wp-smtpd smtp.tlen.pl 12313 invoked from network);
 25 Feb 2020 20:08:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1582657681; bh=pA55squpiSFWG6AEPPcO5W1VllkfyGH2gj58/Dm44uE=;
 h=From:To:Subject;
 b=BYPCfWDEK0lhOTXqyR9u86FU2tcV7kNDLitOsj+bE491I1QWTHtQTqLejgsS0owW6
 G26FPzQun+YRv6TaXSmloRUXWLRWkm3blQSA/HcfaeZY0dcU5QUATZMIlPkTU/a/6V
 88VGCLCDDGG/lgZ99UmrBi0uN3fHQ8obz4ed0T+U=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Feb 2020 20:08:00 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Feb 2020 20:07:37 +0100
Message-Id: <20200225190741.113235-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200225190741.113235-1-tomek_n@o2.pl>
References: <20200225190741.113235-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 3082fbaf0c9ea7faf9c0a8f62d057b7f
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EcN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110809_099043_5EC3E652 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/6] layerscape: ls1012afrdm: add
 uncompressed initramfs
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

Uncompressing of initramfs image fails on board with U-Boot from "QorIQ
SDK (FSL Reference Distro) 2.0".

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/layerscape/image/armv8_64b.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/layerscape/image/armv8_64b.mk b/target/linux/layerscape/image/armv8_64b.mk
index 0322183b96..c2e091fb2a 100644
--- a/target/linux/layerscape/image/armv8_64b.mk
+++ b/target/linux/layerscape/image/armv8_64b.mk
@@ -35,6 +35,7 @@ define Device/ls1012afrdm
     ls-append-dtb $$(DEVICE_DTS) | pad-to 16M | \
     append-kernel | pad-to 32M | \
     append-ubi | check-size 67108865
+  KERNEL_INITRAMFS := kernel-bin | fit none $$(DTS_DIR)/$$(DEVICE_DTS).dtb
 endef
 TARGET_DEVICES += ls1012afrdm
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
