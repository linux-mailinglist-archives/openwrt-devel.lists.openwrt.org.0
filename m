Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7C5DB180
	for <lists+openwrt-devel@lfdr.de>; Thu, 17 Oct 2019 17:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DO1o46TrN3Ehb/s/JOCnTqKBAH/ymm7f0ZmJU9uXit8=; b=g7Pn67qwG9TclD
	02s7seC/8ByuMM3JqpriDiwdLGkNXSLTPNm7Mus6ycfWepLXf4B/AtaBmmOGa/Y906cPVIpcvblbG
	SH78+jxgRPdEV2Fwr0gFU+KH28X3NQV1VW4LpDT9VddFUOoRVpyqCVRD9H9rvah4wBBY19PR/v3bq
	hCrbMHkiQ5o/sR00KMQqKMJp6eQStNYK9SKr+y2pshyoMOuJYg+I+f/SUqo/5GqypmhRuhMIv4VJH
	1ZByJrupRtxYHj13Wg9s0pbIJZKj4KrkuGLeQby8lbTc3V8a1Qk+RuVJcDJQ3QdCsqpH0eJcPyD0I
	BGx9SFo3FJUIKNNR/9rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL81r-0008Ab-H8; Thu, 17 Oct 2019 15:49:31 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL81j-00089x-Fw
 for openwrt-devel@lists.openwrt.org; Thu, 17 Oct 2019 15:49:25 +0000
Received: from [192.168.43.216] (ip-109-42-1-243.web.vodafone.de
 [109.42.1.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 6AE451E3EE;
 Thu, 17 Oct 2019 17:49:13 +0200 (CEST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20191007173827.63607-1-freifunk@adrianschmutzler.de>
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
Message-ID: <696244f7-33ae-0888-b933-5bca8ed6c02c@david-bauer.net>
Date: Thu, 17 Oct 2019 17:49:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191007173827.63607-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_084923_828376_D88ED356 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [109.42.1.243 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: add label MAC address for
 Netgear EX6150v2
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

On 10/7/19 7:38 PM, Adrian Schmutzler wrote:
> The device bears two MAC addresses ("MAC 1" and "MAC 2") that
> correspond to phy0 and phy1.
> 
> The ethernet MAC address (gmac0) is the same as phy0.
> As this one is accessible via local-mac-address in gmac0, the
> latter is used for label-mac-device.

You can define the property in the common DTSI for the EX6100v2 / EX6150v2,
as they are identical.

Best wishes
David

> 
> (Although this is a one-port, gmac1 also has a local-mac-address
> assigned. This has the same vendor part as the other addresses,
> but completely different data for the device part.)
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  .../files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts    | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts
> index f1c44c1ae8..9724894e7f 100644
> --- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts
> +++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts
> @@ -22,6 +22,10 @@
>  / {
>  	model = "Netgear EX6150v2";
>  	compatible = "netgear,ex6150v2";
> +
> +	aliases {
> +		label-mac-device = &gmac0;
> +	};
>  };
>  
>  &wifi0 {
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
