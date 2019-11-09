Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F0EF61D8
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 00:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pb8gDHmtuYINeS4hshZbcIjE6isNBygw0SdnkHmwxTQ=; b=c73idwn9gS3D6A
	HrjS699zs6WjYNwFA1A7ckPuIJXWyJiy1DiD3ET9U/0UBVHvAyPHlwwbq2awm5eGfRfuN5/LjA0cy
	QJa2ToxSQcyVnvp8VM/1y3arb/fNsiP6vzb6db9rjFy/ok4d+t4j9Waig7J+GEI640sdO2uFDrWOo
	AXSZk6JxFt9xLHJpZkPDfMJyXWG7QJTW52dOKrDVkjfxUy7zHxG9DPTrg+BeJoE5RmIm4bMkOjjU4
	ReaDW+gsfT0a0JW0dQH0YRxBGZ0U74Ev4sR8DqVBao/wHVstGOeFimNId02xdNdsO01f3oKSRAXu7
	iVsqV7IqncIz2C3Q+V5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTa2a-0005ab-Eo; Sat, 09 Nov 2019 23:21:12 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iTa2L-0005Zd-VK
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 23:21:00 +0000
Received: from [IPv6:2003:e5:3f2d:4600:b859:2c1a:f4ff:5970]
 (p200300E53F2D4600B8592C1AF4FF5970.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2d:4600:b859:2c1a:f4ff:5970])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 8077A22A8A;
 Sun, 10 Nov 2019 00:20:47 +0100 (CET)
To: Sven Roederer <devel-sven@geroedel.de>
References: <20191109225217.19505-1-devel-sven@geroedel.de>
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
Message-ID: <7adc3bf3-fd3e-d7d2-e262-9361bf128993@david-bauer.net>
Date: Sun, 10 Nov 2019 00:20:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191109225217.19505-1-devel-sven@geroedel.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_152058_316696_B5ED6A5E 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: fritz4040 depends on
 uboot-fritz4040
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

Hello Sven,

On 11/9/19 11:52 PM, Sven Roederer wrote:
> The "append-uboot" macro is looking for the file "$(STAGING_DIR_IMAGE)/uboot-fritz4040.bin"
> which is provided by the u-boot-fritz4040 package. If this is not build, image creation
> will fail with "file not found".

The dependency comes from the U-Boot package [0], so it should be pulled in automatically.
Maybe you are missing this commit [1]?

[0] https://github.com/openwrt/openwrt/blob/master/package/boot/uboot-fritz4040/Makefile#L31
[1] https://github.com/openwrt/openwrt/commit/40e3f660c1c0f400092cce09feb8c13bec97caeb

Best wishes
David

> 
> Signed-off-by: Sven Roederer <devel-sven@geroedel.de>
> ---
>  target/linux/ipq40xx/image/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
> index a9c5e625af..7ae6f36baa 100644
> --- a/target/linux/ipq40xx/image/Makefile
> +++ b/target/linux/ipq40xx/image/Makefile
> @@ -130,7 +130,7 @@ define Device/avm_fritzbox-4040
>  	IMAGES = eva.bin sysupgrade.bin
>  	IMAGE/eva.bin := append-uboot | pad-to $$$$(UBOOT_PARTITION_SIZE) | append-kernel | append-rootfs | pad-rootfs
>  	IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
> -	DEVICE_PACKAGES := fritz-tffs fritz-caldata
> +	DEVICE_PACKAGES := fritz-tffs fritz-caldata u-boot-fritz4040
>  endef
>  TARGET_DEVICES += avm_fritzbox-4040
>  
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
