Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB898A94BD
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 23:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azBKK8TrqQV3PzbT5YQpmtafeoxTY/gnP19mPMyqtpU=; b=ptUkF6gPOKhifk
	o9NvyLM0T4Zh0I0mPQ15Ot9S1bJvQCJ9E0ZRcpFUm0jvf+3FJSOr0lrsp3Tk1v6V3/W3fpzbTVsx4
	kx/LkoBYhQ7scso+0c8+vQYsVHrSTYS0B0Nu8rBExqU6SRUARoVouqV+iaSDFd+JSpnbl2uCAr//o
	pbu755IdjDj04BrqrOLgDTTfnWyOWtU4qrvkgt4xPHyQVyQQ1XmKetSlej7SgmLWWKgElrSddaQab
	3S/0U55kklCkQHmoNlshzfO/SW3XQSOyi4C8tXT9O9c+CQC/gER8FOzW8tXnVUMPIedXzjMN4p4rK
	ietLv0wp2WiRkQAxpfKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cbJ-0006mR-TP; Wed, 04 Sep 2019 21:14:01 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cb9-0006lo-5M
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 21:13:53 +0000
Received: from [IPv6:2003:e5:3f07:ab00:2755:9ac9:762a:b514]
 (p200300E53F07AB0027559AC9762AB514.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:ab00:2755:9ac9:762a:b514])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id C69921E3D6;
 Wed,  4 Sep 2019 23:13:48 +0200 (CEST)
To: Karl Palsson <karlp@tweak.net.au>
References: <20190903162450.740-1-karlp@etactica.com>
 <bYDkJ5tuvGfQbaKw5b6JCsihiixQvLITddtcVqSj236f@mailpile>
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
Message-ID: <2b9d586f-66b2-07d4-29c0-40f8b47ce763@david-bauer.net>
Date: Wed, 4 Sep 2019 23:13:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bYDkJ5tuvGfQbaKw5b6JCsihiixQvLITddtcVqSj236f@mailpile>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_141351_511871_B9B84842 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: eg200: enable status led usage
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>, karlp <karlp@etactica.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gS2FybCwKCk9uIDkvMy8xOSA2OjU3IFBNLCBLYXJsIFBhbHNzb24gd3JvdGU6Cj4gCj4g
Cj4gS2FybCBQw6Fsc3NvbiAgPGthcmxwQGV0YWN0aWNhLmNvbT4gd3JvdGU6Cj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEthcmwgUGFsc3NvbiA8a2FybHBAZXRhY3RpY2EuY29tPgo+PiAtLS0KPiAKPiBJ
dCdzIG1pbm9yLCBidXQgaWYgc29tZW9uZSBwaWNrcyB0aGlzLCBwbGVhc2UgX2Rvbid0XyBjaGFu
Z2UgbXkKPiBTb0IgdG8gbWF0Y2ggdGhlIGVtYWlsLiBUaGUgb3JpZ2luYWwgc291cmNlIGNvbW1p
dHMgYW5kIGFsbCBnaXQKPiBjb25maWcgbmFtZXMgYXJlIHVuYWNjZW50ZWQsIGFuZCBpdCdzIGhv
dyBJIHVzZSBteSBuYW1lLCBpdCdzCj4ganVzdCB0aGUgb2ZmaWNlMzY1IG1haWwgc2VydmVyIHRo
YXQgaXMgIm1hbmdsaW5nIiBteSBuYW1lLCBhbmQKPiBpdCdzIG5vdCB0byBiZSB0cnVzdGVkLiAo
cmVmOgo+IGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3BlbndydC5naXQ7YT1j
b21taXQ7aD0wNzVjNTcwY2RlMDhjMmEyN2Y3ZTJhNjQ5OTVjYzc0YWU1MmI1NzA0Cj4gd2hlcmUg
aXQgYWN0dWFsbHkgd2FzICJtYXRjaGVkIFNvQiB0byBlbWFpbCIgdW5saWtlIHRoZSBjb21tZW50
KQoKR2l0IHdvbid0IGxldCBtZSBwdXNoIHRvIG1hc3RlciB3aXRob3V0IGEgb24tbWF0Y2hpbmcg
U29CLgoKJCBnaXQgcHVzaCB1cHN0cmVhbSB1cHN0cmVhbS1tYXN0ZXI6bWFzdGVyCkVudW1lcmF0
aW5nIG9iamVjdHM6IDIxLCBkb25lLgpDb3VudGluZyBvYmplY3RzOiAxMDAlICgyMS8yMSksIGRv
bmUuCkRlbHRhIGNvbXByZXNzaW9uIHVzaW5nIHVwIHRvIDQgdGhyZWFkcwpDb21wcmVzc2luZyBv
YmplY3RzOiAxMDAlICgxMS8xMSksIGRvbmUuCldyaXRpbmcgb2JqZWN0czogMTAwJSAoMTEvMTEp
LCAxLjIwIEtpQiB8IDYxNi4wMCBLaUIvcywgZG9uZS4KVG90YWwgMTEgKGRlbHRhIDcpLCByZXVz
ZWQgMCAoZGVsdGEgMCkKcmVtb3RlOiBObyBtYXRjaGluZyBTb0IgbGluZSBmb3VuZCBmb3IgYXV0
aG9yIEthcmwgUMOhbHNzb24gPGthcmxwQGV0YWN0aWNhLmNvbT4KcmVtb3RlOiAgaW4gY29tbWl0
IGExNTVhMTUzZTA5NDlhZWZkOTE0NzA2MWY5YTAwYTBkOTFkNDQwMGEKcmVtb3RlOiAKVG8gZ2l0
Lm9wZW53cnQub3JnOm9wZW53cnQvb3BlbndydC5naXQKICEgW3JlbW90ZSByZWplY3RlZF0gICAg
ICAgdXBzdHJlYW0tbWFzdGVyIC0+IG1hc3RlciAocHJlLXJlY2VpdmUgaG9vayBkZWNsaW5lZCkK
ZXJyb3I6IGZhaWxlZCB0byBwdXNoIHNvbWUgcmVmcyB0byAnZ2l0QGdpdC5vcGVud3J0Lm9yZzpv
cGVud3J0L29wZW53cnQuZ2l0JwoKQmVzdCB3aXNoZXMKRGF2aWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
