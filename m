Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AFE25848
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 21:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGcj/AUXSscuuZ1gr7ACySPZ2HeZjQGW/Oz3D34DfuQ=; b=fSwIYY8GJ5WUUB
	M1fcM3RD7Xtsw2ZaPI9ao+P1AzW+xeS2I0midiJyZU3vkttrVI3puW93kDz47EIAniNO8ciD62Zzq
	x97rdpiQDZzvxPuZ9dbMs+NE0ebhY7Xf2F0UbEoW8ngM5jeQhxYPWF9lfrXSCHy2I+b8i70tJ8Y9N
	eN5kKcKIeABNtlxWelzqLhNb+BicLIr8PXaQvkPHM0GlynPR9y+fCkomoAUREkuWKaQh4GLthKU8O
	mq1r7MaGJy45cMDMsGTbqZ34SVbd+5L0bm4uiIgaOPoNdB9P9QgilMBQmNoescsUpeocw3WyucZcx
	Qg93Fz2kSfvsAif6bmUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTASX-0005RC-Lq; Tue, 21 May 2019 19:30:01 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTASQ-0005QY-2D
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 19:29:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1558466988;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=pl9yVLuSN6J7DwsdfLv9wvjEstIR0o7qgSjDV494DSg=;
 b=PFXtcvi+26apHk/ZoJL77pysHeVdny3KE7/Reu7OdqzWafZ2gBPrCXvcaVKLQ/AZHF
 4pqez1BOAshTAxr8EmqNEg+LHfphV+GJj8tx7Iov6zmkXSD3Au4n0rPONCplGrtWjio3
 +oyL4QwVu+b8nRDWQCqC9ZtUV3l6GVAXyyzWOvOPLpWWN8EEMxn6OuOFe9C+RLhAF+vY
 wVLK48R0KvgdlCj2AmITprF9CX3MWz+zlM6/NlzWkpkYvnLotlXYEXbYkDGLGEQf3WRp
 qdCbMjJ3PRRGbPO2LIU5qjviPeKUBmFsobHAcQT+OtaLtdg4e80RKsd33WhXT1rBr8NS
 JC2A==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbIvSffTKU"
X-RZG-CLASS-ID: mo00
Received: from positron.chronox.de by smtp.strato.de (RZmta 44.18 DYNA|AUTH)
 with ESMTPSA id R0373fv4LJThCTB
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 21 May 2019 21:29:43 +0200 (CEST)
From: Stephan =?ISO-8859-1?Q?M=FCller?= <smueller@chronox.de>
To: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Tue, 21 May 2019 21:29:42 +0200
Message-ID: <1770092.8tszkiR9y9@positron.chronox.de>
In-Reply-To: <20190521145502.GB4606@meh.true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <CAOdf3goqqUUXc7pM8wMR=edshXdJAfqEzUi5_wGSnSyJk-P7sg@mail.gmail.com>
 <20190521145502.GB4606@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_122954_696512_5340A02B 
X-CRM114-Status: GOOD (  29.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gRGllbnN0YWcsIDIxLiBNYWkgMjAxOSwgMTY6NTU6MDIgQ0VTVCBzY2hyaWViIFBldHIgxaB0
ZXRpYXI6CgpIaSBQZXRyLAoKPiBFdGllbm5lIENoYW1wZXRpZXIgPGNoYW1wZXRpZXIuZXRpZW5u
ZUBnbWFpbC5jb20+IFsyMDE5LTA1LTIxIDE0OjU1OjQyXToKPiAKPiBIaSwKPiAKPiA+ID4gRmly
c3QsIHNpbXBseSB3cml0aW5nIHRvIC9kZXYvdXJhbmRvbSBkb2VzIG5vdCBpbmNyZWFzZSB0aGUg
a2VybmVsJ3MKPiA+ID4gZW50cm9weSBjb3VudCwgdGhpcyBjYXN1c2VzIHByb2Nlc3NlcyBvYnRh
aW5pbmcgcmFuZG9tbmVzcyB0byBibG9jay4KPiA+ID4gUGFydGljdWxhcmx5IHByb2Nlc3NlcyB1
c2luZyBPcGVuU1NMJ3MgUkFORF9ieXRlcygpIHdpbGwgYmxvY2sgdW50aWwgdGhlCj4gPiA+IGtl
cm5lbCBlbWl0cyAncmFuZG9tOiBjcm5nIGluaXQgZG9uZScuIFRoaXMgY2FuIHRha2UgdXB3YXJk
cyBvZiB0d2VudHkKPiA+ID4gbWludXRlcy4KPiA+IAo+ID4gMjAgbWludXRlcyBzZWVtcyBleGNl
c3NpdmUsIGlzbid0IG9uZSBvZiB0aGUgcHJvY2VzcyBibG9ja2luZyBib290ID8KPiAKPiBwbGVh
c2Ugbm90ZSwgdGhhdCB0aGlzIGlzIHRpbWUgYXMgbWVhc3VyZWQgYnkga2VybmVsIChJIGtub3cg
aXQncyB1c2Vyc3BhY2UKPiBzdGFydmluZyB0aGUga2VybmVsIGVudHJvcHkgcG9vbCwgYnV0IHN0
aWxsKS4gSSd2ZSBwZXJzb25hbGx5IG1lYXN1cmVkIDE4Cj4gbWludXRlcyBvbiBteSBBcGFsaXMg
Ym9hcmQgKGlteDYpWzFdLgo+IAo+ICBpLm14NiAoRnJlZXNjYWxlIGkuTVg2IFF1YWQvRHVhbExp
dGUpCj4gCj4gICBbICAgIDMuMjgxNjM3XSByYW5kb206IGZhc3QgaW5pdCBkb25lCj4gICBbIDEx
MjAuMzk0NjcyXSByYW5kb206IGNybmcgaW5pdCBkb25lICh5ZWFoLCAxOCBtaW51dGVzKQo+IAo+
ID4gT25lIG9mIHRoZSBpc3N1ZSBpcyB0aGF0IGlmIHlvdSB0cnkgdG8gZ2VuZXJhdGUgYSBuZXcg
c2VlZCwgeW91IGFyZQo+ID4ganVzdCByZWFkaW5nIGEgaGFzaCBvZiB0aGUgc2VlZCB5b3UgaW5q
ZWN0ZWQgc2Vjb25kcyBlYXJsaWVyIHdpdGgKPiA+IG1heWJlIGZldyBuZXcgYml0cyBvZiBlbnRy
b3B5Cj4gCj4gRXhhY3RseSwgdGhhdCdzIHdoeSBpdCdzIHJlY29tbWVuZGVkWzJdIHRvIHNhdmUg
aXQgZHVyaW5nIEVWRVJZIHNodXRkb3duLCBzbwo+IGl0J3MgZGlmZmVyZW50IEVWRVJZIGJvb3Qu
Cj4gCj4gICogRW5zdXJpbmcgdW5wcmVkaWN0YWJpbGl0eSBhdCBzeXN0ZW0gc3RhcnR1cAo+ICAq
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gICoKPiAgKiBX
aGVuIGFueSBvcGVyYXRpbmcgc3lzdGVtIHN0YXJ0cyB1cCwgaXQgd2lsbCBnbyB0aHJvdWdoIGEg
c2VxdWVuY2UKPiAgKiBvZiBhY3Rpb25zIHRoYXQgYXJlIGZhaXJseSBwcmVkaWN0YWJsZSBieSBh
biBhZHZlcnNhcnksIGVzcGVjaWFsbHkKPiAgKiBpZiB0aGUgc3RhcnQtdXAgZG9lcyBub3QgaW52
b2x2ZSBpbnRlcmFjdGlvbiB3aXRoIGEgaHVtYW4gb3BlcmF0b3IuCj4gICogVGhpcyByZWR1Y2Vz
IHRoZSBhY3R1YWwgbnVtYmVyIG9mIGJpdHMgb2YgdW5wcmVkaWN0YWJpbGl0eSBpbiB0aGUKPiAg
KiBlbnRyb3B5IHBvb2wgYmVsb3cgdGhlIHZhbHVlIGluIGVudHJvcHlfY291bnQuICBJbiBvcmRl
ciB0bwo+ICAqIGNvdW50ZXJhY3QgdGhpcyBlZmZlY3QsIGl0IGhlbHBzIHRvIGNhcnJ5IGluZm9y
bWF0aW9uIGluIHRoZQo+ICAqIGVudHJvcHkgcG9vbCBhY3Jvc3Mgc2h1dC1kb3ducyBhbmQgc3Rh
cnQtdXBzLgo+IAo+ICBbLi4uXQo+IAo+ICAqIEV2ZW4gd2l0aCBjb21wbGV0ZSBrbm93bGVkZ2Ug
b2YgdGhlIHN0YXJ0LXVwIGFjdGl2aXRpZXMsIHByZWRpY3RpbmcgdGhlCj4gICogc3RhdGUgb2Yg
dGhlIGVudHJvcHkgcG9vbCByZXF1aXJlcyBrbm93bGVkZ2Ugb2YgdGhlIHByZXZpb3VzIGhpc3Rv
cnkgb2YKPiB0aGUgKiBzeXN0ZW0uCj4gCj4gV2UncmUgbWFraW5nIGl0IGVhc2llciBmb3IgdGhl
IHBvdGVudGlhbCBhZHZlcnNhcnksIGFyZW4ndCB3ZT8gV2UncmUKPiBjdXJyZW50bHkgZmVlZGlu
ZyBzdGF0aWMgdXJhbmRvbS5zZWVkIGZpbGUgKGdlbmVyYXRlZCBkdXJpbmcgZmlyc3QgYm9vdCkg
dG8KPiBrZXJuZWwgZXZlcnkgb3RoZXIgYm9vdCwgaW4gc29tZSBjYXNlcyBpdCBtaWdodCByZXN1
bHQgaW4gdGhlIHNhbWUgZmlsZSBmb3IKPiB0aGUgbGlmZXRpbWUgb2YgdGhlIGRldmljZS4gSSBy
ZWFsbHkgbWlzcyBhbnkgcmFuZG9tbmVzcyBpbiB0aGlzLgoKSXQgaXMgbm90IGNvcnJlY3QgdG8g
aGF2ZSBhIHN0YXRpYyBzZWVkIGZpbGUuIEJ1dCBvbiB0aGUgb3RoZXIgaGFuZCwgdGhpcyBzZWVk
IApmaWxlIGlzIGludGVuZGVkIHRvIG1peCB0aGUgZW50cm9weSBwb29sIG9ubHkuIEl0IGlzIGNy
ZWRpdGVkIHdpdGggbm8gZW50cm9weS4KPiAKPiA+IEp1c3QgZm9yIHRoZSByZWNvcmQsIHRoaXMg
aXMgdGhlIGRlZmF1bHQgc2V0dGluZywKPiAKPiBJIGtub3csIHRoYXQncyB3aHkgSSdtIHByb3Bv
c2luZyByZW1vdmFsIGZyb20gdGhlIGRlZmF1bHQgYXRoNzkgaW1hZ2VzLAo+IGJlY2F1c2UgSSB0
aGluaywgdGhhdCBpdCdzIHdyb25nLiBTaG91bGQgdGhlIHVzZXIgZXZlciBuZWVkIHVyYW5kb20t
c2VlZCwKPiB0aGVuIGl0J3MganVzdCBvbmUgb3BrZyBpbnN0YWxsIGF3YXkuCj4gCj4gPiB5b3Ug
Y2FuIGNoYW5nZSB5b3VyIGNvbmZpZyB0byBnZW5lcmF0ZSBhIG5ldyBvbmUgYXQgZWFjaCBib290
Cj4gCj4gSSBrbm93LCBidXQgd2hvIGRvZXMgaXQ/IEkgZXhwZWN0IGJlc3QgcG9zc2libGUgc2Vj
dXJlIGNvbmZpZ3VyYXRpb24gYnkKPiBkZWZhdWx0Lgo+IAo+ID4gKHRoZSB3b3JyeSB3YXMgdGhh
dCB3ZSB3b3VsZCB3ZWFyIG9mZiB0aGUgZmxhc2ggdG9vIGZhc3QpCj4gCj4gSSB1bmRlcnN0YW5k
IHRoZSBkcmF3YmFja3MsIHRoYXQncyB3aHkgSSB0aGluaywgdGhhdCBpdCBkb2Vzbid0IG1ha2Ug
bXVjaAo+IHNlbnNlIHRvIHVzZSBpdCwgaWYgaXQncyBub3QgZ29vZCBlbm91Z2ggdG8gYmUgdXNl
ZCBpbiBkZWZhdWx0L3NoaXBwZWQKPiBjb25maWd1cmF0aW9uLgo+IAo+ID4gd2h5IG5vdCB1c2Ug
aml0dGVyZW50cm9weSBSTkcgdGhhdCBpcyBpbiBrZXJuZWwgc2luY2UgNC4yID8KPiA+IGh0dHBz
Oi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21taXQvYmI1NTMwZTQwODI0NDZhYWMzYTNk
Njk3ODBjZDRkYmZhCj4gPiA0NTIwMDEzCj4gSSBzdGFydGVkIGV4cGVyaW1lbnRzIHdpdGgga21v
ZC1jcnlwdG8tcm5nIHBhY2thZ2Ugd2hpY2ggYWxyZWFkeSBjb250YWlucwo+IGppdHRlcmVudHJv
cHksIGRyYmcsIGtybmcgYW5kIHJuZyBrZXJuZWwgbW9kdWxlcywgYnV0IGl0IGRpZG4ndCBpbXBy
b3ZlZCB0aGUKPiBsb25nIGJvb3RpbmcgdGltZXMgZm9yIG1lIG9uIGF0aDc5LiAgT3RoZXIgcmVh
c29uIHdhcyBzaXplIG9mIHRoaXMga2VybmVsCj4gbW9kdWxlKHMpIGFzIHRoZXkgcHJvdmlkZSBt
dWNoIG1vcmUgZnVuY3Rpb25hbGl0eSBvZiBjb3Vyc2UuCgpUaGUgSml0dGVyIFJORyBpcyBpbnRl
bmRlZCB0byBiZSB1c2VkIGluIHRoZSBlbnZpcm9ubWVudCB3aGVyZSBpdCBpcyBuZWVkZWQuIApI
YXZpbmcgbXVsdGlwbGUgaW5zdGFuY2VzIGlzIGV2ZW4gZ29vZCBmb3IgdGhlIGVudHJvcHkgb3Zl
ciBhbGwuIFRodXMsIEkgdGhpbmsgCnVzaW5nIGEgdXNlciBzcGFjZSBjb3B5IGlzIHRoZSByaWdo
dCB0aGluZyB0byBkby4KPiAKPiA+IEkgaGF2ZW4ndCBoYWQgdGltZSB0byByZWFkIGFsbCB0aGUg
cGFwZXJzIGZyb20gU3RlcGhhbiBNdWxsZXIsIGJ1dCBJCj4gPiBkb24ndCBrbm93IGhvdyBzYWZl
ICYgdGVzdGVkIEppdHRlciBSTkcgaXMgb24gQUxMIGFyY2hpdGVjdHVyZXMKPiAKPiBJJ3ZlIGJh
c2VkIHVybmdkIG9uIEppdHRlciBOUFRSTkcgc2ltcGx5IGJlY2F1c2UgU3RlcGhhbiBkaWQgYW1h
emluZyB3b3JrCj4gd2l0aCB0ZXN0aW5nWzNdIGFuZCBhbmFseXNpcyBvZiBlbWJlZGRlZCBDUFVz
IGFzIHdlbGwuIEkgY291bGRuJ3Qgc2F5IHRoZQo+IHNhbWUgYWJvdXQgb3RoZXIgc29sdXRpb25z
IEkndmUgY29uc2lkZXJlZCwgbGlrZSBoYXZlZ2VkIGZvciBleGFtcGxlLiBCb251cwo+IHBvaW50
cyBmb3IgYmVpbmcgaW4gdGhlIGtlcm5lbCBzaW5jZSAyMDE1LCB3aGljaCBtYWtlcyBtZSBxdWl0
ZSBjb25maWRlbnQsCj4gdGhhdCBpdCBzaG91bGQgd29yayBzb21laG93IG9uIGV2ZXJ5dGhpbmcg
a2VybmVsIHJ1bnMgb24uCgpXZWxsLCBpdCBzdXJ2aXZlZCBhIG51bWJlciBvZiBGSVBTIDE0MC0y
IHZhbGlkYXRpb25zIGFuZCB0aGUgYXNzb2NpYXRlZCAKZW50cm9weSBhc3Nlc3NtZW50IHJlcXVp
cmVtZW50cyBhcyB3ZWxsIDotKQo+IAo+ID4gRm9yIGV4YW1wbGUgdGhpcyBjb21tZW50IGRvZXNu
J3QgaW5zcGlyZSBtZQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1p
dC9iYjU1MzBlNDA4MjQ0NmFhYzNhM2Q2OTc4MGNkNGRiZmEKPiA+IDQ1MjAwMTMjZGlmZi04ZTA3
OThlMDVjOGRjYTNhYTkwMDc1MDRjODdjZWU3M1IxMjU+IAo+ID4gPiBJZiByYW5kb21fZ2V0X2Vu
dHJvcHkgZG9lcyBub3QgcmV0dXJuIGEgdmFsdWUgKHdoaWNoIGlzIHBvc3NpYmxlIG9uLAo+ID4g
PiBmb3IgZXhhbXBsZSwgTUlQUyksIGludm9rZSBfX2dldG5zdGltZW9mZGF5Cj4gPiA+IGhvcGlu
ZyB0aGF0IHRoZXJlIGFyZSB0aW1lcnMgd2UgY2FuIHdvcmsgd2l0aC4KPiAKPiAgKFRoYXQncyBl
eGFjdGx5IHdoeSBJIHRvb2sgdGhlIGxpYmVydHkgYW5kIGFkZGVkIFN0ZXBoYW4gdG8gdGhlIENj
OiBsaXN0IG9mCj4gdGhpcyBlbWFpbCwgc28gaGUgY291bGQgcHJvdmlkZSBoaXMgaW5wdXQgb24g
dGhpcyBtYXR0ZXJzIG9yIG90aGVyIG1hdHRlcnMpCgpUaGUgaXNzdWUgaXMgdGhhdCB0aGUgSml0
dGVyIFJORyByZXN0cyBvbiB0aGUgcHJlc2VuY2Ugb2YgYSBoaWdoLXJlc29sdXRpb24gCnRpbWVy
LgoKVGhlIEppdHRlciBSTkcgaW1wbGVtZW50cyBhIHN0YXJ0dXAgdGVzdCB0aGF0IGlzIGludGVu
ZGVkIHRvIGRldGVjdCBub24tCmFwcHJvcHJpYXRlIHRpbWVycy4gSWYgaXQgaWRlbnRpZmllcyBz
dWNoIG5vbi1hcHByb3ByaWF0ZSB0aW1lcnMsIHRoZSBKaXR0ZXIgClJORyB3aWxsIGRlYWN0aXZh
dGUuIFRodXMsIHRoZSBKaXR0ZXIgUk5HIGFsd2F5cyB0cmllcyB0byByZWFjaCBhIHNlY3VyZSAK
c3RhdGUuCgpUaGUgY29tbWVudCByZWZlcnMgdG8gdGhlIGZhY3QgdGhhdCBJIGFtIGxvb2tpbmcg
Zm9yIGEgaGlnaC1yZXNvbHV0aW9uIHRpbWVyIApvbiBhbGwgc3lzdGVtcy4gT24gTUlQUyBvbiBv
bmUgc3lzdGVtIEkgaGFkIHNvbWUgaXNzdWVzIGFuZCB0aGUgSml0dGVyIFJORyAKZGVhY3RpdmF0
ZWQuCgpUaHVzLCB0YWtlIHRoZSBjb21tZW50IHNpbXBseSBhcyB0aGUgc2VhcmNoIGZvciB0aGUg
cmlnaHQgc291cmNlIHRvIGVuc3VyZSB0aGUgCkppdHRlciBSTkcgaXMgZW5hYmxlZC4KPiAKPiBU
byBtZSBpdCBqdXN0IHNob3dzLCB0aGF0IHRoZSBpbXBsZW1lbnRhdGlvbiBpc24ndCBuYWl2ZSBh
bmQgd2VudCB0aHJvdWdoCj4gc29tZSByb3VuZHMgb2YgdGVzdGluZyB3aGljaCBhcHBhcmVudGx5
IHNwb3R0ZWQgc29tZSBjb3JuZXIgY2FzZXMgb24gc29tZQo+IENQVXMsIGxpa2UgZm9yIGV4YW1w
bGUgdGhpcyBvbmU6Cj4gCj4gICAgIEYuMzHigINNSVBTIDRLRWMgVjQuOCAoVC1Db20gU3BlZWRw
b3J0IFc3MDFWKQo+IAo+ICAgICAuLi4KPiAKPiAgICAgRmlndXJlIDEyMOKAgwo+IAo+ICAgICAu
Li4KPiAKPiAgICAgdGhlIFNoYW5ub24gRW50cm9weSBjb25jbHVkZXMgdGhhdCB0aGUgQ1BVIGV4
ZWN1dGlvbiB0aW1lIGppdHRlciBvbiB0aGlzCj4gQ1BVIGlzIHRvbyBzbWFsbC4gVGhlIHJlYXNv
biBmb3IgdGhhdCBpcyB0aGUgY29hcnNlIGNvdW50ZXIgd2hpY2gKPiBpbmNyZW1lbnRzIGluIG11
bHRpcGxlcyBvZiAxLDAwMC4KPiAKPiAtLT4gSG93ZXZlciwgdGhlIGdvb2QgbmV3cyBpcyB0aGF0
IG9uIHRoaXMgQ1BVLCB0aGUgamVudF9lbnRyb3B5X2luaXQoMykKPiBjYWxsIHdvdWxkIGZhaWws
IGluZm9ybWluZyB0aGUgY2FsbGVyIGFib3V0IHRvIG5vdCB1c2UgdGhlIENQVSBKaXR0ZXIKPiBy
YW5kb20gbnVtYmVyIGdlbmVyYXRvci4KPiAKPiBTbyB1cm5nZCB3aXRoIEppdHRlciBOUFRSTkcg
c2hvdWxkIGhvcGVmdWxseSBwcm92aWRlIGdvb2QgZW5vdWdoIGVudHJvcHkgb3IKPiBub25lIGF0
IGFsbC4KPiAKPiAxLiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEwNTY5ODEv
IzIxMTMwMTQKPiAyLgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaQo+IHZlcnMvY2hhci9yYW5kb20uYyNu
MjMxIDMuCj4gaHR0cDovL3d3dy5jaHJvbm94LmRlL2plbnQvZG9jL0NQVS1KaXR0ZXItTlBUUk5H
Lmh0bWwgKFNlY3Rpb24gRi4pCj4gCj4gLS0geW5lenoKCgpDaWFvClN0ZXBoYW4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
