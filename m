Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8477C3A20F
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 22:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqgdXxl/99qssCB+C5ldCYDzLQLxBWgxMXbX8z+GhtQ=; b=P+5Hlmqvp2Vc5p
	QRrspg0vGaEiFngLQA72E8ONTtMJRfHBHfWNFXO6D1+zqP/w32O4movGIDfAPSrDHUqXKaQXRr7Se
	xNV1hjeB2P9wBffv7dNdhzFuuFKQxrS1ZSSV4lrJv6HGVGpeKYzdX1/XuFsBOZwEj4HqDT0IPCB7B
	58kWu6XU4Bf3NwaEuS76vTv2vWnS/OJroqdVONP+elMsxc2bOBBqPpG2iCE3iaO+QMHjUs6EyApIh
	tnh8h7dKjYFE1pj+PmWrIj7ICKT4nooU9PMjU5hQLLx7ut2JOgMhqhPHakYc97dC7phO0aFKOHnsU
	Jc3dAFUvqbY/ysT177XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZiHC-0004Md-UO; Sat, 08 Jun 2019 20:49:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZiGc-0003kj-GW
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 20:48:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id 22so4844613wmg.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 13:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K6XyYBpZYTZIhNAqwvma6CPAxW9A+FG7+THYnS1wA+I=;
 b=KDDpbTwuwRIEEP8A988qq8gPEsMT3oakGgINblELgjNVwDsBCIsI84f69v/G9/Hmso
 i6ZaCJvfgqP0F2qVWdaMuu93L+dFTMkrSfSv2bCaVCPlKa5ou4c3UjvjzinTtSQ2vp/I
 U26JJrjLBP/61HRaZ0mENcpBbHhuHu2tFPijaeyx4TjzJsCdNFgfkNcrGjnFqL6o2M8V
 rn8MRDh6lVBMWszxOZav845SkST2m1jtqi2TEw7938tBeRblno1F3cmv0LNO/NOnJoBd
 /NqX8QHuNkBBzH5ZMZxo333Eswj1AC0OnaXm2Dp/lHSaPlsJ3bVt1kFGxx2EqE4A3pY5
 9bgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K6XyYBpZYTZIhNAqwvma6CPAxW9A+FG7+THYnS1wA+I=;
 b=TtRGGisGhd7dmZizrjKS6+zCRW8u9Z20Ky+HNwNLLlWS0LSq0tnhyarXqQlkULskhg
 jF+EMiUclPG2n0ryJjBbRK064PUzBUGJzh4wdCj5f+zpoXQpSXnLOZEHeQgWKbPnNrXA
 iLPdgL/d+r4IHSPfLFTsyMGM02S7iZ7wkii0eV1mItT8m7u/rQ0MVXgDJNZlBxZtWazZ
 /tCrL5AOX/YR8AejzI5XmvH8CwDgrCNk+Oya7KHfwQjs3P9ZvgBt3qNx1INfqyLcshCP
 DJZd4xrUacbPwsrtaRw+924XzW6Eklp9PJ0ov5B0vxQJ9+Dyx4tevbeKTpwu5o0/lfUZ
 +kEA==
X-Gm-Message-State: APjAAAUNl1YDPVB4yStbuqzEwTHNlVpQUiABFhi9QzWk4UeoeP04havb
 ngZWZ3NEuFTTfnWbOv3yO+w=
X-Google-Smtp-Source: APXvYqziyeGiwwN9mxUOB8c3wzr31hYnkEsgES+NJIIOaQXyyThiJZ4wdX0FRah1BBA5LUUd1jL4Dg==
X-Received: by 2002:a05:600c:2507:: with SMTP id
 d7mr7784045wma.2.1560026925293; 
 Sat, 08 Jun 2019 13:48:45 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-359a-8d64-e90a-f663.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:359a:8d64:e90a:f663])
 by smtp.gmail.com with ESMTPSA id f204sm4986394wme.18.2019.06.08.13.48.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:48:44 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Sat,  8 Jun 2019 22:48:06 +0200
Message-Id: <a7c5ff7cb94fda09ba72e7337c8c850efbf006d4.1560024463.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560024463.git.petrcvekcz@gmail.com>
References: <cover.1560024463.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_134846_606184_BED60BDE 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v1 3/7] MIPS: lantiq: Fix attributes of
 of_device_id structure
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
Cc: pakahmar@hotmail.com, openwrt-devel@lists.openwrt.org,
 Petr Cvek <petrcvekcz@gmail.com>, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Petr Cvek <petrcvekcz@gmail.com>

According to the checkpatch the driver structure of_device_id requires
to be const and with attribute __initconst. Change it accordingly.

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 arch/mips/lantiq/irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lantiq/irq.c b/arch/mips/lantiq/irq.c
index ef946eb41439..2df5d37d0a7b 100644
--- a/arch/mips/lantiq/irq.c
+++ b/arch/mips/lantiq/irq.c
@@ -347,7 +347,7 @@ unsigned int get_c0_compare_int(void)
 	return CP0_LEGACY_COMPARE_IRQ;
 }
 
-static struct of_device_id __initdata of_irq_ids[] = {
+static const struct of_device_id of_irq_ids[] __initconst = {
 	{ .compatible = "lantiq,icu", .data = icu_of_init },
 	{},
 };
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
