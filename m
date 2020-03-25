Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942A6192231
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 09:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkRRiw7tmoe9rtfj+b0WAOVd3q2veU8qwpZufC69gh8=; b=uQSN32tASM16m0
	nO65wPIqX/uR2M8io9wfvkgBNDJYqpnjIUpcPR9gM5OznqyibfpIOgGeNhK5DhOXiN+YWQHrDISun
	YA9pKD1i6ZRhQaw+EFW1LULzbO6G+48Rx/XqtNospiCIJI20OgXhtFXU3Xjuocn15CuNoDhs/iFcM
	uuE2nfW/sEnbxu8SgEh8VoooWkosC/bS+mrzC/PmC5jLouTaLTRc02LEsu90LFlG5psteoly64RUC
	PZNEMzPRDU02T7mMMMtEtwHrn1P79AwrJISAaFcYAxjkepFOSt2f5mC8NK4RaGarOPzqoVHMKs81i
	nKZhNwuoftrD/E+p5QgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1A3-0003kE-2U; Wed, 25 Mar 2020 08:13:15 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH19w-0003jZ-7K
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 08:13:10 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jH19r-0005am-Fw; Wed, 25 Mar 2020 09:13:03 +0100
Date: Wed, 25 Mar 2020 08:12:56 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200325081256.GB1392@makrotopia.org>
References: <20200319032712.31676-1-nbowler@draconx.ca>
 <20200321105015.GB1408@makrotopia.org>
 <CADyTPEzo82bT2Cdh88OYw6VLZihmZ07249=iv_nTVnQUkHb3vA@mail.gmail.com>
 <20200325080234.GB43730@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325080234.GB43730@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_011308_261740_FFB001A4 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] Add kernel support for Fintek
 Super-IO chips
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
Cc: Nick Bowler <nbowler@draconx.ca>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBNYXIgMjUsIDIwMjAgYXQgMDk6MDI6MzRBTSArMDEwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBOaWNrIEJvd2xlciA8bmJvd2xlckBkcmFjb254LmNhPiBbMjAyMC0wMy0yNCAyMTox
NDo1MV06Cj4gCj4gPiBPbiAyMDIwLTAzLTIxLCBEYW5pZWwgR29sbGUgPGRhbmllbEBtYWtyb3Rv
cGlhLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIFdlZCwgTWFyIDE4LCAyMDIwIGF0IDExOjI3OjA5UE0g
LTA0MDAsIE5pY2sgQm93bGVyIHdyb3RlOgo+ID4gPj4gVGhpcyBzZXJpZXMgZW5hYmxlcyBwYWNr
YWdpbmcgb2YgdGhlIExpbnV4IGh3bW9uLCB3YXRjaGRvZyBhbmQgZ3Bpbwo+ID4gPj4gZHJpdmVy
cyB0aGF0IHN1cHBvcnQgbXVsdGlwbGUgRmludGVrIFN1cGVyLUlPIGNoaXBzLiAgSW4gcGFydGlj
dWxhciwKPiA+ID4+IHRoZSBGaW50ZWsgRjcxODY5QSBpcyB1c2VkIG9uIHRoZSBKZXR3YXkgTkY5
OUZMIGJvYXJkIGFuZCB0aGUgc3RvY2sKPiA+ID4+IE9wZW5XUlQga2VybmVscyBhcHBlYXIgdG8g
Y29tcGxldGVseSBsYWNrIGRyaXZlcnMgZm9yIHRoaXMgY2hpcC4KPiA+ID4KPiA+ID4gVGhlIGRy
aXZlciBsb29rcyBBQ1BJL3g4Ni1zcGVjaWZpYywgcGxlYXNlIGFkZCB0YXJnZXQgZGVwZW5kZW5j
eSBvcgo+ID4gPiBtb3ZlIHRoZSBwYWNrYWdlIGRlZmluaXRpb24gdG8gdGFyZ2V0L2xpbnV4L3g4
Ni9tb2R1bGVzLm1rLgo+ID4gCj4gPiBJIHRoaW5rIHRoZXJlIHNob3VsZG4ndCBiZSBhbnl0aGlu
ZyBfaW5oZXJlbnRseV8geDg2IHNwZWNpZmljIGFib3V0Cj4gPiB0aGUgZHJpdmVycyB0aGVtc2Vs
dmVzIGFsdGhvdWdoIHByb2JhYmx5IG5vYm9keSB1c2VzIFN1cGVyLUlPIGNoaXBzCj4gPiBsaWtl
IHRoZXNlIG91dHNpZGUgb2YgdGhlIFBDLWNvbXBhdGlibGUgd29ybGQuCj4gCj4gVGhvc2Ugc3lt
Ym9scyBoYXZlIGBkZXBlbmRzIG9uICFQUENgIGNvbmZpZyBjb25zdHJhaW50IGluIHRoZSBrZXJu
ZWwuCgouLi4gd2hpY2ggaXMgdGhlIG9ubHkgb3RoZXIgcGxhdGZvcm0gdXNpbmcgQUNQSSBhcGFy
dCBmcm9tIHg4Ni4uLgoodGhlIGRyaXZlciBkZXBlbmRzIG9uIEFDUEkpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
