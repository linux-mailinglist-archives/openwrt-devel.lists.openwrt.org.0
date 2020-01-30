Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD8214D86F
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 10:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/hVavawh9mNGmZjZ9DbdISgc0cjjXJU7pGG+B0eVsY=; b=afF8DfGyPxq7Xk
	oDQxztDiI9Tfj/bWJKTfRlfJ40+IOWTN/zR1Al8zKanWOuIh37SrBmSJ8yh+QEb2d7Vcnqp5Ypex6
	Adyz5e1Gotzoz9cXxUfW8iIVFaSrmOFyaOsF6NHjEMGbb6cBYwUb+OLDpJwdkhF9sh7Cv9vcLN5Zz
	Q8yklC8/A1PCYqmUK2c2QX7HBzcbswDBRzTw8Y/Gl2kgZKn2OD0aSQlHj04CFCK/9BOaDarQU8h7t
	H2Pk7CBMgiH62eBrah8pRzZCF8eI5t9ACGP/dClqbO8//D+Tyl5XbaOdgrB1q6862ZtRUb5W3tcI2
	bMk8sQTp4Cr1WxJ/2AVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix6Wz-0002tp-UZ; Thu, 30 Jan 2020 09:54:37 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix6Wt-0002tO-FN
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 09:54:33 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:2c2:f7be:e4fc:6bff:feea:ad23])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 00U9sNWQ009376
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 30 Jan 2020 10:54:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1580378064; bh=zOFUkliFO6o0zlW7L357rUq8/SnAuH6WWslENs1VKw0=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=e5SM32qfzQvRzhbQSuOzDNvI14s9SN4biM2n4fwZsdRsQMSNN7xdan7h1DGBeatUc
 aSAoVZlXJmTYiTlRG0iIGNwTAtmvpVF8yCjUT9XYu6Gr7MeN8k7FpLPj49cKi+GvwD
 tklSgCyv1QXO4Zg9UZ5L9pveXceQVP7Tq9ekIk0c=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1ix6Wf-0005iE-Af; Thu, 30 Jan 2020 10:54:17 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Rosen Penev <rosenp@gmail.com>
Organization: m
References: <20200129162210.GA78186@meh.true.cz>
 <81451FC6-CB4C-4A43-87B0-50BCF581678E@gmail.com>
 <CAKxU2N87DQ-Zat0vmSU4iKgcR32t2L-v0_4WLQSvjyg9ZoFySA@mail.gmail.com>
Date: Thu, 30 Jan 2020 10:54:17 +0100
In-Reply-To: <CAKxU2N87DQ-Zat0vmSU4iKgcR32t2L-v0_4WLQSvjyg9ZoFySA@mail.gmail.com>
 (Rosen Penev's message of "Wed, 29 Jan 2020 20:39:57 -0800")
Message-ID: <87v9ot5kxi.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_015431_995400_C77DD250 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
Cc: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IHdyaXRlczoKPiBPbiBXZWQsIEphbiAyOSwg
MjAyMCBhdCAzOjE0IFBNIFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiB3cm90ZToKPj4g
PiBPbiBKYW4gMjksIDIwMjAsIGF0IDg6MjIgQU0sIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+PiA+Cj4+ID4gSSBqdXN0IHF1aWNrbHkgc2tpbW1lZCB0aHJvdWdoIHRoZSBj
b2RlIGFuZCBpdCBzZWVtcyBsaWtlIHdlJ3ZlIHRoYXQKPj4gPiBpbmZvcm1hdGlvbiBhbHJlYWR5
IGluIGRtZXNnOgo+PiA+Cj4+ID4gU29DIFR5cGU6IE1lZGlhVGVrIE1UNzY4OCB2ZXI6MSBlY286
MiAgICA9IDB4MDEwMgo+PiA+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjhBTiB2ZXI6MSBlY286
MiAgPSAweDAxMDIKPj4gPiBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3NjIxIHZlcjoxIGVjbzozICAg
ID0gMHgwMTAzCj4+ID4gU29DIFR5cGU6IE1lZGlhVGVrIE1UNzYyMEEgdmVyOjIgZWNvOjMgICA9
IDB4MDIwMwo+PiA+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjBOIHZlcjoyIGVjbzo2ICAgPSAw
eDAyMDYKPj4gPgo+PiA+PiBUaGF0J3MganVzdCBjb3NtZXRpYy4KPj4gPgo+PiA+IGN1cnJlbnQ6
ID09IDB4MDEwMQo+PiA+IG5ldzogICAgID49IDB4MDEwMQo+PiBJIG1lYW50IHRoZSBjb21tZW50
IHRvIHByaW50IHRoZSBTb0MgSUQuCgpZZXMsIGFuZCBpdCBpcyBhbHJlYWR5IHRoZXJlIGFzIFBl
dHIgcG9pbnRlZCBvdXQuICBJIHNob3VsZCBoYXZlIGxvb2tlZApjbG9zZXIgYXQgd2hhdCB0aGlz
IG1hZ2ljIHJlZ2lzdGVyIGFjdHVhbGx5IHdhcyA7LSkKCj4+ID4KPj4gPiBEb2Vzbid0IGxvb2sg
bGlrZSBhIGNvc21ldGljIGNoYW5nZSBub3IgY29ycmVjdCwgc2VlIGFib3ZlIGxpc3QuIFdoYXQg
YWJvdXQKPj4gPiBmb2xsb3dpbmc/Cj4+ID4KPj4gPiAgaWYgKHJhbGlua19zb2MgPT0gTVQ3NjJY
X1NPQ19NVDc2MjFBVCkgewo+PiA+ICAgICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBGQyBP
RkYsIE1BWF9SWF9MRU5HVEggMTUzNikgKi8KPj4gPiAgICAgICBtdGtfc3dpdGNoX3czMihnc3cs
IDB4MjMwNWUzMGIsIEdTV19SRUdfTUFDX1AwX01DUik7Cj4+ID4gICAgICAgbXQ3NTMwX21kaW9f
dzMyKGdzdywgMHgzNjAwLCAweDVlMzBiKTsKPj4gPiAgfSBlbHNlIHsKPj4gPiAgICAgICAuLi4K
Pj4gPiAgfQo+PiBNYXliZS4gQWxsIEkga25vdyBpcyB0aGF0IHRoZSBwYXRjaCBhcyBJIHBvc3Rl
ZCBpdCB3b3JrcyB3ZWxsIGFjY29yZGluZyB0byBwZW9wbGUgb24gdGhlIGZvcnVtcy4KPiBPbiBh
IHNlY29uZCBsb29rIHRoaXMgaXMgdG90YWxseSBib2d1cy4KPgo+IE9uIGtlcm5lbC5vcmcsIHRo
ZSByYWxpbmtfc29jIHZhcmlhYmxlIGlzIG9ubHkgdXNlZCBpbiBhcmNoL21pcHMgLAo+IG1haW5s
eSB1bmRlciB0aGUgcmFsaW5rIHN1YmRpcmVjdG9yeS4gSSBkb24ndCB0aGluayBpdCBzaG91bGQg
YmUgdXNlZAo+IGZvciB0aGUgc3dpdGNoIGRyaXZlci4KClRoZXJlIG1pZ2h0IGhhdmUgYmVlbiBh
IHNpbGljb24gYnVnIGluIHRoZSBzd2l0Y2ggSVAgb2Ygb25lIHNwZWNpZmljIFNvQwpyZXZpc2lv
bj8KCkZXSVcsIEkgYW0gdXNpbmcgdGhlIG1haW5saW5lIERTQSBkcml2ZXIgd2l0aCBNVDc2MjEg
YW5kIGhhdmUgbmV2ZXIgc2Vlbgp0aGlzIGlzc3VlIHRoZXJlLiAgRG9uJ3Qga25vdyBpZiB0aGF0
IG1lYW5zIGl0IGlzIGZpeGVkLgoKPj4gPiBJIGp1c3QgZG9uJ3Qga25vdyB3aGljaCBNZWRpYVRl
ayBTb0MgaXMgMHgwMTAxICh2ZXI6MSBlY286MSksIGJ1dCBJIGFzc3VtZSwKPj4gPiB0aGF0IHRo
aXMgY29uZGl0aW9uIGlzIGp1c3QgYm9ndXMgZnJvbSB0aGUgYmVnaW5uaW5nLgoKQXJlIHlvdSBz
dXJlIHRoZSByZXZpc2lvbiBzYXlzIGFueXRoaW5nIGFib3V0IHdoaWNoIFNvQyB0aGlzIGlzPyAg
VGhlClNvQyBuYW1lIGlzIHJlYWQgZnJvbSBzeXNjIHJlZ2lzdGVyIDAgYW5kIDQ6Cgpyb290QE9w
ZW5XcnQ6LyMgaW8gLXIgLTQgMHgxZTAwMDAwMAoxZTAwMDAwMDogIDM2Mzc1NDRkCnJvb3RAT3Bl
bldydDovIyBpbyAtciAtNCAweDFlMDAwMDA0CjFlMDAwMDA0OiAgMjAyMDMxMzIKCkkuZSBhc2Np
aSBzdHJpbmdzICJNVDc2IiBhbmQgIjIxICIuIEkgYXNzdW1lIHRoZSByZXZpc2lvbiBudW1iZXIg
aXMgb25seQp2YWxpZCBpbiB0aGF0IGNvbnRleHQ/Cgpyb290QE9wZW5XcnQ6LyMgaW8gLXIgLTQg
MHgxZTAwMDAwYwoxZTAwMDAwYzogIDAwMDEwMTAzCgoKCgpCasO4cm4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
