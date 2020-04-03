Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2257519D4DB
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 12:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3XlZH+YKTHOWA9Dhs6EEWYoTn7oNhC1eYvwlqf7B2E=; b=P4EkrEXSQiRL2h
	hMDuj9U2UrjI5YpvKCx3ARmjMg0egq/xlphkOIWJ87dJS1bf1/pT+Zv0/HkcbM3M58W3bwHQpXhyT
	P3QkO8JxcB1caB7SWucRJ2ofH3ZFKiUIrM1VfPkH2fup9qWP33y03Jr+mcdW3ulQplpsOuTCc4PSC
	zFywzPNs24qbsecBPwhBviHt08GWAfdJ09UOphj/B5L53EUeo0jKHgL/osJX/WE3OnQMyDx0nT9hH
	bknUndPA4zd4FxJR14sV9eMkoy+2DqncnPPFOp5QFY10tCixPctv6Ey3kRExBbDF2NykPqIgdJZy0
	6VOypGFIO3fWpRFBTDLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJK9-0007Zn-35; Fri, 03 Apr 2020 10:13:17 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jKJJz-0007Vq-Cm
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 10:13:09 +0000
Received: from [IPv6:2003:e5:3f0a:6a00:97:2707:3b35:7a33]
 (p200300E53F0A6A00009727073B357A33.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0a:6a00:97:2707:3b35:7a33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 63C341F9E5;
 Fri,  3 Apr 2020 12:12:56 +0200 (CEST)
To: Magnus Kroken <mkroken@gmail.com>
References: <20200402195359.51545-1-mail@david-bauer.net>
 <87k12wx6tm.fsf@miraculix.mork.no>
 <e74d668d-d2ad-8312-b5c0-7e8e2e9bbf02@gmail.com>
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
Message-ID: <332d6de9-97e7-2afb-20f9-18aa66e2a0aa@david-bauer.net>
Date: Fri, 3 Apr 2020 12:12:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <e74d668d-d2ad-8312-b5c0-7e8e2e9bbf02@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_031307_584181_D736DD93 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gTWFnbnVzLAoKT24gNC8zLzIwIDEyOjA3IFBNLCBNYWdudXMgS3Jva2VuIHdyb3RlOgo+
IEhpIGFsbAo+IAo+IE9uIDAzLjA0LjIwMjAgMTE6MjEsIEJqw7hybiBNb3JrIHdyb3RlOgo+PiBE
YXZpZCBCYXVlciA8bWFpbEBkYXZpZC1iYXVlci5uZXQ+IHdyaXRlczoKPj4KPj4+IEFzIHRoZSBy
ZXBvcnRlZCBtYWpvciBidWdzIGFyZSBpcm9uZWQgb3V0LCBzd2l0Y2ggdG8gdGhlIG5ldyBrZXJu
ZWwgdG8KPj4+IGJlZ2luIHRlc3Rpbmcgd2l0aCBhIGJyb2FkZXIgYXVkaWVuY2UuCj4+Cj4+Cj4+
IEhtbS4uLiBJIHdvbmRlciBpZiB5b3UgbWlnaHQgd2FudCB0byBob2xkIGJhY2sgb24gdGhhdCBm
b3IgYSB3aGlsZS4KPj4KPj4gSSBoYXZlIG5vIHVzZWZ1bCBpbmZvIHlldCBzaW5jZSBJIGRvbid0
IGhhdmUgY29uc29sZSBhY2Nlc3Mgb24gdGhpcwo+PiBkZXZpY2UsIGJ1dCBJIGp1c3QgbG9zdCBu
ZXR3b3JrIGFjY2VzcyB0byBhIFVuaUZpIEFQIEFDIFBSTyBhZnRlciB0cnlpbmcKPj4gb3V0IGN1
cnJlbnQgbWFzdGVyIChmY2QxNDAxNzAwN2QpLgo+IAo+IEkgaGVsZCBiYWNrIGFuZCBwbGFubmVk
IHRvIHJlcG9ydCB3aGVuIEkgaGF2ZSBhIGxvZyBmcm9tIHNlcmlhbCwgYnV0IEknbSBzZW5kaW5n
IHRoaXMgbm93IHNpbmNlIHRoaXMgc291bmRzIHNpbWlsYXIgdG8gbXkgZXhwZXJpZW5jZS4KPiAK
PiBJJ3ZlIHRlc3RlZCA1LjQgb24gbXkgdGwtd2RyNDMwMHYxLCBhbmQgaXQgZ290IHN0dWNrIGlu
IHJlYm9vdCBsb29wIHJlY2VudGx5LiBJIHBsYW4gdG8gZ2V0IGEgc2VyaWFsIGNvbm5lY3Rpb24g
b24gaXQgdGhpcyB3ZWVrZW5kIHRvIHNlZSBleGFjdGx5IHdoYXQgaGFwcGVucywgYnV0IHdpdGgg
dGhlIGVhc3kgVEZUUCByZWNvdmVyeSBJJ3ZlIGJpc2VjdGVkIGl0IHRvIHRoZSBHQ0MgOC40IHVw
ZGF0ZS4gRG9pbmcgYSBkaXJjbGVhbiBiZXR3ZWVuIGVhY2ggdGVzdCwgaHR0cHM6Ly9naXQub3Bl
bndydC5vcmcvP3A9b3BlbndydC9vcGVud3J0LmdpdDthPWNvbW1pdDtoPWRiNzAwNzc2NjhlNzU3
YTI3ZjQxZDljYjNjODRmMjhlYTdkNGMyMmUgaXMgdGhlIGZpcnN0IGJhZCBjb21taXQuIFRoaXMg
aXMgdGhlIHNpbXBsZSBjb25maWcgSSd2ZSB1c2VkIGZvciB0ZXN0aW5nOgo+IAo+IENPTkZJR19U
QVJHRVRfYXRoNzk9eQo+IENPTkZJR19UQVJHRVRfYXRoNzlfZ2VuZXJpYz15Cj4gQ09ORklHX1RB
UkdFVF9hdGg3OV9nZW5lcmljX0RFVklDRV90cGxpbmtfdGwtd2RyNDMwMC12MT15Cj4gQ09ORklH
X0xJTlVYXzVfND15Cj4gQ09ORklHX1RFU1RJTkdfS0VSTkVMPXkKPiAKPiBUZXN0aW5nIGlzIG9u
IGhvbGQgYXMgdGhlIGRldmljZSBpcyBpbiBzZXJ2aWNlIHJpZ2h0IG5vdywgYnV0IEknZCBhcHBy
ZWNpYXRlIGFueSBpZGVhcyBmb3IgZnVydGhlciB0ZXN0aW5nLgoKVGhhbmtzIGZvciB0aGlzIHJl
cG9ydC4gSSdtIG5vdCBpbiB0aGUgcG9zZXNzaW9uIG9mIGFuIEFDLVBybyBidXQgaQpoYXZlIGEg
V0RSMzYwMCBhcm91bmQsIHdoaWNoIGlzIG1vc3RseSBpZGVudGljYWwgdG8gdGhlIFdEUjQzMDAu
CgpJJ3ZlIG5vdCB0ZXN0ZWQgNS40IHRoZXJlLCBidXQgaSB3aWxsIHNlZSBpZiBpIGNhbiByZXBy
b2R1Y2UgYW55IG5ldHdvcmstcmVsYXRlZAppc3N1ZSB0aGVyZS4KCkJlc3Qgd2lzaGVzCkRhdmlk
Cgo+IAo+IC9NYWdudXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
