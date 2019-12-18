Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBAD124E06
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Dec 2019 17:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uusPJCk7anP5aZEpZOrS24KgETJ2ghk86KTc/nxse/c=; b=lFePavevPWro5l
	K4AEGoIenN69sdkmEheRObed160SPyi6fSa1Lc2cyGjdD/ylpgt5dgJYr4PpH1tYV4ToPc5ngeh7M
	HgU+mhiK9mwI5Hm9F7866J8OXgMZUbidwMLV8HlKRV5LidPfO1qMpMZTN4jc8rWU3iJ82d1Yqt1MQ
	9IPClAOqVjMJUKZ3AXAS+1A/GvZqLGXh2WdJMYxKrOeDvzBNJt4Hk1UkHDxXRYvb3djwyruQ3dz9Z
	LpadWTEcind58uYbEBRH82sOkh+IQRXBT0a9KHHtbXazeny0kVMBz13HDU9M9oa75QfQ4PQaoH/PA
	iFqOIq9dXXrOy3QA0pqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcMp-0003ym-4m; Wed, 18 Dec 2019 16:40:07 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcMc-0003jD-4c
 for openwrt-devel@lists.openwrt.org; Wed, 18 Dec 2019 16:39:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id f15so2135273lfl.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Dec 2019 08:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8CaMbq5tV2mSlHdSzUnwmYZLgg7IhclcOwk8/cW7o1Q=;
 b=nEWOaMk0awiaoO2EixJzHNNcsvuTyWug2/eNvFJ4AhfqwHp9rK2h+FMm3tdnYuVxXY
 AreQezwooF4r6urffkrSsXdx2hAH9lbRdfBAKZGC5wIAeI/OfQjSeBVeYeEzJy0pqMO7
 wfGuEK591s8bJ0IGxp75YgZQ4xVpGZU/Y2tr28ciZFDrsyjYQhWu78S8UcskL6UWVnS4
 VPV2iEwGGVUL4ghU/JIhorV7Kdmnlp2XMrCLzf8cTSHMO0eJ4CJObZ2jD8w44d/CAmHW
 rpqDnn3c5zUwuMAND7lEVQjOR8peSesEqITm6/WB6vw920PlobC9ZPZ3mKO6geabGXsD
 BmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8CaMbq5tV2mSlHdSzUnwmYZLgg7IhclcOwk8/cW7o1Q=;
 b=AGK8PW1S6lcdPb7u6J3mfEXuTFSWi1AxGm1GDQDIwHO3/+2fhhXB1BzR36XrrsMIOD
 yfydN9990JHxNfnza/rEDkbP6VtvnEzMP/KpDiKC0gTmvCgpX6FIu/O1q4zIez5ON13k
 CrXsjmSmqwJx8d++29TixcrvwUBDTE1X+NOJ5O0CWC+N//BN3289z7nDFnXtXlnKKuei
 kn8zB6SUn73Z01Uj8xJtINfNmcEN2NUji1rT2ug0bfHiqGOvw5kWyoGNBgjt9oba0Eef
 41a9EBLvwyfVe6pAH5DnsXqybImKIhWXQ8Cd6dBLT/fGQgvaukDaS/KmlGqIsZapNa4L
 jp0g==
X-Gm-Message-State: APjAAAVgZHVIvzyfTnqyXnyuI2Ob1JpZ5AYTln5vtrMK2br9dEm0CEfD
 iBAJD9gw9G7sDWvLomwexhvFQWTo
X-Google-Smtp-Source: APXvYqxpAuH8Mg50uCaMcZ3lVu5YCcGzEvXi6qbz2ATurzAamK1DzOjaNztvIU577tOgCeU0KtM0QA==
X-Received: by 2002:ac2:59dc:: with SMTP id x28mr2389426lfn.38.1576687190225; 
 Wed, 18 Dec 2019 08:39:50 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id l5sm432276lje.1.2019.12.18.08.39.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:39:49 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBIGdkuD032738; Wed, 18 Dec 2019 19:39:47 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBIGdk2Z032737;
 Wed, 18 Dec 2019 19:39:46 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Dec 2019 19:39:42 +0300
Message-Id: <20191218163942.32696-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_083954_224276_78FD3C14 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ubox: print an error when no kernel module
 dir can be found
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
Cc: Paul Fertser <fercerpav@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Do not just silently fail when kernel modules are nowhere to be
found. This is essential for diagnosing mismatched kernel version
failures.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 kmodloader.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kmodloader.c b/kmodloader.c
index 07b6700..b4facb4 100644
--- a/kmodloader.c
+++ b/kmodloader.c
@@ -108,8 +108,10 @@ static int init_module_folders(void)
 		s = p + 1;
 	}
 
-	if (!module_folders)
+	if (!module_folders) {
+		ULOG_ERR("no module folders for kernel version %s found\n", ver.release);
 		return -1;
+	}
 
 	module_folders[n] = NULL;
 	return 0;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
