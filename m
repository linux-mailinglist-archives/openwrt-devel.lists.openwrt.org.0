Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3039218748B
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 22:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PHpQXVZ3c9KxNHDaSFcWRHgvmiB5m/Zm1MdOXcEs1Jo=; b=CU6OISQzpIb69c
	xH43mXKjd5ccSkBR09AfufbbBWWUNbNkRhVK5BMW6LLkQrS4UawLdXYCg6MV+joQXIyJGetZiq0Tt
	GJQ5w7/U5uIsobVuEEmmlDh+W0r4OQS1RGv8TfkMHT1TtZK//qXRk6HBTtRwQYnVPWKJ88VtE0qJl
	SjV+QZ/I4bxExtFCRCwuEuufi5MrOqS9J3z5wuMwILaTIH2bs+DD3v+znxNFmJeKFqe91DHtoMHNQ
	cGHW4ogrId1yXEaEA30sn8PQpMk3ass0vHdEM4QKl0jqzBpgQjUx12Hb5VrXaXdDFsMAfIKTE8iwV
	LzC5ZJvp7dWKSetTDrmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDx2N-0000gK-Ot; Mon, 16 Mar 2020 21:12:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDx2F-0000g1-M5
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 21:12:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id v11so23096096wrm.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 14:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=asVohlf8eYRSocnwvRYnsLTOJxQE9GOtP/3H4V4x0mg=;
 b=mmFuKLXeqF5MiNR+qxGvsg9tejqmXxuGkjmsxKFmIyMoN+DYK1GEhlCY3HXu+1p7Ud
 lKtNuxi7Eh5eKyoZWBIT2A5NKMh3qb4QuED0v5TvoxUUwVYslojuDqquw+z70fJr7ShD
 WitJH4bKaisDeVgpg4N/Cz1uYLywDhV+XwaVz+dROXI4Z3/hWQZ9ykDm5xj8Lw57aftj
 kK425kvobaIvcwkNLQd0x5O7LIbUmnq8hxNLyBGFdGpfaIpliKO4gGH30oA9qwvLJN8I
 rsf5HSV2sm8CyTXVzR2qBH/AMrZCmveLy+TWm7uWUrM4+fUt7EHiWS1jLa/TNBBjZI0X
 W3vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=asVohlf8eYRSocnwvRYnsLTOJxQE9GOtP/3H4V4x0mg=;
 b=VzYcS90W53xAAQP5xqMp7oWTTGjGDvQYsrOnNAAQYTNEyqan7CTfpjecYhAnRF+MYI
 OlR5NZTbLAEmxap39lgmyqGymDpSmsbom1tsef3GRl80PD64lcMVIO8PbckBUn20ghlK
 UsTvWmk1ozZeFawwUYAXdV6M38Af9mnlyLKgR6zaV0889c8klU9g1ASaVElmobBYsRDX
 VWIg0RB/RezuuMX5BkMcpYG0lRB6UnIu8vWj/ozBmOMsRoF+wchPGaOfbScXFj/yORwv
 n0AnLsUttVUAfdTu1HgXEYOIEd5DFsfDLzY80Li7IOnRzK/gHUNxZzB58qxq9lzruy7I
 HbMA==
X-Gm-Message-State: ANhLgQ17pGYCqY5mgZ8zx9zN+4EHWB/9Iw4aj6YwOU93w1UKzJJpNkWN
 wx16F1kzss1nw/FfEvrFONBR5ro6
X-Google-Smtp-Source: ADFU+vsbb+FN+5zEN9P7deKXCLDbRVfFd8TAUtKs1CN0H6C6WNtOtwy2aBfHjdJBzronv5RxEs8TKQ==
X-Received: by 2002:adf:f5c1:: with SMTP id k1mr1318931wrp.91.1584393150100;
 Mon, 16 Mar 2020 14:12:30 -0700 (PDT)
Received: from tool.localnet ([213.177.192.242])
 by smtp.googlemail.com with ESMTPSA id v2sm1601891wrt.58.2020.03.16.14.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 14:12:29 -0700 (PDT)
From: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 22:12:27 +0100
Message-ID: <5045988.31r3eYUQgx@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_141231_743713_C3A9DDCA 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v2] bcm63xx: kernel: Report that effective
 affinity is a single target
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

The bcm6345-periph-intc driver only targets a single CPU at a time, even
if the notional affinity is wider. Let's inform the core code about this.

This patch gets rid of the kernel message:
"genirq: irq_chip bcm6345-periph-intc did not update eff. affinity mask
of irq 52"

Signed-off-by: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
---
Changes in v2: 
- Commit log: add missing SOB and a reference to kernel in commit subject

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
