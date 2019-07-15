Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D99685D3
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 10:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJz5WtKRSNso3cwUJwQxKakNDvoo7yA7qSgLisBaTFI=; b=gMhEGryl+YBiav
	dJGyfuBbckMX0FhXxJ4dIfNcGrlJAiQ/IQjx+K0lve3/qVdMS/7ph/l4O8/+/6TDuqmTJ7c5RpMrH
	zALmjtOxkeWZcLlImOCt3OsckdFV+XIPqKl81LFqsVOJXuXAIzOOPRdaJCxQdtZLkdutvu4OZlulr
	FAnZXRVaqOGBjEuDsOu7qH4ECQa+51nrX+Ev3Mz1oyxvDN/KWrWM+Tz71WNTaeUYXCYIvZDsTQ2EF
	enJRBHTHaMy6SgGXXiEFHheZrkf+5423qCxODXey5vCqnHvGl9GKb/2PCyuEjiQA5u5MO5K8cs73+
	QudBSA6Pt690wHlBPJ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwoZ-00084P-Aa; Mon, 15 Jul 2019 08:58:31 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwoG-00083a-OY
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 08:58:15 +0000
Received: from [192.168.9.147] (unknown [213.188.105.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 9EAE51E05D;
 Mon, 15 Jul 2019 10:58:00 +0200 (CEST)
To: Etienne Champetier <champetier.etienne@gmail.com>
References: <20190714024328.17271-1-champetier.etienne@gmail.com>
 <04f97319-0ea0-25b8-1a54-c85c8c7fb4db@david-bauer.net>
 <CAOdf3gqxNEsoSFs-rNt886MR=SzM93fMH_-6HEyF53200t511g@mail.gmail.com>
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
Message-ID: <555d1fe9-d8ac-f0e1-ec9e-894a6a008375@david-bauer.net>
Date: Mon, 15 Jul 2019 10:58:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAOdf3gqxNEsoSFs-rNt886MR=SzM93fMH_-6HEyF53200t511g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_015813_091553_D49D4F30 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: enable QCA955x SGMII fixup on
 Mikrotik wAP AC
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gRXRpZW5uZSwKCk9uIDE1LjA3LjE5IDA0OjMwLCBFdGllbm5lIENoYW1wZXRpZXIgd3Jv
dGU6Cj4gSGkgRGF2aWQsCj4gCj4gTGUgZGltLiAxNCBqdWlsLiAyMDE5IMOgIDA0OjI1LCBEYXZp
ZCBCYXVlciA8bWFpbEBkYXZpZC1iYXVlci5uZXQ+IGEgw6ljcml0IDoKPj4KPj4gSGkgRXRpZW5u
ZSwKPj4KPj4gb25lIHNtYWxsIHJlbWFyazoKPj4KPj4gT24gMTQuMDcuMTkgMDQ6NDMsIEV0aWVu
bmUgQ2hhbXBldGllciB3cm90ZToKPj4+ICAgICAgIGF0aDc5X2luaXRfbWFjKGF0aDc5X2V0aDFf
ZGF0YS5tYWNfYWRkciwgYXRoNzlfbWFjX2Jhc2UsIDApOwo+Pj4gICAgICAgYXRoNzlfZXRoMV9k
YXRhLm1paV9idXNfZGV2ID0gJnJid2FwZ3NjX3BoeV9kZXZpY2UuZGV2Owo+Pj4gICAgICAgYXRo
NzlfZXRoMV9kYXRhLnBoeV9pZl9tb2RlID0gUEhZX0lOVEVSRkFDRV9NT0RFX1NHTUlJOwo+Pj4g
ICAgICAgYXRoNzlfZXRoMV9kYXRhLnBoeV9tYXNrID0gQklUKFJCV0FQR1NDX01ESU9fUEhZQURE
Uik7Cj4+PiArICAgICBhdGg3OV9ldGgxX2RhdGEuZW5hYmxlX3NnbWlpX2ZpeHVwID0gMTsKPj4K
Pj4gVGhpcyBzaG91bGQgYmUgZHJvcHBlZCBhcyBpdCdzIG5vdCBuZWNlc3NhcnkgYW55bW9yZS4K
PiAKPiBEaWQgc29tZSBtb3JlIHRlc3RzIGFuZCBpdCdzIGRlZmluaXRlbHkgbmVlZGVkIChoZXJl
IHRoaXMgaXMgYXI3MXh4ICYKPiBMaW51eCA0LjE0KQo+IEl0J3Mgc3RpbGwgdXNlZCBmb3Igb3Ro
ZXIgYm9hcmRzLCBjb3VsZCB5b3UgZGV0YWlsIHdoeSBpdCdzIG5vdCBuZWVkZWQKPiBhbnltb3Jl
LCBzaW5jZSB3aGF0IHZlcnNpb24sIHJlZmVyZW5jZSBzb21lIGNvbW1pdHMgPwoKWW91IGFyZSBy
aWdodCwgaXQgaXMgbmVlZGVkLiBJIHdhcyBvbmx5IGZvY3VzZWQgb24gdGhlIHdvcmthcm91bmQg
Zm9yIHRoZSBQSFkgc2lkZSwKYnV0IHdlIGluZGVlZCBleHBsaWNpdGx5IG5lZWQgdG8gZW5hYmxl
IHRoZSBNQUMgc2lkZSB3b3JrYXJvdW5kIHRvby4KClNvIHRoaXMgbG9va3MgZ29vZCB0byBtZS4K
CkJlc3Qgd2lzaGVzCkRhdmlkCgo+IAo+IFRoYW5rcwo+IEV0aWVubmUKPiAKPj4KPj4gQmVzdCB3
aXNoZXMKPj4gRGF2aWQKPj4KPj4+ICAgICAgIGF0aDc5X2V0aDFfcGxsX2RhdGEucGxsXzEwMDAg
PSAweDAzMDAwMTAxOwo+Pj4gICAgICAgYXRoNzlfZXRoMV9wbGxfZGF0YS5wbGxfMTAwID0gMHg4
MDAwMDEwMTsKPj4+ICAgICAgIGF0aDc5X2V0aDFfcGxsX2RhdGEucGxsXzEwID0gMHg4MDAwMTMx
MzsKPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
