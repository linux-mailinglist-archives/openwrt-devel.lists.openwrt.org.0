Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143A2185C61
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:37:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0o6RPDWSD4Gj04Cn3AfkIezauCUwAXYEG9wTnUEsKBM=; b=Xcb+GPAXWRz7du
	m+CH5qSfX3omV9cEGLqgf+ofBSbilHGOS89sFqZvvT+zoUP3Kj+5/Ez89rFpGI656FOneNeLE5Lrc
	4cb9rf3ZfCBpQWAdO1SX7Fvk0H4BMEejf7ajoku7WkeLLFUXY9ASbWGe7XbnLyDL5VYcpqafaqYmG
	T9JTFPrB9s7rlx371kPf9rKMayC6tgUSJ4gqiqcu8ZomJ91MwmGjfAPKHv44lhsWhZCDrK8hJOMWB
	vOmhYXxaSTy0kR6zqy92v3b7WLw+/B6Lz5zDum+atbiDWHJC8p1yb5e3q8XeXj06YyfWnqaHW6Sz7
	1+IjupcljW9Lns+kqEfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSVt-0005Yw-Mo; Sun, 15 Mar 2020 12:37:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSVl-0005Ya-P1
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:36:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id x11so13035191wrv.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Mar 2020 05:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n2oRtEWplQzan4aiqwoheBXILrRCSXxTJRn5HtUOmwU=;
 b=BBc04MhbXXZEpv1dWYrb4TV+hQjzsZ9sucH4KGvDNlAEmKRLvR7EUHMCDlnISSpuhB
 LVhGhJLLaUNjFBO80NHfbiyxmOkJcLEQjPsD6ZGV50fii0bn1RcVAP3xtUqzRioFYEa/
 4c7doRPUhnCRjkYSkqYzvc8CtS6xl/3fZC+gKvETefK3+IbzDWVPxU0X8yKUrb/ADVZ7
 Oje2+QYaRRNm7XXXks0NLXBpYkBxs7S7qGhY62zIsnAnKnxvPjYdjfmdOwzXtDHxTy7T
 O9088CSiBLVubrFhWAk9TuSlBXYoNGFxHd6axz0jHVbMLfyo5W1U1BKcqw9+KpTcdLfX
 W2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n2oRtEWplQzan4aiqwoheBXILrRCSXxTJRn5HtUOmwU=;
 b=TUatotzb7EiDzPPTWivQcsFZixBi22DAufctrAOffQYwaD/ZVibtL0WDPWiYP42S1v
 f9NoAl1IbgC1ndztnHMGKamHwna+cjPMwOISsdIB5jG9w90qYjjvgvpkPbTuotzo69qw
 0FDBEfC8lO+0SriJ3ZwVk4aruLNO1Q3BDO3ndccs/FfpEbCWk5SyRWZwE2Lc4myxGjJS
 3DH7TUp43Xdv10+G49EqO4mRVJr6kFnGAATn/pdYOSFlzOUTX1wASCHqY5N4zJDaMd87
 uavoF6h0ed7rRqq1adSDCqv1DY99TjrWW7K8M7xu9fU3inFZ5OewLALL5C2QwHPfsJKN
 y8bA==
X-Gm-Message-State: ANhLgQ3Q8P8Gy4FtG4daOpvIlJ/7s+GOHtMSaEr88q9mNxydtqC9ryec
 4TyjLm1Kr0HHEsciD4l8fyl95FePZL3R2WNfhG33G3l6hbuKzqEotvGCPlUTjc3EmtYi86jmuxy
 RCbgtumKK/TRjQ//AGg/1mra94JbgNtSTLpAHE6KcgMyssF+YIrUmO2H5FJalwWIrrzCZP80WUD
 M4Sr6UxIf9
X-Google-Smtp-Source: ADFU+vvuuKK8os+luvm5bTteASIqTrRuu4xMWRQ788+hz2npuBCRDg++ofB6GM6nclg9ZZ6AUT+anA==
X-Received: by 2002:a5d:6a04:: with SMTP id m4mr29108956wru.127.1584275814681; 
 Sun, 15 Mar 2020 05:36:54 -0700 (PDT)
Received: from localhost.localdomain (dh207-97-24.xnet.hr. [88.207.97.24])
 by smtp.googlemail.com with ESMTPSA id s22sm23893822wmc.16.2020.03.15.05.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 05:36:54 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
X-Google-Original-From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 15 Mar 2020 13:36:40 +0100
Message-Id: <20200315123640.16614-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_053657_814921_8099773E 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: 5.4: enable NAND
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
Cc: "Signed-off-by: Robert Marko" <robert.marko@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: "Signed-off-by: Robert Marko" <robert.marko@sartura.hr>

Lets enable RAW NAND and Qcom NANDC drivers again in kernel 5.4.
They were dropped when 5.4 support was introduced due to upstream changing the symbol names so refreshing was not enough.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 target/linux/ipq40xx/config-5.4 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/target/linux/ipq40xx/config-5.4 b/target/linux/ipq40xx/config-5.4
index fcd7c11b1f..2c6c6500eb 100644
--- a/target/linux/ipq40xx/config-5.4
+++ b/target/linux/ipq40xx/config-5.4
@@ -336,6 +336,9 @@ CONFIG_MODULES_USE_ELF_REL=y
 # CONFIG_MSM_MMCC_8996 is not set
 CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_NAND_CORE=y
+CONFIG_MTD_NAND_ECC_SW_HAMMING=y
+CONFIG_MTD_NAND_QCOM=y
+CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_SPI_NAND=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPLIT_FIRMWARE=y
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
