Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D921AEC65A
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 17:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xy0C235n5u7u7dX1/7l3gqRuTT+KBV/ZU9eCRUmpvlU=; b=cich3ACarwo3xa
	0+x16vmusMkcfJp/9vWXLRmVQCHI9GwMoKEfwN0Vtu9BoAIGjgd3LUUwOzFblZDZL55rFpIUJX9sZ
	KGH3/2I3QQi6+RCvEcd6/2Rh0xaV3UJKY0H7rS0eqCGZLR6hmnsmD4515xvtQE+ObymMZRxrs7J8M
	XkSueKCv2UQxvxcTUDvnoA6ziaN9IHhKEA6sYyX2YjxvHYFDwgjxDeCYyLT0VslxHi4sNPlNEf0Va
	ojtyBuLgVinpCDUZaZdt8Tpn3Y0GweuvpP/+O4sthRFyvN7/Cpjs33HenPbPdDrkgE8qosfZvws5d
	WJ1P1YHbgMDayCOlSJMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZS9-0006w0-H8; Fri, 01 Nov 2019 16:07:09 +0000
Received: from mout-u-107.mailbox.org ([2001:67c:2050:1::465:107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZS1-0006uw-MH
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 16:07:05 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474RsH2PQJzKnR0;
 Fri,  1 Nov 2019 17:06:59 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id C6YLvCaHtsLy; Fri,  1 Nov 2019 17:06:56 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 17:06:33 +0100
Message-Id: <20191101160634.25559-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_090701_877349_F20F9C55 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH uci 1/2] util: Fix error path
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Unlock and close the stream in case some file operations in
uci_open_stream() fail.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 util.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/util.c b/util.c
index 12aec9b..8572e81 100644
--- a/util.c
+++ b/util.c
@@ -221,17 +221,21 @@ __private FILE *uci_open_stream(struct uci_context *ctx, const char *filename, c
 
 	ret = flock(fd, (write ? LOCK_EX : LOCK_SH));
 	if ((ret < 0) && (errno != ENOSYS))
-		goto error;
+		goto error_close;
 
 	ret = lseek(fd, 0, pos);
 
 	if (ret < 0)
-		goto error;
+		goto error_unlock;
 
 	file = fdopen(fd, (write ? "w+" : "r"));
 	if (file)
 		goto done;
 
+error_unlock:
+	flock(fd, LOCK_UN);
+error_close:
+	close(fd);
 error:
 	UCI_THROW(ctx, UCI_ERR_IO);
 done:
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
