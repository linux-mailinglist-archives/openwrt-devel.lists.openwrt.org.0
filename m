Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2291F844E
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 18:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kV9ONMjlexngW/tpXfPxIpVH/mn+PIYdwtrIyft28x8=; b=eHo1ARzb5qLsm+
	QXA16zunvw2OsQafNGrRDB/y61aUHeMtFOwtxZ8S9KpeUHwf6QWHBtdlu2n7ub0aP3zxqcHJZ6aOj
	oidoZ5DbAxlX+J6YBGzQC5PAjUWjjz9VV1uByDwc0jUMYxU2Yf7NSIZ/cuayihxlB6RQ8rLgMkedQ
	9o1cg+Ucs0ZZ6zGufEz6e8C7oUhooQTivOI3ztTe1kFbgSaiecDhrDlGufGrwrr1XfV3YWLMqy35Y
	bWukUhusUBSxsYkp6bNNadOoXgBcjK7CkQEyvI9Fyy3y/oGGu7R9bikGHE6BG7zZQ0B3jp3fGEip+
	esjQqp9lDIyoGRXRBFFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk9A0-0002Be-J1; Sat, 13 Jun 2020 16:37:36 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk99e-00023y-4g
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 16:37:15 +0000
Received: from [134.101.206.16] (helo=localhost.localdomain)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jk99W-0001uP-98; Sat, 13 Jun 2020 18:37:06 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 13 Jun 2020 18:37:00 +0200
Message-Id: <20200613163700.10091-2-john@phrozen.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200613163700.10091-1-john@phrozen.org>
References: <20200613163700.10091-1-john@phrozen.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_093714_340936_ABFFE7F2 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] mac80211: add 11AX script support
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
 .../files/lib/netifd/wireless/mac80211.sh     | 131 ++++++++++++++++--
 .../mac80211/files/lib/wifi/mac80211.sh       |   7 +-
 2 files changed, 128 insertions(+), 10 deletions(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index 4171af2f60..79f38eca8f 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -55,6 +55,12 @@ drv_mac80211_init_device_config() {
 		short_gi_40 \
 		max_amsdu \
 		dsss_cck_40
+	config_add_int \
+		he_su_beamformer:1 \
+                he_su_beamformee:0 \
+                he_mu_beamformer:1 \
+                he_twt_required:0 \
+                he_spr_sr_control:0
 }
 
 drv_mac80211_init_iface_config() {
@@ -95,6 +101,20 @@ mac80211_add_capabilities() {
 	export -n -- "$__var=$__out"
 }
 
+mac80211_add_he_capabilities() {
+	local __out= oifs
+
+	oifs="$IFS"
+	IFS=:
+	for capab in "$@"; do
+		set -- $capab
+		[ "$(($4))" -gt 0 ] || continue
+		[ "$(((0x$2) & $3))" -gt 0 ] || continue
+		append base_cfg "$1=1" "$N"
+	done
+	IFS="$oifs"
+}
+
 mac80211_hostapd_setup_base() {
 	local phy="$1"
 
@@ -118,8 +138,8 @@ mac80211_hostapd_setup_base() {
 	ieee80211n=1
 	ht_capab=
 	case "$htmode" in
-		VHT20|HT20) ;;
-		HT40*|VHT40|VHT80|VHT160)
+		VHT20|HT20|HE20) ;;
+		HT40*|VHT40|HE40|VHT80|HE80|VHT160|HE160)
 			case "$hwmode" in
 				a)
 					case "$(( ($channel / 4) % 2 ))" in
@@ -191,8 +211,8 @@ mac80211_hostapd_setup_base() {
 	enable_ac=0
 	idx="$channel"
 	case "$htmode" in
-		VHT20) enable_ac=1;;
-		VHT40)
+		VHT20|HE20) enable_ac=1;;
+		VHT40|HE40)
 			case "$(( ($channel / 4) % 2 ))" in
 				1) idx=$(($channel + 2));;
 				0) idx=$(($channel - 2));;
@@ -201,7 +221,7 @@ mac80211_hostapd_setup_base() {
 			append base_cfg "vht_oper_chwidth=0" "$N"
 			append base_cfg "vht_oper_centr_freq_seg0_idx=$idx" "$N"
 		;;
-		VHT80)
+		VHT80|HE80)
 			case "$(( ($channel / 4) % 4 ))" in
 				1) idx=$(($channel + 6));;
 				2) idx=$(($channel + 2));;
@@ -212,7 +232,7 @@ mac80211_hostapd_setup_base() {
 			append base_cfg "vht_oper_chwidth=1" "$N"
 			append base_cfg "vht_oper_centr_freq_seg0_idx=$idx" "$N"
 		;;
-		VHT160)
+		VHT160|HE160)
 			case "$channel" in
 				36|40|44|48|52|56|60|64) idx=50;;
 				100|104|108|112|116|120|124|128) idx=114;;
@@ -320,6 +340,99 @@ mac80211_hostapd_setup_base() {
 		[ -n "$vht_capab" ] && append base_cfg "vht_capab=$vht_capab" "$N"
 	fi
 
+	# 802.11ax
+	enable_ax=0
+	idx="$channel"
+	case "$htmode" in
+		HE20)   enable_ax=1;;
+		HE40)
+			case "$(( ($channel / 4) % 2 ))" in
+				1) idx=$(($channel + 2));;
+				0) idx=$(($channel - 2));;
+			esac
+			enable_ax=1
+			if [ $channel -ge 36 ]; then
+				append base_cfg "he_oper_chwidth=0" "$N"
+				append base_cfg "he_oper_centr_freq_seg0_idx=$idx" "$N"
+			fi
+			;;
+		HE80)
+			case "$(( ($channel / 4) % 4 ))" in
+				1) idx=$(($channel + 6));;
+				2) idx=$(($channel + 2));;
+				3) idx=$(($channel - 2));;
+				0) idx=$(($channel - 6));;
+			esac
+			enable_ax=1
+			append base_cfg "he_oper_chwidth=1" "$N"
+			append base_cfg "he_oper_centr_freq_seg0_idx=$idx" "$N"
+			;;
+		HE160)
+			case "$channel" in
+				36|40|44|48|52|56|60|64) idx=50;;
+				100|104|108|112|116|120|124|128) idx=114;;
+			esac
+			enable_ax=1
+			append base_cfg "he_oper_chwidth=2" "$N"
+			append base_cfg "he_oper_centr_freq_seg0_idx=$idx" "$N"
+			;;
+	esac
+
+	if [ "$enable_ax" != "0" ]; then
+		json_get_vars \
+			he_su_beamformer:1 \
+			he_su_beamformee:0 \
+			he_mu_beamformer:1 \
+			he_twt_required:0 \
+			he_spr_sr_control:0
+
+		append base_cfg "ieee80211ax=1" "$N"
+		he_phy_cap=$(iw phy "$phy" info | awk -F "[()]" '/HE PHY Capabilities/ { print $2 }' | head -1)
+		he_phy_cap=${he_phy_cap:2}
+		he_mac_cap=$(iw phy "$phy" info | awk -F "[()]" '/HE MAC Capabilities/ { print $2 }' | head -1)
+		he_mac_cap=${he_mac_cap:2}
+
+		mac80211_add_he_capabilities \
+				he_su_beamformer:${he_phy_cap:6:2}:0x80:$he_su_beamformer \
+				he_su_beamformee:${he_phy_cap:8:2}:0x1:$he_su_beamformee \
+				he_mu_beamformer:${he_phy_cap:8:2}:0x2:$he_mu_beamformer \
+				he_spr_sr_control:${he_phy_cap:14:2}:0x1:$he_spr_sr_control \
+				he_twt_required:${he_mac_cap:0:2}:0x6:$he_twt_required \
+
+		bsscolor=$(head -1 /dev/urandom | tr -dc '0-9' | head -c2)
+		bsscolor=$(($bsscolor + 1))
+		bsscolor=$(($bsscolor % 63))
+
+		append base_cfg "he_bss_color=$bsscolor" "$N"
+		append base_cfg "he_default_pe_duration=4" "$N"
+		append base_cfg "he_mu_edca_qos_info_param_count=0" "$N"
+		append base_cfg "he_mu_edca_qos_info_q_ack=0" "$N"
+		append base_cfg "he_mu_edca_qos_info_queue_request=0" "$N"
+		append base_cfg "he_mu_edca_qos_info_txop_request=0" "$N"
+		append base_cfg "he_mu_edca_ac_be_aifsn=8" "$N"
+		append base_cfg "he_mu_edca_ac_be_aci=0" "$N"
+		append base_cfg "he_mu_edca_ac_be_ecwmin=9" "$N"
+		append base_cfg "he_mu_edca_ac_be_ecwmax=10" "$N"
+		append base_cfg "he_mu_edca_ac_be_timer=255" "$N"
+		append base_cfg "he_mu_edca_ac_bk_aifsn=15" "$N"
+		append base_cfg "he_mu_edca_ac_bk_aci=1" "$N"
+		append base_cfg "he_mu_edca_ac_bk_ecwmin=9" "$N"
+		append base_cfg "he_mu_edca_ac_bk_ecwmax=10" "$N"
+		append base_cfg "he_mu_edca_ac_bk_timer=255" "$N"
+		append base_cfg "he_mu_edca_ac_vi_ecwmin=5" "$N"
+		append base_cfg "he_mu_edca_ac_vi_ecwmax=7" "$N"
+		append base_cfg "he_mu_edca_ac_vi_aifsn=5" "$N"
+		append base_cfg "he_mu_edca_ac_vi_aci=2" "$N"
+		append base_cfg "he_mu_edca_ac_vi_timer=255" "$N"
+		append base_cfg "he_mu_edca_ac_vo_aifsn=5" "$N"
+		append base_cfg "he_mu_edca_ac_vo_aci=3" "$N"
+		append base_cfg "he_mu_edca_ac_vo_ecwmin=5" "$N"
+		append base_cfg "he_mu_edca_ac_vo_ecwmax=7" "$N"
+		append base_cfg "he_mu_edca_ac_vo_timer=255" "$N"
+	fi
+
+
+
 	hostapd_prepare_device_config "$hostapd_conf_file" nl80211
 	cat >> "$hostapd_conf_file" <<EOF
 ${channel:+channel=$channel}
@@ -658,8 +771,8 @@ mac80211_setup_supplicant_noctl() {
 
 mac80211_prepare_iw_htmode() {
 	case "$htmode" in
-		VHT20|HT20) iw_htmode=HT20;;
-		HT40*|VHT40|VHT160)
+		VHT20|HT20|HE20) iw_htmode=HT20;;
+		HT40*|VHT40|HE40|VHT160)
 			case "$hwmode" in
 				a)
 					case "$(( ($channel / 4) % 2 ))" in
@@ -683,7 +796,7 @@ mac80211_prepare_iw_htmode() {
 			esac
 			[ "$auto_channel" -gt 0 ] && iw_htmode="HT40+"
 		;;
-		VHT80)
+		VHT80|HE80)
 			iw_htmode="80MHZ"
 		;;
 		NONE|NOHT)
diff --git a/package/kernel/mac80211/files/lib/wifi/mac80211.sh b/package/kernel/mac80211/files/lib/wifi/mac80211.sh
index be9c537926..fc3b43b4c6 100644
--- a/package/kernel/mac80211/files/lib/wifi/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/wifi/mac80211.sh
@@ -80,12 +80,17 @@ detect_mac80211() {
 		htmode=""
 		ht_capab=""
 
-		iw phy "$dev" info | grep -q 'Capabilities:' && htmode=HT20
+		iw phy "$dev" info | grep -q 'Capabilities:' && {
+			htmode=HT20
+			iw phy "$dev" info | grep -q 'HE.*Capabilities' && htmode="HE20"
+		}
 
 		iw phy "$dev" info | grep -q '5180 MHz' && {
 			mode_band="a"
 			channel="36"
+			iw phy "$dev" info | grep -q '5180 MHz.*disabled' && channel=149
 			iw phy "$dev" info | grep -q 'VHT Capabilities' && htmode="VHT80"
+			iw phy "$dev" info | grep -q 'HE.*Capabilities' && htmode="HE80"
 		}
 
 		[ -n "$htmode" ] && ht_capab="set wireless.radio${devidx}.htmode=$htmode"
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
