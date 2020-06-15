Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAC11F9FA8
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 20:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hVfRo6lMRRwWa1yNk5hoa2KQ5I1yPmuBSOGhtLG1nPg=; b=V7ApE1j2F5Loon
	T4vlVR1Y9PvYSaYm0Ib3TVj/lk69Y5nK8qhh979d8RG+PiIzI5Vmm3fT43F8ncyDbX4/GqkYECBLl
	W17sJR7bYQ78rs6fqQajCTontGd7+maC6vq9J2/wK9jtS8VgntMtQL+b85wGuhRU5HL25kDrdWTuL
	P5EeniR2vQhA3h0ek7LihM4FiZWU6F726gMreAE1HLY2rUA7MhAmkFEIZglEcPqs0D08pVxVLk8vK
	Bc00kNVCT7GWfirLVro++VtL2/Bf2muYfcUsL78XYM6oyhyGp476yj5F5T+hDfLHURH7Ru8gR+P4h
	e5OobgrvesDD1bxASxRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jku9A-0006ZH-8P; Mon, 15 Jun 2020 18:47:52 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jku90-0006Wl-Pt
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 18:47:45 +0000
Received: from dbauer-x250.home.david-bauer.net
 (p200300e53f075a00e227c4054c8e0f3f.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:5a00:e227:c405:4c8e:f3f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 37D221E03A
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 20:47:36 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jun 2020 20:47:26 +0200
Message-Id: <20200615184726.28038-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_114743_012253_47D9C47A 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mac80211: ath9k: enable MFP capability
 unconditionally
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

ath9k will already fallback on software-crypto for chipsets not
supporting IEEE802.11w (MFP). So advertising MFP is not dependent
on disabling HW crypto for all traffic entirely.

Tested on Sonicwall SonicPoint Ni (AR9132)

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 ...abled-MFP-capability-unconditionally.patch | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 package/kernel/mac80211/patches/ath/450-ath9k-enabled-MFP-capability-unconditionally.patch

diff --git a/package/kernel/mac80211/patches/ath/450-ath9k-enabled-MFP-capability-unconditionally.patch b/package/kernel/mac80211/patches/ath/450-ath9k-enabled-MFP-capability-unconditionally.patch
new file mode 100644
index 0000000000..c75d6c7982
--- /dev/null
+++ b/package/kernel/mac80211/patches/ath/450-ath9k-enabled-MFP-capability-unconditionally.patch
@@ -0,0 +1,34 @@
+From d946085ff5a331de64e91a2e3c96b9ca79d740f5 Mon Sep 17 00:00:00 2001
+From: David Bauer <mail@david-bauer.net>
+Date: Mon, 15 Jun 2020 00:10:34 +0200
+Subject: [PATCH] ath9k: enabled MFP capability unconditionally
+
+ath9k will already fallback on software-crypto for chipsets not
+supporting IEEE802.11w (MFP). So advertising MFP is not dependent
+on disabling HW crypto for all traffic entirely.
+
+Signed-off-by: David Bauer <mail@david-bauer.net>
+---
+ drivers/net/wireless/ath/ath9k/init.c | 4 +---
+ 1 file changed, 1 insertion(+), 3 deletions(-)
+
+--- a/drivers/net/wireless/ath/ath9k/init.c
++++ b/drivers/net/wireless/ath/ath9k/init.c
+@@ -928,6 +928,7 @@ static void ath9k_set_hw_capab(struct at
+ 	ieee80211_hw_set(hw, HOST_BROADCAST_PS_BUFFERING);
+ 	ieee80211_hw_set(hw, SUPPORT_FAST_XMIT);
+ 	ieee80211_hw_set(hw, SUPPORTS_CLONED_SKBS);
++	ieee80211_hw_set(hw, MFP_CAPABLE);
+ 
+ 	if (ath9k_ps_enable)
+ 		ieee80211_hw_set(hw, SUPPORTS_PS);
+@@ -940,9 +941,6 @@ static void ath9k_set_hw_capab(struct at
+ 				IEEE80211_RADIOTAP_MCS_HAVE_STBC;
+ 	}
+ 
+-	if (AR_SREV_9160_10_OR_LATER(sc->sc_ah) || ath9k_modparam_nohwcrypt)
+-		ieee80211_hw_set(hw, MFP_CAPABLE);
+-
+ 	hw->wiphy->features |= NL80211_FEATURE_ACTIVE_MONITOR |
+ 			       NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE |
+ 			       NL80211_FEATURE_P2P_GO_CTWIN;
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
