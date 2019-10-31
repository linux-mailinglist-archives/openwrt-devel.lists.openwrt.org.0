Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317AAEAB52
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 09:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fuOLx4xJk9oBKE+RyB4AoDmQvVwhgvFqsuBc2BMyASU=; b=tmkMez0kXxcsyc
	megKiZe+3QYwgNZR208noJkcAVCMsHGsrEXSfRjfSPHy45OIo+IxwxxHnVHf3DO3jNhqSYx3fGxOt
	Ui4C3DbHiacS4sJYVAXTt8a6ARUs3IBsZecV56Diakutyx31l4n9h0r8szP9OFJ9QaWoGbdFMsr+s
	QTtetS7yYk6mWCApAtKuxpSk9O8BUHJ55oH8j7fISTjiotwcyGUhrlRv0Y7KZbZvO2mhP0y3K1P5c
	2a/wot3BfQPzBBIz6q/PkRWaTJ4T9DWS4D+v41116bU4Qmyapqm2ru4qIBrsT2lzKLOqyjoM+N3/C
	3U/3XrpPd95k6mEQihRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5V8-0005P2-43; Thu, 31 Oct 2019 08:08:14 +0000
Date: Thu, 31 Oct 2019 06:50:55 -0000
To: openwrt-devel@lists.openwrt.org
References: In-Reply-To: 
MIME-Version: 1.0
Message-ID: <mailman.7332.1572509286.2486.openwrt-devel@lists.openwrt.org>
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
Reply-To: kmcopper@danwin1210.me
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] hostapd: add IEEE 802.11k support
Content-Type: multipart/mixed; boundary="===============3497809981089645864=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3497809981089645864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3497809981089645864==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([116.202.17.147])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5Ux-0005Mb-Tq
	for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 08:08:06 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 1CC191F80C
	for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 08:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1572509276;
	bh=0nBtNLH/s/JAEefEs3dsUvzFH7l7CfF4+Q9udA/1ZMQ=;
	h=Date:Subject:From:To:References:From;
	b=Wf9iodAQ/HfdXkiVZsFTBqIQek2pP2SWIulmF7gxyuR731Hal44O1eQo1bwDdGnyk
	 qyYhenwvGUxVBwaJ4xgPa9fOmE5k1gj5Mnk+wFaaySiDmeLncM8+quwklDWM+6oQ8D
	 15Zk7YiUvTgitcuaJrFdGhSEt6WJef6FtywZW7BjW9iajhPiu+pY9nSli/pdJE97t8
	 +HC8IFAbqM7qPNASFT8E3VPgnduqWVnAjinxpiTwN2JcmIE1LdgkthJ50h7Ko6FRiZ
	 ry6DgPR4BeldOLZPleiJW7cX08fHQphS8r767yTFDk22itddjmzs0IFiAO9VkFWsvm
	 driFgfR6aVkWYuH6xZ+jXc7Zk1BRh0g9oY2kWij3O/OAHYAZZVGU5Il4PINN4tZ5lV
	 /L8XwlRC421XvLGK5PzDSO1vV3Vw1p8B/b9FJuLpxSt3OBpgm91641Cn9IfoZ3OZ3x
	 rKAPIudD3XoWQBrXsRDD9dTnfX+tM98xr4s/zTNqojXvUSEaHkTDYZX1ruAT8FaXQi
	 m1dAXoT9VWekVl84xlkUeQiRlLuBkKfAGuiSHDe8ay6jbQI58mWtGq2OCfeobKSK5S
	 3PwGuUDmoQQuZWZoL89xqBM6beIFyB3XbzACOyGbYNbxSwnzuDxmed8mDX8n+kAKq0
	 1qMVDw4d+mIqfdXf6XG21FuM=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id E64DE103E71
	for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 08:07:51 +0000 (UTC)
Message-ID: <f9d10068c40cd02bc33a3e39d785dc8e.squirrel@danielas3rtn54uwmofdo3x2bsdifr47huasnmbgqzfrec5ubupvtpid.onion>
X-OPENPGPKEY: Message passed unmodified
Date: Thu, 31 Oct 2019 06:50:55 -0000
Subject: [PATCH] hostapd: add IEEE 802.11k support
From: kmcopper@danwin1210.me
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Type: text/plain;charset=UTF-8
Content-Transfer-Encoding: 8bit
References: In-Reply-To: 
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_010804_561792_2B64B51B 
X-CRM114-Status: UNSURE (   5.61  )
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
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Add IEEE802.11k neighbor and beacon report
 Original patch by Lorenzo Santina @BigNerd95 on GH
 <lorenzo.santina@edu.unito.it>
 Ported to latest OpenWRT

---
 package/network/services/hostapd/files/hostapd.sh | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/files/hostapd.sh
b/package/network/services/hostapd/files/hostapd.sh
index 8da8539e8a..dee436c6d2 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -223,6 +223,8 @@ hostapd_common_add_bss_config() {
 	config_add_int time_advertisement
 	config_add_string time_zone

+	config_add_boolean rrm_neighbor_report rrm_beacon_report
+
 	config_add_boolean ieee80211r pmk_r1_push ft_psk_generate_local ft_over_ds
 	config_add_int r0_key_lifetime reassociation_deadline
 	config_add_string mobility_domain r1_key_holder
@@ -265,7 +267,8 @@ hostapd_set_bss_options() {
 		iapp_interface eapol_version dynamic_vlan ieee80211w nasid \
 		acct_server acct_secret acct_port acct_interval \
 		bss_load_update_period chan_util_avg_period sae_require_mfp \
-		multi_ap multi_ap_backhaul_ssid multi_ap_backhaul_key
+		multi_ap multi_ap_backhaul_ssid multi_ap_backhaul_key \
+		rrm_neighbor_report rrm_beacon_report

 	set_default isolate 0
 	set_default maxassoc 0
@@ -489,6 +492,11 @@ hostapd_set_bss_options() {
 		append bss_conf "bss_transition=$bss_transition" "$N"
 	fi

+	set_default rrm_neighbor_report 0
+	set_default rrm_beacon_report 0
+	append bss_conf "rrm_neighbor_report=$rrm_neighbor_report" "$N"
+	append bss_conf "rrm_beacon_report=$rrm_beacon_report" "$N"
+
 	if [ "$wpa" -ge "1" ]; then
 		json_get_vars ieee80211r
 		set_default ieee80211r 0
-- 
2.23.0





--===============3497809981089645864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3497809981089645864==--
