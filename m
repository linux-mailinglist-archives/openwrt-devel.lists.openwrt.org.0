Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87061DCC17
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 13:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqeBSZ6fSMF0bw3dbC7Zilsc360FQxkbd3IZgOykNDI=; b=MlrwN1kRq6xVU+
	Z6rNBB7LbyYodn1k0hT0xU34aFqDtEALnrFu1C6iUIdV3Y70rnzkNTX34YM/dG6VlpcWFBncFQs8Y
	oOp0BCvRqPSUFXntt8nY6j51cYh6UTP/Kv8IDQ9hzMy2WiLoEmWgrUppKnQvNwI16BTvsF4rn65QQ
	UGDLRf4rMcMZkbut0gjDR/Pd5Kqd91ndkhIk1bu17ZOCSMbfpbc1vFI3xO5j8CopLWYrlFONgUOWD
	htzbQRTbrufcrjmdxYSgA1fjtnEg1wKvMTtB0OMzfiFcVFinG91mw10xwvK2vdSRyVF/pgJIZAKdw
	tNnHk/KA3emQQWBKNATg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjNC-0007S5-VD; Thu, 21 May 2020 11:28:27 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jbjN3-0007Ra-TW
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 11:28:20 +0000
Received: from [IPv6:2003:e5:3f0e:5300:3117:d864:668:d861]
 (p200300e53f0e53003117d8640668d861.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0e:5300:3117:d864:668:d861])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 5D2E9236E3;
 Thu, 21 May 2020 13:28:06 +0200 (CEST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20200521075636.43856-1-mail@david-bauer.net>
 <20200521082613.GA58206@meh.true.cz>
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
Message-ID: <2904e3dc-03b4-777d-1ca8-734792a434c8@david-bauer.net>
Date: Thu, 21 May 2020 13:28:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521082613.GA58206@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_042818_105134_7681BD5D 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] hostapd: add WEP as queryable build
 feature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gUGV0ciwKCk9uIDUvMjEvMjAgMTA6MjYgQU0sIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4g
RGF2aWQgQmF1ZXIgPG1haWxAZGF2aWQtYmF1ZXIubmV0PiBbMjAyMC0wNS0yMSAwOTo1NjozNl06
Cj4gCj4gSGkgRGF2aWQsCj4gCj4+IENvbW1pdCA0NzJmZDk4YzViMTIgKCJob3N0YXBkOiBkaXNh
YmxlIHN1cHBvcnQgZm9yIFdpcmVkIEVxdWl2YWxlbnQKPj4gUHJpdmFjeSBieSBkZWZhdWx0Iikg
bWFkZSBzdXBwb3J0IGZvciBXRVAgb3B0aW9uYWwuCj4+Cj4+IEV4cG9zZSB0aGUgV0VQIHN1cHBv
cnQgdG8gTHVDaSBvciBvdGhlciB1c2Vyc3BhY2UgdG9vbHMgdXNpbmcgdGhlCj4+IGV4aXN0aW5n
IGludGVyZmFjZS4gVGhpcyB3YXkgdGhleSBhcmUgYWJsZSB0byByZW1vdmUgV0VQIGZyb20gdGhl
Cj4+IGF2YWlsYWJsZSBjaXBoZXJzIGlmIGhvc3RhcGQgaXMgYnVpbHQgd2l0aG91dCBXRVAgc3Vw
cG9ydC4KPiAKPiBBY2tlZC1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAKPiBU
aGlzIGxvb2tzIGxpa2UgdXBzdHJlYW0gbWF0ZXJpYWwsIGNhbiB5b3Ugc2VuZCBpdCB0aGVyZSBh
cyB3ZWxsPyBUaGFua3MhCgpUaGUgaGFjayBJJ20gdG91Y2hpbmcgaXMgc29tZXRoaW5nIHdlIG1h
aW50YWluIGRvd25zdHJlYW0uCmhvc3RhcGQgaGFzIGEgc2ltaWxhciBmZWF0dXJlLXF1ZXJ5IGlt
cGxlbWVudGF0aW9uLCBob3dldmVyIGl0J3MgYmFzZWQKb24gZGJ1cy4KCkJlc3Qgd2lzaGVzCkRh
dmlkCgo+IAo+IC0tIHluZXp6Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
