Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F83F6034
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 17:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPjNkavvSN1PQ+qQfLHBnO3OOhexskjiukwkLpXZEyw=; b=kMV/RofT/HVQFb
	5ISy9cTfhIS9QdGeTzJZstZYzHKME5TpKcfvyZlp/rwHox1TtcyVKYgz1rJ/K/vZQQ1gn8q6Oqvn8
	ZfkRWbnYAWO5pUknnXlxS+IQg6uazIjq2XJdGYp6zpJSp3QQftIkKkMmX2Fk9lfOmXhkADNcVIG4/
	IQa2pcAqwvkdfpbET5QhL43LYDJA96KgbDvy04bO1tXXn2Tj0DyA0d9Nd2pGSUit/E4I9nQW2RCJs
	BCwN1tDmjims0xQO3pX6EBxmDeJB9nRcIyknMEkbOnNwYBTFQzJ8WX7/fw6l4fUPszQpHhSBnEwEu
	6jOK2LqF2oeKFjFnZFvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTG8-0007hT-Co; Sat, 09 Nov 2019 16:06:44 +0000
Received: from mout-u-107.mailbox.org ([2001:67c:2050:1::465:107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTG0-0007gK-7o
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 16:06:38 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 479MT1453zzKmf8;
 Sat,  9 Nov 2019 17:06:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id Ck7paIdv511o; Sat,  9 Nov 2019 17:06:26 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  9 Nov 2019 17:06:05 +0100
Message-Id: <20191109160606.26657-2-hauke@hauke-m.de>
In-Reply-To: <20191109160606.26657-1-hauke@hauke-m.de>
References: <20191109160606.26657-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_080636_585702_4104AC30 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/3] mac80211: Allow ADHOC mode and
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, greearb@candelatech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ath10k-ct supports the combination to select ADHOC (IBSS) mode and
different beacon intervals together. mac80211 does not like this
combination, but Ben says this is ok, so remove this check.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

As an alternative we can also remove the beacon_int_min_gcd setting from ath10k-ct.


 ...ckports-pci-Include-linux-pci-aspm.h.patch |  6 ++--
 ..._disable_link_state-wrapper-with-ret.patch |  2 +-
 .../patches/subsys/400-allow-ibss-mixed.patch | 29 +++++++++++++++++++
 3 files changed, 33 insertions(+), 4 deletions(-)
 create mode 100644 package/kernel/mac80211/patches/subsys/400-allow-ibss-mixed.patch

diff --git a/package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch b/package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch
index 5faeb96748..91740a62b9 100644
--- a/package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch
+++ b/package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch
@@ -11,9 +11,9 @@ Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
 
 --- a/backport-include/linux/pci.h
 +++ b/backport-include/linux/pci.h
-@@ -3,6 +3,10 @@
- #include_next <linux/pci.h>
- #include <linux/version.h>
+@@ -7,6 +7,10 @@
+ #include <linux/pci-aspm.h>
+ #endif
  
 +#if LINUX_VERSION_IS_LESS(5,4,0)
 +#include <linux/pci-aspm.h>
diff --git a/package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch b/package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch
index a41879184b..7691522e73 100644
--- a/package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch
+++ b/package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch
@@ -11,7 +11,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/backport-include/linux/pci.h
 +++ b/backport-include/linux/pci.h
-@@ -236,4 +236,29 @@ static inline struct pci_dev *pcie_find_
+@@ -240,4 +240,29 @@ static inline struct pci_dev *pcie_find_
  	(PCI_IRQ_LEGACY | PCI_IRQ_MSI | PCI_IRQ_MSIX)
  #endif
  
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
