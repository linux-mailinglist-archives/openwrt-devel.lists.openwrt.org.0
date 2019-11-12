Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ACCF9550
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 17:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEI+a70yNmcNvGJiFqKMSmaUT7Z/wo+DqekqlxjRyvc=; b=ofW2sNxaczCwnT
	pcEchPXQB8Z5tvAixpgzyAf7fXWC97Q5NZb0emGM9YhISdWIVfQJiuqWtanu64KwKU5auYLBJA04P
	l9jLHqfdNwlmh2s3zoxbIpesB+zgPLLLTFoI1BjOPtFfmumE09Vkw3dwIuLzIBd6er16bV2MKPWJx
	ZP0n5PhuHuEbFCaAXHls1B7u4us+aMhBT1IVi+oyA/ev/v/KfY1DQcLcteyTVGxtD+avMzMmFwhhB
	s00sXfF/qM/eAzqjGWBc71zFlSiDhiuVf5fXHNUbuipu0dUR9BMCFP56PBXGGYxS6gnC+jyYfMhAp
	HSKLDr49HlSjLNk/ca0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYpJ-0006c8-0y; Tue, 12 Nov 2019 16:15:33 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUYpA-0006b1-Sl
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 16:15:26 +0000
Received: from [192.168.43.183] (ip-109-40-129-86.web.vodafone.de
 [109.40.129.86])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id B84691E246;
 Tue, 12 Nov 2019 17:15:17 +0100 (CET)
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
References: <20191112140214.59f2971f@kosmio.komorska>
From: David Bauer <mail@david-bauer.net>
Openpgp: id=D70432697B7C4C27380FCDA3BAB39714B4A4B878
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
Message-ID: <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
Date: Tue, 12 Nov 2019 17:15:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112140214.59f2971f@kosmio.komorska>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_081525_227701_2ED1DDB9 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Michal,

On 11/12/19 2:02 PM, Michal Cieslakiewicz wrote:
> Netgear WNDR routers (AR9344 models) like WNDR4300 have 128 MiB of flash
> memory but only first 32 MiB are used now - both by vendor's firmware and
> OpenWrt. This patch concatenates two regions of flash memory: ubi part
> of firmware partition and reserved (unused) space beyond 'caldata_backup'
> while preserving ART backup. No data is wiped or moved away.
> This increases area for OS ubi volumes from 23 to 119 Megabytes.

Have you tried if this breaks sysupgrade from an older OpenWrt firmware?
I'm not sure if an UBI resize works without additional steps.

Best wishes
David

> 
> Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> ---
>  .../linux/ath79/dts/ar9344_netgear_wndr.dtsi  | 25 +++++++++++++++----
>  1 file changed, 20 insertions(+), 5 deletions(-)
> 
> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> index 16a4e3f6e8..d5a699e774 100644
> --- a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> @@ -97,6 +97,22 @@
>  			linux,default-trigger = "usbport";
>  		};
>  	};
> +
> +	ubi-concat {
> +		compatible = "mtd-concat";
> +		devices = <&ubipart0 &ubipart1>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			ubi@8c0000 {
> +				label = "ubi";
> +				reg = <0x0 0x7700000>;
> +			};
> +		};
> +	};
>  };
>  
>  &pinmux {
> @@ -155,8 +171,8 @@
>  			reg = <0x6c0000 0x200000>;
>  		};
>  
> -		ubi@8c0000 {
> -			label = "ubi";
> +		ubipart0: partition@8c0000 {
> +			label = "ubipart0";
>  			reg = <0x8c0000 0x1700000>;
>  		};
>  
> @@ -172,10 +188,9 @@
>  			read-only;
>  		};
>  
> -		partition@2000000 {
> -			label = "reserved";
> +		ubipart1: partition@2000000 {
> +			label = "ubipart1";
>  			reg = <0x2000000 0x6000000>;
> -			read-only;
>  		};
>  	};
>  };
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
