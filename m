Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E314DCE8
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 23:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqgdXxl/99qssCB+C5ldCYDzLQLxBWgxMXbX8z+GhtQ=; b=OOqatoEb/QNy2R
	jEqmXIaymDo44GV/FAyrWpa9QKib+gaq/8FUOVqvVZvg6TteXCkAAUivMkrcQtqPXznpSMERpeK02
	WzzTg/uo+uBWRXSO84gkeCiWTU4hpzhxV46mUtrdRGdCpld2vlz8tKq1pfqnAHDMEEItflrjYCFAB
	jk8wcaEVPehMXhp9mSrFoPYakHmVOMIo/mpM4SwBEB7pll2b6XiFJftY7T3VBWUJJaGwxUXLfCUbU
	/G+YvGOqkPMXYgcCYVib0TXx2HMsMDgvE4EfUu3I0s8UObez+L1tkoC6Yo3wSSBlI4tiWrGWkVakZ
	LR4CgdHeGVcZTldCGgaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4nt-000600-UD; Thu, 20 Jun 2019 21:41:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4mF-0003T0-J1
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 21:39:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so4554835wme.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 14:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K6XyYBpZYTZIhNAqwvma6CPAxW9A+FG7+THYnS1wA+I=;
 b=UbGftDAcrr1GE32Qd6KkmpICdn8SCXIlBld/g1srbCN2tyYqORbnOFuMZmVy29j3Vj
 VHwr+moshdr91lH/tcIjt7JJZge2/LSjc3E3IrwSlwhIWfcCxJSZjVuPJdjw15A21uZM
 j/632vIzZVBH1m/FuQ8pFeFmpw/+tSkZBxTWrfDDc+eHN60dqXzRYMonxSp2sDa71mO6
 FgveMHS6/J9fjZ/fcYZgiFRFEHX4gMF7w0mkZydUDB+TtCW3azltAU/twMS6gL12oBUw
 JGgPPItPqkkQxvXU0uOJtN7e19q2v5VqbgY51/cbPvNHBHbiT4u7uYa34QIS0uXb4p9N
 TLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K6XyYBpZYTZIhNAqwvma6CPAxW9A+FG7+THYnS1wA+I=;
 b=WOjD5XZdTmIac3EuVG16yp5BaL7R7b/Ez8aC34ty2UMeimeFV2RzVVL0uAEXxaOjT1
 208gzL8Ns5JJ8JmtUAaSwmTqArAMa26ALLosTVhd360VjHFcUHNtFBhbehoMO8A8T9Jf
 16Bq0BjQ2f/G7IpjhW4X605nvNROaYOUhieP0GU040LAx9GbQI4o3mTwMoV4c9wUwM2d
 4aBlEBKJUBXmtc8FiyHrdaM+7Ekq0PSpooyFotSa088Qu/61Tg68O9hb/y+Rm7mLMMt3
 80nd8Hlxm88CvzTbJym7Di+60V8zGP+fBRSWTVQJcJ0dslAy4eN8waMmFc2jfF9EqPXJ
 3XRw==
X-Gm-Message-State: APjAAAW1iEljJB9KqV9RsgRMupbbUzUrZYq1A6xX5jFAaOVjJsMVazLh
 ZgoYrPORNgYcwB6UqoMxLco=
X-Google-Smtp-Source: APXvYqyaMfoLNLtNOL7QSY6DauUUCgTpC9kOTKvGlZECcjYL9J0N8pIrgdF2ITD7J/hxLwauHVcPvw==
X-Received: by 2002:a1c:208c:: with SMTP id g134mr1018201wmg.112.1561066766342; 
 Thu, 20 Jun 2019 14:39:26 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-ecaa-d74f-d492-3738.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:ecaa:d74f:d492:3738])
 by smtp.gmail.com with ESMTPSA id j4sm575426wrx.57.2019.06.20.14.39.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:39:25 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Thu, 20 Jun 2019 23:39:35 +0200
Message-Id: <ff66ca5b146e40ac56009a4e511bd0d0120c7814.1561065843.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561065843.git.petrcvekcz@gmail.com>
References: <cover.1561065843.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143927_715486_C418A1E8 
X-CRM114-Status: UNSURE (   9.91  )
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
 provider (petrcvekcz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 3/7] MIPS: lantiq: Fix attributes of
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
