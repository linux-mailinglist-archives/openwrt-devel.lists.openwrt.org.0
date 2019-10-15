Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E96D79E2
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 17:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AivusGfiaNRXegT9+HEEwLEY3rWdUVWsrOskvbo0A4g=; b=NZbGNrv3ePNdmj
	iZKV6InoWl/mpFDfaVTtxrOzNmBILOLcLhDPCy6DvkAEFVpWsWsLQRF9xvjp/sLzJdCYGO53Vp0/B
	A2rp44XfI6HM8B0lW2FI+JTpwM45Kw6RP+pcFaAlPlsOY8wyq5ChmzXoUQloluvChuu02BHs/zQLI
	vYhekHTLZ7qglaMc7CjwmjaUzRCB2wZvhC/Z+jEmVLecrx/6IwXmkwS+nekGttcMLcFzwZay3dDT0
	KIJVJBV5g/Sqs73N8z/VjaaKoqis90o9ICGxubGr6K+/aYtKMQp184kINtTG/CLNkzXvkS0m1giPr
	nTAjgiNQ+mh7GEzL5h1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOr3-00050x-4H; Tue, 15 Oct 2019 15:35:21 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOqw-00050M-6K
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 15:35:15 +0000
Received: by mail-pg1-x52d.google.com with SMTP id i76so12381954pgc.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 15 Oct 2019 08:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cytuFNInk+T/uWEDasd6c6LkXrrBjJqan6bNC+xGanM=;
 b=L0yiOLlCvPh8f38waiFj2oEtbmxnTvOdN/VbGFc8rATiBucQZbOTbutgQUq7a3zWCT
 JLKFbqAc7We8t5LjlaCoi0nGYeEuyAY3Aeq0ElrM/SPAFE3hj1YDHSU0Cq76sr4f1Qxu
 AawtkWofQfxMI8o7b7AvgM2KHAvYNi3IhoULdMh6C0ve2i1WXlqG9JTqGxuRLpjeqfKv
 C2TQGGbogSoj+SBECTxxakNepz9QyYuARgAdDNhdm1jgh9VMJ8mPZnGCvNl2jCDwdjdd
 mgd7eNZioyp9ZlAdm43XFxDq0uP0sYkTsUhaQP7nWuGmr+cn1z9KE263NswijfrCyCcS
 P3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cytuFNInk+T/uWEDasd6c6LkXrrBjJqan6bNC+xGanM=;
 b=hW4rnU/A0BBOGQPszH+ndDCa6HeFZaLv9+SilcbYnh2KW9lsqHrZl8xbyQmt+b5iKc
 vNP5M1Ui/t6XOv8UBSCeG5YKaNASiJL6GKz0nNT+e6gLmZndU4l/ILNP9fMIvRF6gfgx
 T5jFvL0IQUXasnvk8ry/wWpmzydteiHdi+4t84PzZJ4DGAe2MKcIfMKOejF3CbVPkZ/t
 Q/DSbI0EKQiOo1bd90MBimhK2xQjaC5k2XfjyirYU68NjvF7+ZFbMz4NJnIBjno2k4rl
 IPADjilihrZ5oVyGkj2dpgdXNLIrlEu+zsiLSn7oL+0zoTFIgODIgKBgN7NokZrDswPS
 Nnbw==
X-Gm-Message-State: APjAAAUhIl4NtLsdpXYBYNYSIBQUXMSk+BSd+7ytb0g0SGPgK1Ua1/wG
 egtwr6IKNtihd/npGcOCrgGHE9G51CE=
X-Google-Smtp-Source: APXvYqzb+8u6zhBiVcmijQ/ZEctiqSRHrRj6h+Sqy3ayM4ax/mtfOzyjcFW6Xiv/NPenj/fc2BbwYw==
X-Received: by 2002:a63:364b:: with SMTP id d72mr37173235pga.346.1571153709829; 
 Tue, 15 Oct 2019 08:35:09 -0700 (PDT)
Received: from localhost.localdomain ([67.139.187.132])
 by smtp.gmail.com with ESMTPSA id o42sm37644741pjo.32.2019.10.15.08.35.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 15 Oct 2019 08:35:09 -0700 (PDT)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 15 Oct 2019 09:35:08 -0600
Message-Id: <1571153708-22316-1-git-send-email-dan.haab@luxul.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_083514_257783_A12D4EF2 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (riproute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: sysupgrade: support Luxul NAND
 devices
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
Cc: Dan Haab <dan.haab@legrand.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Dan Haab <dan.haab@legrand.com>

This adds support for UBI-aware sysupgrade using Luxul formats.
---
 target/linux/bcm53xx/base-files/lib/upgrade/platform.sh | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh b/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
index 6b12c84..1686462 100644
--- a/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
@@ -402,6 +402,8 @@ platform_do_upgrade() {
 		case "$file_type" in
 			"chk")		platform_do_upgrade_nand_trx "$1" $((0x$(get_magic_long_at "$1" 4)));;
 			"cybertan")	platform_do_upgrade_nand_trx "$1" 32;;
+			"lxl")		platform_do_upgrade_nand_trx "$1" $(get_le_long_at "$1" 8);;
+			"lxlold")	platform_do_upgrade_nand_trx "$1" 64;;
 			"seama")	platform_do_upgrade_nand_seama "$1";;
 			"trx")		platform_do_upgrade_nand_trx "$1";;
 		esac
-- 
1.9.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
