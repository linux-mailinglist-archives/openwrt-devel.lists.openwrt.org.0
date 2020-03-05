Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E936D17AA8A
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 17:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ncdIl+4wB03xsj0oYnpiCyFkVSrP/KhVA5lAx4J494=; b=nkOP5nclp7mYLM
	WSq39itTZZmm/I5nRZg2fCavTp2JVXBJmMXejYaLTRnBjgz/emA11W6LZyt7zjgaq4Wqz7YWnHwHF
	7CcVjd/Go2tQcvWtS1k0sBUVygodG8YCHxLsoNd4827IqeMZMGpLCgHO6IrtJ6PCAJFRXG4QMq+zR
	THoTXYDVfvrK/xSr0QotAe0WyFHLj+FKqFYB5DfeMw1rUNrsLEVSpxEUXMWdmA8lg2hJpRCQ377iY
	C+LfRjW2VyYal08JleIQ1xlPd+rhtiIsma8aE046Dz51Um/2yQ1YqwyHuVPL+vePp+LeEioWdOBPg
	r1Xin7CrZAsqHI6tDr+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tRC-00043J-5z; Thu, 05 Mar 2020 16:33:30 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tQu-0003uA-Tt
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 16:33:14 +0000
Received: from mout-u-107.mailbox.org (mout-u-107.mailbox.org [91.198.250.252])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48YGWq57VDzQlGJ;
 Thu,  5 Mar 2020 17:33:11 +0100 (CET)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 48YGWq4NCfzKmhQ;
 Thu,  5 Mar 2020 17:33:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1583425989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=93ik3dGw86R9+8aYV0IjK+r13G9yb962/Uj6bmQ8S2M=;
 b=WotA/zg0Qeo8Z2xvDvfpMYgeZjEOEInj3YcEEmQlDlsl4IYwaacnoxwLKwZvbjf0+wBtUL
 6T/fiQXUP9YPQ9rRI18kV20pbVL2hIcp4LwgzqAxVE8c8M14rNUTbcuSwx7VfFeByWe2QE
 82GiDa7dRbxuaaEP5DlJbgWoHZcq3f6eHg0TUNwwfRs/l+wB8yNC8QocQXlTXac1WQ+Y3T
 w0V+L1R89v6z4yVbj4QVqupvl29LVmyL0Pk/s8VEcKe0qo6K11S8S2oU2f1wbTEZTBZ6VD
 Udldm7q28ch4cgOh7J6uquf6uyXoJZXrD8WL37QKafTd5XNPFQI4Fw7/4/4RlQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id HSBgbrgG-1kW; Thu,  5 Mar 2020 17:33:05 +0100 (CET)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Mar 2020 01:32:45 +0900
Message-Id: <20200305163248.361572-2-mans0n@gorani.run>
In-Reply-To: <20200305163248.361572-1-mans0n@gorani.run>
References: <20200305163248.361572-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_083313_114930_B9BFD9AC 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/4] Revert "ar71xx: fix Arduino Yun
 enabling of level shifters outputs"
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This reverts commit 077253dd666a30ae5231c3748222d4b5b138593d.

The output enable pins should be disabled by default, and only enabled when
used. Otherwise unwanted conflicts might occur between MCU and SoC pins.

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
index e92f68f490..5873248edf 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
@@ -141,7 +141,7 @@ static void __init ds_setup(void)
 
 	// enable OE of level shifter
 	if (gpio_request_one(DS_GPIO_OE,
-	    GPIOF_OUT_INIT_HIGH | GPIOF_EXPORT_DIR_FIXED, "OE-1") != 0)
+	    GPIOF_OUT_INIT_LOW | GPIOF_EXPORT_DIR_FIXED, "OE-1") != 0)
 		printk("Error setting GPIO OE\n");
 
 	if (gpio_request_one(DS_GPIO_UART_ENA,
@@ -150,7 +150,7 @@ static void __init ds_setup(void)
 
 	// enable OE of level shifter
 	if (gpio_request_one(DS_GPIO_OE2,
-	    GPIOF_OUT_INIT_HIGH | GPIOF_EXPORT_DIR_FIXED, "OE-2") != 0)
+	    GPIOF_OUT_INIT_LOW | GPIOF_EXPORT_DIR_FIXED, "OE-2") != 0)
 		printk("Error setting GPIO OE2\n");
 }
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
