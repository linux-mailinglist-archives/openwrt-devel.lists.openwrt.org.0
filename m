Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9C2169182
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 20:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+8fBvbDu6ayKgy1jy2zW+wKwLjkFdETLSsGtTF6hlGM=; b=tq3G70OtW9xTro
	teiiAtkfdYxdZEXwwdGs9SEJ8lDbrBwptV0F27Cazg0ZxYJJy4Me6aL+gQ2zTYYFUkGHNm5YcNk2S
	tC9EGTeBjvBlB3yLvMwTzTkX0lmK3F6/gC0ligyFvqrq3xax0e8OkHcYCh/PHg68lsWU9m35H7pUX
	jmVLOZyF5yyzk85DcFUUo0dKth4iZiW9goIQtxRExXgBpIpPtD3fjix7BVX5TaDQq5RUr6ZM7jrTM
	a+dTY2AAmSxilFwvfLw7tfBDRyXdkeXLc1+5Qs4aVJXXNFdKXfRv9qowwU7DZK0BbQJztgZs5oEzD
	9VKsu0VCgPlH1z8gHV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5aSJ-0000Az-Tu; Sat, 22 Feb 2020 19:28:51 +0000
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5aS9-0000A5-7J
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 19:28:42 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 48Pyzp0wKyzQlD7;
 Sat, 22 Feb 2020 20:28:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id q2oCRsib7Zot; Sat, 22 Feb 2020 20:28:35 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 20:28:22 +0100
Message-Id: <20200222192824.24670-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_112841_416953_6B6EDA75 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/3] mac80211: Allow ADHOC mode and
 different beacon intervals
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, greearb@candelatech.com,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ath10k-ct supports the combination to select ADHOC (IBSS) mode and
different beacon intervals together. mac80211 does not like this
combination, but Ben says this is ok, so remove this check.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../patches/subsys/400-allow-ibss-mixed.patch | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 package/kernel/mac80211/patches/subsys/400-allow-ibss-mixed.patch

diff --git a/package/kernel/mac80211/patches/subsys/400-allow-ibss-mixed.patch b/package/kernel/mac80211/patches/subsys/400-allow-ibss-mixed.patch
new file mode 100644
index 0000000000..52200b6ecc
--- /dev/null
+++ b/package/kernel/mac80211/patches/subsys/400-allow-ibss-mixed.patch
@@ -0,0 +1,29 @@
+ath10k-ct starting with version 5.2 allows the combination of 
+NL80211_IFTYPE_ADHOC and beacon_int_min_gcd in ath10k_10x_ct_if_comb 
+which triggers this warning. Ben told me that this is not a big problem 
+and we should ignore this.
+
+--- a/net/wireless/core.c
++++ b/net/wireless/core.c
+@@ -613,21 +613,6 @@ static int wiphy_verify_combinations(str
+ 				    c->limits[j].max > 1))
+ 				return -EINVAL;
+ 
+-			/*
+-			 * This isn't well-defined right now. If you have an
+-			 * IBSS interface, then its beacon interval may change
+-			 * by joining other networks, and nothing prevents it
+-			 * from doing that.
+-			 * So technically we probably shouldn't even allow AP
+-			 * and IBSS in the same interface, but it seems that
+-			 * some drivers support that, possibly only with fixed
+-			 * beacon intervals for IBSS.
+-			 */
+-			if (WARN_ON(types & BIT(NL80211_IFTYPE_ADHOC) &&
+-				    c->beacon_int_min_gcd)) {
+-				return -EINVAL;
+-			}
+-
+ 			cnt += c->limits[j].max;
+ 			/*
+ 			 * Don't advertise an unsupported type
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
