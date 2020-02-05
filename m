Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CE2153207
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 14:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqaGPjty7/KTuXjs0Exs3OmxyJyeS/3Ur3HftjbFYCs=; b=YlPAjoQBEV2EPz
	f1QKyht3v1J2m5x99Z82Ob2r4ZlSNb6l2nt6I86C7oKgBP1Y9i5kpJfmCrh2abj/eKiG4DRHqK9Bv
	qJVwWCsl/Z/mx16Gi31jeAh3XTLF/pAS/uP+ERAJM56rv/8HUhfgk72BYuEVQVL5Hca0rKDed0Pk+
	aAXear+S4ZZZlne8yBOopEOhvNHrgX3yqPsVRAXeqC9YSASPzDMOt76ZDsbG2fe/o2l3hu/JR0w4u
	t9eq3bf33Ru0QP7KDraDkc35yDh9yUW3CV8jI3OKZr54nBx9gf4kWahraIMD9FMqSJWsRw/vveovD
	MjrLIYpa8VCIGLVOQ8Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKtv-0004G6-2I; Wed, 05 Feb 2020 13:39:31 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKtk-0004FG-2e
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 13:39:22 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mgf4k-1jSuxb2cKy-00h6kM; Wed, 05
 Feb 2020 14:39:15 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Alin_N=C4=83stac'?= <alin.nastac@gmail.com>
References: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
 <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
 <CAF1oqRBa5vabU4Am+Q-Fqr+2mp-LUsLyjYqWzrzMnWSF3PQ4Cw@mail.gmail.com>
 <007e01d5dc23$b9107fd0$2b317f70$@adrianschmutzler.de>
 <CAF1oqRC6z3+YqpmByiyJ0x-2h5bcaE21HRHc4a6HvdCDaZd-xg@mail.gmail.com>
In-Reply-To: <CAF1oqRC6z3+YqpmByiyJ0x-2h5bcaE21HRHc4a6HvdCDaZd-xg@mail.gmail.com>
Date: Wed, 5 Feb 2020 14:39:14 +0100
Message-ID: <014901d5dc29$a8249fc0$f86ddf40$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQMms56D32+A8G7+0r2QD0LMBZ9EqAKVco6PAtmEJwUCFj/XggKiOtCepRmwbEA=
X-Provags-ID: V03:K1:wnR1aEg701rml3+aC4eNZZ/QL5g0W/IKFHGK9umWPNSQQQxE8lh
 YRLSijXT9YyjeUpeb7NxPmBeNdnXX2yp3542j+IX6HWaJMjN169dTFz+tnQ8oCYNc6/UXVx
 52ePnXiKFQdNsPgKaUpx6JsVth85goaKybnrJzT/NthnKVBZeWfDFI3KeCDaxSNo5d9PxC4
 BTlywgnMh9A4v5v0o20RA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EkROpslj5g4=:zBnA6oqfyJmIJ3FL/nW3gl
 Gdy18TmeElGZ2jvh4LIk/5mTWabzpd2S65ixKYnmAJrUgpQqLftwFCCoQU1JuSJONLiXYEMAt
 etiMeMeZ86Mnu5A7OJe+9XkDsKPBB6dfULk3HyDvDP7ysvhyTwSxKv7MSwYclLzvm+C50JPQ0
 sr6RyOUhIWJw2vFOGkmubyYU1a5lL1rMySJPiqpqnqN9mWf+9gH1ddRVIrpcntUTuc8H+n048
 zxuMr6oYnHi6KsgSLHFHDlGPVUhFP1DAsM9rjz7eII5Ow3npn9y+KHAI7LO4HvNne15R3FCXQ
 kIRAmtoQH+J3CqDBGjv7edMCTCvm5M6lIhuohmteFS91nOE/40FFp7Jmk1mPfw0BnX5BFwqc9
 +HjllsM6y8frq4sLCqh/b4g4DnbAzu3LidrlN2Z5hxNmp0mew/BCJv9jU0uk2r0PjSTfjwJ7Z
 D8USvrmSxwr+Yt75V8olqAAC66wVUOPfCsLEse1c11gkRnu744yDosrmlrN4GwLCmmxdStuCz
 noFTKPjhZaxxM1IcEdwj4J5/XF1TbycUmvsoK40e4CVR2EQZW3DpfXRfSvXaway1lwvrhwTkH
 LYCrY+PI9o37JDPTeELif2cgUPZ809DeIop+JFBbZlxxPNhMD++gGi6NKrIjJ3ItBXm0CdiQg
 gVRWIZ2GjAYr8AiA2Fpy8LmHrLWCowzNq6yyLXyKVF67rrLMwh+lFBtWtBQjuqW691AEcFroH
 eE47A0ZVwhxcmER6tx43ynpENuHkv0tGb40TPMCrbbdYdvPJoa4w4FOJx07EjFkVHvuoGxJRe
 1TZMPio16/k2joPB1RYA9qcBk9Ne1/rllM87hzDC83G6v+lDNhC1kHwIzEYbrN44IHerv3s
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_053920_407939_9BDBFDAC 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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

SGksCgpwbGVhc2UgdXNlIGEgInYyIiBuZXh0IHRpbWUuCgpCZXN0CgpBZHJpYW4KCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBBbGluIE7Eg3N0YWMgW21haWx0bzphbGluLm5h
c3RhY0BnbWFpbC5jb21dCj4gU2VudDogTWl0dHdvY2gsIDUuIEZlYnJ1YXIgMjAyMCAxNDozOAo+
IFRvOiBBZHJpYW4gU2NobXV0emxlciA8bWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlPgo+IENjOiBI
YW5zIERlZGVja2VyIDxkZWRlY2tlaEBnbWFpbC5jb20+OyBvcGVud3J0LWRldmVsIDxvcGVud3J0
LQo+IGRldmVsQGxpc3RzLm9wZW53cnQub3JnPgo+IFN1YmplY3Q6IFJlOiBbT3BlbldydC1EZXZl
bF0gW25ldGlmZF1bUEFUQ0hdIGludGVyZmFjZS1pcDogdHJhbnNmZXIgcHJlZml4IHJvdXRlCj4g
b3duZXJzaGlwIHRvIGtlcm5lbCB3aGVuIElQdjYgYWRkcmVzcyBiZWNvbWVzIGRlcHJlY2F0ZWQK
PiAKPiBIaSBBZHJpYW4sCj4gCj4gVGhpcyBwYXRjaCBoYXMgYmVlbiBzdXBlcnNlZGVkIGJ5Cj4g
aHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMjMzODQ1Lwo+IAo+IEFsaW4KPiAK
PiBPbiBXZWQsIEZlYiA1LCAyMDIwIGF0IDE6NTYgUE0gQWRyaWFuIFNjaG11dHpsZXIKPiA8bWFp
bEBhZHJpYW5zY2htdXR6bGVyLmRlPiB3cm90ZToKPiA+Cj4gPiBIaSwKPiA+Cj4gPiB3b3JrcyBm
b3IgbWUgYXMgd2VsbC4KPiA+Cj4gPiBIb3dldmVyLCBJJ2QgcHJlZmVyIGEgc2hvcnRlciBjb21t
aXQgdGl0bGUsIGUuZy4KPiA+Cj4gPiBpbnRlcmZhY2UtaXA6IHRyYW5zZmVyIHByZWZpeCByb3V0
ZSBvd25lcnNoaXAgZm9yIGRlcHJlY2F0ZWQgaXB2NmFkZHIgdG8ga2VybmVsCj4gPgo+ID4gQmVz
dAo+ID4KPiA+IEFkcmlhbgo+ID4KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+
ID4gRnJvbTogb3BlbndydC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0
cy5vcGVud3J0Lm9yZ10gT24KPiA+ID4gQmVoYWxmIE9mIEFsaW4gTmFzdGFjCj4gPiA+IFNlbnQ6
IE1pdHR3b2NoLCA1LiBGZWJydWFyIDIwMjAgMDk6MzQKPiA+ID4gVG86IEhhbnMgRGVkZWNrZXIg
PGRlZGVja2VoQGdtYWlsLmNvbT4KPiA+ID4gQ2M6IG9wZW53cnQtZGV2ZWwgPG9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4gPiA+IFN1YmplY3Q6IFJlOiBbT3BlbldydC1EZXZlbF0g
W25ldGlmZF1bUEFUQ0hdIGludGVyZmFjZS1pcDogdHJhbnNmZXIgcHJlZml4Cj4gPiByb3V0ZQo+
ID4gPiBvd25lcnNoaXAgdG8ga2VybmVsIHdoZW4gSVB2NiBhZGRyZXNzIGJlY29tZXMgZGVwcmVj
YXRlZAo+ID4gPgo+ID4gPiBIaSBIYW5zLAo+ID4gPgo+ID4gPiBPbiBUdWUsIEZlYiA0LCAyMDIw
IGF0IDEwOjQ5IFBNIEhhbnMgRGVkZWNrZXIgPGRlZGVja2VoQGdtYWlsLmNvbT4KPiB3cm90ZToK
PiA+ID4gPgo+ID4gPiA+IEhpIEFsaW4sCj4gPiA+ID4gT24gTW9uLCBGZWIgMywgMjAyMCBhdCA0
OjI3IFBNIEFsaW4gTmFzdGFjIDxhbGluLm5hc3RhY0BnbWFpbC5jb20+Cj4gd3JvdGU6Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gRnJvbTogQWxpbiBOYXN0YWMgPGFsaW4ubmFzdGFjQGdtYWlsLmNvbT4K
PiA+ID4gPiA+Cj4gPiA+ID4gPiBXaGVuIG5ldGlmZCBtYW5hZ2VzIHRoZSBwcmVmaXggcm91dGUg
ZGlyZWN0bHksIGl0IHdpbGwgcmVtb3ZlIGl0Cj4gPiA+ID4gPiB0aGUgbW9tZW50IHByZWZpeCBn
ZXRzIGRlcHJlY2F0ZWQuIFRoaXMgd2lsbCBtYWtlIGl0IGltcG9zc2libGUKPiA+ID4gPiA+IGZv
ciB0aGUgdGFyZ2V0IHRvIHNlbmQgSUNNUHY2IGVycm9ycyBiYWNrIHRvIExBTiBkZXZpY2VzIHN0
aWxsCj4gPiA+ID4gPiB1c2luZyB0aGUgZGVwcmVjYXRlZCBwcmVmaXgsIHRodXMgYnJlYWtpbmcg
dGhlIEwtMTQgcmVxdWlyZW1lbnQKPiA+ID4gPiA+IG9mIFJGQyA3MDg0Lgo+ID4gPiA+ID4KPiA+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsaW4gTmFzdGFjIDxhbGluLm5hc3RhY0BnbWFpbC5jb20+
Cj4gPiA+ID4gVGhlIHBhdGNoIGZhaWxzIHRvIGFwcGx5IHdpdGggdGhlIGZvbGxvd2luZyBlcnJv
ciBtZXNzYWdlIDoKPiA+ID4gPgo+ID4gPiA+IEFwcGx5aW5nOiBpbnRlcmZhY2UtaXA6IHRyYW5z
ZmVyIHByZWZpeCByb3V0ZSBvd25lcnNoaXAgdG8ga2VybmVsIHdoZW4KPiA+ID4gPiBJUHY2IGFk
ZHJlc3MgYmVjb21lcyBkZXByZWNhdGVkCj4gPiA+ID4gZXJyb3I6IHNoYTEgaW5mb3JtYXRpb24g
aXMgbGFja2luZyBvciB1c2VsZXNzIChpbnRlcmZhY2UtaXAuYykuCj4gPiA+ID4gZXJyb3I6IGNv
dWxkIG5vdCBidWlsZCBmYWtlIGFuY2VzdG9yCj4gPiA+ID4gUGF0Y2ggZmFpbGVkIGF0IDAwMDEg
aW50ZXJmYWNlLWlwOiB0cmFuc2ZlciBwcmVmaXggcm91dGUgb3duZXJzaGlwIHRvCj4gPiA+ID4g
a2VybmVsIHdoZW4gSVB2NiBhZGRyZXNzIGJlY29tZXMgZGVwcmVjYXRlZAo+ID4gPiA+Cj4gPiA+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICByb3V0ZS5hZGRyID0gYWRkci5hZGRyOwo+ID4g
PiA+ID4gICAgICAgICAgICAgICAgIH0KPiA+ID4gPiA+Cj4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgYWRkci5mbGFncyB8PSBERVZBRERSX09GRkxJTks7Cj4gPiA+ID4gPiAgICAgICAgICAgICAg
ICAgaWYgKHN5c3RlbV9hZGRfYWRkcmVzcyhsM19kb3dubGluaywgJmFkZHIpKQo+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+ID4KPiA+ID4gPiA+IC0tCj4g
PiA+ID4gPiAyLjcuNAo+ID4gPiA+ID4KPiA+ID4KPiA+ID4gSSd2ZSBkb3dubG9hZGVkIHRoZSBw
YXRjaCBmcm9tCj4gPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTIzMjg4
NS8gYW5kIGFwcGxpZWQgaXQKPiA+ID4gc3VjY2Vzc2Z1bGx5IHdpdGggYSBnaXQgYW0gY29tbWFu
ZCBsaW5lOgo+ID4gPgo+ID4gPiBuYXN0YWNhQGNwbHgxMDM3Oi91c3IvbG9jYWxkaXNrL29wZW53
cnQvbmV0aWZkJCBnaXQgYW0KPiA+ID4gfi9Eb3dubG9hZHMvT3BlbldydC1EZXZlbC1uZXRpZmQt
aW50ZXJmYWNlLWlwLXRyYW5zZmVyLXByZWZpeC1yb3V0ZS0KPiA+ID4gb3duZXJzaGlwLXRvLWtl
cm5lbC13aGVuLUlQdjYtYWRkcmVzcy1iZWNvbWVzCj4gPiA+IC1kZXByZWNhdGVkLnBhdGNoCj4g
PiA+IEFwcGx5aW5nOiBpbnRlcmZhY2UtaXA6IHRyYW5zZmVyIHByZWZpeCByb3V0ZSBvd25lcnNo
aXAgdG8ga2VybmVsIHdoZW4KPiA+ID4gSVB2NiBhZGRyZXNzIGJlY29tZXMgZGVwcmVjYXRlZAo+
ID4gPgo+ID4gPiBBbGluCj4gPiA+Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gPiA+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiA+
IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiA+CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
