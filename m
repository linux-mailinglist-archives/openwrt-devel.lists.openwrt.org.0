Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06970D62D5
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxs3/ZyDe0g8woN1zGqNTZ1mUcSiUEbRdJDGNHq7JW0=; b=GyDnL+It7rhMDo
	FNtZ8G3SF+sawkP9+KuO9TYp7ug1NuiXRdDfud9yc2H5CnvRnzBn59FhtzEoQOWKEIpY/kMb0xp/+
	bnhmGhcJIxHE3KYB9Gao7z5LOCJs72NtykxLEgPelNIt+8htMK9V/XrQg6nmf2/EEVvJWCdr1/bgx
	S5vEBg63IvxTqDPsceN04McO6eUiQngSakjWWq80DGni+csBwvwGhkSH9QrMt55/vUhdleaogoD3b
	yAXaioWBk2UZZVkJzvfbIL33Y2z7d3RX3eSFMEnY5R7dSWfy5i3bNWcndE3DtkJrSMPH0e5AtvCL3
	Pzf9sETy8eM4I9/GIovw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzg2-0003gQ-Sb; Mon, 14 Oct 2019 12:42:18 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iJzd3-0008T6-K8
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:39:17 +0000
Received: from [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505] (unknown
 [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 6CB7B22BAC;
 Mon, 14 Oct 2019 14:39:10 +0200 (CEST)
References: <20191006174834.3398181-1-dev@andreas-ziegler.de>
 <00b001d58289$846fd670$8d4f8350$@adrianschmutzler.de>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
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
Message-ID: <089a96db-880b-e058-068b-9f77170c01ce@david-bauer.net>
Date: Mon, 14 Oct 2019 14:39:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <00b001d58289$846fd670$8d4f8350$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053914_014220_144B12F7 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>, dev@andreas-ziegler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

On 10/14/19 2:18 PM, Adrian Schmutzler wrote:
> Hi,
> 
> the device name is inconsistent in model string and DEVICE_MODEL (hyphens...).
> 
> However, as this is only the friendly name, it is not really important.
> 
> On their homepage, Ubiquiti never uses hyphens on product names, only for the abbreviations:
> UniFi AC Pro vs. UAP-AC-PRO-5
> UniFi AC Lite vs. UAP-AC-LITE
> 
> Since we are using a lot of hyphens for other Ubiquiti devices, too, I wouldn't bother for this commit.
> But it might make sense to "correct" the friendly names for all Ubiquiti devices at some point in the future.

I've looked into the naming Ubiquiti uses for their devices and sadly, they have for
each of their devices multiple namings on their Website.

> UniFi AC Pro
> UniFi AP AC Pro
> UAP-AC-PRO

And don't get started on their Mesh series, things only get more confusing there.

If we want to be 100% consistent, we probably have to use the product-ids (UAP-AC-PRO for example),
however i think having the marketing name is nicer.

Best wishes
David

> 
> Best
> 
> Adrian
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On Behalf Of Andreas Ziegler
>> Sent: Sonntag, 6. Oktober 2019 19:49
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
>>
>> The Unifi AC-LR has identical hardware to the Unifi AC-Lite.
>> The antenna setup is different according to the vendor,
>> which explains the thicker enclosure.
>> Therefore, it is helpful to know the exact device variant,
>> instead of having "Ubiquiti UniFi-AC-LITE/MESH".
>>
>> Signed-off-by: Andreas Ziegler <dev@andreas-ziegler.de>
>> ---
>>  target/linux/ath79/base-files/etc/board.d/02_network     | 1 +
>>  .../base-files/etc/hotplug.d/firmware/11-ath10k-caldata  | 1 +
>>  target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts       | 9 +++++++++
>>  target/linux/ath79/image/generic-ubnt.mk                 | 7 +++++++
>>  4 files changed, 18 insertions(+)
>>  create mode 100644 target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
>>
>> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
>> index 0de17adb9d..fe74bddbf1 100755
>> --- a/target/linux/ath79/base-files/etc/board.d/02_network
>> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
>> @@ -50,6 +50,7 @@ ath79_setup_interfaces()
>>  	ubnt,nanostation-ac-loco|\
>>  	ubnt,rocket-m|\
>>  	ubnt,unifiac-lite|\
>> +	ubnt,unifiac-lr|\
>>  	ubnt,unifiac-mesh|\
>>  	ubnt,unifi|\
>>  	wd,mynet-wifi-rangeextender|\
>> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-
>> files/etc/hotplug.d/firmware/11-ath10k-caldata
>> index 446b729a2b..ba39cb3981 100644
>> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
>> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
>> @@ -179,6 +179,7 @@ case "$FIRMWARE" in
>>  		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
>>  		;;
>>  	ubnt,unifiac-lite|\
>> +	ubnt,unifiac-lr|\
>>  	ubnt,unifiac-mesh|\
>>  	ubnt,unifiac-mesh-pro|\
>>  	ubnt,lap-120|\
>> diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
>> new file mode 100644
>> index 0000000000..a1e542ada6
>> --- /dev/null
>> +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
>> @@ -0,0 +1,9 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +/dts-v1/;
>> +
>> +#include "qca9563_ubnt_unifiac-lite.dtsi"
>> +
>> +/ {
>> +	compatible = "ubnt,unifiac-lr", "qca,qca9563";
>> +	model = "Ubiquiti UniFi-AC-LR";
>> +};
>> diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
>> index 4b2cee215c..13af092ee3 100644
>> --- a/target/linux/ath79/image/generic-ubnt.mk
>> +++ b/target/linux/ath79/image/generic-ubnt.mk
>> @@ -225,6 +225,13 @@ define Device/ubnt_unifiac-lite
>>  endef
>>  TARGET_DEVICES += ubnt_unifiac-lite
>>
>> +define Device/ubnt_unifiac-lr
>> +  $(Device/ubnt_unifiac)
>> +  DEVICE_MODEL := UniFi AC-LR
>> +  SUPPORTED_DEVICES += unifiac-lite
>> +endef
>> +TARGET_DEVICES += ubnt_unifiac-lr
>> +
>>  define Device/ubnt_unifiac-mesh
>>    $(Device/ubnt_unifiac)
>>    DEVICE_MODEL := UniFi AC-Mesh
>> --
>> 2.23.0
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
