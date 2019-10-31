Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C91EB9BC
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 23:37:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SIebDZ4mE+66SCbMuAjezQ+BcO1+xX1DA5vbpa3j8JM=; b=m8qpZIQKk2f53FpDviVpIPVGb
	K27VhCmirz+tZ3Q0oCXb35+3cmGxay58sOHc0Jo0oj7/DLqJ/VXT0+/YC7LfZmLoyWjF0gS4dGCbJ
	Tgj7SqZ7uhCPY8mhAgNV+hxRcES5i4Uud3tUpQ8KPaEA5daRytEBI6/siY1outGdaEN8yZZ201Fiv
	t2WUo9L+cyk6c1TJEh1DCjV/DiWrIZtqxLiAvEjBnEjjhNHSxSeSNlXSl3kqYTzgPK9SvftoWbaxf
	Xkcnmpcie1jIOIcF/CWgf1QYbUHm/zxQFZt6DUlh9hrGQqQD2TU6qU4D8/xgQKdVrdn3AXH7Byn5O
	fm3JycApg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQJ3z-0004zY-5o; Thu, 31 Oct 2019 22:37:07 +0000
Date: Thu, 31 Oct 2019 20:03:39 -0000
To: "OpenWrtDevel" <openwrt-devel@lists.openwrt.org>
References: In-Reply-To:
In-Reply-To: 
MIME-Version: 1.0
Message-ID: <mailman.7579.1572561419.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: =?iso-8859-1?Q?=22Petr_=8Atetiar=22?= <ynezz@true.cz>,
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
Content-Type: multipart/mixed; boundary="===============1656180280190933090=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1656180280190933090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1656180280190933090==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([116.202.17.147])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQJ3o-0004z2-GD
	for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 22:36:59 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 879E91F4D0;
	Thu, 31 Oct 2019 22:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1572561414;
	bh=hUJR8OOpkKMEHZrciEraDQgwY0az7+L7Q0yOYfVJoK8=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=XhrPQPA2+SyOduWd649yDW03P+QIU1lfvV30d0pgvf3S59Wi7l0d3Ors4iqx3y0G2
	 R79icnzrfWamAx0g5eMRPJ8VkdOYZQBmlUUHLxvLE5u9J0pMGvSEmcQPwtQLNRzozP
	 OJLkIUxuJy1rIdAXvI8yE+72Zgi3wEA6gKhZ6gmlpF777F7OcQKSQrrr+Y7wb2AcCZ
	 IuaElAMdCm5R/K9VfR6HEYMoW82xVYM9jrv3RcF385OE7UTgy7T/K3prAetA/A43xe
	 zxX5UXPxGdEQghw9/QjDwBOymHL9KFFxI7PZImHiSwY8bHDHukjRQqr5aTCtW2bCxk
	 NxsNC7z/eO//BgGqNJor7/1A2Lj8osAa6exBc/WxuwBX26ESmLyRggjmb3kFPcyvae
	 NjjcjkaM3qeRSnaMSMcylqaD/8iLfuvp7XvnrKsAcES1dO4PJ5IYVFcLGJTejAC7yr
	 86JsgbR7kmougW7wi+I75xjYjlXGsYOSUCxpsamI/3kBi/SOflBeVNybQgFnSD1vgI
	 80R4TJRUkEqJknoQ3Kq/4dU6Zva/iZnsmqS6T7C0H765xVK0mewiN8i9m7bPJj8M0p
	 rZTXTjDNdY8WEJlUWdkm86cl+Naz0vPMrkm8r0gS85t9ek5r1Zbd/G0kuRFrQyKvoL
	 PE8qjjUmmA/0KihYQd48RGwo=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id 606201010D6;
	Thu, 31 Oct 2019 22:36:54 +0000 (UTC)
Message-ID: <95fb0d0ec07c541fa5c52fd957cfce37.squirrel@danielas3rtn54uwmofdo3x2bsdifr47huasnmbgqzfrec5ubupvtpid.onion>
X-OPENPGPKEY: Message passed unmodified
Date: Thu, 31 Oct 2019 20:03:39 -0000
Subject: [PATCH v2] hostapd: add IEEE 802.11k support
From: "Kyle Copperfield" <kmcopper@danwin1210.me>
To: "OpenWrtDevel" <openwrt-devel@lists.openwrt.org>
Cc: "Lorenzo Santina" <lorenzo.santina@edu.unito.it>,
 =?iso-8859-1?Q?=22Petr_=8Atetiar=22?= <ynezz@true.cz>
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit
References: In-Reply-To:
In-Reply-To: 
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_153656_693301_BA467996 
X-CRM114-Status: UNSURE (   5.06  )
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

Enables radio resource management to be reported by hostapd to clients.

Ref: https://github.com/lede-project/source/pull/1430
Co-developed-by: Lorenzo Santina <lorenzo.santina@edu.unito.it>
Signed-off-by: Lorenzo Santina <lorenzo.santina@edu.unito.it>
Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 package/network/services/hostapd/files/hostapd.sh | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/package/network/services/hostapd/files/hostapd.sh
b/package/network/services/hostapd/files/hostapd.sh
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







--===============1656180280190933090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1656180280190933090==--
