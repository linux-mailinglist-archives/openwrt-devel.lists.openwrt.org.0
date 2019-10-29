Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B35E9314
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 23:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h5RSH3g5YmvHAsvMuiMqCLuVgOnUoZYbHvTz5oviOWI=; b=SG+Zdy3p/ChqZC
	Ad7FU3X7pIlg/jfvEWn0V/OSeNBFIk2EYIC3JozXKX75aCSaLCGURETFOk+g71f7CrqIxCkk69Mdj
	pWtzzAGJO7ymOpBxFSllFN2hEIcCp6ZPdbd7qTRkkUQgN4d7QcRTk8ZEa5El13By2eHOyaWEGsWRO
	fgUrPbDfo02FuI4jOvpYIIsrnQKNBPptNQsbccIf1hNxqmg41IYfUZWilIAXlAKA3W6uj2qRpnHTI
	ecxw7liN3SiDAHzUFPH+cvJ3YTGQEpGlrrjwHAStR3NDTX0pP66/9UoSWAUFt2rhvi+NB3xLXPnlV
	MvcSYH4euDpPXq5gk9cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPaC3-0002NY-5m; Tue, 29 Oct 2019 22:42:27 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPaBv-0002MY-EF
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 22:42:21 +0000
Received: from dbauer-t470.ffda.io (unknown
 [IPv6:2001:67c:2ed8:100e:9c60:8cc4:d9b2:d821])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 588B9222B1
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 23:42:12 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 29 Oct 2019 23:42:03 +0100
Message-Id: <20191029224203.203330-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_154219_626004_C7359B7D 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] hostapd: enable PMKSA and OK caching for
 WPA3-Personal
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

This enables PMKSA and opportunistic key caching by default for
WPA2/WPA3-Personal, WPA3-Personal and OWE auth types.
Otherwise, Apple devices won't connect to the WPA3 network.

This should not degrade security, as there's no external authentication
provider.

Tested with OCEDO Koala and iPhone 7 (iOS 13.1).

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 package/network/services/hostapd/files/hostapd.sh | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 8da8539e8a..fdbce815df 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -540,7 +540,14 @@ hostapd_set_bss_options() {
 			append bss_conf "rsn_preauth=1" "$N"
 			append bss_conf "rsn_preauth_interfaces=$network_bridge" "$N"
 		else
-			set_default auth_cache 0
+			case "$auth_type" in
+			sae|psk-sae|owe)
+				set_default auth_cache 1
+			;;
+			*)
+				set_default auth_cache 0
+			;;
+			esac
 		fi
 
 		append bss_conf "okc=$auth_cache" "$N"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
