Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2CD32CD5
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Jun 2019 11:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iG7H8sRVZw8LD2YQ4Co6+G2GKQ1CIHPgUdpGkh1ntf0=; b=ivmmEhctdVEmfb
	lF147TBS+j8OOvp2DxmiG3VYH+6YQDTE5CohDezaQLfHJ1ebHCt8a2lq8Y0nTMy+RfuQ1BuwFizyd
	gbCHb49tuNrOH47Em1+qPGX7E38bwHtXZ18fcGK/Tug9OEusIcPmfFcC34IS1vEeRuz7FrT8R+5vr
	7nFDxrKgPDKX5qBJIBZ2X3u4FECifczoIbutfVJjhPfpeX7+3F5F5HYOVCMusGPCV1q90Z3vWvYlU
	udaKaPoom1LcvwvK7tuOtuIeJVO8t/BdDw38MZAIkQ/uVsh0TS0p39NzpfTdAzmxF2BY3beAc5jDP
	gnx05daTxfoOxlXJuvig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjEx-0000A1-Mb; Mon, 03 Jun 2019 09:26:51 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjEq-00009Q-Ta
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 09:26:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id g13so25972423edu.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Jun 2019 02:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=TT14vKJdHr9fkMErtHTld9t2Mnqztt7qT8VfjVV3iQM=;
 b=QZrwbKDjC6bbFSi38y3yj3grnQKVEgWClwRXaVgn6VDVfSV7u4PoBTU9lAz88oLMwv
 1R8Vk62mof7Xnbb/VHTDWYncH5uxohvtq05J1SWSrqoXCVrtG/u24V8EgeW0uuvnW8NP
 NDyIRIJdye9q0enLLEGkkFAv1hl56gK1uCP4cZ6WFe3UR6gZRDvLmwGd5GCqLEKWhGTm
 HFdJV+q4BDxruq/SblFXy+SkbuS9l93BHxMt41IxO+VB2K7mg3va45NPpsJUc0otHyXH
 WqTQ29kRuLwnSrID1sZp5a6nemNWwvaN8Ej71oNSfVek/XuhxSlVHN71X7k1jmHLHzr9
 5UvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TT14vKJdHr9fkMErtHTld9t2Mnqztt7qT8VfjVV3iQM=;
 b=bUwj64jqAHQw3tUMcLlsxPioABQPjKun0cfjqSITrz26B94AyTvxGz0ElBQSEAvnNL
 vaAs3IjF0Hexzzu5/1trqkEwMFrDIB+/BUM6vuJE9xT4gI/3CG2R1thYzUKsRmvtzkEp
 bDcJfduadiQg6p1pIWecNf7cUktspV/EwgpNiHU0wmX/nPoHGlF9gB0Es2PdgYkpOChZ
 xF2xZ+Y2ss7Nlwden78L9R6QOZb9kKSQ1G/RRZJooJlULwqF33z6F/fkaz92jZgX5DPe
 WfjdlQPF4mSfBZbMooqo2bF+aQikN3fZD3nomPUg5g4+9GwK50vbKfXVQGBmv/YEBZ4Y
 jjgA==
X-Gm-Message-State: APjAAAWkw1R2lt/hC8QOU1JLRFSKutVWf9laAxWuwbZ4Ro1LaQl+BUKk
 AhQnX0bdfC+VuJQ7kaxrjYwADEPHPXw=
X-Google-Smtp-Source: APXvYqxf//Ymvoil+jkXh8Vgsif3iDVNBoQmUq0j662M/GXjwSaVW8sC1bJe4yLMwvy9//WDonE0Sg==
X-Received: by 2002:a50:cb45:: with SMTP id h5mr27670981edi.12.1559554001651; 
 Mon, 03 Jun 2019 02:26:41 -0700 (PDT)
Received: from kvdp-BRIX.cmb.citymesh.com (d515300d8.static.telenet.be.
 [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id c7sm1068855edl.6.2019.06.03.02.26.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 02:26:41 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  3 Jun 2019 11:26:30 +0200
Message-Id: <20190603092630.18765-1-koen.vandeputte@ncentric.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_022644_995350_3D07B782 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ar71xx: fix nand init issues on some rb2011
 devices
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Koen Vandeputte <koen.vandeputte@ncentric.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

While flashing lots of RB2011 devices, I noticed that
some of them refused to boot properly, failing over de NAND parameters.

Checking in detail shows that some device seem to use another NAND flash
which only support standard 2048-byte pages, without 512-byte subpage support.

This commit disables usage of these small subpage completely.

Advantages:
- Both NAND's with(out) subpage support are working now
- The nand speed increases a bit (measured roughly 1%) in typical usecases

Disadvantages:
- The maximum storage capacity decreases by ~0.2%
as small changes can consume a full page (2048 bytes) now.

Signed-off-by: Koen Vandeputte <koen.vandeputte@ncentric.com>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-rb2011.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-rb2011.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-rb2011.c
index 7bf64905c68d..aee0fb201445 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-rb2011.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-rb2011.c
@@ -256,7 +256,9 @@ static int rb2011_nand_scan_fixup(struct mtd_info *mtd)
 {
 #if LINUX_VERSION_CODE < KERNEL_VERSION(4,6,0)
 	struct nand_chip *chip = mtd->priv;
-#endif
+#else
+	struct nand_chip *chip = mtd_to_nand(mtd);
+#endif /* < 4.6.0 */
 
 	if (mtd->writesize == 512) {
 		/*
@@ -270,6 +272,8 @@ static int rb2011_nand_scan_fixup(struct mtd_info *mtd)
 #endif
 	}
 
+	chip->options = NAND_NO_SUBPAGE_WRITE;
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
