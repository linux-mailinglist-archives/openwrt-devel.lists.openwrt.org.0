Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4627108DD5
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 13:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wF/sYaa/9r5u5PFcsuR9KLeV1MJuvCFbRqTbH9SxLrQ=; b=W4M2mBU2BEw4lM
	liXnvRaid31xqziInemSUrOa1GWnqkKTU35eZ6qv8Yxv3O5p2vDsW3Ui/gk/hftCtBMiAsZH/hmug
	NWswP1zGzzvBXU8QBn0Eo42OFVsP1hXL+MR3tXbk7e8n2CSf1FmckpT4jp4kX27FZkKW+8vBhwnAz
	znDjYyA5w+GzpjQxX8yGx7UcT50sy2hkjjlxk2QP+aVjC+6pdCDKA2YTKML9f5MyjlXR68pdZVj46
	oJPjTb20f1DD6DE3HEsa0HjvOJt59QDao8CnP9W4pQNhGSAcSAth3hQdYwhWvPSQziB1N+nqGqOsj
	lqiqTrFybLjM1BS2FlQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDTm-0001JB-69; Mon, 25 Nov 2019 12:28:34 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iZDTD-0000zW-Bw
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 12:28:01 +0000
Received: from [IPv6:2001:41b8:83c:fa01:157c:afba:5cc1:a85] (unknown
 [IPv6:2001:41b8:83c:fa01:157c:afba:5cc1:a85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 7338422086;
 Mon, 25 Nov 2019 13:27:56 +0100 (CET)
To: Jo-Philipp Wich <jo@mein.io>
References: <20191124222140.26553-1-mail@david-bauer.net>
 <c0714653-7bc7-b757-1bb3-21ff632f00bc@mein.io>
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
Message-ID: <bbd9a786-1eee-8993-16a5-079e459625ad@david-bauer.net>
Date: Mon, 25 Nov 2019 13:27:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c0714653-7bc7-b757-1bb3-21ff632f00bc@mein.io>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_042759_602228_75172DB5 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] generic ar8xxx: increase VLAN table for
 AR83x7
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

Hello Jo,

On 11/25/19 1:01 PM, Jo-Philipp Wich wrote:
> Hi,
> 
> does it make sense to keep the vlan/vid indirection if we increase the
> table size to 4096? A simple 1:1 mapping of the vid to the table index
> would be simpler and more robust from the configuration pov.

i would like to keep it (for the moment), but i see why it's not the desirable the way it
is now (for the AR83x7).

Reason being, we have this problem also in the opposite direction. The AR724x / AR933x
has a similar issue, but in the opposite direction. It advertises a VLAN table size of 128,
but in fact it only has a table size of 16.

If we do a 1:1 mapping for the whole series, this would break for users who use a VLAN > 15 on
the affected devices.

I'm working on more patches to differentiate between VLAN_ID_MAX and VLAN_TABLE_SIZE, but for the
short term (and in light of 19.07), i think we should fix this simple bug now.

What do you think?

Best wishes
David

> 
> ~ Jo
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
