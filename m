Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567D71F844D
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 18:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SUTMkCMaJltbjBubrtDIG4Bz8+WtFVcxSUCdT9+5iSg=; b=X1I/MMPZfXNmsv
	F28EqzOEhG5/Uwte2hDK1u2wYEsKkn3Fa4lmvtzxIxVMVaO93beWUvKzluHt0lZ3/fZDYuxyamDU6
	atmEs0UhLZSE1KRmV5Nl1bmYGUwOkUQJIAQpZNWflByHx3pOUb05B4Kep8T5J5tVE9Vf43A7ui4p5
	WuS+JByzRSK/VJA4bhE9MR/AykiM6VnnkiKku46eznYetT/T08dYwR+PlRc47VhDFlu2kGTPHcvSi
	WxjJHr2ZQ+/W8Oir1UJBsutHY0crynNPz85w8/3xZHbyBrphZVp5ClRScLmqoPq/58KsM4L+dbqiZ
	7T7LnINrWN62fcd4em/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk99k-000256-Lu; Sat, 13 Jun 2020 16:37:20 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk99d-00023v-6I
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 16:37:15 +0000
Received: from [134.101.206.16] (helo=localhost.localdomain)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jk99W-0001uP-2S; Sat, 13 Jun 2020 18:37:06 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 13 Jun 2020 18:36:59 +0200
Message-Id: <20200613163700.10091-1-john@phrozen.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_093713_391676_397CFF8B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] hostapd: add 11AX script support
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: John Crispin <john@phrozen.org>
---
 package/network/services/hostapd/files/hostapd-basic.config | 2 +-
 package/network/services/hostapd/files/hostapd-full.config  | 2 +-
 package/network/services/hostapd/files/hostapd-mini.config  | 2 +-
 package/network/services/hostapd/files/hostapd.sh           | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/package/network/services/hostapd/files/hostapd-basic.config b/package/network/services/hostapd/files/hostapd-basic.config
index 19ea850f6b..c3726dd552 100644
--- a/package/network/services/hostapd/files/hostapd-basic.config
+++ b/package/network/services/hostapd/files/hostapd-basic.config
@@ -168,7 +168,7 @@ CONFIG_IEEE80211AC=y
 # Note: This is experimental and work in progress. The definitions are still
 # subject to change and this should not be expected to interoperate with the
 # final IEEE 802.11ax version.
-#CONFIG_IEEE80211AX=y
+CONFIG_IEEE80211AX=y
 
 # Remove debugging code that is printing out debug messages to stdout.
 # This can be used to reduce the size of the hostapd considerably if debugging
diff --git a/package/network/services/hostapd/files/hostapd-full.config b/package/network/services/hostapd/files/hostapd-full.config
index 0ecce423e7..118ba000ba 100644
--- a/package/network/services/hostapd/files/hostapd-full.config
+++ b/package/network/services/hostapd/files/hostapd-full.config
@@ -168,7 +168,7 @@ CONFIG_IEEE80211AC=y
 # Note: This is experimental and work in progress. The definitions are still
 # subject to change and this should not be expected to interoperate with the
 # final IEEE 802.11ax version.
-#CONFIG_IEEE80211AX=y
+CONFIG_IEEE80211AX=y
 
 # Remove debugging code that is printing out debug messages to stdout.
 # This can be used to reduce the size of the hostapd considerably if debugging
diff --git a/package/network/services/hostapd/files/hostapd-mini.config b/package/network/services/hostapd/files/hostapd-mini.config
index d9511441e6..8589c41bde 100644
--- a/package/network/services/hostapd/files/hostapd-mini.config
+++ b/package/network/services/hostapd/files/hostapd-mini.config
@@ -168,7 +168,7 @@ CONFIG_IEEE80211AC=y
 # Note: This is experimental and work in progress. The definitions are still
 # subject to change and this should not be expected to interoperate with the
 # final IEEE 802.11ax version.
-#CONFIG_IEEE80211AX=y
+CONFIG_IEEE80211AX=y
 
 # Remove debugging code that is printing out debug messages to stdout.
 # This can be used to reduce the size of the hostapd considerably if debugging
diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index f4e2aa559c..50573ebd42 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -807,9 +807,9 @@ wpa_supplicant_set_fixed_freq() {
 		VHT*) append network_data "vht=1" "$N$T";;
 	esac
 	case "$htmode" in
-		VHT80) append network_data "max_oper_chwidth=1" "$N$T";;
-		VHT160) append network_data "max_oper_chwidth=2" "$N$T";;
-		VHT20|VHT40) append network_data "max_oper_chwidth=0" "$N$T";;
+		VHT80|HE80) append network_data "max_oper_chwidth=1" "$N$T";;
+		VHT160|HE160) append network_data "max_oper_chwidth=2" "$N$T";;
+		VHT20|VHT40|HE20|HE40) append network_data "max_oper_chwidth=0" "$N$T";;
 		*) append network_data "disable_vht=1" "$N$T";;
 	esac
 }
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
