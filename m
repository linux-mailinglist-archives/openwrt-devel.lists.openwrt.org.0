Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33709EA178
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:11:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F5sZdR8L0HbkNnqyV+2iqM9//JTgovB98+vk89sRoS4=; b=TxpPMTtOg2IGhR
	PXoxqX0zaFBzJdSXM7qxrB4XPXxYzFfe+Ibts6CdUsv+m84RsVniL944j8A9gUqSGOfqToMneBFxf
	+qZw8VDplqu77cdyVB4czkiEcjoEe11MhGimDWto33WpYxE7+x09yD6Hz/sUVVhNgzCzL2Z8RMRJc
	Kyzz5dpcStEndeVoMKEC5bQXg0iun4dZFgmrlk8znZPqDMdL0sXIePI1qGv5iq/gJbv7t758b9riP
	GIMLeoznjB7PejBLsKFGPgxzMpYpKxDkbJ+rWgTQ8hQzE84yUfL6c7NWvmhHqmf0v2D16snqy6uwx
	M4p+G2EfeWibr5s4sOhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqZO-0004ZM-Sr; Wed, 30 Oct 2019 16:11:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqZE-0004ZD-PS
 for openwrt-devel@bombadil.infradead.org; Wed, 30 Oct 2019 16:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0qhC5OqRHpBM0OJoDFvKehfVxg+l7J6amC6YFekrBlY=; b=iwjLgEzfkFS3okfFkqlomfLFwY
 bGoPgZSKz8JVevwaisU4fXqpRjDt4iMHhsrKWO/HXYHb9UEKfL1vss+a/t1xFfP51W5ld8CSefmsK
 lEtoRExdtvvC/cYXNUvlvuZfXzmRQ3hau2ZQc3DRafGPoyradW64FRz7quO3wu0YrCfbNZH4BYbKT
 6higfonnKVGxdmXih6TxkgH2fqN1hejs0xdYcBQ+RSBNkZ/YL5diZHp0vFU5TXw+O59aqWSNKmHV8
 t0q/xhbpklDc02czhLoCwC3KEDXV+EDCqaStfPtgE/UmhBtJZBydB7qMPdWzkGlmia6qz/zI0EZiv
 eh9evaDg==;
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqZf-0003nX-Jj
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:11:57 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iPqMg-0001o5-Ef
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:58:31 +0100
Date: Wed, 30 Oct 2019 16:58:19 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191030155819.GA139314@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_161155_710590_30CD2019 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 4/5] mac80211: add support for dynamically
 reconfiguring wifi
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
 .../files/lib/netifd/wireless/mac80211.sh     | 135 ++++++++++++++----
 1 file changed, 107 insertions(+), 28 deletions(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index f9d5c0c6d5..e62a53f5be 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -18,6 +18,11 @@ iw() {
 	command iw $@ || logger -t mac80211 "Failed command: iw $@"
 }
 
+NEWAPLIST=
+OLDAPLIST=
+NEWSPLIST=
+OLDSPLIST=
+
 drv_mac80211_init_device_config() {
 	hostapd_common_add_device_config
 
@@ -57,7 +62,7 @@ drv_mac80211_init_iface_config() {
 
 	config_add_string 'macaddr:macaddr' ifname
 
-	config_add_boolean wds powersave
+	config_add_boolean wds powersave enable
 	config_add_int maxassoc
 	config_add_int max_listen_int
 	config_add_int dtim_period
@@ -456,7 +461,7 @@ mac80211_iw_interface_add() {
 mac80211_prepare_vif() {
 	json_select config
 
-	json_get_vars ifname mode ssid wds powersave macaddr
+	json_get_vars ifname mode ssid wds powersave macaddr enable
 
 	[ -n "$ifname" ] || ifname="wlan${phy#phy}${if_idx:+-$if_idx}"
 	if_idx=$((${if_idx:-0} + 1))
@@ -492,8 +497,8 @@ mac80211_prepare_vif() {
 
 			mac80211_hostapd_setup_bss "$phy" "$ifname" "$macaddr" "$type" || return
 
+			NEWAPLIST="${NEWAPLIST}$ifname "
 			[ -n "$hostapd_ctrl" ] || {
-				mac80211_iw_interface_add "$phy" "$ifname" __ap || return
 				hostapd_ctrl="${hostapd_ctrl:-/var/run/hostapd/$ifname}"
 			}
 		;;
@@ -505,7 +510,7 @@ mac80211_prepare_vif() {
 		;;
 		sta)
 			local wdsflag=
-			staidx="$(($staidx + 1))"
+			[ "$enable" = 0 ] || staidx="$(($staidx + 1))"
 			[ "$wds" -gt 0 ] && wdsflag="4addr on"
 			mac80211_iw_interface_add "$phy" "$ifname" managed "$wdsflag" || return
 			[ "$powersave" -gt 0 ] && powersave="on" || powersave="off"
@@ -531,19 +536,51 @@ mac80211_prepare_vif() {
 }
 
 mac80211_setup_supplicant() {
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
+
+	if [ -z "$spobj" ]; then
+		wpa_supplicant_run "$ifname"
+	else
+		ubus call $spobj reload
+	fi
 }
 
 mac80211_setup_adhoc_htmode() {
@@ -581,7 +618,6 @@ mac80211_setup_adhoc_htmode() {
 		;;
 		*) ibss_htmode="" ;;
 	esac
-
 }
 
 mac80211_setup_adhoc() {
@@ -672,6 +708,7 @@ mac80211_setup_mesh() {
 mac80211_setup_vif() {
 	local name="$1"
 	local failed
+	local action=up
 
 	json_select data
 	json_get_vars ifname
@@ -680,13 +717,15 @@ mac80211_setup_vif() {
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
 
@@ -736,15 +775,27 @@ chan_is_dfs() {
 	return $!
 }
 
-mac80211_interface_cleanup() {
-	local phy="$1"
+mac80211_vap_cleanup() {
+	local service="$1"
+	local vaps="$2"
 
-	for wdev in $(list_phy_interfaces "$phy"); do
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
+
 mac80211_set_noscan() {
 	hostapd_noscan=1
 }
@@ -770,8 +821,10 @@ drv_mac80211_setup() {
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
@@ -821,30 +874,55 @@ drv_mac80211_setup() {
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
@@ -855,6 +933,7 @@ drv_mac80211_teardown() {
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
