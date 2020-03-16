Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D220E187104
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 18:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w4Zeb5ugY9lJAV8c6zELzc24BxRcePAJ8zRvc+ExjkU=; b=nqxHOGp5zvTLAd
	ipnRn7GluLExyG7nB4gGlAM7kpyw5f87i5JqscCZI9EjVj6JNCAlQKPgeUlSp6lRjUDwk78ro6l2v
	NqICIhlMwvIGUHPhMtDVM96bCmPYeXRHyxT25ZCs/db+VFuU8BHpdlYmEjhUKmD7omrVE25Wu7UhL
	kRramPuo/ep4pDjS4ZKUIQs6JkgGOLuCiqXi2BtcT79YTnxMlDoLiTQtlS1IOtnlQ6DhFhdNfsI7O
	5Mu5h8Q6qsDqP6cGPv2xDJfZoh4nzrXB9I+6iZ84xu1glTcIa7ya1hCKdiOWfHXkkJAezuSSM9fCd
	V5aN9qSEulT7SMulmIxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtMp-00020b-Mj; Mon, 16 Mar 2020 17:17:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtMf-000203-6a
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 17:17:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id 6so18563329wmi.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 10:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lNCDmJ5S9e2iohzy6SxMdjb6MQ02zswcSvG3tJey+8A=;
 b=IH2YN9HQUc1dLXWZNAH9Ab5+nuCVfROLUHyzwEEzB7zn5SlIXWjF2iGL6KGPAAJBxr
 7xACvI5nkcWCwMlFspHlNuKC6INC5byP63LaG6c2PWW450FKDovTGAiHml9s76rWvSzO
 tNJGluTTLyBQgcVba9SBTwbyXkK+GoErfGdpH10MRAUhXC8dc3SfYlwIxluI63o83wkB
 Z3CRvaRQq0+guzSST1gYDUq3zAAS7aYi5gddXRzaT+bu2EtsHvx9HaGKD70RhTOZPKpb
 9vw74iUVtM24qKzbvwXtKYhh34vru/9Zkc+QzGmEjsYEXplpCqg+tcjZ0DGK5gaoV4sH
 5H4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lNCDmJ5S9e2iohzy6SxMdjb6MQ02zswcSvG3tJey+8A=;
 b=lbLIGNMIBAwxhWx+qX2XYqdahIV4Uy74gJW9HgTN1qcEsfsDAtIGYKNuIKkiWywmFn
 II4/TUO6mSiL80aIhSNyDyvEhVyb0jbn/0m/V4chbwhl2dKbpjdHZD0lvGAOCZHwaU98
 rPDHA4mLT+us+TiV0lX2ZKCx2DTbGQ6DpcAgmVY4jKFVQ+6ALSGrYEYmMwMr1Tknm9Rx
 I3S6YgpOfT11fYi9Yr8PTUp7cAQ9LazHfPDKZQKZyckDXNslCOAKRLosxpNfsnzhtt1g
 aapN3vGKNGVNwCsYKShA+vSN+pk157F8EjttPZS+/Tq2zGe3ITyFTXZIwp0BmIkxncwx
 YGNw==
X-Gm-Message-State: ANhLgQ1NxyOU7L8GT8abhPl/L4S5NAeAl43jSdoR1SQ9gjn84y7thZ+Q
 bY7+xntaT1toxKLCLCdVwJTWVxLK
X-Google-Smtp-Source: ADFU+vvwvUMd+kUIa9UTGBVceg4jFcKtkCrXz8nKe8y6J+FykrM7EF9o+uTGOiZHaf1yvW/oEJ9QLw==
X-Received: by 2002:a1c:648b:: with SMTP id y133mr104974wmb.173.1584379039015; 
 Mon, 16 Mar 2020 10:17:19 -0700 (PDT)
Received: from tool.localnet ([213.177.192.242])
 by smtp.googlemail.com with ESMTPSA id l5sm721060wro.15.2020.03.16.10.17.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 10:17:18 -0700 (PDT)
From: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 18:17:16 +0100
Message-ID: <4889480.31r3eYUQgx@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_101721_242652_2AA3B530 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: Report that effective affinity is
 a single target
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
Cc: jonas.gorski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The bcm6345-periph-intc driver only targets a single CPU at a time, even if
the notional affinity is wider. Let's inform the core code about this.

This patch gets rid of the kernel message:
"genirq: irq_chip bcm6345-periph-intc did not update eff.
affinity mask of irq 52"
---
 ...qchip-add-support-for-bcm6345-style-periphery-irq-.patch | 6 ++++--
 ...qchip-add-support-for-bcm6345-style-periphery-irq-.patch | 6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/target/linux/bcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch b/target/linux/bcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
index 7235d1f96b..11666133b9 100644
--- a/target/linux/bcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
+++ b/target/linux/bcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
@@ -94,7 +94,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  obj-$(CONFIG_METAG_PERFCOUNTER_IRQS)	+= irq-metag.o
 --- /dev/null
 +++ b/drivers/irqchip/irq-bcm6345-periph.c
-@@ -0,0 +1,339 @@
+@@ -0,0 +1,341 @@
 +/*
 + * This file is subject to the terms and conditions of the GNU General Public
 + * License.  See the file "COPYING" in the main directory of this archive
@@ -283,6 +283,8 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
 +	}
 +	raw_spin_unlock_irqrestore(&priv->lock, flags);
 +
++	irq_data_update_effective_affinity(data, cpumask_of(cpu));
++
 +	return 0;
 +}
 +#endif
@@ -293,7 +295,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
 +	struct intc_data *priv = d->host_data;
 +
 +	irq_set_chip_and_handler(irq, &priv->chip, handle_level_irq);
-+
++	irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(irq)));
 +	return 0;
 +}
 +
diff --git a/target/linux/bcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch b/target/linux/bcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
index b75987ef35..2f44a48c32 100644
--- a/target/linux/bcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
+++ b/target/linux/bcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
@@ -94,7 +94,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  obj-$(CONFIG_OMPIC)			+= irq-ompic.o
 --- /dev/null
 +++ b/drivers/irqchip/irq-bcm6345-periph.c
-@@ -0,0 +1,339 @@
+@@ -0,0 +1,341 @@
 +/*
 + * This file is subject to the terms and conditions of the GNU General Public
 + * License.  See the file "COPYING" in the main directory of this archive
@@ -283,6 +283,8 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
 +	}
 +	raw_spin_unlock_irqrestore(&priv->lock, flags);
 +
++	irq_data_update_effective_affinity(data, cpumask_of(cpu));
++
 +	return 0;
 +}
 +#endif
@@ -293,7 +295,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
 +	struct intc_data *priv = d->host_data;
 +
 +	irq_set_chip_and_handler(irq, &priv->chip, handle_level_irq);
-+
++	irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(irq)));
 +	return 0;
 +}
 +
-- 
2.25.1





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
