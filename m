Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7022BEBAB1
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 00:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Jq5sNKMU7INYW/jABmr8jctP00HP+13imVbUR0OtUvw=; b=amrhSVOyhPx38kFJE7WP7XKJJN
	rf4B6bRibszj2SMlNuDaBOdVSUXLI+7MPM00EqQqElb8DYEsomcUx5hfJUPVikOnPc6DT6IfA1HWU
	h8sCySCmq091RKq1TfBDHTW9SawppElSfE4cnUQ0iUrRA6CHC0lXxWvdp7TdpVVK/AKePrk/o5/KP
	wJNfBdJA/u50mv5dUvF0S+WFBNURJVDVobrX39pb84cXkiC7xLamCQXROy7hreUW2rP3qWfZhfG/G
	rP84emXG195nHTqIC/PygdVK7sAm5/GeEgygBwrYXWi81wfQozyrZ9OkAof8awBJ8zVkw2DVjJmgY
	BPadnRsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQK5K-0003wE-IS; Thu, 31 Oct 2019 23:42:34 +0000
To: "OpenWrtDevel" <openwrt-devel@lists.openwrt.org>
Date: Thu, 31 Oct 2019 16:41:37 -0700
MIME-Version: 1.0
Message-ID: <mailman.7586.1572565350.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Kyle Copperfield <kmcopper@danwin1210.me>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Lorenzo Santina <lorenzo.santina@edu.unito.it>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH v2] hostapd: add IEEE 802.11k support
Content-Type: multipart/mixed; boundary="===============5488563797748130356=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5488563797748130356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5488563797748130356==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([2a01:4f8:c010:d56::1])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQK5D-0003v9-Hv
	for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 23:42:29 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 4E8521F4D0;
	Thu, 31 Oct 2019 23:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1572565340;
	bh=967BDaEPoxqSeRn2hVCA+hV1HVyYbEH0WskvlhXr/yw=;
	h=From:To:Cc:Subject:Date:From;
	b=JXC/24ovdlOyx9bnmS/qs1dJO7sirZtVngOrNJ4UsT7RFskpRsGrgBLWQqnMbEXjq
	 YCSxsxrXXC08NzbpQr60k/B4uZCtal07v02sL76XS4AU2F3I5VIwgfY/TAp1AS6Q1p
	 TWNWDqHfZRKbxx+s/7+Ct4pI7b2MUEEM1xnNyZ6c1xNDOoOrzKMhmBUHMFgwmrGqG2
	 wT594T896BcHvXxD5pUuiVn0o+LVJ6QP9beyoTXQtHv7Sj7IZAyfZqkE29m+ELuqYY
	 iA8u8UllbeQhBv2kjRDVFCYkBgQZwFBDgp5M8UnZjli52e7wHXkT2UpOMGZCXduWc+
	 27EoNNMh6HUIJOZ5XMHxznvnYwdH64w3uRr2zwaTEfoXes1350lgNAbb/7B0EiVzDF
	 RCHKguC0RgOCWx4b63JF5tvqgDUZ/bQaM6Yexq58CAbm08IXDb1DxTDXVHxh7vGiC0
	 lKKyUg4e7pjz6aEM8ChadIinAAVP8KYJEiWxAv3nWpWHQYYN+n0tvEzgEDxTjKGn21
	 VXNEBC2lZ+q1ogRA2RKrw3js76CYIsFGqn1aWq1hUTT3jiFBjIiA+gAbiqQWHU03KN
	 fursNNgHZcm30eVd5hWMp1V6haXTiCPTRP7nCm+pr3zHzPnljh01DD7+L7CvMoG5la
	 Z3CoYRdcBVPidO81dA2sxbPI=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id 292F41010D6;
	Thu, 31 Oct 2019 23:42:11 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: "OpenWrtDevel" <openwrt-devel@lists.openwrt.org>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
	Kyle Copperfield <kmcopper@danwin1210.me>,
	Lorenzo Santina <lorenzo.santina@edu.unito.it>
Subject: [PATCH v2] hostapd: add IEEE 802.11k support
Date: Thu, 31 Oct 2019 16:41:37 -0700
Message-Id: <20191031234136.12263-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_164227_904626_B9714D65 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [2a01:4f8:c010:d56:0:0:0:1 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Enables radio resource management to be reported by hostapd to clients.

Ref: https://github.com/lede-project/source/pull/1430
Co-developed-by: Lorenzo Santina <lorenzo.santina@edu.unito.it>
Signed-off-by: Lorenzo Santina <lorenzo.santina@edu.unito.it>
Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 package/network/services/hostapd/files/hostapd.sh | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 8da8539e8a..f0dc997e91 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -223,6 +223,8 @@ hostapd_common_add_bss_config() {
 	config_add_int time_advertisement
 	config_add_string time_zone
 
+	config_add_boolean ieee80211k rrm_neighbor_report rrm_beacon_report
+
 	config_add_boolean ieee80211r pmk_r1_push ft_psk_generate_local ft_over_ds
 	config_add_int r0_key_lifetime reassociation_deadline
 	config_add_string mobility_domain r1_key_holder
@@ -489,6 +491,17 @@ hostapd_set_bss_options() {
 		append bss_conf "bss_transition=$bss_transition" "$N"
 	fi
 
+	json_get_vars ieee80211k
+	set_default ieee80211k 0
+	if [ "$ieee80211k" -eq "1" ]; then
+		json_get_vars rrm_neighbor_report rrm_beacon_report
+
+		set_default rrm_neighbor_report 1
+		set_default rrm_beacon_report 1
+		append bss_conf "rrm_neighbor_report=$rrm_neighbor_report" "$N"
+		append bss_conf "rrm_beacon_report=$rrm_beacon_report" "$N"
+	fi
+
 	if [ "$wpa" -ge "1" ]; then
 		json_get_vars ieee80211r
 		set_default ieee80211r 0
-- 
2.23.0



--===============5488563797748130356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5488563797748130356==--
