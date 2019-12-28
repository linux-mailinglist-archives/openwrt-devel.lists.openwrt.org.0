Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A686812BEC0
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 20:49:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OxVS7LqzTXbzz2Iklm7zN+IqMa8BN4OmjBOIk1gckUE=; b=GBcTiZBAUnHJI+PqqZ62JrdsYu
	ke2cwGgQncaIey3OBPFBTdlpgB9o+Y/Dk+/mkUuRkK44hCPhDQUy8j2n5bnhy7m7F2bgA+e+pNkId
	17YTKiHGsupepf6KIqug8sEX61MDGBkX9u7kAGd5UizSz6jUjL0LAiXbLyGnxzy1dlkrZrKKmeK0H
	bT9+tOapRhPV4jbkd+dPPmJcG2gjtVXsE8Lx+X+YI1DW6UuzGeAp7xw74E9vZDJugLLgBfd9SYGgn
	tsCycsJP3OXz2PITazvyDQIzUUzEnq3cGAonV8hpIj5frCd4aCOlQn2hCqUJPGrdXkyChIJ79vGdE
	i3apRb5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilI56-0006xj-Jt; Sat, 28 Dec 2019 19:49:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilI4y-0006xJ-CI
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 19:48:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D8DA232B2;
 Sat, 28 Dec 2019 20:48:48 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4f1eb61a;
 Sat, 28 Dec 2019 20:48:37 +0100 (CET)
Date: Sat, 28 Dec 2019 20:48:37 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Luka =?utf-8?Q?Ko=C5=BEnjak?= <luka.koznjak@sartura.hr>
Message-ID: <20191228194837.GF70184@meh.true.cz>
References: <20191228193053.1112349-1-luka.koznjak@sartura.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228193053.1112349-1-luka.koznjak@sartura.hr>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_114852_568433_DC6BAC75 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] file: fix segfault in uci_parse_option
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>, openwrt-devel@lists.openwrt.org,
 Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

THVrYSBLb8W+bmphayA8bHVrYS5rb3puamFrQHNhcnR1cmEuaHI+IFsyMDE5LTEyLTI4IDIwOjMw
OjUzXToKCkhpIEx1a2EsCgo+IEZpeCBhIHNlZ21lbnRhdGlvbiBmYXVsdCBjYXVzZWQgYnkgdXNp
bmcgYSBwb2ludGVyIHRvIGEgcmVhbGxvY2F0ZWQgYWRkcmVzcy4KPiBUaGUgbmFtZSBwb2ludGVy
IGluIHRoZSB1Y2lfcGFyc2Vfb3B0aW9uIGZ1bmN0aW9uIGJlY29tZXMgaW52YWxpZCBpZgo+IGFz
c2VydF9lb2wgY2FsbHMgdWNpX3JlYWxsb2MgZG93biB0aGUgbGluZSwgcmVzdWx0aW5nIGluIGEg
c2VnbWVudGF0aW9uCj4gZmF1bHQgd2hlbiBhdHRlbXB0aW5nIHRvIGRlcmVmZXJlbmNlIG5hbWUg
aW4gYSBzdHJjbXAgY2hlY2sgaW4KPiB1Y2lfbG9va3VwX2xpc3QuIEEgc2ltcGxlIGZpeCBpcyB0
byBjYWxsIGFzc2VydF9lb2wgYmVmb3JlIHJldHJpZXZpbmcgdGhlCj4gYWN0dWFsIGFkZHJlc3Mg
Zm9yIHRoZSBuYW1lIGFuZCB0eXBlIHBvaW50ZXJzLgoKdGhhbmtzIGZvciB0aGUgZml4LgoKPiBU
aGUgc2VnbWVudGF0aW9uIGZhdWx0IGhhcyBiZWVuIGZvdW5kIHdoaWxlIGZ1enppbmcgdGhlCj4g
dWNpIGNvbmZpZ3VyYXRpb24gc3lzdGVtIGZvciB2YXJpb3VzIHR5cGVzIG9mIGRpZmZlcmVudCBj
cmFzaGVzCj4gYW5kIHVuZGVmaW5lZCBiZWhhdmlvcnMsIHdoaWNoIHJlc3VsdGVkIGluIG11bHRp
cGxlIGRpZmZlcmVudAo+IGltcG9ydCBmaWxlcyBjYXVzaW5nIGluc3RhYmlsaXR5IGFuZCBzZWdt
ZW50YXRpb24gZmF1bHRzLgoKQ2FuIHlvdSBzaGFyZSB0aGF0IHVjaSBjb25maWd1cmF0aW9uIGNh
dXNpbmcgdGhpcyBjcmFzaCBhcyB3ZWxsPyAKCkkgd291bGQgbGlrZSB0byBhZGQgaXQgaW50byB1
bml0IHRlc3RzIHdoaWNoIGFyZSBydW5bMV0gb24gR2l0TGFiIENJIGFmdGVyCmV2ZXJ5IHB1c2gg
dG8gR2l0IHJlcG9zaXRvcnkgc28gd2UgY2FuIHByb3RlY3QgYmV0dGVyIG91cnNlbHZlcyBhZ2Fp
bnN0CnBvc3NpYmxlIHJlLWludHJvZHVjdGlvbiBvZiB0aGUgaXNzdWUgaW4gdGhlIGZ1dHVyZSBk
dXJpbmcgcmVmYWN0b3JpbmcgZXRjLgoKQlRXIEkgcGxhbiB0byBhZGQgc29tZSBsaWJGdXp6ZXIg
YmFzZWQgZnV6emluZyB0byBVQ0kgc29vbiAoYXMgZG9uZSByZWNlbnRseQppbiBsaWJ1Ym94WzFd
IGZvciBleGFtcGxlKSwgc28gSSdtIHdvbmRlcmluZyBpZiB5b3UgY291bGQgc2hhcmUgeW91ciBm
dXp6aW5nCnNldHVwL3NvdXJjZXMgYXMgd2VsbCBpbiBvcmRlciB0byBzYXZlIHNvbWUgdGltZSwg
dGhhbmtzIQoKMS4gaHR0cHM6Ly9naXRsYWIuY29tL29wZW53cnQvcHJvamVjdC91Y2kvLS9qb2Jz
LzM4NTE4NDE5OCNMMTY4NwoyLiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy80MzZkNjM2M2ExMGJi
YjQxYWI5MjYwMmI0ZWIwMDMwOTkyYmIxNzg1CgpDaGVlcnMsCgpQZXRyCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
