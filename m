Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD73319A29
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 11:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJUSOvHeT/YAyUc+ctrc1+K8xFUyjPKzdZ3bq5LMOZE=; b=EpF0iunTf+giOH
	hhQ9h0AhIuIdpxWmQqHDna2aJgcVFEo7xCeZENzujHCIFdyRBwgYU3V6lqz4O1Fuwl58WqQgEEAwB
	92c8T5tjsdmmdHcHmrqqEqRaZC0qEPy9d3iFaeE5F6k47vmz1P1WYU7rR9nszymBN6bqKRfx2yJub
	dUUR58LBdXOmJgpRe8+zOm52suib6/1XIvsYWLMx0HtffoL3MpjKvnu/mI+L6Kwm/vriZBC9Fy3X5
	Qub9d9kNaXkZog7kMAIDw/mLBU3G6n4G77svpI60xrx6cAMMLyjcIlyiJzwsgNsRTHrnfPQw0Imjn
	952xI+QfvVGCb+9jk/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1PB-0001Nx-03; Fri, 10 May 2019 09:01:25 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat
 Linux)) id 1hP1P3-0001NE-74
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 09:01:19 +0000
Received: from [IPv6:2001:678:6e3:1050:51c5:44f3:162b:f138] (unknown
 [IPv6:2001:678:6e3:1050:51c5:44f3:162b:f138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id AC3BF220DD;
 Fri, 10 May 2019 11:01:12 +0200 (CEST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
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
Message-ID: <0bca2989-02b1-9f1b-7e99-4d7d3c77c8b1@david-bauer.net>
Date: Fri, 10 May 2019 11:01:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_020117_786258_57DC1AFF 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add missing read-only properties
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

On 09.05.19 13:50, Adrian Schmutzler wrote:
> The read-only properties for non-firmware partitions seem to have
> been assigned rather randomly.
> I went through the DTS files in ath79 and assigned the read-only
> to all partitions that seem to require protection.
> diff --git a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
> index 0875c319b9..c5b4775167 100644
> --- a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
> +++ b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
> @@ -100,6 +100,7 @@
>  			partition@40000 {
>  				label = "u-boot-env";
>  				reg = <0x040000 0x010000>;
> +				read-only;
>  			};
>  
>  			partition@50000 {
> diff --git a/target/linux/ath79/dts/qca9558_ocedo_koala.dts b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
> index 23835492a3..2b861ec8c0 100644
> --- a/target/linux/ath79/dts/qca9558_ocedo_koala.dts
> +++ b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
> @@ -95,6 +95,7 @@
>  			partition@40000 {
>  				label = "u-boot-env";
>  				reg = <0x040000 0x010000>;
> +				read-only;
>  			};
>  
>  			partition@50000 {
> diff --git a/target/linux/ath79/dts/qca9558_ocedo_ursus.dts b/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
> index 1a92da3946..926cc70e4d 100644
> --- a/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
> +++ b/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
> @@ -68,6 +68,7 @@
>  			partition@40000 {
>  				label = "u-boot-env";
>  				reg = <0x040000 0x010000>;
> +				read-only;
>  			};
>  
>  			partition@50000 {


This would break the current flashing instructions, which require to set
the correct partition to boot from the initramfs. [0]

I would prefer not to add read-only flags on uboot-environment without a
real reason. However, I'm fine with adding read-only on ART partitions.

[0]
https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=c4931713df8ffb3c4e5c1be7d0b6d4aa96a7dd4c

Best wishes
David

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
