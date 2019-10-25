Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAC8E48EE
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 12:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0MH1ii3GYPoT0PefrL04mNrxYdTv9ft0flxmYYcFPiI=; b=nL1Tt9NGFYU6b7
	cQ0jadU9uQWRmRx/xDoTy/mOEf8jD3zcbsZL5jq34zM6giES1JKAZsy8TEJIZywl23PTuKD5fAoNe
	UWx3/ZkBcgjS9XyOHZiqQC3UBPUeX5PvdRNUynXKs1U94b3YD9z2iDJsydKvo7hyb+9QTQk0ZNlUS
	3HrFGMN+6gTucCy7jNB8+r6CEoTL8kb8xrN4Gg1Ylqj89wS01w1lHgjI1LrIpoz0sjU2rySAcmqQ9
	roGQ0/kv2iNrlCk2JEQEsuquptNkIB6eWfuw9BdBVqNLQ6oBIscxOswc5vwmP8TosC9vTZljmliTH
	QkiQH7x6i8ypqCOPzk9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxCT-0005wu-Sm; Fri, 25 Oct 2019 10:52:09 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxCL-0005wX-4A
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 10:52:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id c7so150632pfo.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 03:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a7n6VEWBkllglm7O7EUV3YaTDVr3Yf05VKt3eAwjqGA=;
 b=uGTTUzgmFXiO13tdFEBD8auK57CjjCcVvtAu6GXttxU3JxQS5emyHX8rRK4tiy4ow/
 nV/JKh8pqdvcFFtlyzqArSQ8OSgBLpR/kqLjSDCmsdJXStua1PRWWrrNL8CQBUe57+nj
 GT9Z7ZFlxCW+KHoUVNHXI9z2Lli7F/QoDUz70qztLHyoC1jICcB76wBm9eWHvaVdZ2qo
 sg7cYY+21KUa/6hEJMhH/K7zRrPwexcs82g/ROkf95GL1w6MpsPwZk64FYVAhqEngaQU
 wXAqI2zBC6Ifbk7XlgxML4Esm9VvYHsw1bz+DdOcniyp8mct7noj9YLFZhd1RAcv+hg+
 NLOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a7n6VEWBkllglm7O7EUV3YaTDVr3Yf05VKt3eAwjqGA=;
 b=Lwx/BvlLmYumtO2KzouPaZCYVSKINLCbFtpuTGURRiiVqT/3sXTrMC2p/mgC1P44B7
 3uBX+8fu0jyEBM6k779UlWPiZ4cnh746qCo4+2PM/K5KAGVnGoAla5149Xq0/elzuTKE
 2YlY8K+JZ82SRoPtG2lE9F6c4GOljZQc23HoDVgLxUjeD9sSeLGQGNpk23sZO+t5aVy4
 6MBWEExdtoRj9YY55sJdRmLrxd6ficLnQTRN+UTrS7tb5A81TX3oXakj1H5719xuguv0
 2zPoFCT+KKbxnI5+ioeFIhKL4AKQTUv813YMpuEHelfoyA7VmYpIZ6nqj/AVmsdLYP6h
 mgKQ==
X-Gm-Message-State: APjAAAWO19oMsN1RaEf2bxGaHbABtxJhHTl2OuUdDhF6CeL1CCjYOqcw
 M2Z94W2MAQMqfVAlg4RC5fOdNqirkNs=
X-Google-Smtp-Source: APXvYqy1bLVRWsKOiHt7rmO3jskS5PBhMejaHe1c0v3TJ55On1SyII/u8NX4DyybgIrZ5aXk1kJVLg==
X-Received: by 2002:a62:4dc1:: with SMTP id a184mr2704576pfb.136.1572000720137; 
 Fri, 25 Oct 2019 03:52:00 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id w10sm1830721pjq.3.2019.10.25.03.51.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 03:51:59 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 25 Oct 2019 10:51:49 +0000
Message-Id: <20191025105149.25891-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_035201_171949_79372A5A 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH fstools] block: use fsck.fat instead of
 dosfsck
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dosfsck is only available when --enable-compat-symlinks was given when
configuring dosfstools.  These symlinks are not enabled in OpenWrt
dosfstools package

Suggested by Reiner Otto in FS#2408

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 block.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/block.c b/block.c
index 39212d2..a849500 100644
--- a/block.c
+++ b/block.c
@@ -708,7 +708,7 @@ static void check_filesystem(struct probe_info *pr)
 	struct stat statbuf;
 	const char *e2fsck = "/usr/sbin/e2fsck";
 	const char *f2fsck = "/usr/sbin/fsck.f2fs";
-	const char *dosfsck = "/usr/sbin/dosfsck";
+	const char *fatfsck = "/usr/sbin/fsck.fat";
 	const char *btrfsck = "/usr/bin/btrfsck";
 	const char *ntfsck = "/usr/bin/ntfsfix";
 	const char *ckfs;
@@ -718,7 +718,7 @@ static void check_filesystem(struct probe_info *pr)
 		return;
 
 	if (!strncmp(pr->type, "vfat", 4)) {
-		ckfs = dosfsck;
+		ckfs = fatfsck;
 	} else if (!strncmp(pr->type, "f2fs", 4)) {
 		ckfs = f2fsck;
 	} else if (!strncmp(pr->type, "ext", 3)) {

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
