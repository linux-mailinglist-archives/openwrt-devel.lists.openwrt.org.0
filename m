Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BA0F5D41
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 04:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=En7m3tpUzKQgmEzrp1nxzG7zE/4YmMZhSAaPF7s8oyE=; b=hOAsYPbUmg1iJ2wGvkzd3DXIL
	ifIhTVK0uSE3k+nNiuY6NpeYEC+5xemP9mn4lrf6IWxpOrStNcHaiqcwVtDr8/YzQs2ZKHWbrrdv9
	r31n4I6xdyTTDPEddx4CpUTmv4EXzXQYXme0eyO+6tZ2AEpFSh8kTlGsW0ffJLCwLMaTe3MUSsVXO
	xHxot0funS6sZrXPTEISAvuaIb3blfGaNwdJPXMH7nga4EQH1h7b3YxO5q49SBnjC/sW7WiylgIi3
	kMYEaLRtlYOXBK9ENyOj/eWPeclVEqnOht1J6lKdsSvSiayhpUUyuh5fFSDeuLtwrGFlp3wdsaefA
	gXOHVf4/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTHfG-0000rL-GC; Sat, 09 Nov 2019 03:43:54 +0000
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:42:57 -0800
In-Reply-To: <20191109034257.44951-1-kmcopper@danwin1210.me>
References: <20191109034257.44951-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Message-ID: <mailman.9967.1573271025.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH 2/2] hostapd: add wpa_strict_rekey support
Content-Type: multipart/mixed; boundary="===============7587965313943127851=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7587965313943127851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7587965313943127851==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([116.202.17.147])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTHf5-0000qG-EH
	for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 03:43:44 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 1E4A01FD78
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 03:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1573271015;
	bh=/a3Bhew+TYUqRKMlQOQtBqIPbY+jyyilAzMM8YwyNKI=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=j6fXrQyUGzRWmZJru3yAKb/O1cSq7hnroAvD6e6p6WYXl/EU+qdt9li8NmWhMgZIV
	 056PWzNYml+XfRVY7f3F5TQoQPnIGyyXRfhz3IeYMpuPsG6Ew4Z5UeaV3fz6g0EGRj
	 EQiePm1P+L1diKU5+568UvLVTINGt3/4COuzzokmrDcZPiQysqLaokISJPau3MsZkz
	 X4JDTmgaBmqA+6qclYMMu+yhH1ngtyEmUVLdbym5FnzNm6Es29JUq4cs+oiC/oWsGI
	 nbP2Ehm9qrKIDtBmv7qVourOXXtVvbCeanZhdsnJDPQ5KN9gDLjt/prX27GcD2fk+n
	 HZNgB2U2l5Wi2fEErs5LwoluMprv3wc7GiakUX4xucdbXCIXBpCSz7cgR3AlQZ+8T9
	 RjN/DdV6lnlgrtF5/+WzIRdHgk/2rVtmQGCNQQVW8wMqqgH0RNpliuk+yWchnLAwzF
	 qAMyqi8udg8kLgcS/EW8UbpOLCYvi1+6FSHxWuL+0niCq0ekQJOP7+QGSRGUVzfl7A
	 0rsbycF/ksTro8E8HkCIYzJHRZQBqHn4rTPAXnKIAcks6zfaLd0B2munjVmbNLxQHn
	 IDDJ6MS/aZWv0i6yVlr4to9PgqI9qXvucLgTJyUYqG4DLErmG6FeNaLsyDoa3iLZkT
	 RpIHSGApZLcaDDCmOH42Cfpo=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id CFD8510484E
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 03:43:34 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH 2/2] hostapd: add wpa_strict_rekey support
Date: Fri,  8 Nov 2019 19:42:57 -0800
Message-Id: <20191109034257.44951-2-kmcopper@danwin1210.me>
In-Reply-To: <20191109034257.44951-1-kmcopper@danwin1210.me>
References: <20191109034257.44951-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_194343_626581_EA2C7963 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [116.202.17.147 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Rekey GTK on STA disassociate

Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 package/network/services/hostapd/files/hostapd.sh | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 86b9932301..9378d5afd9 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -185,6 +185,7 @@ hostapd_common_add_bss_config() {
 	config_add_int \
 		wep_rekey eap_reauth_period \
 		wpa_group_rekey wpa_pair_rekey wpa_master_rekey
+	config_add_boolean wpa_strict_rekey
 	config_add_boolean wpa_disable_eapol_key_retries
 
 	config_add_boolean tdls_prohibit
@@ -267,7 +268,7 @@ hostapd_set_bss_options() {
 	local wep_rekey wpa_group_rekey wpa_pair_rekey wpa_master_rekey wpa_key_mgmt
 
 	json_get_vars \
-		wep_rekey wpa_group_rekey wpa_pair_rekey wpa_master_rekey \
+		wep_rekey wpa_group_rekey wpa_pair_rekey wpa_master_rekey wpa_strict_rekey \
 		wpa_disable_eapol_key_retries tdls_prohibit \
 		maxassoc max_inactivity disassoc_low_ack isolate auth_cache \
 		wps_pushbutton wps_label ext_registrar wps_pbc_in_m1 wps_ap_setup_locked \
@@ -322,6 +323,7 @@ hostapd_set_bss_options() {
 		[ -n "$wpa_group_rekey"  ] && append bss_conf "wpa_group_rekey=$wpa_group_rekey" "$N"
 		[ -n "$wpa_pair_rekey"   ] && append bss_conf "wpa_ptk_rekey=$wpa_pair_rekey"    "$N"
 		[ -n "$wpa_master_rekey" ] && append bss_conf "wpa_gmk_rekey=$wpa_master_rekey"  "$N"
+		[ -n "$wpa_strict_rekey" ] && append bss_conf "wpa_strict_rekey=$wpa_strict_rekey" "$N"
 	}
 
 	[ -n "$nasid" ] && append bss_conf "nas_identifier=$nasid" "$N"
-- 
2.24.0



--===============7587965313943127851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7587965313943127851==--
