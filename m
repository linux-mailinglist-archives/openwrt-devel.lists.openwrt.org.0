Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A35F08B6
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 22:51:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y5UjXLHy6peUgE/B4KDqBGGL7VPLIkURbLyBYUNL6Ec=; b=E1g1VIB/R5tq9769SqPyV6vNk
	vUTrnv3sAG6hlgAluyrqBmDSFdB6ntCTDlfXllZBfFWoLNl7AostjsV+5NuODx3smJ9qiWStv9XZy
	YvyPwhYuftmF0RQiGYNh5tDhcfHL2nm5DJTHmdmdbg4n8Y1CxtsTZcGRvXu3z73pVN9UpuVs5TQaI
	p7JkgLbBNDYiu5Ez9r4qtLu4tRCC9AtICwA0UzqHnpDfpkaVGVmofD+RlAEkYwKjfw1OCkyDt3aKB
	y/sBP7HucocSVlWFevVK50i7fUpOw8piQIoh+9hX0FnPNmMhLDAlitFamav1lBRWoFSq4hJLO38y+
	TBXyyzmUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6jA-0001Ly-JE; Tue, 05 Nov 2019 21:51:04 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iS6j1-0001Kv-9B
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 21:50:58 +0000
Received: from [IPv6:2001:67c:2ed8:100e:10c6:9d4c:c79f:90c4] (unknown
 [IPv6:2001:67c:2ed8:100e:10c6:9d4c:c79f:90c4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id E67121E3EE;
 Tue,  5 Nov 2019 22:50:50 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <012e01d593e2$1ced66b0$56c83410$@adrianschmutzler.de>
 <25f488ab-9cc5-8393-8273-542b431a8368@david-bauer.net>
 <7389DC3B-0AFF-41EC-AD75-04370E606E7E@adrianschmutzler.de>
 <e66c76ac-b2c7-076d-9231-3a71e66500d5@david-bauer.net>
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
Message-ID: <27e2d868-9dee-6112-142e-b1739c32cd33@david-bauer.net>
Date: Tue, 5 Nov 2019 22:50:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <e66c76ac-b2c7-076d-9231-3a71e66500d5@david-bauer.net>
Content-Type: multipart/mixed; boundary="------------721CA850E40B0747E367F077"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_135055_627777_7A7F8B38 
X-CRM114-Status: GOOD (  32.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Broken WiFi on QCA9533 rev. 2
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--------------721CA850E40B0747E367F077
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGVsbG8gQWRyaWFuLA0KDQpJJ3ZlIHByZXBhcmVkIHRoZSBhdHRhY2hlZCBwYXRjaCwgY2Fu
IHlvdSBjaGVjayBpZiB0aGUgc2l0dWF0aW9uIGltcHJvdmVkIHdpdGggaXQ/DQoNCkJlc3Qg
d2lzaGVzDQpEYXZpZA0KDQpPbiAxMS81LzE5IDU6MjAgUE0sIERhdmlkIEJhdWVyIHdyb3Rl
Og0KPiBIZWxsbyBBZHJpYW4sDQo+IA0KPiBPbiAxMS81LzE5IDU6MTQgUE0sIEFkcmlhbiBT
Y2htdXR6bGVyIHdyb3RlOg0KPj4gSGkgRGF2aWQsDQo+Pg0KPj4gdGhhbmtzIGZvciB5b3Vy
IHJlc3BvbnNlLg0KPj4NCj4+IFRvIG1lIGl0IGxvb2tzIGxpa2UgcWNhOTUzeCBhbHJlYWR5
IHVzZXMgMjUgTUh6IGNsb2NrLCBvciBhbSBJIGxvb2tpbmcgYXQgdGhlIHdyb25nIHZhbHVl
Og0KPiANCj4gWWVzLCBob3dldmVyIGF0aDlrIGRvZXMgbm90IHVzZSB0aGlzIHZhbHVlIGJ1
dCB0cmllcyB0byBkZXRlcm1pbmUgdGhlIHJlZmVyZW5jZSBjbG9jaw0KPiBiYXNlZCBvbiB0
aGUgYm9vdHN0cmFwIGJpdCAoc2VlIGZpcnN0IGxpbmsgaW4gbXkgcHJldmlvdXMgRS1NYWls
KSwgc28gdGhlIHZhbHVlDQo+IGZyb20gdGhlIGRldmljZSB0cmVlIGlzIG5ldmVyIHVzZWQg
Zm9yIGF0aDlrLg0KPiANCj4gQmVzdCB3aXNoZXMNCj4gRGF2aWQNCj4gDQo+Pg0KPj4gaHR0
cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9iL21hc3Rlci90YXJnZXQvbGlu
dXgvYXRoNzkvZHRzL3FjYTk1M3guZHRzaSNMMjcNCj4+DQo+PiBCZXN0DQo+Pg0KPj4gQWRy
aWFuDQo+Pg0KPj4NCj4+IE9uIDUgTm92ZW1iZXIgMjAxOSAxNjo0Njo1OSBDRVQsIERhdmlk
IEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD4gd3JvdGU6DQo+Pg0KPj4gICAgIEhlbGxv
IEFkcmlhbiwNCj4+DQo+PiAgICAgZHVyaW5nIHRoZSBDUEUyMTB2MiBicmluZ3VwIGl0IHdh
cyBkaXNjb3ZlcmVkIHRoYXQgdGhlIENQRTIxMCBoYXMgdGhlIHdyb25nIGJvb3RzdHJhcCBv
cHRpb24gc2V0DQo+PiAgICAgZm9yIGl0J3MgMjUgTUh6IHJlZmVyZW5jZSBjbG9jay4gQmVj
YXVzZSBvZiB0aGlzLCB0aGUgZGV2aWNlIHdhcyBvcmlnaW5hbGx5IG5vdCBldmVuIGJvb3Rp
bmcgd2l0aCBhcjcxeHguDQo+Pg0KPj4gICAgIE9uIGF0aDc5LCB0aGUgcmVmZXJlbmNlIGNs
b2NrIGlzIG5vdCBkZXRlY3RlZCBiYXNlZCBvbiB0aGUgYm9vdHN0cmFwIG9wdGlvbiwgYnV0
IHNldCBieSB0aGUgRFRTLg0KPj4gICAgIFRoZSB0d2lzdCBob3dldmVyIGlzIHRoZSBhdGg5
ayBkcml2ZXIsIHdob3NlIE9GIHBhdGNoIHN0aWxsIHJlYWRzIHRoaXMgcmVnaXN0ZXIuIFsw
XQ0KPj4NCj4+ICAgICBPbiBhcjcxeHgsIHRoZSBwbGF0Zm9ybSBkYXRhIHdhcyBhbHdheXMg
c2V0IHRvIHRydWUgZm9yIHRoZSBRQ0E5NTMzIFsxXQ0KPj4NCj4+ICAgICBTbyB5b3UgY2Fu
IHRyeSB0byBmb3JjZSB0aGUgc2V0dGluZ3MgZm9yIDI1TUh6IHJlZmVyZW5jZSBjbG9jayBm
b3IgYWxsIFFDQTk1M3ggcmVnYXJkbGVzcyBvZiB0aGUgYm9vdHN0cmFwDQo+PiAgICAgc2V0
dGluZ3MgdG8ga2VlcCB0aGUgYmVoYXZpb3IgaW4gbGluZSB3aXRoIGFyNzF4eC4NCj4+DQo+
PiAgICAgSSBoYXZlIG5vIGRldmljZSB0byB2ZXJpZnkgdGhpcywgaG93ZXZlciBpdCdzIGEg
Z29vZCBjYW5kaWRhdGUgZm9yIHRoZSByb290IGNhdXNlLiA7KQ0KPj4NCj4+ICAgICBbMF0g
aHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9iL21hc3Rlci9wYWNrYWdl
L2tlcm5lbC9tYWM4MDIxMS9wYXRjaGVzL2F0aC81NTItYWhiX29mLnBhdGNoI0wyMzcNCj4+
ICAgICBbMV0gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9iL21hc3Rl
ci90YXJnZXQvbGludXgvYXI3MXh4L3BhdGNoZXMtNC4xNC82MjAtTUlQUy1hdGg3OS1hZGQt
c3VwcG9ydC1mb3ItUUNBOTUzeC1Tb0MucGF0Y2gjTDI2MA0KPj4NCj4+ICAgICBCZXN0IHdp
c2hlcw0KPj4gICAgIERhdmlkDQo+Pg0KPj4gICAgIE9uIDExLzUvMTkgMzowNSBQTSwgQWRy
aWFuIFNjaG11dHpsZXIgd3JvdGU6DQo+Pg0KPj4gICAgICAgICBIaSwNCj4+DQo+PiAgICAg
ICAgIGZvciBxdWl0ZSBzb21lIHRpbWUgYWxyZWFkeSB3ZSBhcmUgc3RydWdnbGluZyB3aXRo
IGJyb2tlbiBXaUZpIG9uIHNvbWUgVFAtTGluayBDUEUgZGV2aWNlcyBoYXZpbmcgUUNBOTUz
MyByZXYuIDIgKFFDQTk1MzMtQkwzQSBTT0MpIGluIGNvbW1vbi4NCj4+DQo+PiAgICAgICAg
IEknZCBiZSBoYXBweSBvbiBzb21lIGhlbHAgaGVyZSwgc2luY2UgSSd2ZSBleGhhdXN0ZWQg
bXkgZGVidWdnaW5nIGNhcGFiaWxpdGllcy4NCj4+DQo+Pg0KPj4gICAgICAgICAxLiBTeW1w
dG9tczogV2lGaSBsb29rcyB1cCBvbiB0aGUgZGV2aWNlLCBzb21lIFRYIHRyYWZmaWMgaXMg
c2hvd24gaW4gaWZjb25maWcsIFJYIGlzIHplcm8uIFRoZSBBUCBjYW5ub3QgYmUgZm91bmQg
YnkgY2xpZW50cy4gIml3IGRldiB3bGFuMCBzY2FuIiByZXR1cm5zIG5vdGhpbmcuDQo+Pg0K
Pj4gICAgICAgICAyLiBBZmZlY3RlZCBkZXZpY2VzOiBUUC1MaW5rIENQRTIxMCB2Mi92Mywg
Q1BFMjIwIHYzIChhbGwgUUNBOTUzMyByZXYuIDI/KTsgbm8gb3RoZXIgUUNBOTUzMyBkZXZp
Y2VzIGtub3duIHRvIGJlIGFmZmVjdGVkIChzcGVjaWZpYyB0byBDUEUgb3IgdG8gUUNBOTUz
MyByZXYuIDI/KQ0KPj4NCj4+ICAgICAgICAgMy4gRm9yIGEgY2VydGFpbiBtb2RlbCwgdGhl
cmUgYXJlIGRldmljZXMgd2hpY2ggYXJlIHdvcmtpbmcgY29ycmVjdGx5IGFuZCBvdGhlcnMg
d2hpY2ggZG9uJ3QuIFRoZXJlIGlzIG5vIGtub3duIGluZGljYXRvciB0byBmaW5kIG91dCB3
aGV0aGVyIGEgZGV2aWNlIHdvcmtzIG9yIG5vdC4gVGhlIHN0YXRlIG9mIGEgZGV2aWNlIGRv
ZXMgbm90IGNoYW5nZSBhcyBmYXIgYXMgd2Uga25vdyAoYWx3YXlzIHdvcmtpbmcgb3IgbmV2
ZXIgd29ya2luZykuDQo+Pg0KPj4gICAgICAgICA0LiBTbyBmYXIsIG9ubHkgMi40IEdIWi1v
bmx5IGRldmljZXMgd2VyZSBhZmZlY3RlZA0KPj4NCj4+ICAgICAgICAgNS4gVGhlcmUgaXMg
bm8gZGlhZ25vc3RpYyBvdXRwdXQgdGhhdCBpbmRpY2F0ZXMgYSBXaUZpIHByb2JsZW0uIGRt
ZXNnL2xvZ3JlYWQgbG9vayBub3JtYWwsIHRoZXJlIGlzIG5vIGRpZmZlcmVuY2Ugd2hlbiBj
b21wYXJlZCBiZXR3ZWVuIHdvcmtpbmcgYW5kIG5vdC13b3JraW5nIGRldmljZXMgKGRlc3Bp
dGUgUlg9MC9zY2FuIGFzIHN0YXRlZCBhYm92ZSkNCj4+DQo+PiAgICAgICAgIDYuIFRoZSBw
cm9ibGVtIHNlZW1zIHRvIGJlIHByZXNlbnQgZnJvbSB0aGUgYmVnaW5uaW5nIChkZXZpY2Ug
c3VwcG9ydCBwYXRjaGVzKSwgaXQganVzdCBoYXMgYmVlbiBvdmVybG9va2VkIHNpbmNlIGl0
J3Mgbm90IG9jY3VycmluZyBvbiBldmVyeSBkZXZpY2UuDQo+Pg0KPj4gICAgICAgICA3LiBU
aGUgYXI3MXh4IGZpcm13YXJlIGZvciBhbGwgZGV2aWNlcyB3b3JrcyBmbGF3bGVzc2x5LCBz
byBpdCBpcyBhbiBhdGg3OS1zcGVjaWZpYyBwcm9ibGVtLg0KPj4NCj4+DQo+PiAgICAgICAg
IE90aGVyIGZpbmRpbmdzIHRoYXQgbWlnaHQgYmUgY29ubmVjdGVkIG9yIG5vdDoNCj4+DQo+
PiAgICAgICAgIGEuIE9uIGF0aDc5IHBoeTAgdXNlcyBpcnE9MTEvaXJxPTEyIGFuZCBvbiBh
cjcxeHggaXJxPTQ3LiBldGgwIHVzZXMgaXJxPTQgb24gYm90aCB0YXJnZXRzLg0KPj4NCj4+
ICAgICAgICAgYi4gVGhlIGZvbGxvd2luZyBncGlvIGlzIG9ubHkgZm91bmQgb24gYXI3MXh4
OiBncGlvLTQ5NSAoIHxhdGg5ay1waHkwICkgaW4gbG8NCj4+DQo+Pg0KPj4gICAgICAgICBJ
IGN1cnJlbnRseSBvd24gYSBDUEUyMTB2MiB3aXRoIHRoZSBidWcgYW5kIGNhbiB0ZXN0IHN1
Z2dlc3Rpb25zIChpZiBJJ20gY2FwYWJsZSBvZiBpbXBsZW1lbnRpbmcgdGhlbSkuDQo+PiAg
ICAgICAgIFRoZXJlIGlzIGEgZGV2aWNlIHN1cHBvcnQgUFIgZm9yIHRoZSBDUEUyMjAgdjMg
c3VmZmVyaW5nIGZyb20gdGhlIHNhbWUgcHJvYmxlbTogaHR0cHM6Ly9naXRodWIuY29tL29w
ZW53cnQvb3BlbndydC9wdWxsLzI1MTQNCj4+DQo+PiAgICAgICAgIERlc3BpdGUsIGZ1cnRo
ZXIgcmVhZGluZyBtYXkgYmUgZm91bmQgaW4gZm9ydW0gZGlzY3Vzc2lvbiBhbmQgYnVnIHJl
cG9ydDoNCj4+ICAgICAgICAgaHR0cHM6Ly9idWdzLm9wZW53cnQub3JnL2luZGV4LnBocD9k
bz1kZXRhaWxzJnRhc2tfaWQ9MjMzMw0KPj4gICAgICAgICBodHRwczovL2J1Z3Mub3Blbndy
dC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0yNDc4DQo+PiAgICAgICAgIGh0
dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9hdGg3OS10cC1saW5rLWNwZTIxMC12Mi0wLXdp
Zmktbm90LXdvcmtpbmcvNDA2NjYNCj4+DQo+PiAgICAgICAgIEluaXRpYWwgc3VwcG9ydCBm
b3IgQ1BFMjEwIHYyL3YzIHdhcyBkb25lIGJ5IG1lIGFuZCBibHVlbGluZVhZLCBib3RoIGFs
cmVhZHkgaW52b2x2ZWQgaW4gdGhlIGRpc2N1c3Npb24uIDstKQ0KPj4NCj4+ICAgICAgICAg
VGhhbmtzIGZvciBhbnkgaGludHMhDQo+Pg0KPj4gICAgICAgICBBZHJpYW4NCj4+ICAgICAg
ICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiAgICAgICAgIG9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0DQo+PiAgICAgICAgIG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcNCj4+
ICAgICAgICAgaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwNCj4+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0DQo+IG9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwNCj4gDQo=
--------------721CA850E40B0747E367F077
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-mac80211-ath9k-force-QCA953x-clock-to-25MHz.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-mac80211-ath9k-force-QCA953x-clock-to-25MHz.patch"

From b4451e9975faa66919a056080c897d327eec1e79 Mon Sep 17 00:00:00 2001
From: David Bauer <mail@david-bauer.net>
Date: Tue, 5 Nov 2019 22:28:39 +0100
Subject: [PATCH] mac80211 ath9k: force QCA953x clock to 25MHz

The QCA953x only supports 25 MHz refclk, however some OEMs set an
invalid bootstrap value for the REF_CLK option, which would break the
clock detection in ath9k.

Force the QCA953x refclk to 25MHz in ath9k, as this is (according to the
datasheet) the only valid frequency.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../mac80211/patches/ath/552-ahb_of.patch     | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/package/kernel/mac80211/patches/ath/552-ahb_of.patch b/package/kernel/mac80211/patches/ath/552-ahb_of.patch
index 1170fc64bd..bbb29fc5b1 100644
--- a/package/kernel/mac80211/patches/ath/552-ahb_of.patch
+++ b/package/kernel/mac80211/patches/ath/552-ahb_of.patch
@@ -16,7 +16,7 @@
  
  static const struct platform_device_id ath9k_platform_id_table[] = {
  	{
-@@ -69,6 +77,235 @@ static const struct ath_bus_ops ath_ahb_
+@@ -69,6 +77,242 @@ static const struct ath_bus_ops ath_ahb_
  	.eeprom_read = ath_ahb_eeprom_read,
  };
  
@@ -232,7 +232,14 @@
 +		pdata->external_reset = data->wmac_reset;
 +	}
 +
-+	if (data->bootstrap_reg && data->bootstrap_ref) {
++	if (data->dev_id == AR9300_DEVID_AR953X) {
++		/*
++		 * QCA953x only supports 25MHz refclk.
++		 * Some vencors have an invalid bootstrap option
++		 * set, which would break the WMAC here.
++		 */
++		pdata->is_clk_25mhz = true;
++	} else if (data->bootstrap_reg && data->bootstrap_ref) {
 +		u32 t = ath79_reset_rr(data->bootstrap_reg);
 +		if (t & data->bootstrap_ref)
 +			pdata->is_clk_25mhz = false;
@@ -252,7 +259,7 @@
  static int ath_ahb_probe(struct platform_device *pdev)
  {
  	void __iomem *mem;
-@@ -80,6 +317,17 @@ static int ath_ahb_probe(struct platform
+@@ -80,6 +324,17 @@ static int ath_ahb_probe(struct platform
  	int ret = 0;
  	struct ath_hw *ah;
  	char hw_name[64];
@@ -270,7 +277,7 @@
  
  	if (!dev_get_platdata(&pdev->dev)) {
  		dev_err(&pdev->dev, "no platform data specified\n");
-@@ -122,13 +370,16 @@ static int ath_ahb_probe(struct platform
+@@ -122,13 +377,16 @@ static int ath_ahb_probe(struct platform
  	sc->mem = mem;
  	sc->irq = irq;
  
@@ -288,7 +295,7 @@
  	if (ret) {
  		dev_err(&pdev->dev, "failed to initialize device\n");
  		goto err_irq;
-@@ -159,6 +410,9 @@ static int ath_ahb_remove(struct platfor
+@@ -159,6 +417,9 @@ static int ath_ahb_remove(struct platfor
  		free_irq(sc->irq, sc);
  		ieee80211_free_hw(sc->hw);
  	}
@@ -298,7 +305,7 @@
  
  	return 0;
  }
-@@ -168,6 +422,9 @@ static struct platform_driver ath_ahb_dr
+@@ -168,6 +429,9 @@ static struct platform_driver ath_ahb_dr
  	.remove     = ath_ahb_remove,
  	.driver		= {
  		.name	= "ath9k",
-- 
2.23.0


--------------721CA850E40B0747E367F077
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------721CA850E40B0747E367F077--

