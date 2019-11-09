Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8616DF60BA
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 18:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZC9t1ENFfQZYef8C8NFS6BVyKRlhJ01Kdbusgz7kwjU=; b=BSPo/IWF1ihqRB
	Yl9J9cxmU25c1TokNnq27drowM4WSx52kTy/LeViIV4VQqM3TDuHN+j/vkjZ6BfqjfXuq7stajeB8
	vc3C7fxocjoWj7VKBsFmGcN1dwZ+VHMGgTMnZG1cZQ6fkAeEboe72IVx8DRgTU98yhUfEiIcYRo3n
	tRnO7A2mQ2yvUtHrJd7TOrK7h0Mih+lIOErPtATK8O7WYVEkVWeD54rS3xHxGIVrDjjFBtQirA9Ny
	S2uWTRFiYCHHZ1Xt5vQtNxMqziOtSKnuLAbQc7dYb8Iuy2WdXNYbRaEkKoYwHWH3K0jpFf9BgtCkZ
	Qs2bH6IjgMPn1MEwqUFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUe3-0003ss-AJ; Sat, 09 Nov 2019 17:35:31 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUdu-0003sW-8c
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 17:35:24 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iTUdr-0002Jj-9M; Sat, 09 Nov 2019 18:35:20 +0100
Date: Sat, 9 Nov 2019 18:35:09 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: John Crispin <john@phrozen.org>, openwrt-devel@lists.openwrt.org
Message-ID: <20191109173509.GA103319@makrotopia.org>
References: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_093522_471646_418785E7 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 4/5] mac80211: add support for
 dynamically reconfiguring wifi
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

From: John Crispin <john@phrozen.org>

Change scripts to use ubus interface of hostapd/wpa_supplicant to
add/remove/modify wireless interfaces instead of (re-)starting the
services.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
v2: honour vif_enable for supplicant and bare ifaces

 .../files/lib/netifd/wireless/mac80211.sh     | 170 ++++++++++++++----
 1 file changed, 134 insertions(+), 36 deletions(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index 12af2d1d0e..5b174cded6 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -19,6 +19,11 @@ iw() {
 	command iw $@ || logger -t mac80211 "Failed command: iw $@"
 }
 
+NEWAPLIST=
+OLDAPLIST=
+NEWSPLIST=
+OLDSPLIST=
+
 drv_mac80211_init_device_config() {
 	hostapd_common_add_device_config
 
@@ -58,7 +63,7 @@ drv_mac80211_init_iface_config() {
 
 	config_add_string 'macaddr:macaddr' ifname
 
-	config_add_boolean wds powersave
+	config_add_boolean wds powersave enable
 	config_add_int maxassoc
 	config_add_int max_listen_int
 	config_add_int dtim_period
@@ -454,7 +459,7 @@ mac80211_iw_interface_add() {
 mac80211_prepare_vif() {
 	json_select config
 
-	json_get_vars ifname mode ssid wds powersave macaddr
+	json_get_vars ifname mode ssid wds powersave macaddr enable
 
 	[ -n "$ifname" ] || ifname="wlan${phy#phy}${if_idx:+-$if_idx}"
 	if_idx=$((${if_idx:-0} + 1))
@@ -490,8 +495,8 @@ mac80211_prepare_vif() {
 
 			mac80211_hostapd_setup_bss "$phy" "$ifname" "$macaddr" "$type" || return
 
+			NEWAPLIST="${NEWAPLIST}$ifname "
 			[ -n "$hostapd_ctrl" ] || {
-				mac80211_iw_interface_add "$phy" "$ifname" __ap || return
 				hostapd_ctrl="${hostapd_ctrl:-/var/run/hostapd/$ifname}"
 			}
 		;;
@@ -503,7 +508,7 @@ mac80211_prepare_vif() {
 		;;
 		sta)
 			local wdsflag=
-			staidx="$(($staidx + 1))"
+			[ "$enable" = 0 ] || staidx="$(($staidx + 1))"
 			[ "$wds" -gt 0 ] && wdsflag="4addr on"
 			mac80211_iw_interface_add "$phy" "$ifname" managed "$wdsflag" || return
 			[ "$powersave" -gt 0 ] && powersave="on" || powersave="off"
@@ -529,19 +534,62 @@ mac80211_prepare_vif() {
 }
 
 mac80211_setup_supplicant() {
+	local enable=$1
+	local add_sp=0
+	local spobj="$(ubus -S list | grep wpa_supplicant.${ifname})"
+
 	wpa_supplicant_prepare_interface "$ifname" nl80211 || return 1
+	wpa_supplicant_prepare_interface "$ifname" nl80211 || {
+		iw dev "$ifname" del
+		return 1
+	}
 	if [ "$mode" = "sta" ]; then
 		wpa_supplicant_add_network "$ifname"
 	else
 		wpa_supplicant_add_network "$ifname" "$freq" "$htmode" "$noscan"
 	fi
-	wpa_supplicant_run "$ifname" ${hostapd_ctrl:+-H $hostapd_ctrl}
+
+	NEWSPLIST="${NEWSPLIST}$ifname "
+
+	if [ "${NEWAPLIST%% *}" != "${OLDAPLIST%% *}" ]; then
+		[ "$spobj" ] && ubus call wpa_supplicant.${phy} config_del "{\"iface\":\"$ifname\"}"
+		add_sp=1
+	fi
+	[ "$enable" = 0 ] && {
+		ubus call wpa_supplicant.${phy} config_del "{\"iface\":\"$ifname\"}"
+		ip link set dev "$ifname" down
+		return 0
+	}
+	[ -z "$spobj" ] && add_sp=1
+
+	if [ "$add_sp" = "1" ]; then
+		wpa_supplicant_run "$ifname" "$hostapd_ctrl"
+	else
+		ubus call $spobj reload
+	fi
 }
 
 mac80211_setup_supplicant_noctl() {
-	wpa_supplicant_prepare_interface "$ifname" nl80211 || return 1
+	local enable=$1
+	local spobj="$(ubus -S list | grep wpa_supplicant.${ifname})"
+	wpa_supplicant_prepare_interface "$ifname" nl80211 || {
+		iw dev "$ifname" del
+		return 1
+	}
+
 	wpa_supplicant_add_network "$ifname" "$freq" "$htmode" "$noscan"
-	wpa_supplicant_run "$ifname"
+
+	NEWSPLIST="${NEWSPLIST}$ifname "
+	[ "$enable" = 0 ] && {
+		ubus call wpa_supplicant.${phy} config_del "{\"iface\":\"$ifname\"}"
+		ip link set dev "$ifname" down
+		return 0
+	}
+	if [ -z "$spobj" ]; then
+		wpa_supplicant_run "$ifname"
+	else
+		ubus call $spobj reload
+	fi
 }
 
 mac80211_setup_adhoc_htmode() {
@@ -579,12 +627,17 @@ mac80211_setup_adhoc_htmode() {
 		;;
 		*) ibss_htmode="" ;;
 	esac
-
 }
 
 mac80211_setup_adhoc() {
+	local enable=$1
 	json_get_vars bssid ssid key mcast_rate
 
+	[ "$enable" = 0 ] && {
+		ip link set dev "$ifname" down
+		return 0
+	}
+
 	keyspec=
 	[ "$auth_type" = "wep" ] && {
 		set_default key 1
@@ -623,8 +676,14 @@ mac80211_setup_adhoc() {
 }
 
 mac80211_setup_mesh() {
+	local enable=$1
 	json_get_vars ssid mesh_id mcast_rate
 
+	[ "$enable" = 0 ] && {
+		ip link set dev "$ifname" down
+		return 0
+	}
+
 	mcval=
 	[ -n "$mcast_rate" ] && wpa_supplicant_add_rate mcval "$mcast_rate"
 	[ -n "$mesh_id" ] && ssid="$mesh_id"
@@ -670,6 +729,7 @@ mac80211_setup_mesh() {
 mac80211_setup_vif() {
 	local name="$1"
 	local failed
+	local action=up
 
 	json_select data
 	json_get_vars ifname
@@ -678,13 +738,15 @@ mac80211_setup_vif() {
 	json_select config
 	json_get_vars mode
 	json_get_var vif_txpower txpower
+	json_get_var vif_enable enable 1
 
-	ip link set dev "$ifname" up || {
+	[ "$vif_enable" = 1 ] || action=down
+	logger ip link set dev "$ifname" $action
+	ip link set dev "$ifname" "$action" || {
 		wireless_setup_vif_failed IFUP_ERROR
 		json_select ..
 		return
 	}
-
 	set_default vif_txpower "$txpower"
 	[ -z "$vif_txpower" ] || iw dev "$ifname" set txpower fixed "${vif_txpower%%.*}00"
 
@@ -693,9 +755,9 @@ mac80211_setup_vif() {
 			wireless_vif_parse_encryption
 			freq="$(get_freq "$phy" "$channel")"
 			if [ "$wpa" -gt 0 -o "$auto_channel" -gt 0 ] || chan_is_dfs "$phy" "$channel"; then
-				mac80211_setup_supplicant || failed=1
+				mac80211_setup_supplicant $vif_enable || failed=1
 			else
-				mac80211_setup_mesh
+				mac80211_setup_mesh $vif_enable
 			fi
 			for var in $MP_CONFIG_INT $MP_CONFIG_BOOL $MP_CONFIG_STRING; do
 				json_get_var mp_val "$var"
@@ -707,13 +769,13 @@ mac80211_setup_vif() {
 			mac80211_setup_adhoc_htmode
 			if [ "$wpa" -gt 0 -o "$auto_channel" -gt 0 ]; then
 				freq="$(get_freq "$phy" "$channel")"
-				mac80211_setup_supplicant_noctl || failed=1
+				mac80211_setup_supplicant_noctl $vif_enable || failed=1
 			else
-				mac80211_setup_adhoc
+				mac80211_setup_adhoc $vif_enable
 			fi
 		;;
 		sta)
-			mac80211_setup_supplicant || failed=1
+			mac80211_setup_supplicant $vif_enable || failed=1
 		;;
 	esac
 
@@ -734,18 +796,26 @@ chan_is_dfs() {
 	return $!
 }
 
-mac80211_interface_cleanup() {
-	local phy="$1"
+mac80211_vap_cleanup() {
+	local service="$1"
+	local vaps="$2"
 
-	for wdev in $(list_phy_interfaces "$phy"); do
-		local wdev_phy="$(readlink /sys/class/net/${wdev}/phy80211)"
-		wdev_phy="$(basename "$wdev_phy")"
-		[ -n "$wdev_phy" -a "$wdev_phy" != "$phy" ] && continue
+	for wdev in $vaps; do
+		ubus call ${service}.${phy} config_remove "{\"iface\":\"$wdev\"}"
 		ip link set dev "$wdev" down 2>/dev/null
 		iw dev "$wdev" del
 	done
 }
 
+mac80211_interface_cleanup() {
+	local phy="$1"
+	local primary_ap=$(uci -q -P /var/state get wireless._${phy}.aplist)
+	primary_ap=${primary_ap%% *}
+
+	mac80211_vap_cleanup hostapd "${primary_ap}"
+	mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._${phy}.splist)"
+}
+
 mac80211_set_noscan() {
 	hostapd_noscan=1
 }
@@ -771,8 +841,10 @@ drv_mac80211_setup() {
 		return 1
 	}
 
-	wireless_set_data phy="$phy"
-	mac80211_interface_cleanup "$phy"
+	[ -z "$(uci -q -P /var/state show wireless._${phy})" ] && {
+		uci -q -P /var/state set wireless._${phy}=phy
+		wireless_set_data phy="$phy"
+	}
 
 	# convert channel to frequency
 	[ "$auto_channel" -gt 0 ] || freq="$(get_freq "$phy" "$channel")"
@@ -822,30 +894,55 @@ drv_mac80211_setup() {
 	[ -n "$has_ap" ] && mac80211_hostapd_setup_base "$phy"
 
 	for_each_interface "sta adhoc mesh monitor" mac80211_prepare_vif
+	NEWAPLIST=
 	for_each_interface "ap" mac80211_prepare_vif
-
+	OLDAPLIST=$(uci -q -P /var/state get wireless._${phy}.aplist)
+	NEW_MD5=$(md5sum ${hostapd_conf_file})
+	OLD_MD5=$(uci -q -P /var/state get wireless._${phy}.md5)
+	if [ "${NEWAPLIST}" != "${OLDAPLIST}" ]; then
+		mac80211_vap_cleanup hostapd "${OLDAPLIST}"
+		[ -n "${NEWAPLIST}" ] && mac80211_iw_interface_add "$phy" "${NEWAPLIST%% *}" __ap || return
+	fi
+	local add_ap=0
+	local primary_ap=${NEWAPLIST%% *}
 	[ -n "$hostapd_ctrl" ] && {
-		/usr/sbin/hostapd -s -P /var/run/wifi-$phy.pid -B "$hostapd_conf_file"
+		if [ -n "$(ubus list | grep hostapd.$primary_ap)" ]; then
+			[ "${NEW_MD5}" = "${OLD_MD5}" ] || {
+				ubus call hostapd.$primary_ap reload
+			}
+		else
+			add_ap=1
+			ubus call hostapd.${phy} config_add "{\"iface\":\"$primary_ap\", \"config\":\"${hostapd_conf_file}\"}"
+		fi
 		ret="$?"
-		wireless_add_process "$(cat /var/run/wifi-$phy.pid)" "/usr/sbin/hostapd" 1
 		[ "$ret" != 0 ] && {
 			wireless_setup_failed HOSTAPD_START_FAILED
 			return
 		}
 	}
+	uci -q -P /var/state set wireless._${phy}.aplist="${NEWAPLIST}"
+	uci -q -P /var/state set wireless._${phy}.md5="${NEW_MD5}"
 
-	for_each_interface "ap sta adhoc mesh monitor" mac80211_setup_vif
+	[ "${add_ap}" = 1 ] && sleep 1
+	for_each_interface "ap" mac80211_setup_vif
 
-	wireless_set_up
-}
+	NEWSPLIST=
+	OLDSPLIST=$(uci -q -P /var/state get wireless._${phy}.splist)
+	for_each_interface "sta adhoc mesh monitor" mac80211_setup_vif
 
-list_phy_interfaces() {
-	local phy="$1"
-	if [ -d "/sys/class/ieee80211/${phy}/device/net" ]; then
-		ls "/sys/class/ieee80211/${phy}/device/net" 2>/dev/null;
-	else
-		ls "/sys/class/ieee80211/${phy}/device" 2>/dev/null | grep net: | sed -e 's,net:,,g'
-	fi
+	uci -q -P /var/state set wireless._${phy}.splist="${NEWSPLIST}"
+
+	local foundvap
+	local dropvap=""
+	for oldvap in $OLDSPLIST; do
+		foundvap=0
+		for newvap in $NEWSPLIST; do
+			[ "$oldvap" = "$newvap" ] && foundvap=1
+		done
+		[ "$foundvap" = "0" ] && dropvap="$dropvap $oldvap"
+	done
+	[ -n "$dropvap" ] && mac80211_vap_cleanup wpa_supplicant "$dropvap"
+	wireless_set_up
 }
 
 drv_mac80211_teardown() {
@@ -856,6 +953,7 @@ drv_mac80211_teardown() {
 	json_select ..
 
 	mac80211_interface_cleanup "$phy"
+	uci -q -P /var/state revert wireless._${phy}
 }
 
 add_driver mac80211
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
