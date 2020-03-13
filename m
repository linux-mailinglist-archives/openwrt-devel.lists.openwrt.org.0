Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3424B184ED6
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 19:44:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wV6pvWiuul7vBi5++2zcZb1m/9O169gn7lB5f9msVY=; b=blvCFWdTyO6sv/
	i3NXWBHv2qL+GHWthD7pPXz7N6QqKO3t/pgS7xqYy02aesp7joF12HAUm0QblqCPCGjVlhzXPEJu3
	A5hWvefhVmhVT4Km9cv/TaSs/tUPU6CoxaXbZ4jRRwkVBeBcb5hGSkl/0NVINiz2kqP5cL51BHw4p
	Ps2gcMW7o+aakcKl8n29eUedOXC/UVQ6nPYX8ZCKzi+pGq96trMrDih89NQZOVZ4AI7u8iePIwnLU
	yPFi2//UOHL6iFWkOULsm2I1hCgk5EIgLgLVgAQhXHS2kVFDnwjPbXFwRc896fFZ61Qfm/9w4qIh6
	a5nyn8exlpImAFdlrr2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCpIE-0002vv-IV; Fri, 13 Mar 2020 18:44:22 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCpI6-0002v7-TM
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 18:44:17 +0000
Received: from [IPv6:2003:e5:3f07:c100:ed5c:b24:f01b:6778]
 (p200300E53F07C100ED5C0B24F01B6778.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:c100:ed5c:b24:f01b:6778])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 5133D2325C;
 Fri, 13 Mar 2020 19:44:11 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20200313000739.62880-1-mail@david-bauer.net>
 <87o8t0bqte.fsf@miraculix.mork.no> <20200313122926.GB56199@meh.true.cz>
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
Message-ID: <4ae5c778-8ba7-4685-ea7a-bab94260e426@david-bauer.net>
Date: Fri, 13 Mar 2020 19:44:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313122926.GB56199@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_114415_249584_BE4AEB59 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use downstream ag71xx for Kernel
 5.4
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpPbiAzLzEzLzIwIDE6MjkgUE0sIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gQmrDuHJu
IE1vcmsgPGJqb3JuQG1vcmsubm8+IFsyMDIwLTAzLTEzIDA5OjI5OjQ5XToKPiAKPj4gRGF2aWQg
QmF1ZXIgPG1haWxAZGF2aWQtYmF1ZXIubmV0PiB3cml0ZXM6Cj4+Cj4+PiAtLS0gYS90YXJnZXQv
bGludXgvYXRoNzkvZmlsZXMtNC4xOS9kcml2ZXJzL25ldC9ldGhlcm5ldC9hdGhlcm9zL2FnNzF4
eC9hZzcxeHhfbWFpbi5jCj4+PiArKysgYi90YXJnZXQvbGludXgvYXRoNzkvZmlsZXMvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X21haW4uYwo+Pj4gQEAgLTE1ODEs
NyArMTU4MSw3IEBAIHN0YXRpYyBpbnQgYWc3MXh4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4+PiAgCWFnLT5zdG9wX2Rlc2MtPm5leHQgPSAodTMyKSBhZy0+c3RvcF9kZXNj
X2RtYTsKPj4+ICAKPj4+ICAJbWFjX2FkZHIgPSBvZl9nZXRfbWFjX2FkZHJlc3MobnApOwo+Pj4g
LQlpZiAobWFjX2FkZHIpCj4+PiArCWlmIChtYWNfYWRkciAmJiAhSVNfRVJSKG1hY19hZGRyKSkK
Pj4KPj4gYmlrZXNoZWRkaW5nLi4uCj4gCj4gTm90IGJpa2VzaGVkZGluZyBhdCBhbGwsIGdvb2Qg
Y2F0Y2guIEl0J3MgYW4gaXNzdWUgd2hpY2ggc2hvdWxkIGJlIGZpeGVkLgo+IAo+IEl0IHNob3Vs
ZCBiZSBqdXN0IGBpZiAoIUlTX0VSUihtYWNfYWRkcikpYCBiZWNhdXNlIGl0J3MgZWl0aGVyIHZh
bGlkIHBvaW50ZXIKPiBvciBFUlJfUFRSIHNpbmNlIDUuMiB2aWEgY29tbWl0IGQwMWY0NDljMDA4
YSAoIm9mX25ldDogYWRkIE5WTUVNIHN1cHBvcnQgdG8KPiBvZl9nZXRfbWFjX2FkZHJlc3MiKS4g
SSB3b3VsZCBzaW1wbHkgY29weSZwYXN0ZSB0aGUgZnJhZ21lbnQgZnJvbSB1cHN0cmVhbQo+IGFn
NzF4eC5jLgoKQW5kIHdlIHdvdWxkIG5lZWQgdG8gd3JhcCB0aGlzIHN0YXRlbWVudCBpbiBwcmVj
b21waWxlIGNvbmRpdGlvbnMgZGVwZW5kaW5nIG9uIHRoZQprZXJuZWwgdmVyc2lvbi4gSSBsaWtl
IHRoaXMgaWRlYSBjb21wYXJlZCB0byB0aGUgY3VycmVudCAic29sdXRpb24iLgoKPiA2ODEtTkVU
LWFkZC1vZl9nZXRfbWFjX2FkZHJlc3NfbXRkLnBhdGNoIG5lZWRzIHRvIGJlIHVwZGF0ZWQgZm9y
IDUuNCwgdGhhdAo+IG9mX2dldF9tYWNfYWRkcmVzc19tdGQoKSBzaG91bGRuJ3QgcmV0dXJuIE5V
TEwsIGJ1dCBFUlJfUFRSIGluc3RlYWQuCgpJJ20gbm90IHF1aXRlIHN1cmUgYWJvdXQgdGhhdC4g
b2ZfZ2V0X21hY19hZGRyZXNzIGlzIHRoZSBvbmx5IGNhbGxlciBhbmQgYWxsIG90aGVyCnN1Yi1t
ZXRob2RzIGJlZm9yZSBvZl9nZXRfbWFjX2FkZHJfbnZtZW0gdGhlcmUgcmV0dXJuIE5VTEwgaW4g
Y2FzZSBubyB2YWxpZCBNQUMKYWRkcmVzcyBjYW4gYmUgZGV0ZXJtaW5lZC4gQXMgbG9uZyBhcyB3
ZSBhcmUgZXZhbHVhdGluZyBvZl9nZXRfbWFjX2FkZHJlc3NfbXRkIHJlc3VsdApwcmlvciB0byB0
aGUgcmVzdWx0IG9mIG9mX2dldF9tYWNfYWRkcl9udm1lbSB3ZSBzaG91bGQgYmUgb2theS4KCkJl
c3Qgd2lzaGVzCkRhdmlkCgo+IAo+IC0tIHluZXp6Cj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
