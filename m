Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BA3AD10B
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Sep 2019 00:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E1HWt8P2KxnqpiXc1ub+B35GQxc9GsriXVkzgY3ehlc=; b=tmqfToqImez4b1
	7McvpnyCLBfiNvp1iLy2NtMwSmuYPO8p/eNcoKtjkTkazugTA6PCR66vFJ5W66VwOdtE15yDZovTC
	+Cu8MY+pvaqJSf320FGDCE7dk/Aoxx1tUOt0NdNzM3Khg2r4LZ2wQQBmozGdD3JNzWdQOzpCsimaC
	Me5cZ0LtF3mfMF/5xZyhcoP+PQS9qstQDLjp5EfdYfsjC6OWdn8MBFiwX86hSz1Jvh6kGQhIAL7b6
	oRu1Yht/CZV4NLD/VSzN2BlWmKTyHa9V4YYhCg3bQhlEMUqMgiVaRjJV9JREYZDRdeFvCVOGYWflL
	favkCR3G80nnbVUL27bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i75jF-0007EU-E1; Sun, 08 Sep 2019 22:32:17 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i75j8-0007Db-96
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 22:32:12 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 5DE07A044A;
 Mon,  9 Sep 2019 00:32:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id g03pkwCldFWO; Mon,  9 Sep 2019 00:32:02 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  9 Sep 2019 00:31:46 +0200
Message-Id: <20190908223147.6924-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_153210_620669_B4828F49 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 1/2] hostapd: Fix security problem in
 EAP-pwd
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This fixes:
CVE-2019-11555 "EAP-pwd message reassembly issue with unexpected fragment"
https://w1.fi/security/2019-5/eap-pwd-message-reassembly-issue-with-unexpected-fragment.txt

This should not affect OpenWrt in the default settings as we do not use
EAP-pwd.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...erver-Fix-reassembly-buffer-handling.patch | 40 +++++++++++++++++++
 ...-peer-Fix-reassembly-buffer-handling.patch | 40 +++++++++++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 package/network/services/hostapd/patches/065-0001-EAP-pwd-server-Fix-reassembly-buffer-handling.patch
 create mode 100644 package/network/services/hostapd/patches/065-0003-EAP-pwd-peer-Fix-reassembly-buffer-handling.patch

diff --git a/package/network/services/hostapd/patches/065-0001-EAP-pwd-server-Fix-reassembly-buffer-handling.patch b/package/network/services/hostapd/patches/065-0001-EAP-pwd-server-Fix-reassembly-buffer-handling.patch
new file mode 100644
index 0000000000..b98e183244
--- /dev/null
+++ b/package/network/services/hostapd/patches/065-0001-EAP-pwd-server-Fix-reassembly-buffer-handling.patch
@@ -0,0 +1,40 @@
+From fe76f487e28bdc61940f304f153a954cf36935ea Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <jouni@codeaurora.org>
+Date: Wed, 17 Apr 2019 01:55:32 +0300
+Subject: [PATCH 1/3] EAP-pwd server: Fix reassembly buffer handling
+
+data->inbuf allocation might fail and if that were to happen, the next
+fragment in the exchange could have resulted in NULL pointer
+dereference. Unexpected fragment with more bit might also be able to
+trigger this. Fix that by explicitly checking for data->inbuf to be
+available before using it.
+
+Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
+---
+ src/eap_server/eap_server_pwd.c | 8 +++++++-
+ 1 file changed, 7 insertions(+), 1 deletion(-)
+
+--- a/src/eap_server/eap_server_pwd.c
++++ b/src/eap_server/eap_server_pwd.c
+@@ -947,6 +947,12 @@ static void eap_pwd_process(struct eap_s
+ 	 * the first and all intermediate fragments have the M bit set
+ 	 */
+ 	if (EAP_PWD_GET_MORE_BIT(lm_exch) || data->in_frag_pos) {
++		if (!data->inbuf) {
++			wpa_printf(MSG_DEBUG,
++				   "EAP-pwd: No buffer for reassembly");
++			eap_pwd_state(data, FAILURE);
++			return;
++		}
+ 		if ((data->in_frag_pos + len) > wpabuf_size(data->inbuf)) {
+ 			wpa_printf(MSG_DEBUG, "EAP-pwd: Buffer overflow "
+ 				   "attack detected! (%d+%d > %d)",
+@@ -967,7 +973,7 @@ static void eap_pwd_process(struct eap_s
+ 	 * last fragment won't have the M bit set (but we're obviously
+ 	 * buffering fragments so that's how we know it's the last)
+ 	 */
+-	if (data->in_frag_pos) {
++	if (data->in_frag_pos && data->inbuf) {
+ 		pos = wpabuf_head_u8(data->inbuf);
+ 		len = data->in_frag_pos;
+ 		wpa_printf(MSG_DEBUG, "EAP-pwd: Last fragment, %d bytes",
diff --git a/package/network/services/hostapd/patches/065-0003-EAP-pwd-peer-Fix-reassembly-buffer-handling.patch b/package/network/services/hostapd/patches/065-0003-EAP-pwd-peer-Fix-reassembly-buffer-handling.patch
new file mode 100644
index 0000000000..cc80562586
--- /dev/null
+++ b/package/network/services/hostapd/patches/065-0003-EAP-pwd-peer-Fix-reassembly-buffer-handling.patch
@@ -0,0 +1,40 @@
+From d2d1a324ce937628e4d9d9999fe113819b7d4478 Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <jouni@codeaurora.org>
+Date: Wed, 17 Apr 2019 02:21:20 +0300
+Subject: [PATCH 3/3] EAP-pwd peer: Fix reassembly buffer handling
+
+Unexpected fragment might result in data->inbuf not being allocated
+before processing and that could have resulted in NULL pointer
+dereference. Fix that by explicitly checking for data->inbuf to be
+available before using it.
+
+Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
+---
+ src/eap_peer/eap_pwd.c | 9 ++++++++-
+ 1 file changed, 8 insertions(+), 1 deletion(-)
+
+--- a/src/eap_peer/eap_pwd.c
++++ b/src/eap_peer/eap_pwd.c
+@@ -969,6 +969,13 @@ eap_pwd_process(struct eap_sm *sm, void
+ 	 * buffer and ACK the fragment
+ 	 */
+ 	if (EAP_PWD_GET_MORE_BIT(lm_exch) || data->in_frag_pos) {
++		if (!data->inbuf) {
++			wpa_printf(MSG_DEBUG,
++				   "EAP-pwd: No buffer for reassembly");
++			ret->methodState = METHOD_DONE;
++			ret->decision = DECISION_FAIL;
++			return NULL;
++		}
+ 		data->in_frag_pos += len;
+ 		if (data->in_frag_pos > wpabuf_size(data->inbuf)) {
+ 			wpa_printf(MSG_INFO, "EAP-pwd: Buffer overflow attack "
+@@ -995,7 +1002,7 @@ eap_pwd_process(struct eap_sm *sm, void
+ 	/*
+ 	 * we're buffering and this is the last fragment
+ 	 */
+-	if (data->in_frag_pos) {
++	if (data->in_frag_pos && data->inbuf) {
+ 		wpa_printf(MSG_DEBUG, "EAP-pwd: Last fragment, %d bytes",
+ 			   (int) len);
+ 		pos = wpabuf_head_u8(data->inbuf);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
