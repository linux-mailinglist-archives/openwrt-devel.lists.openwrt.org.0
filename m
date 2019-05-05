Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB97514251
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 22:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rNlq4/PZMaNSqhikFlrfbyNHSiGMUDnIU0mjhJe5ge4=; b=MbRqELTKKDjVj9ETacil7wbz2N
	RZKRqzYUH8wKdMkKzZz/0oRLrT+4+4Mypd+Mk5sms3nYqIWLdBl/XsIWS4NR30EjXAQX/bv2LEa/A
	GLuoWGm8cwGn/oyXFGRTAJMXZipqopLxyKQgUNC7MKXCJS6epaewWd8Nv1A5W/4KasDLOhHY+5y1b
	rLXEtMeisp0qx+vrLK3ECzZg/xMqmkMK9pJAXn9FG9LJzezOsbGcsb8cwLhxmNejK9ziSXX36hdfc
	xdX/M07GEJ9mnZkXolkc/ksOhg6zhHRx31VMzMN/c3fADMICaXvavxJCKamKGUzhqXnvrr5wKiFR9
	/o3Zhd4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNNiI-0007mG-7n; Sun, 05 May 2019 20:26:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNNiB-0007lT-78
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 20:26:17 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9D7643F0A;
 Sun,  5 May 2019 22:26:10 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 17ca7f96;
 Sun, 5 May 2019 22:26:09 +0200 (CEST)
Date: Sun, 5 May 2019 22:26:09 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190505202609.GC81826@meh.true.cz>
References: <20190503145852.6125-1-kristian.evensen@gmail.com>
 <20190503163247.GF71477@meh.true.cz>
 <CAKfDRXghj-ymqjT01cNvwXa-w=mWDK38wxFfROgLvx1XjKcw5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfDRXghj-ymqjT01cNvwXa-w=mWDK38wxFfROgLvx1XjKcw5Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_132615_416049_7EF98B26 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S3Jpc3RpYW4gRXZlbnNlbiA8a3Jpc3RpYW4uZXZlbnNlbkBnbWFpbC5jb20+IFsyMDE5LTA1LTA0
IDEyOjA3OjMzXToKCkhpLAoKPiBPbiBGcmksIE1heSAzLCAyMDE5IGF0IDY6MzIgUE0gUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gPiA+IEluIG9yZGVyIHRvIGluc3RhbGwg
T3BlbldSVCwgeW91IGZpcnN0IG5lZWQgdG8gY29tcGlsZSBhbiBpbml0cmFtZnMKPiA+ID4gKHJh
bWRpc2spLWltYWdlIGZvciB0aGUgZGV2aWNlLgo+ID4KPiA+IGlmIHRoZSByYW1kaXNrIGltYWdl
IGlzIG5lZWRlZCwgdGhlbiB3ZSBwcm9iYWJseSBzaG91bGQgZW5hYmxlIGl0IGZvciB0aGF0Cj4g
PiB0YXJnZXQgYW5kIHByb3ZpZGUgaXQsIHdlIHNob3VsZG4ndCBkZW1hbmQgZW5kIHVzZXJzIHRv
IGJ1aWxkIHRoZSByYW1kaXNrCj4gPiBpbWFnZXMgYnkgdGhlbXNlbHZlcyBpbiBvcmRlciB0byBi
ZSBhYmxlIHRvIGluc3RhbGwgT3BlbldydCwgcmlnaHQ/Cj4gPgo+ID4gVGhpcyBuZWVkcyBhZGRp
bmcgYHJhbWRpc2tgIGluIEZFQVRVUkVTIGluIHRhcmdldC5tay4KPiAKPiBJIGFncmVlLCBidWls
ZGluZyBhIHJhbWRpc2staW1hZ2UgYnkgZGVmYXVsdCB3b3VsZCBiZSBwcmVmZXJhYmxlLgo+IEhv
d2V2ZXIsIHdvbnQgYWRkaW5nIHJhbWRpc2sgdG8gRkVBVFVSRVMgYnVpbGQgYSByYW1kaXNrIGlt
YWdlIGZvciBhbGwKPiBtdDc2MjAtYm9hcmRzPyBEbyB5b3Uga25vdyBhbnkgd2F5IHRvIGF2b2lk
IHRoYXQ/CgpVbmZvcnR1bmF0ZWx5IG5vLCBidXQgSSd2ZSBqdXN0IHByb3Bvc2VkWzFdIHNvbWUg
dGVtcG9yYXJ5IHdvcmthcm91bmQsIHNvCmxldCdzIHNlZSBob3cgdGhpcyBwYW5zIG91dC4gVW50
aWwgaXQncyBhY2NlcHRlZCwgSSB3b3VsZCBzaW1wbHkgZ28gd2l0aCB0aGF0CnByb3Bvc2VkIGBG
RUFUVVJFUyArPSByYW1kaXNrYCBiYXNlZCBzb2x1dGlvbi4KCjEuIGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL3BpcGVybWFpbC9vcGVud3J0LWRldmVsLzIwMTktTWF5LzAxNjkzMS5odG1sCgo+
ID4gPiArJnBpbmN0cmwgewo+ID4gPiArICAgICBzdGF0ZV9kZWZhdWx0OiBwaW5jdHJsMCB7Cj4g
PiA+ICsgICAgICAgICAgICAgZGVmYXVsdCB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBy
YWxpbmssZ3JvdXAgPSAiaTJjIiwgInVhcnRmIiwgInBhIiwgInNwaSByZWZjbGsiLCAid2xlZCI7
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByYWxpbmssZnVuY3Rpb24gPSAiZ3BpbyI7Cj4g
PiA+ICsgICAgICAgICAgICAgfTsKPiA+ID4gKyAgICAgfTsKPiA+ID4gK307Cj4gPgo+ID4gLi4u
Cj4gCj4gSSBoYXZlIHRvIGFkbWl0IHRoYXQgSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgeW91IGFy
ZSByZWZlcmluZyB0byB0aGVyZQo+ICh1bmxlc3MgaXQgaXMgdGhlIHRvbyBsb25nICJyYWxpbmss
Z3JvdXAiLWxpbmUpIDopCgpJdCdzIGp1c3QgYSBwb29yLW1hbidzIHJlcGxhY2VtZW50IGZvciBh
IHBpY3R1cmUgb2Ygc2Npc3NvcnMsIG1lYW5pbmcsIHRoYXQKSSd2ZSBzaW1wbHkgcmVtb3ZlZCBz
b21lIHRleHQgYXJvdW5kIHRoaXMgYC4uLmAgbGluZS4KCkJUVywgSSBoYXZlbid0IGhhZCB0aW1l
IHRvIGNoZWNrIGNvcnJlY3RuZXNzIG9mIHRoaXMgcGluY3RybCB5ZXQsIGJ1dCBJJ2xsIGRvCnNv
LgoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
