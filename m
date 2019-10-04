Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C096FCC4AC
	for <lists+openwrt-devel@lfdr.de>; Fri,  4 Oct 2019 23:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vRgBNJBLIXA0ZNU03CR0hgzx+V00zFJX1AmxwliI0bk=; b=HRcIFrerejtPAg
	uKCc88zegm2IMxp2r9+f97ygxPtK912OUoGb+3zZFAS+37Rf7kMClKj8AjzBITwYRxyWB68QuyXAd
	aO9jxVS2js2BNBQ/jT64z8vq7dMGWXCL0WLLmQY2WQqGopyGd3Xry3DVSsKYAD6Nh3QBOrUqcClPC
	zD+LOggJOfqnsLqvqLTT3EAtSVVG7/q0ipm5kOBZd0Sm8LU+wmalgSQQLKgtKy6XS0JEWN1gDfwU9
	51sdR5u03UXIFgDt755Lo0oNzZVjx4OgD8PIbyBVfVynEYhPzxvEYGi5r1IluKW80LrYyfjB45eQT
	szI6iIQN/aiwJUhARCvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUv6-0000oZ-F8; Fri, 04 Oct 2019 21:15:24 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUuz-0000ni-8k
 for openwrt-devel@lists.openwrt.org; Fri, 04 Oct 2019 21:15:19 +0000
Received: from dbauer-t470.ffda.io (unknown
 [IPv6:2001:67c:2ed8:100e:f096:fd8f:cb59:92b5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id A92881FAAC
 for <openwrt-devel@lists.openwrt.org>; Fri,  4 Oct 2019 23:15:11 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  4 Oct 2019 23:14:58 +0200
Message-Id: <20191004211458.127600-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_141517_455317_5034E383 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mac80211: ath10k: fix latency issue for
 QCA988x
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This backport fixes high latency (>100ms) on the WiFi link when using a
QCA988x Wave 1 radio. The ath10k-ct driver is not affected by this bug
from my testing, hence why it hasn't been discovered earlier.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 ...ath10k-fix-latency-issue-for-QCA988x.patch | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch

diff --git a/package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch b/package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch
new file mode 100644
index 0000000000..3702abb412
--- /dev/null
+++ b/package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch
@@ -0,0 +1,42 @@
+From: Miaoqing Pan <miaoqing@codeaurora.org>
+Subject: [PATCH] ath10k: fix latency issue for QCA988x
+Date: Thu, 29 Aug 2019 10:45:12 +0800
+
+Bad latency is found on QCA988x, the issue was introduced by
+commit 4504f0e5b571 ("ath10k: sdio: workaround firmware UART
+pin configuration bug"). If uart_pin_workaround is false, this
+change will set uart pin even if uart_print is false.
+
+Tested HW: QCA9880
+Tested FW: 10.2.4-1.0-00037
+
+Fixes: 4504f0e5b571 ("ath10k: sdio: workaround firmware UART pin configuration bug")
+Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
+---
+ drivers/net/wireless/ath/ath10k/core.c | 15 +++++++++------
+ 1 file changed, 9 insertions(+), 6 deletions(-)
+
+--- a/drivers/net/wireless/ath/ath10k/core.c
++++ b/drivers/net/wireless/ath/ath10k/core.c
+@@ -2124,12 +2124,15 @@ static int ath10k_init_uart(struct ath10
+ 		return ret;
+ 	}
+ 
+-	if (!uart_print && ar->hw_params.uart_pin_workaround) {
+-		ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin,
+-					 ar->hw_params.uart_pin);
+-		if (ret) {
+-			ath10k_warn(ar, "failed to set UART TX pin: %d", ret);
+-			return ret;
++	if (!uart_print) {
++		if (ar->hw_params.uart_pin_workaround) {
++			ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin,
++						 ar->hw_params.uart_pin);
++			if (ret) {
++				ath10k_warn(ar, "failed to set UART TX pin: %d",
++					    ret);
++				return ret;
++			}
+ 		}
+ 
+ 		return 0;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
