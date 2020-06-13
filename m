Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78161F8499
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 20:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rQRhjebHe2Muu5bmKwo/S3a55R6oP54JL72dJXKJAek=; b=JVHVo2DiHArRIsqxtReSPIkOr
	f1/stcDzySYDOcfrFKhWGKTpjQ/vJ5Jft6aDJlnI3hK4MQBJPOf71qZb3Djd/8LqyB5hm+qaviBCb
	KSnowhMQmzuW5hCYkRZbjpkyPsrvldf/fIkEguQ4oVhZrzgtLri5+Xj3zKIdDXwZZsVjGcKT2pc/I
	/ArPFl59hJzx0X4R37aAj+qnq305/e0kd6XwMIR5is/176XnJFoyzvENU8W4va9cDoK0v+o6KWW10
	dagOwyVn6gbSFjJG09caKrbz2bBIcN9r3w3re9a2SreYo6CB6mi3FnOHMSAFaBI8X1a9rh5X8xXmD
	IfW0vJeDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkAyY-00052j-31; Sat, 13 Jun 2020 18:33:54 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkAyQ-00052C-Lk
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 18:33:48 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MzQXu-1ixy8j2S1o-00vSZp; Sat, 13 Jun 2020 20:33:41 +0200
From: <mail@adrianschmutzler.de>
To: "'John Crispin'" <john@phrozen.org>,
	<openwrt-devel@lists.openwrt.org>
References: <20200613163700.10091-1-john@phrozen.org>
 <20200613163700.10091-2-john@phrozen.org>
In-Reply-To: <20200613163700.10091-2-john@phrozen.org>
Date: Sat, 13 Jun 2020 20:33:40 +0200
Message-ID: <002e01d641b1$298c5d90$7ca518b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKEVSy39KMPPrMVS+IISGfQXCJocwFImniZp3By5xA=
Content-Language: de
X-Provags-ID: V03:K1:1jt/SUC8hPc3bea3bDhZbrtKtej9uPtT8ctnhedBj9DUZM5kpwa
 mNoHmhTFyWcabrMxbmI485LA1Erg7fRiFX1L5E8HypalPsa9X8vWXFEqV5E1GQiZ5668Wtk
 65jNNmMinrCMX/EYdoVIt3ALP4FMpWX9Z60Z0FHqthe8BIX1E2MQu2jDzqJ10KQDi/c9zyF
 QqyfMn4Jq3eozzDfKRZDA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TBMJ3zQcq7Y=:uuqIWbp2TfwIfT8POGxIbO
 gNEs12GamuHZTuOsbFYSGwuaaPVOK0U0DHGkcvLHY2rD6auj1EqjRE+4dlJ6sjGBXnBOnM4I+
 wmD9DHHqz6bibaYgrF2ea4W5iBrRYcH1VBnDPX2v0lB0lrbVZ4DjafjKF05OFcFIam3An7hkZ
 vi1hFLRrStQUEC9AMQq/kyTJPBlorTUbFzze+Ptdx4zN7xJxUz1GyyUlM9gTP5CPaLtXG/uYF
 hmU/wpiiXxc+qvM6DKkrQgeHSGIu6QodfRgrNsZpKgWpma6pUwQoaAq7jyzpSp2Wzf8G/PM35
 OU9Kx/WlX93ov88LTO9CyMLECdTOxkjpISJxATdMQWeqTFjJw8ysaSSoYMrl8SCT+ow8NBhf1
 wVQaTh3xTtrf69MVxlBrjhmDumGGc+BH6ROvXdRQbduETBYnU8MIRVBqTM+wH77/2GvWuD+5L
 weBvvusDhtrjHE1xDauq5Ok8sSsE01E6DmvE5jYVT9T0JayaHj9cVUgnO+lkXVfrLI+alPmG6
 8D60lF9t3POXsPg7+GJAsHS1VvQy9eP+ZnaIwsvbU0QVPr/XOKdc3IS/VNWjCoSoZZ72IsUXS
 LCRh3e4MSRn+UEJMAb0PptBsTnmBb5gCXpSvaM2ztr1HILlrvtZtSVKnFOqosk2xBVctELut8
 V1qfX40XXf0RjLLB+VaYNq1Pd4v5+ogAmK+JjU1fRbanDYVs6EvWozSZRBrjZEPVAJ8dnST+d
 icDhP5IefUjnQOt6tPM5bnL3MvucRzWn8/r5/GIMJhA9LHwG0i7Xf4q6b43JFBHv6wKWfw+hz
 LWJQswqbStlD7/oPVIFrLfJ0j2AoEnxGP4XEsUGE6WyCjrtZT8oUsMfmFTFphYUpMx8jJJn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_113347_003612_73CBB06F 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] mac80211: add 11AX script support
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
Content-Type: multipart/mixed; boundary="===============4462874574213042541=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4462874574213042541==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=4lfdUL8W1F7TNJ=-="

This is a multipart message in MIME format.

--=-=4lfdUL8W1F7TNJ=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of John Crispin
> Sent: Samstag, 13. Juni 2020 18:37
> To: openwrt-devel@lists.openwrt.org
> Cc: John Crispin <john@phrozen.org>
> Subject: [OpenWrt-Devel] [PATCH 2/2] mac80211: add 11AX script support
> 
> Signed-off-by: John Crispin <john@phrozen.org>
> ---
>  .../files/lib/netifd/wireless/mac80211.sh     | 131 ++++++++++++++++--
>  .../mac80211/files/lib/wifi/mac80211.sh       |   7 +-
>  2 files changed, 128 insertions(+), 10 deletions(-)
> 
> diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> index 4171af2f60..79f38eca8f 100644
> --- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> +++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> @@ -55,6 +55,12 @@ drv_mac80211_init_device_config() {
>  		short_gi_40 \
>  		max_amsdu \
>  		dsss_cck_40
> +	config_add_int \
> +		he_su_beamformer:1 \
> +                he_su_beamformee:0 \
> +                he_mu_beamformer:1 \
> +                he_twt_required:0 \
> +                he_spr_sr_control:0

There seem to be some indent problems here and ...

>  }
> 
>  drv_mac80211_init_iface_config() {
> @@ -95,6 +101,20 @@ mac80211_add_capabilities() {
>  	export -n -- "$__var=$__out"
>  }
> 
> +mac80211_add_he_capabilities() {
> +	local __out= oifs
> +
> +	oifs="$IFS"
> +	IFS=:
> +	for capab in "$@"; do
> +		set -- $capab
> +		[ "$(($4))" -gt 0 ] || continue
> +		[ "$(((0x$2) & $3))" -gt 0 ] || continue
> +		append base_cfg "$1=1" "$N"
> +	done
> +	IFS="$oifs"
> +}
> +
>  mac80211_hostapd_setup_base() {
>  	local phy="$1"
> 
> @@ -118,8 +138,8 @@ mac80211_hostapd_setup_base() {
>  	ieee80211n=1
>  	ht_capab=
>  	case "$htmode" in
> -		VHT20|HT20) ;;
> -		HT40*|VHT40|VHT80|VHT160)
> +		VHT20|HT20|HE20) ;;
> +		HT40*|VHT40|HE40|VHT80|HE80|VHT160|HE160)
>  			case "$hwmode" in
>  				a)
>  					case "$(( ($channel / 4) % 2 ))" in @@ -
> 191,8 +211,8 @@ mac80211_hostapd_setup_base() {
>  	enable_ac=0
>  	idx="$channel"
>  	case "$htmode" in
> -		VHT20) enable_ac=1;;
> -		VHT40)
> +		VHT20|HE20) enable_ac=1;;
> +		VHT40|HE40)
>  			case "$(( ($channel / 4) % 2 ))" in
>  				1) idx=$(($channel + 2));;
>  				0) idx=$(($channel - 2));;
> @@ -201,7 +221,7 @@ mac80211_hostapd_setup_base() {
>  			append base_cfg "vht_oper_chwidth=0" "$N"
>  			append base_cfg
> "vht_oper_centr_freq_seg0_idx=$idx" "$N"
>  		;;
> -		VHT80)
> +		VHT80|HE80)
>  			case "$(( ($channel / 4) % 4 ))" in
>  				1) idx=$(($channel + 6));;
>  				2) idx=$(($channel + 2));;
> @@ -212,7 +232,7 @@ mac80211_hostapd_setup_base() {
>  			append base_cfg "vht_oper_chwidth=1" "$N"
>  			append base_cfg
> "vht_oper_centr_freq_seg0_idx=$idx" "$N"
>  		;;
> -		VHT160)
> +		VHT160|HE160)
>  			case "$channel" in
>  				36|40|44|48|52|56|60|64) idx=50;;
>  				100|104|108|112|116|120|124|128) idx=114;;
> @@ -320,6 +340,99 @@ mac80211_hostapd_setup_base() {
>  		[ -n "$vht_capab" ] && append base_cfg
> "vht_capab=$vht_capab" "$N"
>  	fi
> 
> +	# 802.11ax
> +	enable_ax=0
> +	idx="$channel"
> +	case "$htmode" in
> +		HE20)   enable_ax=1;;
> +		HE40)
> +			case "$(( ($channel / 4) % 2 ))" in
> +				1) idx=$(($channel + 2));;
> +				0) idx=$(($channel - 2));;
> +			esac
> +			enable_ax=1
> +			if [ $channel -ge 36 ]; then
> +				append base_cfg "he_oper_chwidth=0" "$N"
> +				append base_cfg
> "he_oper_centr_freq_seg0_idx=$idx" "$N"
> +			fi
> +			;;
> +		HE80)
> +			case "$(( ($channel / 4) % 4 ))" in
> +				1) idx=$(($channel + 6));;
> +				2) idx=$(($channel + 2));;
> +				3) idx=$(($channel - 2));;
> +				0) idx=$(($channel - 6));;
> +			esac
> +			enable_ax=1
> +			append base_cfg "he_oper_chwidth=1" "$N"
> +			append base_cfg
> "he_oper_centr_freq_seg0_idx=$idx" "$N"
> +			;;
> +		HE160)
> +			case "$channel" in
> +				36|40|44|48|52|56|60|64) idx=50;;
> +				100|104|108|112|116|120|124|128) idx=114;;
> +			esac
> +			enable_ax=1
> +			append base_cfg "he_oper_chwidth=2" "$N"
> +			append base_cfg
> "he_oper_centr_freq_seg0_idx=$idx" "$N"
> +			;;
> +	esac
> +
> +	if [ "$enable_ax" != "0" ]; then
> +		json_get_vars \
> +			he_su_beamformer:1 \
> +			he_su_beamformee:0 \
> +			he_mu_beamformer:1 \
> +			he_twt_required:0 \
> +			he_spr_sr_control:0
> +
> +		append base_cfg "ieee80211ax=1" "$N"
> +		he_phy_cap=$(iw phy "$phy" info | awk -F "[()]" '/HE PHY
> Capabilities/ { print $2 }' | head -1)
> +		he_phy_cap=${he_phy_cap:2}
> +		he_mac_cap=$(iw phy "$phy" info | awk -F "[()]" '/HE MAC
> Capabilities/ { print $2 }' | head -1)
> +		he_mac_cap=${he_mac_cap:2}
> +
> +		mac80211_add_he_capabilities \
> +
> 	he_su_beamformer:${he_phy_cap:6:2}:0x80:$he_su_beamformer \
> +
> 	he_su_beamformee:${he_phy_cap:8:2}:0x1:$he_su_beamformee \
> +
> 	he_mu_beamformer:${he_phy_cap:8:2}:0x2:$he_mu_beamformer
> \
> +
> 	he_spr_sr_control:${he_phy_cap:14:2}:0x1:$he_spr_sr_control \
> +
> 	he_twt_required:${he_mac_cap:0:2}:0x6:$he_twt_required \

... here a single additional tab would be enough.

Best

Adrian

> +
> +		bsscolor=$(head -1 /dev/urandom | tr -dc '0-9' | head -c2)
> +		bsscolor=$(($bsscolor + 1))
> +		bsscolor=$(($bsscolor % 63))
> +
> +		append base_cfg "he_bss_color=$bsscolor" "$N"
> +		append base_cfg "he_default_pe_duration=4" "$N"
> +		append base_cfg "he_mu_edca_qos_info_param_count=0"
> "$N"
> +		append base_cfg "he_mu_edca_qos_info_q_ack=0" "$N"
> +		append base_cfg
> "he_mu_edca_qos_info_queue_request=0" "$N"
> +		append base_cfg "he_mu_edca_qos_info_txop_request=0"
> "$N"
> +		append base_cfg "he_mu_edca_ac_be_aifsn=8" "$N"
> +		append base_cfg "he_mu_edca_ac_be_aci=0" "$N"
> +		append base_cfg "he_mu_edca_ac_be_ecwmin=9" "$N"
> +		append base_cfg "he_mu_edca_ac_be_ecwmax=10" "$N"
> +		append base_cfg "he_mu_edca_ac_be_timer=255" "$N"
> +		append base_cfg "he_mu_edca_ac_bk_aifsn=15" "$N"
> +		append base_cfg "he_mu_edca_ac_bk_aci=1" "$N"
> +		append base_cfg "he_mu_edca_ac_bk_ecwmin=9" "$N"
> +		append base_cfg "he_mu_edca_ac_bk_ecwmax=10" "$N"
> +		append base_cfg "he_mu_edca_ac_bk_timer=255" "$N"
> +		append base_cfg "he_mu_edca_ac_vi_ecwmin=5" "$N"
> +		append base_cfg "he_mu_edca_ac_vi_ecwmax=7" "$N"
> +		append base_cfg "he_mu_edca_ac_vi_aifsn=5" "$N"
> +		append base_cfg "he_mu_edca_ac_vi_aci=2" "$N"
> +		append base_cfg "he_mu_edca_ac_vi_timer=255" "$N"
> +		append base_cfg "he_mu_edca_ac_vo_aifsn=5" "$N"
> +		append base_cfg "he_mu_edca_ac_vo_aci=3" "$N"
> +		append base_cfg "he_mu_edca_ac_vo_ecwmin=5" "$N"
> +		append base_cfg "he_mu_edca_ac_vo_ecwmax=7" "$N"
> +		append base_cfg "he_mu_edca_ac_vo_timer=255" "$N"
> +	fi
> +
> +
> +
>  	hostapd_prepare_device_config "$hostapd_conf_file" nl80211
>  	cat >> "$hostapd_conf_file" <<EOF
>  ${channel:+channel=$channel}
> @@ -658,8 +771,8 @@ mac80211_setup_supplicant_noctl() {
> 
>  mac80211_prepare_iw_htmode() {
>  	case "$htmode" in
> -		VHT20|HT20) iw_htmode=HT20;;
> -		HT40*|VHT40|VHT160)
> +		VHT20|HT20|HE20) iw_htmode=HT20;;
> +		HT40*|VHT40|HE40|VHT160)
>  			case "$hwmode" in
>  				a)
>  					case "$(( ($channel / 4) % 2 ))" in @@ -
> 683,7 +796,7 @@ mac80211_prepare_iw_htmode() {
>  			esac
>  			[ "$auto_channel" -gt 0 ] && iw_htmode="HT40+"
>  		;;
> -		VHT80)
> +		VHT80|HE80)
>  			iw_htmode="80MHZ"
>  		;;
>  		NONE|NOHT)
> diff --git a/package/kernel/mac80211/files/lib/wifi/mac80211.sh
> b/package/kernel/mac80211/files/lib/wifi/mac80211.sh
> index be9c537926..fc3b43b4c6 100644
> --- a/package/kernel/mac80211/files/lib/wifi/mac80211.sh
> +++ b/package/kernel/mac80211/files/lib/wifi/mac80211.sh
> @@ -80,12 +80,17 @@ detect_mac80211() {
>  		htmode=""
>  		ht_capab=""
> 
> -		iw phy "$dev" info | grep -q 'Capabilities:' && htmode=HT20
> +		iw phy "$dev" info | grep -q 'Capabilities:' && {
> +			htmode=HT20
> +			iw phy "$dev" info | grep -q 'HE.*Capabilities' &&
> htmode="HE20"
> +		}
> 
>  		iw phy "$dev" info | grep -q '5180 MHz' && {
>  			mode_band="a"
>  			channel="36"
> +			iw phy "$dev" info | grep -q '5180 MHz.*disabled' &&
> channel=149
>  			iw phy "$dev" info | grep -q 'VHT Capabilities' &&
> htmode="VHT80"
> +			iw phy "$dev" info | grep -q 'HE.*Capabilities' &&
> htmode="HE80"
>  		}
> 
>  		[ -n "$htmode" ] && ht_capab="set
> wireless.radio${devidx}.htmode=$htmode"
> --
> 2.25.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=4lfdUL8W1F7TNJ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7lHAEACgkQoNyKO7qx
AnAVtQ//b9tyVFNwac7MPFQ013XCXgsY2QlxWhVnr/qt7sQnxk038q+SbgBhNqgY
CxjdHUr6s3o9QNo3PZYBDd96koxYVrURc0izAN/rIkegcT4tC2TxPbb5GmhTlYTN
wPCSFhfvVqehI0Pi7/8s1Wc7Qr2fBIjYfp6UWHSmySoxUziQnXWKkChsDfer3nkt
MKunW0Ji8fY5PTTD77CWKCuB2+1PE8G5NSIUAJPgebf0AjBy9eJ0UKN2rMDgteMX
uFiqto5I3hriiNvpF15Z6zxxPZYMivuVdKxvCIumL3o+yMkvAjU7eqz/BgEMcDDN
zais3gqS0OzgueVUXxYqquq2Z8M0VHtfB4aCywGPLT69qV8UaEHpl6iu7O+zJEUV
5B83UH/heBUkJVxQ9kEt7VDUdnZNWTX0oC0KqfgI2TtoSSlJc1ap68LQU+NNHNqr
ulDg7sedpxX510qXDUJJ7NbcLgvfiUA2qOEOAGQHFv8xaZyMMuJDmlDuXs0fvsLN
Iqs3ol2mCYANKTSCZpAvoXx2Rx7OR5ssBuwj7lgk5xgyKI188JYKf85nKdhw3JIu
SSrl4wAN5LCtJFclH56dvqFKoeqPGxkvtPCrOuogaF+9Kvr8ErHN8fNX+ohPzQsJ
2pKceBXV8PME+4gQnnEasrdLT3+5eAh4ZJARknxGUeEcV79x5Sg=
=n+M/
-----END PGP SIGNATURE-----


--=-=4lfdUL8W1F7TNJ=-=--



--===============4462874574213042541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4462874574213042541==--


