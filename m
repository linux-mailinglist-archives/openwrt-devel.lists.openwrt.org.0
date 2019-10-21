Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A020DF7C8
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 23:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQJP2klKTQh47WKtsqmtP5fBCw9ZXBVcDzsLF/kyWfw=; b=l0Yma4NX4w54br
	Td6JitGKVZUeIrilaP44r/o+GeUzqyQhv+sUOlSFX+F3HcQJ8t5ithwN38Jz+2Osoq/5fNFhjPx/w
	Q479UWIAf6JLG+bCDCvfb5cYSiW++bNmNJAiIf28/zuBsohdrj9WMKd6xtshl4ST13vzot308tui/
	VIAiz/daAIE1/UJG4ZAzRm07cMrdej+VhQ15riJEKuJ2U/rxwKvEcMVTpYh4HeX01HvvnVDhKv9qY
	BNwERdUS3iNWG6SnGKhSkRBDoCvaBZt2CWvpcEkEYY0JZtP/ojMuz6xLJz7HmLnyH19Kk2IcEhCum
	yYq7XGfCNtarifvmHIPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfgC-00061G-JM; Mon, 21 Oct 2019 21:57:32 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iMfg4-00060Z-NY
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 21:57:26 +0000
Received: from [IPv6:2003:e5:3f06:a500:d386:feaa:ce2d:188f]
 (p200300E53F06A500D386FEAACE2D188F.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f06:a500:d386:feaa:ce2d:188f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 84E5C1E13A;
 Mon, 21 Oct 2019 23:57:22 +0200 (CEST)
To: John Crispin <john@phrozen.org>, Hauke Mehrtens <hauke@hauke-m.de>
References: <20191021204712.30307-1-mail@david-bauer.net>
 <02ce7a5c-8c14-ccf4-141a-7440a2a09944@hauke-m.de>
 <087f1edb-5a45-9047-caee-11d8d6d4fa39@phrozen.org>
 <0a1b4fd7-76a8-112e-3c1e-9a18f173ec71@david-bauer.net>
 <d712bf1b-72bd-71db-ba8c-1245e65d630b@phrozen.org>
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
Message-ID: <338c4fdc-8611-6be8-32b6-2f344b91e63c@david-bauer.net>
Date: Mon, 21 Oct 2019 23:57:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <d712bf1b-72bd-71db-ba8c-1245e65d630b@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_145724_921473_1B16EA8C 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] mac80211: add rtw88 driver
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

SGVsbG8gSm9obiwKCk9uIDEwLzIxLzE5IDExOjQ0IFBNLCBKb2huIENyaXNwaW4gd3JvdGU6Cj4g
T24gMjEvMTAvMjAxOSAyMzo0MSwgRGF2aWQgQmF1ZXIgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDEwLzIx
LzE5IDExOjQwIFBNLCBKb2huIENyaXNwaW4gd3JvdGU6Cj4+PiBPbiAyMS8xMC8yMDE5IDIzOjIw
LCBIYXVrZSBNZWhydGVucyB3cm90ZToKPj4+Pj4gK2RlZmluZSBLZXJuZWxQYWNrYWdlL3J0dzg4
Cj4+Pj4+ICvCoCAkKGNhbGwgS2VybmVsUGFja2FnZS9tYWM4MDIxMS9EZWZhdWx0KQo+Pj4+PiAr
wqAgVElUTEU6PVJlYWx0ZWsgUlRMODgyMkJFL1JUTDg4MjJDRQo+Pj4+PiArwqAgREVQRU5EUys9
IEAoUENJX1NVUFBPUlQpICtrbW9kLW1hYzgwMjExICtARFJJVkVSXzExTl9TVVBQT1JUICtARFJJ
VkVSXzExV19TVVBQT1JUCj4+Pj4gUGxlYXNlIGFkZCArQERSSVZFUl8xMUFDX1NVUFBPUlQKPj4+
Pgo+Pj4KPj4+IFYzIGhlcmUgd2UgZ28gLi4uLgo+Pgo+PiBJIHdpbGwgbGVhdmUgdGhpcyB2MiBo
ZXJlIGFuZCB3YWl0IGZvciBmdXJ0aGVyIGZlZWRiYWNrIHRvIGFjY3VtdWxhdGUuCj4+Cj4+IEJl
c3Qgd2lzaGVzCj4+IERhdmlkCj4+Cj4gCj4gZG91YnQgdGhlcmUgd2lsbCBiZSBtb3JlLCBpZiB5
b3Ugc2VuZCBhIGEgVjMgd2l0aCBoYXVrZXMgc3VnZ2VzdGlvbnMgZm9sZGVkIGknbGwgbWVyZ2Ug
aXQKCkknbGwgcHVzaCBhIHZlcnNpb24gaW5jbHVkaW5nIEhhdWtlcyBzdWdnZXN0aW9ucyB0byBt
YXN0ZXIgbGF0ZXIgdGhpcyB3ZWVrLgoKQmVzdCB3aXNoZXMKRGF2aWQKCj4gwqDCoMKgwqBKb2hu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
