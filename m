Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13337107A04
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 22:40:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUOGd8DJrg/C+fdnCmY84ehWI1pCDdetjnFeRoCyxjY=; b=qEHS0UIg2kSsxe
	0dOoOOCCKUo4j0GGVFs/q7KOPo6u5D6D0gbWtBlw9cCyiZwcCfsgg4Tn43o3F+8kLMYYRbjwqJPtO
	yriYyGGgvOHQmEV1bvI441k/7LlRTOU4hmmcx8l4tbmYMJdo+d4og1VANfLjVzdbjhw7Pz3iyLf0c
	YvxyVgdQrFXoNYamR13KPEduC1QXyietF8HKriTSSGcndjm0q5wEJpza69r9AEhm3x23eveYBg1GS
	KDcYE5jfxanuIo8FrCG4qVkJC2mMJomV8F+F9T4RkkPmPvwl4o5uj6SxEdZK0E+HXZ2nCgaCyJdaR
	Yi2h5Ekz1LDbsIpvQcoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYGem-0001CD-WE; Fri, 22 Nov 2019 21:40:01 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYGed-0001BF-Hg
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 21:39:54 +0000
Received: from [IPv6:2003:e5:3f0c:9d00:853d:c403:95bb:ef91]
 (p200300E53F0C9D00853DC40395BBEF91.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0c:9d00:853d:c403:95bb:ef91])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id DA0EB22085;
 Fri, 22 Nov 2019 22:39:38 +0100 (CET)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20191122134549.43222-1-freifunk@adrianschmutzler.de>
From: David Bauer <mail@david-bauer.net>
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <08ec62eb-c779-4f98-c486-7d5fff2deb5a@david-bauer.net>
Date: Fri, 22 Nov 2019 22:39:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191122134549.43222-1-freifunk@adrianschmutzler.de>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_133951_877619_027F5B40 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: rename EEPROM to art
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

On 11/22/19 2:45 PM, Adrian Schmutzler wrote:
> This renames all remaining occurrences of "EEPROM" to "art" to
> further harmonize the partition labelling in ath79.

Hmm, I'm not sure if/why we should to these changes.

Ubiquiti names these partitions "EEPROM" in their firmware
and it contains more information (e.g. board-id / sub-revision)
than just the calibration data.

Best wishes
David

> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  .../linux/ath79/dts/ar9342_ubnt_lap-120.dts   |  2 +-
>  .../ath79/dts/ar9342_ubnt_nanobeam-ac.dts     |  2 +-
>  .../dts/ar9342_ubnt_nanostation-ac-loco.dts   |  2 +-
>  .../ath79/dts/ar9342_ubnt_nanostation-ac.dts  |  4 ++--
>  target/linux/ath79/dts/ar9342_ubnt_wa.dtsi    |  6 +++---
>  target/linux/ath79/dts/ar9342_ubnt_xw.dtsi    |  8 ++++----
>  .../linux/ath79/dts/qca9533_ubnt_acb-isp.dts  | 10 +++++-----
>  .../ath79/dts/qca9563_ubnt_unifiac-lite.dtsi  |  2 +-
>  .../ath79/dts/qca9563_ubnt_unifiac-pro.dtsi   |  2 +-
>  .../linux/ath79/dts/qca9563_ubnt_unifiac.dtsi |  6 +++---
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  | 20 +++++++++----------
>  11 files changed, 31 insertions(+), 33 deletions(-)
> 
> diff --git a/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts b/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
> index 82f864b8e3..757654eaee 100644
> --- a/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
> +++ b/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
> @@ -26,7 +26,7 @@
>  	/* default for ar934x, except for 1000M and 10M */
>  	pll-data = <0x06000000 0x00000101 0x00001313>;
>  
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  
>  	phy-mode = "rgmii";
>  	phy-handle = <&phy4>;
> diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts b/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
> index 6e64c7faad..30d054dfed 100644
> --- a/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
> +++ b/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
> @@ -51,7 +51,7 @@
>  	/* default for ar934x, except for 1000M and 10M */
>  	pll-data = <0x06000000 0x00000101 0x00001313>;
>  
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  
>  	phy-mode = "rgmii";
>  	phy-handle = <&phy4>;
> diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
> index 9b26d1a628..89904721c0 100644
> --- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
> +++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
> @@ -27,7 +27,7 @@
>  	/* default for ar934x, except for 1000M and 10M */
>  	pll-data = <0x06000000 0x00000101 0x00001313>;
>  
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  
>  	phy-mode = "rgmii";
>  	phy-handle = <&phy4>;
> diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
> index b591925154..97597e5f15 100644
> --- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
> +++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
> @@ -58,7 +58,7 @@
>  	/* default for ar934x, except for 1000M and 10M */
>  	pll-data = <0x06000000 0x00000101 0x00001313>;
>  
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  
>  	phy-mode = "rgmii";
>  	phy-handle = <&phy0>;
> @@ -73,5 +73,5 @@
>  &wmac {
>  	status = "okay";
>  
> -	mtd-cal-data = <&eeprom 0x1000>;
> +	mtd-cal-data = <&art 0x1000>;
>  };
> diff --git a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
> index 30fa299638..2847d4098c 100644
> --- a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
> +++ b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
> @@ -75,8 +75,8 @@
>  				read-only;
>  			};
>  
> -			eeprom: partition@ff0000 {
> -				label = "EEPROM";
> +			art: partition@ff0000 {
> +				label = "art";
>  				reg = <0xff0000 0x010000>;
>  				read-only;
>  			};
> @@ -88,5 +88,5 @@
>  	status = "okay";
>  
>  	qca,disable-5ghz;
> -	mtd-cal-data = <&eeprom 0x1000>;
> +	mtd-cal-data = <&art 0x1000>;
>  };
> diff --git a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
> index ee42498af1..cf24aba5aa 100644
> --- a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
> +++ b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
> @@ -103,8 +103,8 @@
>  				read-only;
>  			};
>  
> -			eeprom: partition@7f0000 {
> -				label = "EEPROM";
> +			art: partition@7f0000 {
> +				label = "art";
>  				reg = <0x7f0000 0x010000>;
>  				read-only;
>  			};
> @@ -115,9 +115,9 @@
>  &wmac {
>  	status = "okay";
>  
> -	mtd-cal-data = <&eeprom 0x1000>;
> +	mtd-cal-data = <&art 0x1000>;
>  };
>  
>  &eth0 {
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  };
> diff --git a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
> index 629899e1a2..ded95f3a18 100644
> --- a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
> +++ b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
> @@ -64,8 +64,8 @@
>  				read-only;
>  			};
>  
> -			eeprom: partition@ff0000 {
> -				label = "EEPROM";
> +			art: partition@ff0000 {
> +				label = "art";
>  				reg = <0xff0000 0x010000>;
>  				read-only;
>  			};
> @@ -79,13 +79,13 @@
>  
>  &eth0 {
>  	status = "okay";
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  	phy-handle = <&swphy4>;
>  };
>  
>  &eth1 {
>  	status = "okay";
> -	mtd-mac-address = <&eeprom 0x6>;
> +	mtd-mac-address = <&art 0x6>;
>  
>  	gmac-config {
>  		device = <&gmac>;
> @@ -94,5 +94,5 @@
>  
>  &wmac {
>  	status = "okay";
> -	mtd-cal-data = <&eeprom 0x1000>;
> +	mtd-cal-data = <&art 0x1000>;
>  };
> diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
> index 4f77661fbd..8248e060c5 100644
> --- a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
> +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
> @@ -21,6 +21,6 @@
>  &eth0 {
>  	status = "okay";
>  
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  	phy-handle = <&phy4>;
>  };
> diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
> index 3a6c0cd3fa..5a0cf4bade 100644
> --- a/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
> +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
> @@ -25,6 +25,6 @@
>  &eth0 {
>  	status = "okay";
>  
> -	mtd-mac-address = <&eeprom 0x0>;
> +	mtd-mac-address = <&art 0x0>;
>  	phy-handle = <&phy0>;
>  };
> diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
> index bb20caba47..bfad3ff306 100644
> --- a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
> +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
> @@ -104,8 +104,8 @@
>  				read-only;
>  			};
>  
> -			eeprom: partition@ff0000 {
> -				label = "EEPROM";
> +			art: partition@ff0000 {
> +				label = "art";
>  				reg = <0xff0000 0x010000>;
>  				read-only;
>  			};
> @@ -116,5 +116,5 @@
>  &wmac {
>  	status = "okay";
>  
> -	mtd-cal-data = <&eeprom 0x1000>;
> +	mtd-cal-data = <&art 0x1000>;
>  };
> diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> index f128e8759f..258efc3bf4 100644
> --- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> +++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> @@ -12,6 +12,15 @@ case "$FIRMWARE" in
>  	case $board in
>  	comfast,cf-wr650ac-v1|\
>  	comfast,cf-wr650ac-v2|\
> +	ubnt,unifiac-lite|\
> +	ubnt,unifiac-lr|\
> +	ubnt,unifiac-mesh|\
> +	ubnt,unifiac-mesh-pro|\
> +	ubnt,lap-120|\
> +	ubnt,nanobeam-ac|\
> +	ubnt,nanostation-ac|\
> +	ubnt,nanostation-ac-loco|\
> +	ubnt,unifiac-pro|\
>  	yuncore,a770)
>  		caldata_extract "art" 0x5000 0x844
>  		;;
> @@ -101,17 +110,6 @@ case "$FIRMWARE" in
>  		caldata_extract "art" 0x5000 0x844
>  		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
>  		;;
> -	ubnt,unifiac-lite|\
> -	ubnt,unifiac-lr|\
> -	ubnt,unifiac-mesh|\
> -	ubnt,unifiac-mesh-pro|\
> -	ubnt,lap-120|\
> -	ubnt,nanobeam-ac|\
> -	ubnt,nanostation-ac|\
> -	ubnt,nanostation-ac-loco|\
> -	ubnt,unifiac-pro)
> -		caldata_extract "EEPROM" 0x5000 0x844
> -		;;
>  	esac
>  	;;
>  "ath10k/pre-cal-pci-0000:00:00.0.bin")
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
