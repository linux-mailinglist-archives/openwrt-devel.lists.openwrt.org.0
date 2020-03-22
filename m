Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DF518EBBC
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 20:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x552DAZIGTxO3Be54pk9cuT6+zVhNhM2cNDq4WznhTk=; b=SdSMz47QM9wdju
	XEBXtd02Ky1jpQm6nuqMpc03QJHha3leiu4HLmwSISFnLZUBcOd0O/MdvC7p3fKi7EQPEXB1+6bcT
	9JIAxwJ72Xp5ea+QPUdpYhxzGxATJK88DKJ0N6Vk8SsqfdFlVYzxM/7pkvEwPr2Tktdesn0ajhTfr
	p1D5rJQzd8eoX0VvUl8hR4hVZ9AetRv/XmlZBmUnk/O8BXYittwmYpqtz/cwSMfCf2uvb1N95c0iV
	i2vnz9nPZy8seJ92x4m1TXLdt3KV6Khi7kjGrlXmS54fS+WStkaQIT0P0++8Jn3PCq6EDzSTkbhGl
	1gKh0Xd/5NQPiGyiQ9Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG5rY-0004g4-7p; Sun, 22 Mar 2020 19:02:20 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG5rO-0004ff-TJ
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 19:02:13 +0000
Received: from [IPv6:2003:e5:3f3b:f00:5569:31cc:c843:e1c6]
 (p200300E53F3B0F00556931CCC843E1C6.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3b:f00:5569:31cc:c843:e1c6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 73F111E1CF;
 Sun, 22 Mar 2020 20:01:58 +0100 (CET)
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
References: <20200317205927.26314-1-mail@david-bauer.net>
 <20200322123544.14cd2b55@kosmio.komorska>
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
Message-ID: <f742327a-a9ef-f52d-bf34-5da2cddc1733@david-bauer.net>
Date: Sun, 22 Mar 2020 20:01:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200322123544.14cd2b55@kosmio.komorska>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_120211_242425_A66201ED 
X-CRM114-Status: GOOD (  29.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: fix NAND driver compilation for
 kernel 5.4
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

Hi Michal

On 3/22/20 12:35 PM, Michal Cieslakiewicz wrote:
> On Tue, 17 Mar 2020 21:59:27 +0100
> David Bauer <mail@david-bauer.net> wrote:
> 
>> This fixes the compilation of the AR934x NAND controller
>> driver for kernel 5.4 while leaving it untouched for
>> kernel 4.19.
>>
>> This change is currently not run-tested, as i do not have such
>> a device at hand.
>>
> 
> Hello David,
> 
> Good news, Netgear WNDR4300 runs fine on kernel 5.4 with this patch
> applied.

Great to hear!

> 
> Tested-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> 
> I would also propose to mitigate two compilation warnings by
> introducing a return value here (by integrating into your patch):

I was thinking about the same, but i would like to have this patch touch as little 4.19
code as possible. However, i will look into fixing this in a seperate patch (in case you
are not faster than me) ;)

> 
> =========
> diff --git a/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c b/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
> index 70aa396e25..0e33b07146 100644
> --- a/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
> +++ b/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
> @@ -1082,14 +1082,24 @@ static int ar934x_nfc_write_page(struct nand_chip *chip,
>  	return err;
>  }
>  
> -static int ar934x_nfc_hw_reset_assert(struct ar934x_nfc *nfc) {
> -	reset_control_assert(nfc->rst);
> +static int ar934x_nfc_hw_reset_assert(struct ar934x_nfc *nfc)
> +{
> +	int err;
> +
> +	err = reset_control_assert(nfc->rst);
>  	udelay(250);
> +
> +	return err;
>  }
>  
> -static int ar934x_nfc_hw_reset_deassert(struct ar934x_nfc *nfc) {
> -	reset_control_deassert(nfc->rst);
> +static int ar934x_nfc_hw_reset_deassert(struct ar934x_nfc *nfc)
> +{
> +	int err;
> +
> +	err = reset_control_deassert(nfc->rst);
>  	udelay(250);
> +
> +	return err;
>  }
>  
>  static int ar934x_nfc_hw_init(struct ar934x_nfc *nfc)
> =========
> 
> And finally, an important information:
> 
> Enabling 5.4 for this device exposes a mtd concat issue unrelated
> to ar934x-nand driver, apparently affecting all routers that use 
> concatenation of flash areas to form one larger volume for ubi. 
> This appears to be a generic 5.x kernel problem not introduced by 
> OpenWrt in any way.
> 
> The quick and dirty solution that worked for me was reverting kernel
> patch:
> 
> commit 2431c4f5b46c32c4ac495456b1ef4ce59c0bb85d
> Author: Boris Brezillon <bbrezillon@kernel.org>
> Date:   Thu Dec 20 15:13:20 2018 +0100
> 
>     mtd: Implement mtd_{read,write}() as wrappers around
>     mtd_{read,write}_oob()
> 
>     mtd_{read,write}_oob() already take care of checking the params and
>     calling ->_{read,write}() or  ->_{read,write}_oob() based on the
>     request and the operations supported by the MTD device.
>     No need to duplicate the logic, we can simply implement
>     mtd_{read,write}() as wrappers around mtd_{read,write}_oob().
> 
> Above commit makes router to oops on WARN_ON canary and exit with error
> when creating mtd concat, entering boot loop. Without it my WNDR4300 runs
> fine so far.

I'm not that deep into the mtd-concat hack (expecially on NAND flash). We might also run
into issues when migrating to the new NAND interface. If you you've found a fix for
this, it would be great to have it up for discussion on ML or GitHub. Especially as this
is more or less target independant and not directly associated with the ath79 driver.

Best wishes
David

> 
> Best regards
> Michal
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
