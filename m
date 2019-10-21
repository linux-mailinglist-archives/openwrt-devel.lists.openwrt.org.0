Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0156BDF608
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 21:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/66t2lhmbgxbQJMhWvlKn+Bn7wUzreflt031GOuq+Vs=; b=qSGvo/zIHM3SwD
	PLRTGNOoUrisCBZwSdD/Wf3pMsZmzuMUYtNk9+8DYLa9o5mi0aQtq7v55vcQTSu/AZyLd3Kt4YPVl
	oXm+x5qhGkYc7bnmEK48Lw2G43sJSZlxKvb2jrz0mW7mNfH5L6As3LZAkbq42I+9No6RrQarAnBCX
	X7i75ASUfCl4pW1CIgV2zexCImLNrek9mRk9ARYJTDKiQT1mfXZ54mISc+ymPUgcEl7sot207zpkP
	WyD8AYOIiUNtIfOY6Iuj1xPZjufdG27vWbIoLemCDKmocwG2ZEL2mQVT79Nnj47ot8UUasMPXwjSt
	EpfzTt5IA3F0cIjJVkgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdPX-0006tK-GN; Mon, 21 Oct 2019 19:32:11 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iMdPL-0006qP-3s
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 19:32:00 +0000
Received: from [IPv6:2003:e5:3f06:a500:d386:feaa:ce2d:188f]
 (p200300E53F06A500D386FEAACE2D188F.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f06:a500:d386:feaa:ce2d:188f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id C340E1E13A;
 Mon, 21 Oct 2019 21:31:56 +0200 (CEST)
To: John Crispin <john@phrozen.org>
References: <20191021191308.16311-1-mail@david-bauer.net>
 <d3756443-be9b-d090-03ef-b478e62ed002@phrozen.org>
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
Message-ID: <3ee87f2d-68f6-1dc7-f0df-ddc4b225efc2@david-bauer.net>
Date: Mon, 21 Oct 2019 21:31:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <d3756443-be9b-d090-03ef-b478e62ed002@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_123159_316094_A025CE16 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] mac80211: add rtw88 driver
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

SGVsbG8gSm9obgoKT24gMTAvMjEvMTkgOToyMiBQTSwgSm9obiBDcmlzcGluIHdyb3RlOgo+IE9u
IDIxLzEwLzIwMTkgMjE6MTMsIERhdmlkIEJhdWVyIHdyb3RlOgo+PiArY29uZmlnLSQoY2FsbCBj
b25maWdfcGFja2FnZSxydHc4OCkgKz0gUlRXODgKPj4gK2NvbmZpZy15ICs9IFJUVzg4X0NPUkUg
UlRXODhfUENJIFJUVzg4Xzg4MjJCRSBSVFc4OF84ODIyQ0UKPj4gKwo+IAo+IHdoeSBub3QgcHV0
IGl0IGFsbCBiZWhpbmQgY29uZmlnLSQoY2FsbCBjb25maWdfcGFja2FnZSxydHc4OCkgPyBvZiBj
b3Vyc2Uga2J1aWxkIHdpbGwgImlzIG5vdCBzZXQgaXQiIGlmIHRoZSBwcmlvciBpcyBub3Qgc2Vs
ZWN0ZWQgYnV0IHlvdSBjb3VsZCBiZSBleHBsaWNpdCBoZXJlLiBpdHMgYmlrZXNoZWRkaW5nIGJ1
dCBJIHdhcyB3b25kZXJpbmcgaWYgSSBhbSBtaXNzaW5nIHRoZSBvYnZpb3VzIGhlcmUuCgpHb29k
IHBvaW50LCBpIHdpbGwgYWRqdXN0IHRoaXMgaGVyZS4gSXQncyBhIGxlZnRvdmVyIGZyb20gd2hl
biBpIHRob3VnaHQgYnVpbGRpbmcgc2VwZXJhdGUgcGFja2FnZXMKZm9yIGVhY2ggV2lGaSBjYXJk
IGlzIGEgZ29vZCBpZGVhICh3aGljaCBpIGRvbid0IHRoaW5rIHN0aWxsIGlzKS4KCkJlc3Qgd2lz
aGVzCkRhdmlkCgo+IMKgwqDCoMKgSm9obgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
