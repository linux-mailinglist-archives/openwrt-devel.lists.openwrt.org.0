Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD141533A3
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 16:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tnrDhf0ovmj4OGhmK87fzKfrYIxn+jj8YGY0yY7ZbE=; b=Oy8DquDrKwRmBz
	i/6c0V1MW0WkDjLGXlL2dT33pmW9hz/VkYZSMVVMEYZ/CpRAYrUYu0BHPE0ZokCoA99s1NdiUyGrR
	ChjHTdPpBegPTzVkattCfazAHMIFtlE4ZBLAXZisyPuL9Y9XPJ0O7T103xuzKGroxVHfhs3ynmQdx
	QJdl/duKeu0dXOgBuC1f/s71z87hTJy9o8uEHjVwfFM2Y1R5nN8kd3HsVjb0BCXHkrm7om99Hh64I
	jyYenKDxfjktlwpLy0utP3Rvx5mt3oPr+YoSEVYvUB9m+ib9ghU8EqKUfgQBGoCYfTPyE3nnlQOT7
	YTvFnQEkxtd8C1G2KEVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izMHB-0006s8-TD; Wed, 05 Feb 2020 15:07:37 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izMH3-0006rX-NY
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 15:07:31 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N332D-1jgM8O1sPF-013QCc; Wed, 05
 Feb 2020 16:07:25 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Alin_N=C4=83stac'?= <alin.nastac@gmail.com>
References: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
 <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
 <CAF1oqRBa5vabU4Am+Q-Fqr+2mp-LUsLyjYqWzrzMnWSF3PQ4Cw@mail.gmail.com>
 <007e01d5dc23$b9107fd0$2b317f70$@adrianschmutzler.de>
 <CAF1oqRC6z3+YqpmByiyJ0x-2h5bcaE21HRHc4a6HvdCDaZd-xg@mail.gmail.com>
 <014901d5dc29$a8249fc0$f86ddf40$@adrianschmutzler.de>
 <CAF1oqRA_erf_ESCeAkw4fMfBSvKHSmpFBBF3Vw9BNo6v9OQ1vA@mail.gmail.com>
In-Reply-To: <CAF1oqRA_erf_ESCeAkw4fMfBSvKHSmpFBBF3Vw9BNo6v9OQ1vA@mail.gmail.com>
Date: Wed, 5 Feb 2020 16:07:17 +0100
Message-ID: <004601d5dc35$f9525e80$ebf71b80$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQMms56D32+A8G7+0r2QD0LMBZ9EqAKVco6PAtmEJwUCFj/XggKiOtCeAuzXcQECSCStBKTwIPLQ
X-Provags-ID: V03:K1:jaiuf14iFKNpLexn5QOoo8DkN61BKbJivyRR9ORowhHXrT0F4gd
 m2QtXFYX0c1KRS91xvFd0Qkqv8qCGPpdlYb/NyoDlWpTG+EnGxz2W04LUnbSYq2BSkk6tFV
 1nzm51sWKX8D+1tfb2pNW/hzqIAXUJSaSslmjXkAa1fAAMSJEyky5ZNYNeSTnneMRLUhrf2
 6sV2AhoPiJLGO4aj3mVsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/MrlQwC/loQ=:6vxa7rgwS60cD2z/SKcOOe
 xHi4r8NKhElJbuqLvTzIKfA4TTAyC4Xx0kLb9nvg7ZtTJIqb6270utZA241+rPWc1SNJ3rbA9
 3GBtOh3zH39rO/4CoOj3qBO8Aaa/dGTyWBE9d6WyCvj2zyP0rvaxfNquY0V3VBE61VJ+IIT5p
 TqF7R12wO0Xcq4n/hzo5sq+5Vo/NMkhIH5gyDUPlNt740Id6sGjWAl71GeFr2GsUF4GLIZHga
 2rCNbpg78O09od7i4R7/6Hjtc/jOBl5zBs4gpX61R7/usRsQLm80u1epxtr+jHcZfcER3b30Y
 YSr0Bj3xVjDL5bmiAyksqjnwSLwb4ujrf8cWvmyGUqARhjqrOehonh9eWz5B2fl1sVu/vqViR
 fc/iQW6i/jXsqosOUtGmfX0xve1aDRP1RAZ3qXIRmbu+CVTAyvZ8beT/7QebQN6r+szICZPmx
 pukVnjp7Apv14AhKiBK1qzEMCMIyimCcKDtEj27HGrShnK3/QnU8JPodFijM0poH0gnEhJhI4
 9Ur4D4Yx7MCucPY2KeWYTRVZOnnJgtDXscT5+hix6u6c3bTJN3nEeoaX6MIKRa6l9KxO+XhKV
 TwpAVVnANiw/a99JkC5y/qfnId/51dkfX5eGgG/OnPr4lt6JJ/hUjUZ/zoWOdlnwDAsvc2y27
 j9uAXWrpZxG18wo3n0iUJpcq1vE0hp4mW9OsJ0URJoZVnufsDLkuWaKDeW8Z6ANsCyNEvz5Cg
 LCiQbyObhUAkaj8bmHLRJQcz1vFvXbkPiuQEGoznWXgI6hjnHbnE/uAzkL/aqc2OmpaMR3Doo
 RunV3n9vCzqzTT5+Pvw+jbfIpHrSpcs3id7s7PKeynqyv/GMyT2YVlP3B5ktQdTVO0ovhIa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_070730_056217_C3E4B612 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix
 route ownership to kernel when IPv6 address becomes deprecated
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEFsaW4gTsSDc3RhYyBbbWFpbHRv
OmFsaW4ubmFzdGFjQGdtYWlsLmNvbV0KPiBTZW50OiBNaXR0d29jaCwgNS4gRmVicnVhciAyMDIw
IDE0OjQzCj4gVG86IEFkcmlhbiBTY2htdXR6bGVyIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+
Cj4gQ2M6IG9wZW53cnQtZGV2ZWwgPG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4g
U3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbbmV0aWZkXVtQQVRDSF0gaW50ZXJmYWNlLWlw
OiB0cmFuc2ZlciBwcmVmaXggcm91dGUKPiBvd25lcnNoaXAgdG8ga2VybmVsIHdoZW4gSVB2NiBh
ZGRyZXNzIGJlY29tZXMgZGVwcmVjYXRlZAo+IAo+IFNpbmNlIGl0IGhhcyBhIGRpZmZlcmVudCB0
aXRsZSwgSSBwcmVzdW1lZCBwYXRjaHdvcmsgc2l0ZSB3aWxsIG5vdAo+IHVuZGVyc3RhbmQgaXMg
dGhlIDJuZCB2ZXJzaW9uIG9mIHByZXZpb3VzIHBhdGNoLgoKUGF0Y2h3b3JrIHdvbid0IGNhcmUu
IEl0IG9ubHkgbWFrZXMgcHJvYmxlbXMgaWYgeW91IHNlbmQgdGhlIGV4YWN0IHNhbWUgdGl0bGUg
d2l0aG91dCB2ZXJzaW9uIGJ1bXAuCgpCdXQgZm9yIHBlb3BsZSBsb29raW5nIGF0IGl0IHZlcnNp
b24gbWlnaHQgaGVscCwgdW5sZXNzIHlvdSByZWFsbHkgZG8gc29tZXRoaW5nIGNvbXBsZXRlbHkg
ZGlmZmVyZW50IGluIHRoZSBuZXcgcGF0Y2guCgpCZXN0CgpBZHJpYW4KCj4gCj4gT24gV2VkLCBG
ZWIgNSwgMjAyMCBhdCAyOjM5IFBNIEFkcmlhbiBTY2htdXR6bGVyCj4gPG1haWxAYWRyaWFuc2No
bXV0emxlci5kZT4gd3JvdGU6Cj4gPgo+ID4gSGksCj4gPgo+ID4gcGxlYXNlIHVzZSBhICJ2MiIg
bmV4dCB0aW1lLgo+ID4KPiA+IEJlc3QKPiA+Cj4gPiBBZHJpYW4KPiA+Cj4gPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+IEZyb206IEFsaW4gTsSDc3RhYyBbbWFpbHRvOmFsaW4u
bmFzdGFjQGdtYWlsLmNvbV0KPiA+ID4gU2VudDogTWl0dHdvY2gsIDUuIEZlYnJ1YXIgMjAyMCAx
NDozOAo+ID4gPiBUbzogQWRyaWFuIFNjaG11dHpsZXIgPG1haWxAYWRyaWFuc2NobXV0emxlci5k
ZT4KPiA+ID4gQ2M6IEhhbnMgRGVkZWNrZXIgPGRlZGVja2VoQGdtYWlsLmNvbT47IG9wZW53cnQt
ZGV2ZWwgPG9wZW53cnQtCj4gPiA+IGRldmVsQGxpc3RzLm9wZW53cnQub3JnPgo+ID4gPiBTdWJq
ZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtuZXRpZmRdW1BBVENIXSBpbnRlcmZhY2UtaXA6IHRy
YW5zZmVyIHByZWZpeAo+IHJvdXRlCj4gPiA+IG93bmVyc2hpcCB0byBrZXJuZWwgd2hlbiBJUHY2
IGFkZHJlc3MgYmVjb21lcyBkZXByZWNhdGVkCj4gPiA+Cj4gPiA+IEhpIEFkcmlhbiwKPiA+ID4K
PiA+ID4gVGhpcyBwYXRjaCBoYXMgYmVlbiBzdXBlcnNlZGVkIGJ5Cj4gPiA+IGh0dHBzOi8vcGF0
Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTIzMzg0NS8KPiA+ID4KPiA+ID4gQWxpbgo+ID4gPgo+
ID4gPiBPbiBXZWQsIEZlYiA1LCAyMDIwIGF0IDE6NTYgUE0gQWRyaWFuIFNjaG11dHpsZXIKPiA+
ID4gPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBIaSwK
PiA+ID4gPgo+ID4gPiA+IHdvcmtzIGZvciBtZSBhcyB3ZWxsLgo+ID4gPiA+Cj4gPiA+ID4gSG93
ZXZlciwgSSdkIHByZWZlciBhIHNob3J0ZXIgY29tbWl0IHRpdGxlLCBlLmcuCj4gPiA+ID4KPiA+
ID4gPiBpbnRlcmZhY2UtaXA6IHRyYW5zZmVyIHByZWZpeCByb3V0ZSBvd25lcnNoaXAgZm9yIGRl
cHJlY2F0ZWQgaXB2NmFkZHIgdG8KPiBrZXJuZWwKPiA+ID4gPgo+ID4gPiA+IEJlc3QKPiA+ID4g
Pgo+ID4gPiA+IEFkcmlhbgo+ID4gPiA+Cj4gPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQo+ID4gPiA+ID4gRnJvbTogb3BlbndydC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwt
Ym91bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10KPiBPbgo+ID4gPiA+ID4gQmVoYWxmIE9mIEFsaW4g
TmFzdGFjCj4gPiA+ID4gPiBTZW50OiBNaXR0d29jaCwgNS4gRmVicnVhciAyMDIwIDA5OjM0Cj4g
PiA+ID4gPiBUbzogSGFucyBEZWRlY2tlciA8ZGVkZWNrZWhAZ21haWwuY29tPgo+ID4gPiA+ID4g
Q2M6IG9wZW53cnQtZGV2ZWwgPG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4gPiA+
ID4gPiBTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtuZXRpZmRdW1BBVENIXSBpbnRlcmZh
Y2UtaXA6IHRyYW5zZmVyCj4gcHJlZml4Cj4gPiA+ID4gcm91dGUKPiA+ID4gPiA+IG93bmVyc2hp
cCB0byBrZXJuZWwgd2hlbiBJUHY2IGFkZHJlc3MgYmVjb21lcyBkZXByZWNhdGVkCj4gPiA+ID4g
Pgo+ID4gPiA+ID4gSGkgSGFucywKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiBUdWUsIEZlYiA0LCAy
MDIwIGF0IDEwOjQ5IFBNIEhhbnMgRGVkZWNrZXIgPGRlZGVja2VoQGdtYWlsLmNvbT4KPiA+ID4g
d3JvdGU6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEhpIEFsaW4sCj4gPiA+ID4gPiA+IE9uIE1v
biwgRmViIDMsIDIwMjAgYXQgNDoyNyBQTSBBbGluIE5hc3RhYyA8YWxpbi5uYXN0YWNAZ21haWwu
Y29tPgo+ID4gPiB3cm90ZToKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEZyb206IEFsaW4g
TmFzdGFjIDxhbGluLm5hc3RhY0BnbWFpbC5jb20+Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
PiBXaGVuIG5ldGlmZCBtYW5hZ2VzIHRoZSBwcmVmaXggcm91dGUgZGlyZWN0bHksIGl0IHdpbGwg
cmVtb3ZlIGl0Cj4gPiA+ID4gPiA+ID4gdGhlIG1vbWVudCBwcmVmaXggZ2V0cyBkZXByZWNhdGVk
LiBUaGlzIHdpbGwgbWFrZSBpdCBpbXBvc3NpYmxlCj4gPiA+ID4gPiA+ID4gZm9yIHRoZSB0YXJn
ZXQgdG8gc2VuZCBJQ01QdjYgZXJyb3JzIGJhY2sgdG8gTEFOIGRldmljZXMgc3RpbGwKPiA+ID4g
PiA+ID4gPiB1c2luZyB0aGUgZGVwcmVjYXRlZCBwcmVmaXgsIHRodXMgYnJlYWtpbmcgdGhlIEwt
MTQgcmVxdWlyZW1lbnQKPiA+ID4gPiA+ID4gPiBvZiBSRkMgNzA4NC4KPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsaW4gTmFzdGFjIDxhbGluLm5hc3RhY0BnbWFp
bC5jb20+Cj4gPiA+ID4gPiA+IFRoZSBwYXRjaCBmYWlscyB0byBhcHBseSB3aXRoIHRoZSBmb2xs
b3dpbmcgZXJyb3IgbWVzc2FnZSA6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEFwcGx5aW5nOiBp
bnRlcmZhY2UtaXA6IHRyYW5zZmVyIHByZWZpeCByb3V0ZSBvd25lcnNoaXAgdG8ga2VybmVsIHdo
ZW4KPiA+ID4gPiA+ID4gSVB2NiBhZGRyZXNzIGJlY29tZXMgZGVwcmVjYXRlZAo+ID4gPiA+ID4g
PiBlcnJvcjogc2hhMSBpbmZvcm1hdGlvbiBpcyBsYWNraW5nIG9yIHVzZWxlc3MgKGludGVyZmFj
ZS1pcC5jKS4KPiA+ID4gPiA+ID4gZXJyb3I6IGNvdWxkIG5vdCBidWlsZCBmYWtlIGFuY2VzdG9y
Cj4gPiA+ID4gPiA+IFBhdGNoIGZhaWxlZCBhdCAwMDAxIGludGVyZmFjZS1pcDogdHJhbnNmZXIg
cHJlZml4IHJvdXRlIG93bmVyc2hpcCB0bwo+ID4gPiA+ID4gPiBrZXJuZWwgd2hlbiBJUHY2IGFk
ZHJlc3MgYmVjb21lcyBkZXByZWNhdGVkCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgcm91dGUuYWRkciA9IGFkZHIuYWRkcjsKPiA+ID4gPiA+ID4gPiAg
ICAgICAgICAgICAgICAgfQo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgIGFkZHIuZmxhZ3MgfD0gREVWQUREUl9PRkZMSU5LOwo+ID4gPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgICBpZiAoc3lzdGVtX2FkZF9hZGRyZXNzKGwzX2Rvd25saW5rLCAmYWRkcikpCj4gPiA+
ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ID4gLS0KPiA+ID4gPiA+ID4gPiAyLjcuNAo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
Pgo+ID4gPiA+ID4gSSd2ZSBkb3dubG9hZGVkIHRoZSBwYXRjaCBmcm9tCj4gPiA+ID4gPiBodHRw
czovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEyMzI4ODUvIGFuZCBhcHBsaWVkIGl0Cj4g
PiA+ID4gPiBzdWNjZXNzZnVsbHkgd2l0aCBhIGdpdCBhbSBjb21tYW5kIGxpbmU6Cj4gPiA+ID4g
Pgo+ID4gPiA+ID4gbmFzdGFjYUBjcGx4MTAzNzovdXNyL2xvY2FsZGlzay9vcGVud3J0L25ldGlm
ZCQgZ2l0IGFtCj4gPiA+ID4gPiB+L0Rvd25sb2Fkcy9PcGVuV3J0LURldmVsLW5ldGlmZC1pbnRl
cmZhY2UtaXAtdHJhbnNmZXItcHJlZml4LXJvdXRlLQo+ID4gPiA+ID4gb3duZXJzaGlwLXRvLWtl
cm5lbC13aGVuLUlQdjYtYWRkcmVzcy1iZWNvbWVzCj4gPiA+ID4gPiAtZGVwcmVjYXRlZC5wYXRj
aAo+ID4gPiA+ID4gQXBwbHlpbmc6IGludGVyZmFjZS1pcDogdHJhbnNmZXIgcHJlZml4IHJvdXRl
IG93bmVyc2hpcCB0byBrZXJuZWwgd2hlbgo+ID4gPiA+ID4gSVB2NiBhZGRyZXNzIGJlY29tZXMg
ZGVwcmVjYXRlZAo+ID4gPiA+ID4KPiA+ID4gPiA+IEFsaW4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+ID4g
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4gPiA+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiA+ID4gPiA+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCj4gPiA+ID4KPiA+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
