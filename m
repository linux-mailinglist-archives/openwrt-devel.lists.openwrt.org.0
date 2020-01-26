Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45E8149B56
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Jan 2020 16:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jViYBuc+O4uZ9WOat11tPXwnFCrTsPUTGW9UNJdFTY0=; b=cfAJxwLW6KG7fb
	uZKQWIlFI9y36mr7etg1NthtPyFjpJwCOuNK2dYMPgodhhNEpI5DSQzPtn98cEkQD5LYvws17cHEL
	NIKNBTQaDK/RqE06IvGey6XHE/yZF8+bMAcaz8bpEFSGkvZTSq9nrWaR7KYPm8oOv7x9sdapNFFFH
	1kdrCktoWxOMdnPQIiWRs4JvwTpToHioDVdMl3O2jhO4G0PQSIEVPzD86yG9u3RMPku3uRew9B5mn
	T1lSHj32UyFRolPlBwq55WRw0jY4lMKgdK7XefSnVGXlT3Mxle8zCF1pbS+jr7H9hefcZyZvWxtse
	cUcLWh7oS7/nbGEEPhrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivjdE-0006Up-A6; Sun, 26 Jan 2020 15:15:24 +0000
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivjd4-0006TB-9k
 for openwrt-devel@lists.openwrt.org; Sun, 26 Jan 2020 15:15:16 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 485Gdd3pgFzQjjL;
 Sun, 26 Jan 2020 16:15:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id urWoI74_pmJw; Sun, 26 Jan 2020 16:14:55 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 Jan 2020 16:14:39 +0100
Message-Id: <20200126151439.26720-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_071514_483787_12510910 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH libubox] blob: Check remaining size in
 blob_parse()
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, ynezz@true.cz, jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This extends the blob_parse() function to check that no inner attribute
is bigger than the outside attribute. The blob_parse_untrusted() should
be used when we know the size of blob_attr *attr, in some other way.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 blob.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/blob.c b/blob.c
index 528e717..0ed6c80 100644
--- a/blob.c
+++ b/blob.c
@@ -295,9 +295,10 @@ blob_parse(struct blob_attr *attr, struct blob_attr **data, const struct blob_at
 	struct blob_attr *pos;
 	int found = 0;
 	size_t rem;
+	size_t len = blob_raw_len(attr);
 
 	memset(data, 0, sizeof(struct blob_attr *) * max);
-	blob_for_each_attr(pos, attr, rem) {
+	blob_for_each_attr_len(pos, attr, len, rem) {
 		found += blob_parse_attr(pos, rem, data, info, max);
 	}
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
