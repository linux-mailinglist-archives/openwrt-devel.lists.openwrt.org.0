Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546AB1BC154
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 16:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=akhgoFtU551xAi2ZB0hQQrysyiQP2o/i5fUJm760NDI=; b=r9ys8uFDYV0sET
	+OuZF8lUem61/ioB4WlOfZMeYdM0U5BolyfMS/jES6lGbEdnD17X7jB+yeQ/lMvQBLCYTRQYkrIci
	bHRyAFfxtwP7PM4suoVyXOnVYgdfqkYtPs6nzv8fPbS+gNiM3SOeq9bBn0QpTUsoSwxW5yYPwuODR
	c7DMKwuGcrCGdaRErsQ65aH0pBkZDQpGFXZDtmeoepthYBclMT4mROm58h3EKna9D4uD64HXeFLi8
	0wKkqY0zFP68GSuM3j2BCq/tMvudz/gcxGutUXbTG6ODq1XYfvyKsdx0vC2SJ+MXBDpszkgRGPAMI
	q7jrhpW1LSAHR3w/OPuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRHI-0004uG-6f; Tue, 28 Apr 2020 14:32:04 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRH8-0004sp-8U
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 14:31:56 +0000
Received: from [149.224.211.51] (helo=bertha8.datto.lan)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jTRH3-0006cu-Jq; Tue, 28 Apr 2020 16:31:49 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Apr 2020 16:31:42 +0200
Message-Id: <20200428143142.27209-1-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_073154_450407_4DA83515 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mac80211: more wifi reconf related fixes
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

* uci state was not getting reset properly during teardown
* AP+STA co-exist state was not flushed properly upon channel switch
* remove a debug logger call
* properly teardown supplicant instances when they get disabled
* add md5 config support for supplicant
* don't call wpa_supplicant_prepare_interface twice

Signed-off-by: John Crispin <john@phrozen.org>
---
 .../files/lib/netifd/wireless/mac80211.sh     | 42 +++++++++++--------
 1 file changed, 24 insertions(+), 18 deletions(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index 1ebdceaab8..ab2c6ad38d 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -590,7 +590,13 @@ mac80211_setup_supplicant() {
 	local add_sp=0
 	local spobj="$(ubus -S list | grep wpa_supplicant.${ifname})"
 
-	wpa_supplicant_prepare_interface "$ifname" nl80211 || return 1
+	[ "$enable" = 0 ] && {
+		ubus call wpa_supplicant.${phy} config_del "{\"iface\":\"$ifname\"}"
+		ip link set dev "$ifname" down
+		iw dev "$ifname" del
+		return 0
+	}
+
 	wpa_supplicant_prepare_interface "$ifname" nl80211 || {
 		iw dev "$ifname" del
 		return 1
@@ -607,18 +613,17 @@ mac80211_setup_supplicant() {
 		[ "$spobj" ] && ubus call wpa_supplicant config_remove "{\"iface\":\"$ifname\"}"
 		add_sp=1
 	fi
-	[ "$enable" = 0 ] && {
-		ubus call wpa_supplicant config_remove "{\"iface\":\"$ifname\"}"
-		ip link set dev "$ifname" down
-		return 0
-	}
 	[ -z "$spobj" ] && add_sp=1
 
+	NEW_MD5_SP=$(test -e "${_config}" && md5sum ${_config})
+	OLD_MD5_SP=$(uci -q -P /var/state get wireless._${phy}.md5_${ifname})
 	if [ "$add_sp" = "1" ]; then
 		wpa_supplicant_run "$ifname" "$hostapd_ctrl"
 	else
-		ubus call $spobj reload
+		[ "${NEW_MD5_SP}" == "${OLD_MD5_SP}" ] || ubus call $spobj reload
 	fi
+	uci -q -P /var/state set wireless._${phy}.md5_${ifname}="${NEW_MD5_SP}"
+	return 0
 }
 
 mac80211_setup_supplicant_noctl() {
@@ -765,7 +770,6 @@ mac80211_setup_vif() {
 
 	[ "$vif_enable" = 1 ] || action=down
 	if [ "$mode" != "ap" ] || [ "$ifname" = "$ap_ifname" ]; then
-		logger ip link set dev "$ifname" $action
 		ip link set dev "$ifname" "$action" || {
 			wireless_setup_vif_failed IFUP_ERROR
 			json_select ..
@@ -923,8 +927,8 @@ drv_mac80211_setup() {
 	[ "$rxantenna" = "all" ] && rxantenna=0xffffffff
 
 	iw phy "$phy" set antenna $txantenna $rxantenna >/dev/null 2>&1
-	iw phy "$phy" set antenna_gain $antenna_gain
-	iw phy "$phy" set distance "$distance"
+	iw phy "$phy" set antenna_gain $antenna_gain >/dev/null 2>&1
+	iw phy "$phy" set distance "$distance" >/dev/null 2>&1
 
 	if [ -n "$txpower" ]; then
 		iw phy "$phy" set txpower fixed "${txpower%%.*}00"
@@ -954,8 +958,8 @@ drv_mac80211_setup() {
 	OLD_MD5=$(uci -q -P /var/state get wireless._${phy}.md5)
 	if [ "${NEWAPLIST}" != "${OLDAPLIST}" ]; then
 		mac80211_vap_cleanup hostapd "${OLDAPLIST}"
-		[ -n "${NEWAPLIST}" ] && mac80211_iw_interface_add "$phy" "${NEWAPLIST%% *}" __ap || return
 	fi
+	[ -n "${NEWAPLIST}" ] && mac80211_iw_interface_add "$phy" "${NEWAPLIST%% *}" __ap
 	local add_ap=0
 	local primary_ap=${NEWAPLIST%% *}
 	[ -n "$hostapd_ctrl" ] && {
@@ -966,7 +970,11 @@ drv_mac80211_setup() {
 				no_reload=$?
 				if [ "$no_reload" != "0" ]; then
 					mac80211_vap_cleanup hostapd "${OLDAPLIST}"
-			                [ -n "${NEWAPLIST}" ] && mac80211_iw_interface_add "$phy" "${NEWAPLIST%% *}" __ap || return
+					mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._${phy}.splist)"
+					mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._${phy}.umlist)"
+					sleep 2
+					mac80211_iw_interface_add "$phy" "${NEWAPLIST%% *}" __ap
+					for_each_interface "sta adhoc mesh monitor" mac80211_prepare_vif
 				fi
 			}
 		fi
@@ -1031,12 +1039,10 @@ list_phy_interfaces() {
 drv_mac80211_teardown() {
 	wireless_process_kill_all
 
-	json_select data
-	json_get_vars phy
-	json_select ..
-
-	mac80211_interface_cleanup "$phy"
-	uci -q -P /var/state revert wireless._${phy}
+	for phy in `ls /sys/class/ieee80211/`; do
+		mac80211_interface_cleanup "$phy"
+		uci -q -P /var/state revert wireless._${phy}
+	done
 }
 
 add_driver mac80211
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
