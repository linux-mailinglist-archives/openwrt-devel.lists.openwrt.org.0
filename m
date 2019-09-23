Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D35DBB617
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 16:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5eeQXmuySZKwZ2wDBCtWiqpTrsr+KAvOZqxNQRtuy4=; b=Tco76ni+iKMexD
	G50VK1FiVtObogifcLipsT6XGgqsOoLg2+34vP1VxkCe90v0XVj0by5Kr0HCpQfjUcnJwl9CA5OMA
	ubFZROZxDwWrh8JuIup6ZkCLCBf40CvzTbrImBRlaHU6bn0kVOO5EI13NKmeXm6tycWPunbjsSrqi
	XiZcLmlbSNQoNCtsaA89TMwAPiAVtcs9rNY414jjLVSb67W6jgx3T/Ds92uR0LuCO77DhQ3yI7FnJ
	u83EhrJJK44tXveoEEjEaVR8/n8HO7SH+oq55r7t97LCsb+IToaE0l9H1KrR4WjAf+rufdvO8NtW1
	qSVS8lmYSfz+Up2yDUtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOuI-0001LB-QX; Mon, 23 Sep 2019 14:01:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOtr-000135-R0
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 14:01:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id f22so2312009wmc.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 07:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sv6WmzMUJf2FA8YsqAaTro/SuXoA9MX8FHKaSvCOR1c=;
 b=ixnB8wP/XJwgD8AKDUT7kDH9SaCNbFGFSFVOQgZwZyGjLjJgts3WmbxZDl0DGtl0il
 44/dp+KhCifb08ZwsvxY1f+rrlekDBuRB3b3ncfDXvOVjmOkA49Fv+CMbnq8mdPY+gMk
 5hEMGMqKCV9TVQ+oa194Rj+KY3MOdnT1mCCUsSnT29CZE7G/TSQafZ7Pl9dsU3ispjN9
 gEiAYGgt61GL2CaSSpwQV/qq4fBxk1vKtRQ9tP+IbPFKwVkTi/l1fC5OJ/BpYBLAftQZ
 MKX1PabwEZYCXgQarBzuX0j3J1sA9jtYY3yGBh6gUfHryjc9zb4SySlPyEQgA6paJB5q
 Mk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sv6WmzMUJf2FA8YsqAaTro/SuXoA9MX8FHKaSvCOR1c=;
 b=h2qCDOuZQE5HeWe9X9AWChjGKzP+VIq3qSghGB2TsMtB0pfiFJWB73fYAQO71cMCRq
 iWwX4Pp3cvxcImbOJdvey0IeC1eYoEifj9cnPgzvKgKmx9/ve5X1HPqnnEnKHemlUt3D
 riqmdHnWd310TsLidlumf+JJoP4sBDTZevk8MRZtr2hzvGS/ZU5k/YzPcyIavkxd9jhr
 hOgvSONsayX6ZDOtl8/RZ98Ch+MhCdz9FCT+ve0ZzKK9uUXwDp7pmu/cLT9nAFLkzKoh
 1pSab5UXFvR/T4BY3ueLAJGt0mDQMHcLrcP+Q2wp43zu3n/j3RJAAqOcBOtj6QMVfUvA
 qAeA==
X-Gm-Message-State: APjAAAW1Jas/LZkwm3MBJXTaPZk8j55fPY77bgy86svyK0kfXGHZhEKf
 EVds9usfkoOt6LOBvTLZiKh4zCgE
X-Google-Smtp-Source: APXvYqweT662i0a/RhIvler4nDvVmXrnDJubkxqw+OuE6BQEdSAnNy/hHtMCcWQTO/TA/SkZBMwDwQ==
X-Received: by 2002:a1c:7409:: with SMTP id p9mr13683788wmc.162.1569247269837; 
 Mon, 23 Sep 2019 07:01:09 -0700 (PDT)
Received: from localhost.localdomain (a89-182-65-88.net-htp.de. [89.182.65.88])
 by smtp.gmail.com with ESMTPSA id h7sm10570705wrt.17.2019.09.23.07.01.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 07:01:09 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Sep 2019 16:00:53 +0200
Message-Id: <20190923140053.14738-2-a.heider@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923140053.14738-1-a.heider@gmail.com>
References: <20190923140053.14738-1-a.heider@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_070111_983255_61871B2E 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] sunxi: enable audio for sun4i
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
Cc: wigyori@uid0.hu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Enable SND_SUN4I_CODEC and SND_SUN4I_SPDIF.

Tested on cubieboard2.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 target/linux/sunxi/config-4.19 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/target/linux/sunxi/config-4.19 b/target/linux/sunxi/config-4.19
index b1a9d7342c..a95bcc9e3f 100644
--- a/target/linux/sunxi/config-4.19
+++ b/target/linux/sunxi/config-4.19
@@ -501,13 +501,16 @@ CONFIG_SMP=y
 CONFIG_SMP_ON_UP=y
 CONFIG_SND=y
 CONFIG_SND_COMPRESS_OFFLOAD=y
+CONFIG_SND_DMAENGINE_PCM=y
 CONFIG_SND_JACK=y
 CONFIG_SND_JACK_INPUT_DEV=y
 CONFIG_SND_PCM=y
 CONFIG_SND_SOC=y
+CONFIG_SND_SOC_GENERIC_DMAENGINE_PCM=y
 CONFIG_SND_SOC_I2C_AND_SPI=y
+CONFIG_SND_SUN4I_CODEC=y
 # CONFIG_SND_SUN4I_I2S is not set
-# CONFIG_SND_SUN4I_SPDIF is not set
+CONFIG_SND_SUN4I_SPDIF=y
 # CONFIG_SND_SUN8I_CODEC is not set
 # CONFIG_SND_SUN8I_CODEC_ANALOG is not set
 CONFIG_SOUND=y
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
