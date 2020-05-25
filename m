Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62C81E10F0
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 16:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iYmXyFu60zbasxnuceJOsX18IHhM1U/IHt/3/JmwVCE=; b=kmO+zzbbwF7QGg
	cKDu60E9apL6MYDcEy9BjTQ4AmO+Tco18aTHwauj9wqxnWSgfFKLBAGiJHjc8d4KN7C7iwONyOgz6
	JyN2lQldMyYTixsr4XytGhtD2TO97+O+GX6tDFwaoSu/Ca+9KF0Wl53dEh+rdvQiU1Uj7R51x136Y
	Xk+LSZCwxXydjCq+OgmcEdkbjFaTlhKKKPIcG6u7lNI6RDRFa/Hhqzj2VnMphd5vTkhQJ4h+JCyIj
	hd0EJI+NZvlFdTg2ldfuwOUcA3nQYsII3/EqOvQsBVF7OH7Uz5QY4G9vSjmbvZfI93aZue1XcBm/n
	QaYJYxt5kHPW86L+WU2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdENW-0006Ir-3M; Mon, 25 May 2020 14:46:58 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdENO-0006Hs-8W
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 14:46:51 +0000
Received: from [46.59.216.37] (helo=bertha8.datto.lan)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jdENL-0007TV-4n; Mon, 25 May 2020 16:46:47 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 16:46:39 +0200
Message-Id: <20200525144639.10421-1-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_074650_459064_84B50DCA 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] hostapd: add support for wifi-station and
 wifi-vlan sections
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

This patch adds support for 2 new uci sections.

config wifi-vlan
	# iface is optional. if it is not defined the vlan will apply
	# to all interfaces
        option iface	default_radio0
        option name	guest
        option vid	100
        option network	guest

config wifi-station
	# iface is optional. if it is not defined the station will apply
	# to all interfaces
        option iface	default_radio0
        # mac is optional. if it is not defined it will be a catch all
	# for any sta using this key
	option mac	'00:11:22:33:44:55'
        # vid is optional. if it is not defined, the sta will be part of
	# the primary iface.
	option vid	100
        option key	testtest

With this patch applied it is possible to use multiple PSKs and VIDs on a
single BSS.

Signed-off-by: John Crispin <john@phrozen.org>
---
 .../files/lib/netifd/wireless/mac80211.sh     |  8 +++-
 .../network/services/hostapd/files/hostapd.sh | 37 +++++++++++++++++++
 2 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index 7ca138c68c..19d05cb6dc 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -506,7 +506,7 @@ mac80211_iw_interface_add() {
 mac80211_prepare_vif() {
 	json_select config
 
-	json_get_vars ifname mode ssid wds powersave macaddr enable
+	json_get_vars ifname mode ssid wds powersave macaddr enable wpa_psk_file vlan_file
 
 	[ -n "$ifname" ] || ifname="wlan${phy#phy}${if_idx:+-$if_idx}"
 	if_idx=$((${if_idx:-0} + 1))
@@ -524,6 +524,12 @@ mac80211_prepare_vif() {
 	json_add_object data
 	json_add_string ifname "$ifname"
 	json_close_object
+
+	[ "$mode" == "ap" ] && {
+		[ -z "$wpa_psk_file" ] && hostapd_set_psk "$ifname"
+		[ -z "$vlan_file" ] && hostapd_set_vlan "$ifname"
+	}
+
 	json_select config
 
 	# It is far easier to delete and create the desired interface
diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 637f298ad9..a3554b6451 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -262,6 +262,39 @@ hostapd_common_add_bss_config() {
 	config_add_string 'owe_transition_bssid:macaddr' 'owe_transition_ssid:string'
 }
 
+hostapd_set_vlan_file() {
+	local ifname="$1"
+	local vlan="$2"
+	json_get_vars name vid
+	echo "${vid} ${ifname}-${name}" >> /var/run/hostapd-${ifname}.vlan
+	wireless_add_vlan "${vlan}" "${ifname}-${name}"
+}
+
+hostapd_set_vlan() {
+	local ifname="$1"
+
+	rm /var/run/hostapd-${ifname}.vlan
+	for_each_vlan hostapd_set_vlan_file ${ifname}
+}
+
+hostapd_set_psk_file() {
+	local ifname="$1"
+	local vlan="$2"
+	local vlan_id=""
+
+	json_get_vars mac vid key
+	set_default isolate "00:00:00:00:00:00"
+	[ -n "$vid" ] && vlan_id="vlanid=$vid "
+	echo "${vlan_id} ${mac} ${key}" >> /var/run/hostapd-${ifname}.psk
+}
+
+hostapd_set_psk() {
+	local ifname="$1"
+
+	rm /var/run/hostapd-${ifname}.psk
+	for_each_station hostapd_set_psk_file ${ifname}
+}
+
 hostapd_set_bss_options() {
 	local var="$1"
 	local phy="$2"
@@ -377,12 +410,15 @@ hostapd_set_bss_options() {
 			else
 				append bss_conf "wpa_passphrase=$key" "$N"
 			fi
+			[ -z "$wpa_psk_file" ] && set_default wpa_psk_file /var/run/hostapd-$ifname.psk
 			[ -n "$wpa_psk_file" ] && {
 				[ -e "$wpa_psk_file" ] || touch "$wpa_psk_file"
 				append bss_conf "wpa_psk_file=$wpa_psk_file" "$N"
 			}
 			[ "$eapol_version" -ge "1" -a "$eapol_version" -le "2" ] && append bss_conf "eapol_version=$eapol_version" "$N"
 
+			set_default dynamic_vlan 0
+			vlan_possible=1
 			wps_possible=1
 		;;
 		eap|eap192|eap-eap192)
@@ -639,6 +675,7 @@ hostapd_set_bss_options() {
 	[ -n "$vlan_possible" -a -n "$dynamic_vlan" ] && {
 		json_get_vars vlan_naming vlan_tagged_interface vlan_bridge vlan_file
 		set_default vlan_naming 1
+		[ -z "$vlan_file" ] && set_default vlan_file /var/run/hostapd-$ifname.vlan
 		append bss_conf "dynamic_vlan=$dynamic_vlan" "$N"
 		append bss_conf "vlan_naming=$vlan_naming" "$N"
 		[ -n "$vlan_bridge" ] && \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
