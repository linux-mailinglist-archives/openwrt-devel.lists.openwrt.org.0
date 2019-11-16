Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EA5FEB3C
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 09:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fNxuqXU4iLA64vgmWDfbbSGuaZf8ULTXYMz9YC4bZZg=; b=HY+TQsYWpABt4T
	GXg9SvnGouft6OzkilH+YsBCf44YhDhOd3uul2Y7+JOKuSqy10nHnHYTIP8Txnip3f0g9523xuXpV
	g7OOaGHEr5PtK/FeF6BRXoeP5IDeFxZD5SftK2X0FgftNt3f4UIkm6E+aX7btFuUPG5IpsyDZ0fnn
	sZrqKVA1B8BTXdtW/icw6xKwUo99ZMln7MvB0wR0By9k3+WoUnzY14HJgh8i69Xtk6KdYDnU01mhX
	E2c2m+T1c2i4OuNVgzoQgl8M7zNwwwMnRpLdkqokbvAubN5YgAY+SaYwOv+7S9n07rWXFSV8mRR+M
	vRaC7KwsYNHbS7nYd2+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVtGn-0007fv-G2; Sat, 16 Nov 2019 08:17:25 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVtGc-0007fS-41
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 08:17:16 +0000
Received: by mail-wr1-x435.google.com with SMTP id z10so13393357wrs.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 00:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=pKfOLIgxN0SPK27K0qDlqAIZyRuWMw3S889A91sdnwg=;
 b=RagFtEtUqGdY2aqjyEf6AwH22QnPJg7YgVhKAPTrEcmglRf+eXSwVbxUanOBnI1OBL
 1DhZYI0cwQxNalqISvfYgQR5eVA26zjDarrbrbKvDLdRaeDblXwvxZSB0yqsc21/BqBb
 MffrESleag4WKuNDndDoCmVg6Xhm+lU9jMcguaHGMXu3RWag7zzhXNWeQaEpkum6wR4Z
 9C3CUk4a+VuIS+wWHRzJULo/C0Nh+oZm9daV6c0goaIX++WqeSaeFzRNWcbPJfFTIluf
 WbpPp31D3P4XgH4ekBUsx7kmlrPPdkuZEXRGFKIAos564pQTbRmn5VztC+Dvk4+101bU
 Xgyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=pKfOLIgxN0SPK27K0qDlqAIZyRuWMw3S889A91sdnwg=;
 b=Ih0J393bzSDcdz3/KounqsvN0VTx5OgdZjLvvzv5j2OHCtULDdzLXXUlC1XDbVAzbD
 tn55Ksb/TjrPA0rkC1o7QZZ0d5Dg1HjHLylm+8h63XPQuaK+wd4kRJukikVeKQu6tMMF
 maRY4177eglr02BH5XA1+13ce+RaqkG99InAHBnJO8V8lMq7eUrpVNAHLWbTGrzRMTz7
 Rl7GdxhFqLWtiMgE9YOaNco72UXtTmY/lFykj2tscpFYba0MZNr2hcuON4YpNxDXVagZ
 7WL2B2k+rFwXq1eZElvxZ9/S1MQQnmJFtRe9npWnjMOaY4eQff5rROFRMbAJYGkMisD1
 8lVw==
X-Gm-Message-State: APjAAAUz+1wx0SMWbUxcBYDfVv83+7IX0deNvvPLVJOmNNjdw1eHA1Ve
 kP5H0AeahhWCtXJe9WmJtAe71e4AfH8=
X-Google-Smtp-Source: APXvYqyJXx/3t5HqZv04LNAo/X4RdIIIpPN5KDq1K1ev9182VFGYmMKX+KDtIb862dZ7XYndgaDkuw==
X-Received: by 2002:a5d:40d0:: with SMTP id b16mr7025228wrq.232.1573892230656; 
 Sat, 16 Nov 2019 00:17:10 -0800 (PST)
Received: from localhost
 (p200300F66719C8AC6060E26ADB6A8D0B.dip0.t-ipconnect.de.
 [2003:f6:6719:c8ac:6060:e26a:db6a:8d0b])
 by smtp.gmail.com with ESMTPSA id m13sm12432573wmc.41.2019.11.16.00.17.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Nov 2019 00:17:10 -0800 (PST)
From: e9hack <e9hack@gmail.com>
To: daniel@makrotopia.org, openwrt-devel@lists.openwrt.org
Message-ID: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
Date: Sat, 16 Nov 2019 09:17:08 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_001714_168513_8BD86F5C 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Wifi is broken
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

Hi,

this commit

commit	000b7687bc50be5b0f1161f4bf8ceb85c495c395
mac80211: restore mac80211_interface_cleanup()

breaks wifi on my tp-link archer C7 router. After update, only the 5G wifi will be activated. The 2.4G wifi doesn't start. I try to recover from this by shuting down and restart wifi by executing 'wifi down; sleep 30; wifi &'. Afterwards, wifi doesn't start anymore. I modify mac80211.sh to get some more log entries:

diff U3 D:/Download/carambola/mac80211.sh.old D:/Download/carambola/mac80211.sh
--- D:/Download/carambola/mac80211.sh.old	Fri Nov 15 07:52:57 2019
+++ D:/Download/carambola/mac80211.sh	Sat Nov 16 07:46:19 2019
@@ -810,15 +810,23 @@
 mac80211_interface_cleanup() {
 	local phy="$1"
 	local primary_ap=$(uci -q -P /var/state get wireless._${phy}.aplist)
+	logger -t "hostapd-test-1" "primary_ap: '$primary_ap'"
 	primary_ap=${primary_ap%% *}
+	logger -t "hostapd-test-2" "primary_ap: '$primary_ap'"
 
+	logger -t "hostapd-test-3" "mac80211_vap_cleanup hostapd \"${primary_ap}\""
 	mac80211_vap_cleanup hostapd "${primary_ap}"
+	logger -t "hostapd-test-4" "mac80211_vap_cleanup wpa_supplicant \"$(uci -q -P /var/state get wireless._${phy}.splist)\""
 	mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._${phy}.splist)"
 	for wdev in $(list_phy_interfaces "$phy"); do
 		local wdev_phy="$(readlink /sys/class/net/${wdev}/phy80211)"
+		logger -t "hostapd-test-5" "wdev_phy: '$wdev_phy'"
 		wdev_phy="$(basename "$wdev_phy")"
+		logger -t "hostapd-test-6" "wdev_phy: '$wdev_phy' phy: '$phy'"
 		[ -n "$wdev_phy" -a "$wdev_phy" != "$phy" ] && continue
+		logger -t "hostapd-test-7" "ip link set dev \"$wdev\" down 2>/dev/null"
 		ip link set dev "$wdev" down 2>/dev/null
+		logger -t "hostapd-test-8" "iw dev \"$wdev\" del"
 		iw dev "$wdev" del
 	done
 }
 
If I disable the ip and iw command in the loop, both wifi does start. 

This is stripped log file till the first client is connected to the 5G wifi and 2.4G didn't start:

Fri Nov 15 07:55:28 2019 kern.notice kernel: [    0.000000] Linux version 4.19.82 (I@my-vbox) (gcc version 9.2.0 (OpenWrt GCC 9.2.0 r11467-3ff3b044c0)) #0 Tue Nov 12 15:43:14 2019
Fri Nov 15 07:55:28 2019 kern.info kernel: [   24.994537] ath10k 4.19 driver, optimized for CT firmware, probing pci device: 0x3c.
Fri Nov 15 07:55:28 2019 kern.info kernel: [   25.003619] ath10k_pci 0000:00:00.0: enabling device (0000 -> 0002)
Fri Nov 15 07:55:28 2019 kern.info kernel: [   25.012275] ath10k_pci 0000:00:00.0: pci irq legacy oper_irq_mode 1 irq_mode 0 reset_mode 0
Fri Nov 15 07:55:28 2019 kern.err kernel: [   25.493698] firmware ath10k!fwcfg-pci-0000:00:00.0.txt: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.err kernel: [   25.816942] firmware ath10k!pre-cal-pci-0000:00:00.0.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.err kernel: [   26.144589] firmware ath10k!QCA988X!hw2.0!ct-firmware-5.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.err kernel: [   26.469953] firmware ath10k!QCA988X!hw2.0!ct-firmware-2.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.err kernel: [   26.796028] firmware ath10k!QCA988X!hw2.0!firmware-6.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.err kernel: [   27.120785] firmware ath10k!QCA988X!hw2.0!firmware-5.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.err kernel: [   27.445941] firmware ath10k!QCA988X!hw2.0!firmware-4.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.err kernel: [   27.773006] firmware ath10k!QCA988X!hw2.0!firmware-3.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.info kernel: [   27.786068] ath10k_pci 0000:00:00.0: qca988x hw2.0 target 0x4100016c chip_id 0x043202ff sub 0000:0000
Fri Nov 15 07:55:28 2019 kern.info kernel: [   27.795472] ath10k_pci 0000:00:00.0: kconfig debug 0 debugfs 0 tracing 0 dfs 1 testmode 0
Fri Nov 15 07:55:28 2019 kern.info kernel: [   27.807607] ath10k_pci 0000:00:00.0: firmware ver 10.1-ct-8x-__fW-022-64cc8007 api 2 features wmi-10.x,has-wmi-mgmt-tx,mfp,txstatus-noack,wmi-10.x-CT,ratemask-CT,txrate-CT,get-temp-CT,tx-rc-CT,cust-stats-CT,retry-gt2-CT,txrate2-CT,beacon-cb-CT,wmi-block-ack-CT crc32 156478f0
Fri Nov 15 07:55:28 2019 kern.err kernel: [   28.173606] firmware ath10k!QCA988X!hw2.0!board-2.bin: firmware_loading_store: map pages failed
Fri Nov 15 07:55:28 2019 kern.info kernel: [   28.182884] ath10k_pci 0000:00:00.0: board_file api 1 bmi_id N/A crc32 bebc7c08
Fri Nov 15 07:55:28 2019 kern.warn kernel: [   29.185196] ath10k_pci 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: 127  tid: 256
Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.201963] ath10k_pci 0000:00:00.0: wmi print 'P 128 V 8 T 410'
Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.208264] ath10k_pci 0000:00:00.0: wmi print 'msdu-desc: 1424  sw-crypt: 0 ct-sta: 0'
Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.216407] ath10k_pci 0000:00:00.0: wmi print 'alloc rem: 20904 iram: 26072'
Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.266256] ath10k_pci 0000:00:00.0: htt-ver 2.1 wmi-op 2 htt-op 2 cal file max-sta 128 raw 0 hwcrypto 1
Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.279137] ath10k_pci 0000:00:00.0: NOTE:  Firmware DBGLOG output disabled in debug_mask: 0x10000000
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414157] ath: EEPROM regdomain: 0x0
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414164] ath: EEPROM indicates default country code should be used
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414167] ath: doing EEPROM country->regdmn map search
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414179] ath: country maps to regdmn code: 0x3a
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414184] ath: Country alpha2 being used: US
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.414188] ath: Regpair used: 0x3a
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510070] ath: EEPROM regdomain: 0x0
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510077] ath: EEPROM indicates default country code should be used
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510080] ath: doing EEPROM country->regdmn map search
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510093] ath: country maps to regdmn code: 0x3a
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510098] ath: Country alpha2 being used: US
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.510101] ath: Regpair used: 0x3a
Fri Nov 15 07:55:28 2019 kern.debug kernel: [   29.527531] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
Fri Nov 15 07:55:28 2019 kern.info kernel: [   29.528563] ieee80211 phy1: Atheros AR9550 Rev:0 mem=0xb8100000, irq=12
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.974052] ath: EEPROM regdomain: 0x8114
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.978127] ath: EEPROM indicates we should expect a country code
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.984349] ath: doing EEPROM country->regdmn map search
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.989734] ath: country maps to regdmn code: 0x37
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.994608] ath: Country alpha2 being used: DE
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   55.999114] ath: Regpair used: 0x37
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.002664] ath: regdomain 0x8114 dynamically updated by user
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.008562] ath: EEPROM regdomain: 0x8114
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.012638] ath: EEPROM indicates we should expect a country code
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.018822] ath: doing EEPROM country->regdmn map search
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.024215] ath: country maps to regdmn code: 0x37
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.029074] ath: Country alpha2 being used: DE
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.033583] ath: Regpair used: 0x37
Fri Nov 15 07:55:50 2019 kern.debug kernel: [   56.037121] ath: regdomain 0x8114 dynamically updated by user
Fri Nov 15 07:55:54 2019 daemon.notice netifd: radio0 (2161): command failed: Too many open files in system (-23)
Fri Nov 15 07:55:54 2019 user.notice mac80211: Failed command: iw phy phy0 interface add wlan0 type __ap
Fri Nov 15 07:55:54 2019 daemon.notice hostapd: Configuration file: /var/run/hostapd-phy0.conf (phy wlan0) --> new PHY
Fri Nov 15 07:55:56 2019 kern.warn kernel: [   62.040719] ath10k_pci 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: 127  tid: 256
Fri Nov 15 07:55:56 2019 kern.info kernel: [   62.057521] ath10k_pci 0000:00:00.0: wmi print 'P 128 V 8 T 410'
Fri Nov 15 07:55:56 2019 kern.info kernel: [   62.063949] ath10k_pci 0000:00:00.0: wmi print 'msdu-desc: 1424  sw-crypt: 0 ct-sta: 0'
Fri Nov 15 07:55:56 2019 kern.info kernel: [   62.072122] ath10k_pci 0000:00:00.0: wmi print 'alloc rem: 20904 iram: 26072'
Fri Nov 15 07:55:57 2019 kern.warn kernel: [   62.163141] ath10k_pci 0000:00:00.0: pdev param 0 not supported by firmware
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.182317] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
Fri Nov 15 07:55:57 2019 daemon.notice netifd: radio1 (2181): command failed: Too many open files in system (-23)
Fri Nov 15 07:55:57 2019 user.notice mac80211: Failed command: iw phy phy1 interface add wlan1 type __ap
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.314691] br-lan: port 2(wlan0) entered blocking state
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.320087] br-lan: port 2(wlan0) entered disabled state
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.325793] device wlan0 entered promiscuous mode
Fri Nov 15 07:55:57 2019 daemon.notice hostapd: Configuration file: /var/run/hostapd-phy1.conf (phy wlan1) --> new PHY
Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan0: interface state UNINITIALIZED->COUNTRY_UPDATE
Fri Nov 15 07:55:57 2019 daemon.notice hostapd: ACS: Automatic channel selection started, this may take a bit
Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan0: interface state COUNTRY_UPDATE->ACS
Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan0: ACS-STARTED
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.502671] IPv6: ADDRCONF(NETDEV_UP): wlan1: link is not ready
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.736915] br-lan: port 3(wlan1) entered blocking state
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.742354] br-lan: port 3(wlan1) entered disabled state
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.748022] device wlan1 entered promiscuous mode
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.752922] br-lan: port 3(wlan1) entered blocking state
Fri Nov 15 07:55:57 2019 kern.info kernel: [   62.758309] br-lan: port 3(wlan1) entered forwarding state
Fri Nov 15 07:55:57 2019 daemon.notice hostapd: wlan1: interface state UNINITIALIZED->COUNTRY_UPDATE
Fri Nov 15 07:55:57 2019 daemon.err hostapd: Using interface wlan1 with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-01"
Fri Nov 15 07:55:58 2019 user.notice root: ip link set dev wlan0 up
Fri Nov 15 07:55:58 2019 user.notice root: ip link set dev wlan0-1 up
Fri Nov 15 07:55:59 2019 kern.info kernel: [   64.431080] br-lan: port 3(wlan1) entered disabled state
Fri Nov 15 07:55:59 2019 daemon.notice netifd: radio0 (2161): Cannot find device "wlan0-1"
Fri Nov 15 07:55:59 2019 daemon.notice netifd: radio0 (2161): Interface 1 setup failed: IFUP_ERROR
Fri Nov 15 07:55:59 2019 user.notice root: ip link set dev wlan0-2 up
Fri Nov 15 07:56:00 2019 daemon.notice netifd: radio0 (2161): Cannot find device "wlan0-2"
Fri Nov 15 07:56:00 2019 daemon.notice netifd: radio0 (2161): Interface 2 setup failed: IFUP_ERROR
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing noise floor
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing channel time
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: ACS: Survey is missing RX and busy time (at least one is required)
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: ACS-COMPLETED freq=5580 channel=116
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: interface state ACS->HT_SCAN
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: interface state HT_SCAN->DFS
Fri Nov 15 07:56:09 2019 daemon.notice hostapd: wlan0: DFS-CAC-START freq=5580 chan=116 sec_chan=1, width=1, seg0=122, seg1=0, cac_time=60s
Fri Nov 15 07:56:27 2019 daemon.notice netifd: radio1 (2181): Command failed: Request timed out
Fri Nov 15 07:56:27 2019 daemon.notice netifd: radio1 (2181): Device setup failed: HOSTAPD_START_FAILED
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-1: primary_ap: ''
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-2: primary_ap: ''
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-3: mac80211_vap_cleanup hostapd ""
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-4: mac80211_vap_cleanup wpa_supplicant ""
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-5: wdev_phy: '../../ieee80211/phy1'
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-6: wdev_phy: 'phy1' phy: 'phy1'
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-7: ip link set dev "wlan1" down 2>/dev/null
Fri Nov 15 07:56:29 2019 kern.info kernel: [   94.739161] br-lan: port 3(wlan1) entered disabled state
Fri Nov 15 07:56:29 2019 user.notice hostapd-test-8: iw dev "wlan1" del
Fri Nov 15 07:56:29 2019 kern.info kernel: [   95.016035] device wlan1 left promiscuous mode
Fri Nov 15 07:56:29 2019 kern.info kernel: [   95.020554] br-lan: port 3(wlan1) entered disabled state
Sat Nov 16 08:01:59 2019 daemon.notice hostapd: wlan0: DFS-CAC-COMPLETED success=1 freq=5580 ht_enabled=0 chan_offset=0 chan_width=3 cf1=5610 cf2=0
Sat Nov 16 08:01:59 2019 daemon.err hostapd: Using interface wlan0 with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-02"
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.076820] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.083515] br-lan: port 2(wlan0) entered blocking state
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.088906] br-lan: port 2(wlan0) entered forwarding state
Sat Nov 16 08:02:00 2019 daemon.notice netifd: Network device 'wlan0' link is up
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.122541] br-xxx: port 1(wlan0-1) entered blocking state
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.128109] br-xxx: port 1(wlan0-1) entered disabled state
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.134009] device wlan0-1 entered promiscuous mode
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.198674] IPv6: ADDRCONF(NETDEV_UP): wlan0-1: link is not ready
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.204996] br-xxx: port 1(wlan0-1) entered blocking state
Sat Nov 16 08:02:00 2019 kern.info kernel: [  137.210565] br-xxx: port 1(wlan0-1) entered forwarding state
Sat Nov 16 08:02:00 2019 daemon.err hostapd: Using interface wlan0-1 with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-03"
Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.551443] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes ready
Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.581574] br-lan: port 3(wlan0-2) entered blocking state
Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.587332] br-lan: port 3(wlan0-2) entered disabled state
Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.593255] device wlan0-2 entered promiscuous mode
Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.631446] IPv6: ADDRCONF(NETDEV_UP): wlan0-2: link is not ready
Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.637662] br-lan: port 3(wlan0-2) entered blocking state
Sat Nov 16 08:02:01 2019 kern.info kernel: [  137.643251] br-lan: port 3(wlan0-2) entered forwarding state
Sat Nov 16 08:02:01 2019 daemon.err hostapd: Using interface wlan0-2 with hwaddr xx:xx:xx:xx:xx:xx and ssid "WLAN-01"
Sat Nov 16 08:02:01 2019 kern.info kernel: [  138.081336] br-lan: port 3(wlan0-2) entered disabled state
Sat Nov 16 08:03:55 2019 daemon.err hostapd: Failed to set beacon parameters
Sat Nov 16 08:03:55 2019 daemon.warn hostapd: wlan1: Could not connect to kernel driver
Sat Nov 16 08:03:57 2019 daemon.err hostapd: Interface initialization failed
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1: interface state COUNTRY_UPDATE->DISABLED
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1: AP-DISABLED
Sat Nov 16 08:03:57 2019 daemon.err hostapd: wlan1: Unable to setup interface.
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: nl80211: deinit ifname=wlan1 disabled_11b_rates=0
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: nl80211: Failed to remove interface wlan1 from bridge br-lan: No such device
Sat Nov 16 08:03:57 2019 daemon.err hostapd: Could not read interface wlan1 flags: No such device
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1: CTRL-EVENT-TERMINATING
Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data: Interface wlan1 wasn't started
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-1: CTRL-EVENT-TERMINATING
Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data: Interface wlan1-1 wasn't started
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-2: CTRL-EVENT-TERMINATING
Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data: Interface wlan1-2 wasn't started
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-3: CTRL-EVENT-TERMINATING
Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data: Interface wlan1-3 wasn't started
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-4: CTRL-EVENT-TERMINATING
Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data: Interface wlan1-4 wasn't started
Sat Nov 16 08:03:57 2019 daemon.notice hostapd: wlan1-5: CTRL-EVENT-TERMINATING
Sat Nov 16 08:03:57 2019 daemon.err hostapd: hostapd_free_hapd_data: Interface wlan1-5 wasn't started
Sat Nov 16 08:04:18 2019 kern.info kernel: [  274.841981] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-2: link becomes ready
Sat Nov 16 08:04:18 2019 kern.info kernel: [  274.848883] br-lan: port 3(wlan0-2) entered blocking state
Sat Nov 16 08:04:18 2019 kern.info kernel: [  274.854491] br-lan: port 3(wlan0-2) entered forwarding state
Sat Nov 16 08:04:18 2019 daemon.notice hostapd: wlan0: interface state DFS->ENABLED
Sat Nov 16 08:04:18 2019 daemon.notice hostapd: wlan0: AP-ENABLED
Sat Nov 16 08:04:25 2019 daemon.info hostapd: wlan0-2: STA xx:xx:xx:xx:xx:xx IEEE 802.11: authenticated
Sat Nov 16 08:04:25 2019 daemon.info hostapd: wlan0-2: STA xx:xx:xx:xx:xx:xx IEEE 802.11: associated (aid 1)
Sat Nov 16 08:04:25 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-EAP-STARTED xx:xx:xx:xx:xx:xx
Sat Nov 16 08:04:25 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-EAP-PROPOSED-METHOD vendor=0 method=1
Sat Nov 16 08:04:28 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-EAP-RETRANSMIT xx:xx:xx:xx:xx:xx
Sat Nov 16 08:04:28 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-EAP-PROPOSED-METHOD vendor=0 method=25
Sat Nov 16 08:04:31 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-EAP-RETRANSMIT xx:xx:xx:xx:xx:xx
Sat Nov 16 08:04:31 2019 daemon.notice hostapd: EAP-PEAP: TLV Result - Success - requested Success
Sat Nov 16 08:04:31 2019 daemon.notice hostapd: wlan0-2: CTRL-EVENT-EAP-SUCCESS xx:xx:xx:xx:xx:xx
Sat Nov 16 08:04:31 2019 daemon.info hostapd: wlan0-2: STA xx:xx:xx:xx:xx:xx WPA: pairwise key handshake completed (RSN)
Sat Nov 16 08:04:31 2019 daemon.notice hostapd: wlan0-2: AP-STA-CONNECTED xx:xx:xx:xx:xx:xx
Sat Nov 16 08:04:31 2019 daemon.info hostapd: wlan0-2: STA xx:xx:xx:xx:xx:xx RADIUS: starting accounting session 9A799A3ABAF7BA35
Sat Nov 16 08:04:31 2019 daemon.info hostapd: wlan0-2: STA xx:xx:xx:xx:xx:xx IEEE 802.1X: authenticated - EAP type: 0 (unknown)

Regards,
Hartmut





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
