Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D8C11F4EB
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 23:38:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6mpOvOTTFsc0I4OUZIBU/smf7oyMKkoYjMkCr8aFlEw=; b=YNSt/sJqdcHkrD
	v2q9dAkIQG5a1nwxx0XbCeCQ4DHiQWNc5ut/66jwuqlKa3Aa1wWF9nFBtOA+5jaAh2wX1W7mQjc6o
	e/Nd5zc5aYy/h4Zqzp0NQFTopHOf5SYBUOjAYqiIxI4WGMO7ravCLS9ZnaGaglgamqvcHGVKC8ZLf
	6VGsTgoOMbZHhAR2yjVlPdHXKa8vftctLAxQztaWY/m501AUD32CADZOUZ7de7MF7dpo9FvI2+3jS
	nZXNaduunnXwgL3RzKQeIJfLrhrxLEz0z5Hxwr+mbbK9BOsB0N6ERavQNhrIx3PXZqObHNCu7CD6K
	PJbu3yZN2gfw7rfny+Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igG3Z-0006x3-Ch; Sat, 14 Dec 2019 22:38:37 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igG3L-0006wd-7E
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 22:38:29 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F2D4A00DC3E52FF663D89E0.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2d:4a00:dc3e:52ff:663d:89e0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 559D022733;
 Sat, 14 Dec 2019 23:38:20 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Dec 2019 23:38:02 +0100
Message-Id: <20191214223802.184696-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_143823_409499_39C864AE 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mac80211: fix txpower when using DFS
 channels
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
Cc: martin@darmstadt.freifunk.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

With this patch, txpower for the PHY is applied when configuring the PHY
instead of the VIF. Otherwise, the configured txpower is not applied for
the first initialized VIF when using DFS channels, as it is currently
applied to early when the CAC hasn't finished.

Reported-by: Martin Weinelt <martin@darmstadt.freifunk.net
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../mac80211/files/lib/netifd/wireless/mac80211.sh       | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index 18033e9d56..f1882ec509 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -743,7 +743,7 @@ mac80211_setup_vif() {
 
 	json_select config
 	json_get_vars mode
-	json_get_var vif_txpower txpower
+	json_get_var vif_txpower
 	json_get_var vif_enable enable 1
 
 	[ "$vif_enable" = 1 ] || action=down
@@ -753,7 +753,6 @@ mac80211_setup_vif() {
 		json_select ..
 		return
 	}
-	set_default vif_txpower "$txpower"
 	[ -z "$vif_txpower" ] || iw dev "$ifname" set txpower fixed "${vif_txpower%%.*}00"
 
 	case "$mode" in
@@ -908,6 +907,12 @@ drv_mac80211_setup() {
 	iw phy "$phy" set antenna_gain $antenna_gain
 	iw phy "$phy" set distance "$distance"
 
+	if [ -n "$txpower" ]; then
+		iw phy "$phy" set txpower fixed "${txpower%%.*}00"
+	else
+		iw phy "$phy" set txpower auto
+	fi
+
 	[ -n "$frag" ] && iw phy "$phy" set frag "${frag%%.*}"
 	[ -n "$rts" ] && iw phy "$phy" set rts "${rts%%.*}"
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
