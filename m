Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4690CFEE55
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 16:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3whgmpCBiFMGco5mCTlCcfjfH4WTdHfnEaYDJE96vno=; b=C/ER4QDVmI9PoVun8XWcO9kej
	CjfqhfEc+2OBSWokffJRXh3FVVrRy0lzkqQW1zBXFPM0KBzV0IaCMLy7fce8bNVVCRKIbUZ3/r7S9
	lPHCnsvBob8h1kOyrJ38/YVlqkpH5qWzdhTkihjmSced+0yYQ86XGMu9gvlZjINeIDOPEbocJmqhc
	yZUHfsMWwaC+MMAYKBGDciwBDblLkwZXTwGfVMUoDLiz7I658PqsYSXRC0Y1dOkjMASgaOh55l+O2
	WvJ9jIajLKgVllaIC0jHbWFNCuJMLk5yQ0K4x5bgKWwdPBye5nr3cnNLrUwxF2iyatyOZhc4LE8mn
	ny2ltQ5Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0Lb-0005Ns-9s; Sat, 16 Nov 2019 15:50:51 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0LL-0005CS-6m
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 15:50:40 +0000
Received: from t480s.lan ([88.152.169.61]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MPp0l-1iAsh410Dr-00Mrmh; Sat, 16 Nov 2019 16:50:29 +0100
Message-ID: <b71a49636a018d29b8b377939abaafca8071bde0.camel@brenken.org>
From: Dirk Brenken <dev@brenken.org>
To: e9hack <e9hack@gmail.com>, daniel@makrotopia.org, 
 openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 16:50:24 +0100
In-Reply-To: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
References: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:yngmoATFQ/h3+7JFC9335vxlmTXxNW98OzrNkncWnZVW+5fWsp5
 Qygz/4JPtrlFshqUFGxj0jyP4wHfK5O3AJ/XJeeWK2+i2mssgUttRpB/bAuYkR15rlbkYHn
 wdZNgR+xzLhcZfBgb05JiFPAMpLkMpm6fHj3U11X7df0oqXH2dbUdDuuNSaWxn0XVKfGg2h
 CGe54nrUs/Sjf24j1X5ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xEVqTUfFb00=:puARSQo+PDoZcvjAo1xZ63
 re8I9bGNHtpzVCjH0Oy89V0z7WUcANnDLmUMIBL4naRdx+TqLhA2u7xGqAeHUa3/HrSf2Acwb
 IJSdY/EI9hj4tmpauEmqSuIk9nniFPprnBVC4yXMmCoobJ9gD87D3a5vlB14+vqlNkBAJSCe1
 wc44Dvx+Yv4cIBwDWCur9DY4Q41ZOK/HYyv8F5/DWxdomaMRt9ammoUGMEMxedKRuWSB/B0JZ
 mpaJ7w3x6kE5gFxafUo1mdcq02pW6x171uWeNHnj12ackRIJ7voCQuUMtFTWuGvPEVq1awzLU
 muymKqdUO8ftUx0VsMdh+QS6q+OWoLMqKfLJHE6/5Nwlnknxl53wozx4BkXLysq4HrJHK0nOK
 +chzMpaiKlH2Xp7RwDOl3feV5V4cxRRxZxG4ZDnnWniEmFXad/2Ah6lIolm1SSJ/IeZlTrlc1
 6vyLoNVl3w0WQY01jh5abNBudjozdbJtmChWLdOvWBPDoYvDv4qUwr//afcgEBel0nuunTSmH
 gFEDDrbpf4/83xGn1amQE7ChZCEo9uvYOqjc18JcUFLVjY88uzde+xUtqOmNbRXU9MaLXRDZv
 SomrfL2UGHEb9eOyLX+HqmRz4N6cYfbseq9CzKuyQxDWeAJYBvE4ybk6WE2r+aSRWvVGP0H0F
 dxGikqWk73K5MfkCEXZKhcZL4x/AZ37lw32mIjQSeA+rk3eoh+selwRwF7cEmN2qeGVPCxEqF
 d836L8zgpt38TiYjSf+FqZ6XYnxb2coOn3R/ZvcybiBvGnPvTa/EE+F19nnPMEqLOwx2pizRs
 lDhdcW8NFYOozuLaCCVZms2sGN/bqv4lPdbVys4IWzzt2bQiC9NlT0uOQ1Ym29meacrZJ9uO7
 NjXjJ9afGhvvrux2FEvg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_075035_705345_3E5D05FE 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Wifi is broken
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
Content-Type: multipart/mixed; boundary="===============4758419367243057808=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4758419367243057808==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-LCSAmUG1rM/hOES8BuDZ"


--=-LCSAmUG1rM/hOES8BuDZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-11-16 at 09:17 +0100, e9hack wrote:
> Hi,
>=20
> this commit
>=20
> commit	000b7687bc50be5b0f1161f4bf8ceb85c495c395
> mac80211: restore mac80211_interface_cleanup()
>=20
> breaks wifi on my tp-link archer C7 router. After update, only the 5G
> wifi will be activated. The 2.4G wifi doesn't start. I try to recover
> from this by shuting down and restart wifi by executing 'wifi down;
> sleep 30; wifi &'. Afterwards, wifi doesn't start anymore. I modify
> mac80211.sh to get some more log entries:
>=20
> diff U3 D:/Download/carambola/mac80211.sh.old
> D:/Download/carambola/mac80211.sh
> --- D:/Download/carambola/mac80211.sh.old	Fri Nov 15 07:52:57
> 2019
> +++ D:/Download/carambola/mac80211.sh	Sat Nov 16 07:46:19 2019
> @@ -810,15 +810,23 @@
>  mac80211_interface_cleanup() {
>  	local phy=3D"$1"
>  	local primary_ap=3D$(uci -q -P /var/state get
> wireless._${phy}.aplist)
> +	logger -t "hostapd-test-1" "primary_ap: '$primary_ap'"
>  	primary_ap=3D${primary_ap%% *}
> +	logger -t "hostapd-test-2" "primary_ap: '$primary_ap'"
> =20
> +	logger -t "hostapd-test-3" "mac80211_vap_cleanup hostapd
> \"${primary_ap}\""
>  	mac80211_vap_cleanup hostapd "${primary_ap}"
> +	logger -t "hostapd-test-4" "mac80211_vap_cleanup wpa_supplicant
> \"$(uci -q -P /var/state get wireless._${phy}.splist)\""
>  	mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get
> wireless._${phy}.splist)"
>  	for wdev in $(list_phy_interfaces "$phy"); do
>  		local wdev_phy=3D"$(readlink
> /sys/class/net/${wdev}/phy80211)"
> +		logger -t "hostapd-test-5" "wdev_phy: '$wdev_phy'"
>  		wdev_phy=3D"$(basename "$wdev_phy")"
> +		logger -t "hostapd-test-6" "wdev_phy: '$wdev_phy' phy:
> '$phy'"
>  		[ -n "$wdev_phy" -a "$wdev_phy" !=3D "$phy" ] && continue
> +		logger -t "hostapd-test-7" "ip link set dev \"$wdev\"
> down 2>/dev/null"
>  		ip link set dev "$wdev" down 2>/dev/null
> +		logger -t "hostapd-test-8" "iw dev \"$wdev\" del"
>  		iw dev "$wdev" del
>  	done
>  }
> =20
> If I disable the ip and iw command in the loop, both wifi does
> start.=20
>=20
> This is stripped log file till the first client is connected to the
> 5G wifi and 2.4G didn't start:
>=20
> Fri Nov 15 07:55:28 2019 kern.notice kernel: [    0.000000] Linux
> version 4.19.82 (I@my-vbox) (gcc version 9.2.0 (OpenWrt GCC 9.2.0
> r11467-3ff3b044c0)) #0 Tue Nov 12 15:43:14 2019
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   24.994537] ath10k 4.19
> driver, optimized for CT firmware, probing pci device: 0x3c.
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   25.003619] ath10k_pci
> 0000:00:00.0: enabling device (0000 -> 0002)
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   25.012275] ath10k_pci
> 0000:00:00.0: pci irq legacy oper_irq_mode 1 irq_mode 0 reset_mode 0
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   25.493698] firmware
> ath10k!fwcfg-pci-0000:00:00.0.txt: firmware_loading_store: map pages
> failed
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   25.816942] firmware
> ath10k!pre-cal-pci-0000:00:00.0.bin: firmware_loading_store: map
> pages failed
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   26.144589] firmware
> ath10k!QCA988X!hw2.0!ct-firmware-5.bin: firmware_loading_store: map
> pages failed
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   26.469953] firmware
> ath10k!QCA988X!hw2.0!ct-firmware-2.bin: firmware_loading_store: map
> pages failed
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   26.796028] firmware
> ath10k!QCA988X!hw2.0!firmware-6.bin: firmware_loading_store: map
> pages failed
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   27.120785] firmware
> ath10k!QCA988X!hw2.0!firmware-5.bin: firmware_loading_store: map
> pages failed
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   27.445941] firmware
> ath10k!QCA988X!hw2.0!firmware-4.bin: firmware_loading_store: map
> pages failed
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   27.773006] firmware
> ath10k!QCA988X!hw2.0!firmware-3.bin: firmware_loading_store: map
> pages failed
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   27.786068] ath10k_pci
> 0000:00:00.0: qca988x hw2.0 target 0x4100016c chip_id 0x043202ff sub
> 0000:0000
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   27.795472] ath10k_pci
> 0000:00:00.0: kconfig debug 0 debugfs 0 tracing 0 dfs 1 testmode 0
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   27.807607] ath10k_pci
> 0000:00:00.0: firmware ver 10.1-ct-8x-__fW-022-64cc8007 api 2
> features wmi-10.x,has-wmi-mgmt-tx,mfp,txstatus-noack,wmi-10.x-
> CT,ratemask-CT,txrate-CT,get-temp-CT,tx-rc-CT,cust-stats-CT,retry-
> gt2-CT,txrate2-CT,beacon-cb-CT,wmi-block-ack-CT crc32 156478f0
> Fri Nov 15 07:55:28 2019 kern.err kernel: [   28.173606] firmware
> ath10k!QCA988X!hw2.0!board-2.bin: firmware_loading_store: map pages
> failed
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   28.182884] ath10k_pci
> 0000:00:00.0: board_file api 1 bmi_id N/A crc32 bebc7c08
> Fri Nov 15 07:55:28 2019 kern.warn kernel: [   29.185196] ath10k_pci
> 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: 127  tid: 256
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.201963] ath10k_pci
> 0000:00:00.0: wmi print 'P 128 V 8 T 410'
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.208264] ath10k_pci
> 0000:00:00.0: wmi print 'msdu-desc: 1424  sw-crypt: 0 ct-sta: 0'
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.216407] ath10k_pci
> 0000:00:00.0: wmi print 'alloc rem: 20904 iram: 26072'
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.266256] ath10k_pci
> 0000:00:00.0: htt-ver 2.1 wmi-op 2 htt-op 2 cal file max-sta 128 raw
> 0 hwcrypto 1
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.279137] ath10k_pci
> 0000:00:00.0: NOTE:  Firmware DBGLOG output disabled in debug_mask:
> 0x10000000
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414157] ath:
> EEPROM regdomain: 0x0
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414164] ath:
> EEPROM indicates default country code should be used
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414167] ath: doing
> EEPROM country->regdmn map search
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414179] ath:
> country maps to regdmn code: 0x3a
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414184] ath:
> Country alpha2 being used: US
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414188] ath:
> Regpair used: 0x3a
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510070] ath:
> EEPROM regdomain: 0x0
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510077] ath:
> EEPROM indicates default country code should be used
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510080] ath: doing
> EEPROM country->regdmn map search
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510093] ath:
> country maps to regdmn code: 0x3a
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510098] ath:
> Country alpha2 being used: US
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510101] ath:
> Regpair used: 0x3a
> Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.527531] ieee80211
> phy1: Selected rate control algorithm 'minstrel_ht'
> Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.528563] ieee80211
> phy1: Atheros AR9550 Rev:0 mem=3D0xb8100000, irq=3D12
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.974052] ath:
> EEPROM regdomain: 0x8114
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.978127] ath:
> EEPROM indicates we should expect a country code
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.984349] ath: doing
> EEPROM country->regdmn map search
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.989734] ath:
> country maps to regdmn code: 0x37
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.994608] ath:
> Country alpha2 being used: DE
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.999114] ath:
> Regpair used: 0x37
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.002664] ath:
> regdomain 0x8114 dynamically updated by user
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.008562] ath:
> EEPROM regdomain: 0x8114
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.012638] ath:
> EEPROM indicates we should expect a country code
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.018822] ath: doing
> EEPROM country->regdmn map search
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.024215] ath:
> country maps to regdmn code: 0x37
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.029074] ath:
> Country alpha2 being used: DE
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.033583] ath:
> Regpair used: 0x37
> Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.037121] ath:
> regdomain 0x8114 dynamically updated by user
> Fri Nov 15 07:55:54 2019 daemon.notice netifd: radio0 (2161): command
> failed: Too many open files in system (-23)
> Fri Nov 15 07:55:54 2019 user.notice mac80211: Failed command: iw phy
> phy0 interface add wlan0 type __ap
> Fri Nov 15 07:55:54 2019 daemon.notice hostapd: Configuration file:
> /var/run/hostapd-phy0.conf (phy wlan0) --> new PHY
> Fri Nov 15 07:55:56 2019 kern.warn kernel: [   62.040719] ath10k_pci
> 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: 127  tid: 256
> Fri Nov 15 07:55:56 2019 kern.info kernel: [   62.057521] ath10k_pci
> 0000:00:00.0: wmi print 'P 128 V 8 T 410'
> Fri Nov 15 07:55:56 2019 kern.info kernel: [   62.063949] ath10k_pci
> 0000:00:00.0: wmi print 'msdu-desc: 1424  sw-crypt: 0 ct-sta: 0'
> Fri Nov 15 07:55:56 2019 kern.info kernel: [   62.072122] ath10k_pci
> 0000:00:00.0: wmi print 'alloc rem: 20904 iram: 26072'
> Fri Nov 15 07:55:57 2019 kern.warn kernel: [   62.163141] ath10k_pci
> 0000:00:00.0: pdev param 0 not supported by firmware
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.182317] IPv6:
> ADDRCONF(NETDEV_UP): wlan0: link is not ready
> Fri Nov 15 07:55:57 2019 daemon.notice netifd: radio1 (2181): command
> failed: Too many open files in system (-23)
> Fri Nov 15 07:55:57 2019 user.notice mac80211: Failed command: iw phy
> phy1 interface add wlan1 type __ap
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.314691] br-lan:
> port 2(wlan0) entered blocking state
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.320087] br-lan:
> port 2(wlan0) entered disabled state
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.325793] device
> wlan0 entered promiscuous mode
> Fri Nov 15 07:55:57 2019 daemon.notice hostapd: Configuration file:
> /var/run/hostapd-phy1.conf (phy wlan1) --> new PHY
> Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan0: interface
> state UNINITIALIZED->COUNTRY_UPDATE
> Fri Nov 15 07:55:57 2019 daemon.notice hostapd: ACS: Automatic
> channel selection started, this may take a bit
> Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan0: interface
> state COUNTRY_UPDATE->ACS
> Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan0: ACS-STARTED
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.502671] IPv6:
> ADDRCONF(NETDEV_UP): wlan1: link is not ready
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.736915] br-lan:
> port 3(wlan1) entered blocking state
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.742354] br-lan:
> port 3(wlan1) entered disabled state
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.748022] device
> wlan1 entered promiscuous mode
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.752922] br-lan:
> port 3(wlan1) entered blocking state
> Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.758309] br-lan:
> port 3(wlan1) entered forwarding state
> Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan1: interface
> state UNINITIALIZED->COUNTRY_UPDATE
> Fri Nov 15 07:55:57 2019 daemon.err hostapd: Using interface wlan1
> with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-01"
> Fri Nov 15 07:55:58 2019 user.notice root: ip link set dev wlan0 up
> Fri Nov 15 07:55:58 2019 user.notice root: ip link set dev wlan0-1 up
> Fri Nov 15 07:55:59 2019 kern.info kernel: [   64.431080] br-lan:
> port 3(wlan1) entered disabled state
> Fri Nov 15 07:55:59 2019 daemon.notice netifd: radio0 (2161): Cannot
> find device "wlan0-1"
> Fri Nov 15 07:55:59 2019 daemon.notice netifd: radio0 (2161):
> Interface 1 setup failed: IFUP_ERROR
> Fri Nov 15 07:55:59 2019 user.notice root: ip link set dev wlan0-2 up
> Fri Nov 15 07:56:00 2019 daemon.notice netifd: radio0 (2161): Cannot
> find device "wlan0-2"
> Fri Nov 15 07:56:00 2019 daemon.notice netifd: radio0 (2161):
> Interface 2 setup failed: IFUP_ERROR
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing noise floor
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing channel time
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is
> missing RX and busy time (at least one is required)
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: ACS-COMPLETED
> freq=3D5580 channel=3D116
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: interface
> state ACS->HT_SCAN
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: interface
> state HT_SCAN->DFS
> Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: DFS-CAC-START
> freq=3D5580 chan=3D116 sec_chan=3D1, width=3D1, seg0=3D122, seg1=3D0,
> cac_time=3D60s
> Fri Nov 15 07:56:27 2019 daemon.notice netifd: radio1 (2181): Command
> failed: Request timed out
> Fri Nov 15 07:56:27 2019 daemon.notice netifd: radio1 (2181): Device
> setup failed: HOSTAPD_START_FAILED
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-1: primary_ap: ''
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-2: primary_ap: ''
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-3:
> mac80211_vap_cleanup hostapd ""
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-4:
> mac80211_vap_cleanup wpa_supplicant ""
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-5: wdev_phy:
> '../../ieee80211/phy1'
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-6: wdev_phy: 'phy1'
> phy: 'phy1'
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-7: ip link set dev
> "wlan1" down 2>/dev/null
> Fri Nov 15 07:56:29 2019 kern.info kernel: [   94.739161] br-lan:
> port 3(wlan1) entered disabled state
> Fri Nov 15 07:56:29 2019 user.notice hostapd-test-8: iw dev "wlan1"
> del
> Fri Nov 15 07:56:29 2019 kern.info kernel: [   95.016035] device
> wlan1 left promiscuous mode
> Fri Nov 15 07:56:29 2019 kern.info kernel: [   95.020554] br-lan:
> port 3(wlan1) entered disabled state
> Sat Nov 16 08:01:59 2019 daemon.notice hostapd: wlan0: DFS-CAC-
> COMPLETED success=3D1 freq=3D5580 ht_enabled=3D0 chan_offset=3D0 chan_wid=
th=3D3
> cf1=3D5610 cf2=3D0
> Sat Nov 16 08:01:59 2019 daemon.err hostapd: Using interface wlan0
> with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-02"
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.076820] IPv6:
> ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.083515] br-lan:
> port 2(wlan0) entered blocking state
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.088906] br-lan:
> port 2(wlan0) entered forwarding state
> Sat Nov 16 08:02:00 2019 daemon.notice netifd: Network device 'wlan0'
> link is up
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.122541] br-xxx:
> port 1(wlan0-1) entered blocking state
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.128109] br-xxx:
> port 1(wlan0-1) entered disabled state
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.134009] device
> wlan0-1 entered promiscuous mode
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.198674] IPv6:
> ADDRCONF(NETDEV_UP): wlan0-1: link is not ready
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.204996] br-xxx:
> port 1(wlan0-1) entered blocking state
> Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.210565] br-xxx:
> port 1(wlan0-1) entered forwarding state
> Sat Nov 16 08:02:00 2019 daemon.err hostapd: Using interface wlan0-1
> with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-03"
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.551443] IPv6:
> ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes ready
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.581574] br-lan:
> port 3(wlan0-2) entered blocking state
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.587332] br-lan:
> port 3(wlan0-2) entered disabled state
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.593255] device
> wlan0-2 entered promiscuous mode
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.631446] IPv6:
> ADDRCONF(NETDEV_UP): wlan0-2: link is not ready
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.637662] br-lan:
> port 3(wlan0-2) entered blocking state
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.643251] br-lan:
> port 3(wlan0-2) entered forwarding state
> Sat Nov 16 08:02:01 2019 daemon.err hostapd: Using interface wlan0-2
> with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-01"
> Sat Nov 16 08:02:01 2019 kern.info kernel: [  138.081336] br-lan:
> port 3(wlan0-2) entered disabled state
> Sat Nov 16 08:03:55 2019 daemon.err hostapd: Failed to set beacon
> parameters
> Sat Nov 16 08:03:55 2019 daemon.warn hostapd: wlan1: Could not
> connect to kernel driver
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: Interface initialization
> failed
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1: interface
> state COUNTRY_UPDATE->DISABLED
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1: AP-DISABLED
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: wlan1: Unable to setup
> interface.
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: nl80211: deinit
> ifname=3Dwlan1 disabled_11b_rates=3D0
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: nl80211: Failed to
> remove interface wlan1 from bridge br-lan: No such device
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: Could not read interface
> wlan1 flags: No such device
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1: CTRL-EVENT-
> TERMINATING
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data:
> Interface wlan1 wasn't started
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-1: CTRL-EVENT-
> TERMINATING
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data:
> Interface wlan1-1 wasn't started
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-2: CTRL-EVENT-
> TERMINATING
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data:
> Interface wlan1-2 wasn't started
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-3: CTRL-EVENT-
> TERMINATING
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data:
> Interface wlan1-3 wasn't started
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-4: CTRL-EVENT-
> TERMINATING
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data:
> Interface wlan1-4 wasn't started
> Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-5: CTRL-EVENT-
> TERMINATING
> Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data:
> Interface wlan1-5 wasn't started
> Sat Nov 16 08:04:18 2019 kern.info kernel: [  274.841981] IPv6:
> ADDRCONF(NETDEV_CHANGE): wlan0-2: link becomes ready
> Sat Nov 16 08:04:18 2019 kern.info kernel: [  274.848883] br-lan:
> port 3(wlan0-2) entered blocking state
> Sat Nov 16 08:04:18 2019 kern.info kernel: [  274.854491] br-lan:
> port 3(wlan0-2) entered forwarding state
> Sat Nov 16 08:04:18 2019 daemon.notice hostapd: wlan0: interface
> state DFS->ENABLED
> Sat Nov 16 08:04:18 2019 daemon.notice hostapd: wlan0: AP-ENABLED
> Sat Nov 16 08:04:25 2019 daemon.info hostapd: wlan0-2: STA
> xx:xx:xx:xx:xx:xx IEEE 802.11: authenticated
> Sat Nov 16 08:04:25 2019 daemon.info hostapd: wlan0-2: STA
> xx:xx:xx:xx:xx:xx IEEE 802.11: associated (aid 1)
> Sat Nov 16 08:04:25 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-
> EAP-STARTED xx:xx:xx:xx:xx:xx
> Sat Nov 16 08:04:25 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-
> EAP-PROPOSED-METHOD vendor=3D0 method=3D1
> Sat Nov 16 08:04:28 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-
> EAP-RETRANSMIT xx:xx:xx:xx:xx:xx
> Sat Nov 16 08:04:28 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-
> EAP-PROPOSED-METHOD vendor=3D0 method=3D25
> Sat Nov 16 08:04:31 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-
> EAP-RETRANSMIT xx:xx:xx:xx:xx:xx
> Sat Nov 16 08:04:31 2019 daemon.notice hostapd: EAP-PEAP: TLV Result
> - Success - requested Success
> Sat Nov 16 08:04:31 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-
> EAP-SUCCESS xx:xx:xx:xx:xx:xx
> Sat Nov 16 08:04:31 2019 daemon.info hostapd: wlan0-2: STA
> xx:xx:xx:xx:xx:xx WPA: pairwise key handshake completed (RSN)
> Sat Nov 16 08:04:31 2019 daemon.notice hostapd: wlan0-2: AP-STA-
> CONNECTED xx:xx:xx:xx:xx:xx
> Sat Nov 16 08:04:31 2019 daemon.info hostapd: wlan0-2: STA
> xx:xx:xx:xx:xx:xx RADIUS: starting accounting session
> 9A799A3ABAF7BA35
> Sat Nov 16 08:04:31 2019 daemon.info hostapd: wlan0-2: STA
> xx:xx:xx:xx:xx:xx IEEE 802.1X: authenticated - EAP type: 0 (unknown)
>=20
> Regards,
> Hartmut
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
>=20
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
>=20

Same symptoms here with a GL-AR300M (single radio 2.4G, travel router)
and travelmate.

Regards,
Dirk
=20

--=-LCSAmUG1rM/hOES8BuDZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvk9F2uJ4OsaK+T5unXHNVHv65oQFAl3QGsAACgkQnXHNVHv6
5oRYPxAAjv51ePkvhyShGhYZ3uGgwO5Z5bEv4snlngcCWzAK2UrBSVJdV14nBGz6
wyDhtfyEN0hXq5WsMCLxVjqR0AikWBrvXCf9NadJG4NM9/lVK8xKz2cnvtbmSSfA
4wrrkyMX3V3yieAJ9C+UtX4ulmAlnjKlXnGsga54+r1gpYID/dUQ3stl1UmF5rQm
ecmMCFwCUWuT7deq/rDLLcqIX8NCLxvAziIVq8ABas3m3wGfPnSBX8Y7GfXaqMtu
+ydjU/e4FC5Qxmqr1/Az1S+ZS27txloLdSR4FFaFl05vmibA7r5Fjsp20wncE7pc
puNI6PGyhFa//T1HrbaYBgRyzZ3tIigV97U/QegsOLGSjbn306rQmy26xF8OWeu0
qjjl40ESChlCVgTa9oErg7jOSyUCe0/vnuWrnG0rVohfWyRG2sDr8MHL6BgvnLVW
Ej+JppiuadCIT/19G20hYA2jLtneTBG0n/Z9e4aJrY+YZs9a+5fU3ZqOofDgnELQ
5RyXxZrjL94R23QcL7/f1tmfUne28Nwdm7NP7lPE9rjlkdgC9N928x7fWykEflzD
iqRLSTNgTCDJdFbp9tB0VUvsfuFRoQTYy0Y63xQrdaSHfcwJkJL2XiD6svKWPebe
LLomaBtNqvQNN9mCw6B1C30XxSPR7If3eL5Spob10kNoUoV9RfI=
=PWtb
-----END PGP SIGNATURE-----

--=-LCSAmUG1rM/hOES8BuDZ--



--===============4758419367243057808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4758419367243057808==--


