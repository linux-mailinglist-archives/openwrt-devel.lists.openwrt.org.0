Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0F3174EA9
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 18:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iy23KSitIQo/MCBe/18BsDR5CSyjgqweklnuv1hIb4Y=; b=TIkOcIk1LMVyXY
	LNCfwAxbmNV29IgrDeJctTH3pj5YsWna38E46pdVT2PRMnltVqQczTLW9WBmlxz/L6lo/FzdR4YmZ
	BM/maxcxKTdmWniHR1FtxEydDqFFGb47Bekds5tmGR4dVCMkqq7OfwOLgG306tyIz0YT/qh3r+2iP
	1RBCABNRLTYs8wHQz61Cp8lxW4NxdAyGQI2daOHKhFX/dzTZDGy+YqVrb9uQm0wpd1A7uHKczoAGF
	UPJjniy3c2WXzuWY8Hb9zXYmpycpp8naiTtEILlvt8c58Em8HwyvtAAnQrtlDxZh9R5YzfT8knOAG
	O1b8CSPbscvPvknhtyjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8S8x-00082N-Qc; Sun, 01 Mar 2020 17:12:43 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8S8m-00081d-Ks
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 17:12:35 +0000
Received: from [IPv6:2003:e5:3f3b:e000:c567:3279:3134:ee4d]
 (p200300E53F3BE000C56732793134EE4D.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3b:e000:c567:3279:3134:ee4d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id DB6ED1E523;
 Sun,  1 Mar 2020 18:12:20 +0100 (CET)
To: Magnus Kroken <mkroken@gmail.com>
References: <20200301120812.11678-1-mkroken@gmail.com>
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
Message-ID: <65978b7e-bbf9-d633-e11a-12355deacfaa@david-bauer.net>
Date: Sun, 1 Mar 2020 18:12:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200301120812.11678-1-mkroken@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_091232_993808_2F818E9F 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] mpc85xx: set kernel 4.19 as default,
 5.4 as testing kernel
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

Hello Magnus

On 3/1/20 1:08 PM, Magnus Kroken wrote:
> Signed-off-by: Magnus Kroken <mkroken@gmail.com>
> ---
> According to e-mail about pushing kernel 5.4 support to master, 5.4 was added as testing
> kernel for supported targets. For mpc85xx, 5.4 was set as its default
> kernel. (This technically also applies to ipq807x, but master has no
> support for it on any prior kernel.)
> 
> I send this patch purely based on the content of the mentioned message.
> I have tested 5.4 briefly on tl-wdr4900-v1, it boots and ethernet works. 
> There may be reasons to prefer 5.4 over 4.19 on mpc85xx that I am
> unaware of, and I'd appreciate any input.

While the switch was more or less unintentionally, i think we can leave mpc85xx
on 5.4. The target itself carries not a lot of patches despite hardware support.

Also I've tested Kernel 5.4 wit a variety of devices (WDR4900, RED 15w, Panda, AP330)
and all boards ran without an issue.

Best wishes
David         

> 
>  target/linux/mpc85xx/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/target/linux/mpc85xx/Makefile b/target/linux/mpc85xx/Makefile
> index b0f92ccf26..9c686a1b01 100644
> --- a/target/linux/mpc85xx/Makefile
> +++ b/target/linux/mpc85xx/Makefile
> @@ -14,7 +14,8 @@ FEATURES:=squashfs ramdisk
>  MAINTAINER:=Imre Kaloz <kaloz@openwrt.org>
>  SUBTARGETS:=generic p1020 p2020
>  
> -KERNEL_PATCHVER:=5.4
> +KERNEL_PATCHVER:=4.19
> +KERNEL_TESTING_PATCHVER:=5.4
>  
>  KERNELNAME:=zImage
>  
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
