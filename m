Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27135F5D42
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 04:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4MfWgliWXk0V1LRLWxa61fclOqtoIbrcOw2z3F7qzL4=; b=n5N
	KQV4syvktI+nWTHTgEfX8Kp6Ft3mpAS8Csx9uYFmRbXk1HIBVac45x/5IGpcqXIWdYprELV3AigmG
	m60/8jMQVy7CdHnArOSD6kUIU2ds0MEiZ5eTivHfH2s/qTM5VJGvrU8qF982W1iNrAEwaBMY/NTYU
	I8SRK4GINL50USDilgxGE7oPW3MB+iBM7lbRwEdYhvcF17PfO5C7DGTOcgYRwyGvAU+m53HZnOaKI
	gIGcgg9ZPllRkckOKpFIHCYadO2q2R4lW1D5Kkg3ZWXKx0nx+U2vDnwIyjvauWP+3PSba0VQiYXT/
	u7siiqtj/TvgL4DTvwDR5wg1xNSWhmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTHfX-00011k-0b; Sat, 09 Nov 2019 03:44:11 +0000
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:42:56 -0800
MIME-Version: 1.0
Message-ID: <mailman.9968.1573271025.2486.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] [PATCH 1/2] hostapd: add dtim_period,
 local_pwr_constraint, spectrum_mgmt_required
Content-Type: multipart/mixed; boundary="===============0888373231870533997=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0888373231870533997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0888373231870533997==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([116.202.17.147])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTHf5-0000qF-81
	for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 03:43:45 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 24BE51FD77
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 03:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1573271014;
	bh=xSjnP8RdCHMk8hmzMcUQkzyha87os/SRZXmGvBWnZTs=;
	h=From:To:Subject:Date:From;
	b=eTO/uyWwrTxJ3Kj0I479Xn3TG6SNtk6oa/Q1oWxAQN46b5KiYrUPRcc/qTL/JlwVm
	 KhWvIjC1prnRabok8507OygDNqz8OQI2FehATzf2hGeidb/wp0jSKhReEo2Je9yA1v
	 WEM+kxTHX4BW/jVmoZzS9C4ByvH848jGY6U2Ex8pEvZVKsFJeXQ6oqDs4e9q6RpIjF
	 NgnTFC8G1iLNkxYfzKJvYPGmN5eMl399g0P+JVWMUVunIRrfVQqn0Kru064sqs7PZW
	 PE+ZsQuFeqxQHJApFBejEdGu8CisMicTjuzRFZhLWu+kApeE1XzbZGkjOyjbFqRmGn
	 zjgsKefrXsoFEyOvQ6dfd0gc3Hbba3iHUe+Td+RwUhTKKycnxIL9iOSQQ85R7l8Y2q
	 aRXTMTbQUXBkTuJQbZV/HG7aTM/PSlSvhzzVBCeFmzYp9+A/PiD+waWCPdcJTafQ7T
	 rFS7UjtjiC2IYEj/2fax6iD9yu2REYl/NTXMiir2wghWp7iJ5LM1Q8sEUw0FpjCzlK
	 A20lB7jteUpo/zX7e5zdvviKKihmWP49BIp9gyRVPjQccnU0y6XfrXCOiy2Vx5rzn+
	 H41PzSzHLPMagrbHSh+92V2IxwyGatubiTgycIg/GNSN4AxMyVUerUnFuOhsFQqfK1
	 jXDf7DhskteDQxrAcJTzWtqY=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id CBD0410484E
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 03:43:30 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH 1/2] hostapd: add dtim_period, local_pwr_constraint, spectrum_mgmt_required
Date: Fri,  8 Nov 2019 19:42:56 -0800
Message-Id: <20191109034257.44951-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_194343_589611_33351E61 
X-CRM114-Status: UNSURE (   8.04  )
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

Allows dtim_period to be configurable, the default is from hostapd.
Adds additional regulatory tunables for power constraint and spectrum
managment.

Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 package/network/services/hostapd/Makefile         |  2 +-
 package/network/services/hostapd/files/hostapd.sh | 13 +++++++++++--
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 4f6420f503..86534054b8 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=hostapd
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 3c1504ca60..86b9932301 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -90,6 +90,8 @@ hostapd_common_add_device_config() {
 
 	config_add_string country
 	config_add_boolean country_ie doth
+	config_add_boolean spectrum_mgmt_required
+	config_add_int local_pwr_constraint
 	config_add_string require_mode
 	config_add_boolean legacy_rates
 
@@ -106,11 +108,13 @@ hostapd_prepare_device_config() {
 	local base="${config%%.conf}"
 	local base_cfg=
 
-	json_get_vars country country_ie beacon_int:100 doth require_mode legacy_rates acs_chan_bias
+	json_get_vars country country_ie beacon_int:100 dtim_period:2 doth require_mode legacy_rates \
+		acs_chan_bias local_pwr_constraint spectrum_mgmt_required
 
 	hostapd_set_log_options base_cfg
 
 	set_default country_ie 1
+	set_default spectrum_mgmt_required 0
 	set_default doth 1
 	set_default legacy_rates 1
 
@@ -119,7 +123,11 @@ hostapd_prepare_device_config() {
 	[ -n "$country" ] && {
 		append base_cfg "country_code=$country" "$N"
 
-		[ "$country_ie" -gt 0 ] && append base_cfg "ieee80211d=1" "$N"
+		[ "$country_ie" -gt 0 ] && { 
+			append base_cfg "ieee80211d=1" "$N"
+			[ -n "$local_pwr_constraint" ] && append base_cfg "local_pwr_constraint=$local_pwr_constraint" "$N"
+			[ "$spectrum_mgmt_required" -gt 0 ] && append base_cfg "spectrum_mgmt_required=$spectrum_mgmt_required" "$N"
+		}
 		[ "$hwmode" = "a" -a "$doth" -gt 0 ] && append base_cfg "ieee80211h=1" "$N"
 	}
 
@@ -154,6 +162,7 @@ hostapd_prepare_device_config() {
 	[ -n "$rlist" ] && append base_cfg "supported_rates=$rlist" "$N"
 	[ -n "$brlist" ] && append base_cfg "basic_rates=$brlist" "$N"
 	append base_cfg "beacon_int=$beacon_int" "$N"
+	append base_cfg "dtim_period=$dtim_period" "$N"
 
 	json_get_values opts hostapd_options
 	for val in $opts; do
-- 
2.24.0



--===============0888373231870533997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0888373231870533997==--
