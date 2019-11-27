Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A0D10AECF
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 12:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hKt1TI+wdJ+PaQcx1jegR7EANNfzEn96mHXo9Z+gqg=; b=tfFo/RGWviqRJ4
	pPMrI0NibFkbxjiK+PG7cXw3IdOxFSFpkASGRbMASeYdfWINrZcGFmhLXVmHI+/AFCdFZRw8SSOwD
	C5kHcHCSIDxsGffaSDbORqOQtxvKo0+8uH/I6W7DoPhlKSJWxnd2dj8NuBeTcMMypDHQ+ZWaNtWMn
	JP08kBY6FSlKjQnfZf6W2C6PUEZfg/y6OCAoIShq0QPEJbS/zggMvF6vLecZpQHGRvGrtUxnmR5wi
	CbNoe1ARPjgj+P34GmZGC0i0IW0HqYiU1smHiSyuwMUJmpzbVF2tfPj81HnrZ9liGiNE331VWp4k0
	dVS3/tyE0vJb6GVOxoJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvgH-0005tV-DI; Wed, 27 Nov 2019 11:40:25 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvgA-0005sw-9D
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 11:40:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kJim4KT90LuyAUhmS5yMNZAQCEqzjjZrRffssjxcg6s=; b=1CsVforb/4UwXzWG1yoUT3vA0
 Ejili1KYd1Q+mzjXRyBhSaEPTtaD2qjCHEoDo/N7xPauQrZKuEg2SmpUHqW/KBuckIR1csoFo7iJy
 AtpYC696Ipj/1jvSfvG2FuGusO5JbxuRzR/2jqPRj6q1M5cAp/B4jzgabenFWtf/BjcsgdT7NxZ7C
 44y4dy3JpWN7A//eLFyivvKsW1iyTSYk6gyntsXGJu3/Ob67xJjtDXFcJpWl7oM4tdzz7h5H0Pqi0
 U7VBF39ZaxjZ9EwIRPWbXQWOek5JthCPCrMkOumheYtmhF3lH3p8Hn1vDAjISZE2jHAegFfoBODNW
 GhewVROQA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33636)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZvg3-000359-1X; Wed, 27 Nov 2019 11:40:11 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZvg1-0000FG-P9; Wed, 27 Nov 2019 11:40:09 +0000
Date: Wed, 27 Nov 2019 11:40:09 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191127114009.GS1344@shell.armlinux.org.uk>
References: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191127085045.GA37269@meh.true.cz>
 <20191127103510.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127103510.GD25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_034018_326208_AEE91EBC 
X-CRM114-Status: GOOD (  32.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMTA6MzU6MTBBTSArMDAwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IE9uIFdlZCwgTm92IDI3LCAyMDE5IGF0IDA5OjUwOjQ1
QU0gKzAxMDAsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gPiBSdXNzZWxsIEtpbmcgLSBBUk0gTGlu
dXggYWRtaW4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az4gWzIwMTktMTEtMjYgMDA6MDc6NDNdOgo+
ID4gCj4gPiBIaSwKPiA+IAo+ID4gPiBJIGNhbiBzZWUgeW91ciByZXBseSBpbiB0aGUgT3Blbldy
dCBhcmNoaXZlcywgYnV0IEkgbmV2ZXIgcmVjZWl2ZWQKPiA+ID4gaXQsIHNvIEkgY2FuJ3QgcmVw
bHkgdG8gaXQuLi4gIChJJ20gbm90IHN1YnNjcmliZWQgdG8gb3BlbndydC1kZXZlbC4pCj4gPiAK
PiA+IEZZSSBSZW7DqSBqdXN0IGRpZG4ndCBDYzogeW91Lgo+IAo+IFllcywgSSBndWVzc2VkIGFz
IG11Y2gsIGFzIHNvbWUgbWFpbGluZyBsaXN0cyBhcmUgc3dpdGNoaW5nIHRvIGEgInJlcGx5Cj4g
dG8gbGlzdCIgcG9saWN5IC0gd2hpY2ggaXMgZmluZSBpZiB5b3UgY2FuIGd1YXJhbnRlZSB0aGF0
IGFsbCB3aG8gcG9zdAo+IHRoZXJlIGFyZSBzdWJzY3JpYmVkLiAgV2l0aCBhbiBvcGVuIGxpc3Qs
IHlvdSBlbmQgdXAgd2l0aCBleGFjdGx5IHRoaXMKPiBwcm9ibGVtLgo+IAo+ID4gPiBNeSBpbXBy
ZXNzaW9uIGlzIHRoYXQgdGhlIGJ1aWxkIHN5c3RlbSBpcyBkZXNpZ25lZCB0byBrZWVwIHBlb3Bs
ZSBvdXQhCj4gPiAKPiA+IFlvdSBtZWFuIE1ha2Ugd2FzIGRlc2lnbmVkIHRvIGtlZXAgcGVvcGxl
IG91dD8gOi0pCj4gPiAKPiA+IFB1dGluZyBqb2tlcyBhc2lkZSwgaWYgeW91IGltYWdpbmUsIHRo
YXQgT3BlbldydCBwcm92aWRlcyBjb21wbGV0ZSBmbGFzaGFibGUKPiA+IGltYWdlcyAoYm9vdGxv
YWRlciwga2VybmVsLCBtb2R1bGVzLCBmaXJtd2FyZSwgdXNlcnNwYWNlLCB3ZWIgVUkpLCBwYWNr
YWdlcwo+ID4gd2l0aCBwYWNrYWdlIG1hbmFnZXIsIHBhY2thZ2UgZmVlZHMsIFNESywgaW1hZ2Ug
YnVpbGRlciBhbmQgYWxsIG9mIHRoaXMgZm9yCj4gPiBpbnNhbmUgbnVtYmVyIG9mIHBsYXRmb3Jt
cyBhbmQgZGV2aWNlcy4gVGhlbiBhZGQgTGludXgvbWFjT1MvV1NMIGhvc3QgYnVpbGQKPiA+IHN5
c3RlbXMgaW4gdGhlIG1peCBhbmQgeW91J2xsIGVuZCB1cCB3aXRoIHByZXR0eSBjb21wbGV4IHBy
ZXJlcXVpc2l0ZXMuCj4gCj4gSXQgbWFrZXMgaXQgdmVyeSBkaWZmaWN1bHQgdG8gdW5kZXJzdGFu
ZC4gIEZvciBleGFtcGxlLCB3aGVyZSBpcyB0aGUKPiBrZXJuZWwgKyBrbW9kIHBhY2thZ2UgdmVy
c2lvbi9yZWxlYXNlIHNldCAtIGFuZCBzaG91bGQgaXQgYmUKPiBpbmNyZW1lbnRlZCBzbyB0aGF0
IG9wa2cgb24gdGhlIHRhcmdldCBkb2Vzbid0IG1lc3MgdXAgaXQncyAic3RhdHVzIgo+IGZpbGUg
d2hlbiByZWluc3RhbGxpbmcgdGhlIGttb2QgcGFja2FnZXM/ICAoWWVzLCBJJ3ZlIGhhZCB0byBt
YW51YWxseQo+IGVkaXQgdGhhdCBmaWxlIHRvIGdldCByaWQgb2YgYW55IGVudHJ5IHdpdGggImlu
c3RhbGwgb2sgbm90LWluc3RhbGxlZCIKPiBzdGF0dXMsIGJlY2F1c2Ugb3BrZyB3b24ndCBkbyBf
YW55dGhpbmdfIHdpdGggdGhvc2UuCj4gCj4gPiA+IFNvbWUgZ3VpZGFuY2Ugd291bGQgYmUgbW9z
dCBoZWxwZnVsLiAgU2lsZW5jZSBvbiB0aGUgb3RoZXIgaGFuZAo+ID4gPiB3aWxsIHJlc3VsdCBp
biBub3RoaW5nIGNoYW5naW5nLgo+ID4gCj4gPiBBRkFJSyBKb25hcyBwbGFucyB0byBib3Jyb3cg
ZmV3IFNGUCBtb2R1bGVzIGFuZCB0ZXN0IHRoaXMgb24gaGlzIENsZWFyRm9nIFBSTwo+ID4gYW5k
IGhlIGlzIGV2ZW50dWFsbHkgZ29pbmcgdG8gbWVyZ2UgdGhpcyBhcyB3ZWxsLgo+IAo+IFN1cmVs
eSBvbmx5IG9uZSBwZXJzb24gc2hvdWxkIGJlIG1lcmdpbmcgdGhpcz8KPiAKPiA+ID4gMSkgYXMg
dGhlc2UgYXJlIHRvdWNoaW5nIHBoeSBjb2RlLCB1c2luZyA3eHggbnVtYmVycyB3b3VsZCBiZQo+
ID4gPiAgICByZWFzb25hYmxlICBPciBtYXliZSAweHggZm9yIGF0IGxlYXN0IHNvbWU/Cj4gPiAK
PiA+IEl0J3MganVzdCBhIHNvZnQgZ3VpZGFuY2UsIG5vdCBwZWRhbnRpYyBzeXN0ZW0sIEkgbWVh
biBpZiB5b3UgbG9vayBhdCBtdmVidQo+ID4gcGF0Y2hlcywgeW91IGNhbiBzZWUgbmV0L3BoeSBy
ZWxhdGVkIHBhdGNoZXMgd2l0aCA1eHggbnVtYmVyaW5nIHNjaGVtZS4KPiA+IFNvbWV0aW1lcyBp
dCdzIGJlaW5nIGRvbmUgb24gcHVycG9zZSwgaW4gb3JkZXIgdG8gbWFrZSByZWZyZXNoaW5nIG9m
IHBhdGNoZXMKPiA+IGVhc2llciBhbmQvb3IgdG8gYXZvaWQgY2xhc2hlcyB3aXRoIHNvbWUgb3Ro
ZXIgcGF0Y2hlcy4KPiA+IAo+ID4gSWYgeW91IHRha2UgYSBsb29rIGluIGluY2x1ZGUvcXVpbHQu
bWsgeW91J2xsIGZpbmQgb3V0IGZvbGxvd2luZzoKPiA+IAo+ID4gICQoY2FsbCBQYXRjaERpciwk
KExJTlVYX0RJUiksJChHRU5FUklDX0JBQ0tQT1JUX0RJUiksZ2VuZXJpYy1iYWNrcG9ydC8pCj4g
PiAgJChjYWxsIFBhdGNoRGlyLCQoTElOVVhfRElSKSwkKEdFTkVSSUNfUEFUQ0hfRElSKSxnZW5l
cmljLykKPiA+ICAkKGNhbGwgUGF0Y2hEaXIsJChMSU5VWF9ESVIpLCQoR0VORVJJQ19IQUNLX0RJ
UiksZ2VuZXJpYy1oYWNrLykKPiA+ICAkKGNhbGwgUGF0Y2hEaXIsJChMSU5VWF9ESVIpLCQoUEFU
Q0hfRElSKSxwbGF0Zm9ybS8pCj4gPiAKPiA+IHdoaWNoIG1lYW5zLCB0aGF0IHRoZSByZXN1bHRp
bmcga2VybmVsIGlzIGJlaW5nIGNvbnN0cnVjdGVkIGZyb20KPiA+IGdlbmVyaWMvYmFja3BvcnQs
IGdlbmVyaWMvcGVuZGluZywgZ2VuZXJpYy9oYWNrLCBnZW5lcmljL2ZpbGVzLAo+ID4gcGxhdGZy
b20vcGF0Y2hlcyBhbmQgcGxhdGZvcm0vZmlsZXMgc291cmNlcy4KPiA+IAo+ID4gU28gd2hlbiB5
b3UncmUgYWRkaW5nIHNvbWV0aGluZyBpdCdzIGdvb2QgdG8ga2VlcCB0aGlzIGluIG1pbmQgaW4g
b3JkZXIgdG8KPiA+IGF2b2lkIHBvc3NpYmxlIGNsYXNoZXMuIEkgd291bGQgcHJvYmFibHkganVz
dCBzdGljayB3aXRoIDd4eC4KPiAKPiBPay4KPiAKPiA+ID4gMikgdGhlcmUgYXJlIG5vIDd4eCBu
dW1iZXJzIGluIHRhcmdldC9saW51eC9nZW5lcmljL2JhY2twb3J0LTQuMTksIHNvCj4gPiA+ICAg
IG51bWJlcmluZyB0aGVtIDcwMCB0aHJvdWdoIHRvIDc0MiBmb3IgdGhlIGZpcnN0IHBhdGNoZXMg
d291bGQgYmUKPiA+ID4gICAgb2theT8gIFRoZXNlIGFyZSBhbGwgcXVldWVkIGluIG1haW5saW5l
IG5ldC1uZXh0LiAKPiA+IAo+ID4gWWVzLiBGWUkgaW4gb3JkZXIgdG8gbWFrZSB0aGUga2VybmVs
IHJlZnJlc2ggcHJvY2VzcyBlYXNpZXIvb2J2aW91cywgaXQncyBuaWNlCj4gPiB0byBoYXZlIChu
b3QgbWFuZGF0b3J5KSB0aGUga2VybmVsIHZlcnNpb24gYXQgdGhlIGJlZ2lubmluZyBvZiB0aGUg
ZmlsZW5hbWUuCj4gCj4gT2suICBJJ3ZlIG5lZWRlZCB0byBtb3ZlIHNvbWUgYWRkaXRpb25hbCBw
YXRjaGVzIGZyb20gbXZlYnUgdG8gZ2VuZXJpYwo+IGZvciB0aGlzLgo+IAo+ID4gPiAzKSBwYXRj
aCAzIGFyZW4ndCBxdWV1ZWQgeWV0LCBidXQgYXJlIHB1Ymxpc2hlZCBpbiBteSBnaXQgdHJlZSwg
YW5kIHdpbGwKPiA+ID4gICAgYmUgc2VudCBmb3IgdGhlIG5leHQgbWVyZ2Ugd2luZG93LiAgRG9l
cyB0aGlzIHN0aWxsIHF1YWxpZnkgYXMKPiA+ID4gICAgc3VpdGFibGUgZm9yIGJhY2twb3J0LTQu
MTksIG9yIHNob3VsZCB0aGV5IGdvIGVsc2V3aGVyZT8gCj4gPiAKPiA+IEZyb20gbXkgUE9WIGl0
J3MgYmFja3BvcnQuCj4gCj4gT2suCj4gCj4gPiA+IDQpIHBhdGNoIDQsIHRoZSB1RFBVIHBhdGNo
ZXMgc3RheSBpbiB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5Pwo+ID4gCj4gPiBZZXMu
Cj4gCj4gT2suCj4gCj4gPiA+ICAgIDN4eCBvciBzb21lIG90aGVyIG51bWJlcj8KPiA+IAo+ID4g
MHh4IG9yIDN4eCwgdXN1YWxseSB3aGF0ZXZlciBhdm9pZHMgY2xhc2hlcyB3aXRoIGFueSBwcmV2
aW91cy9sYXRlciBwYXRjaGVzIDotKQo+IAo+IEkndmUgZW5kZWQgdXAgZ2l2aW5nIHRoZW0gNTQ0
Li41NDYgdG8gZm9sbG93IG9uIGZyb20gdGhlIGxhc3QgRFRTIHBhdGNoLgo+IExvb2tpbmcgYXQg
dGhlIG51bWJlcmluZyB1c2VkIHRoZXJlLCB0aGVyZSBkb2Vzbid0IHNlZW0gdG8gYmUgYW55IHJo
eW1lCj4gb3IgcmVhc29uIHRvIGl0Lgo+IAo+ID4gPiA1KSB0aGUgZmluYWwgcGF0Y2gsIHdoaWNo
IGlzbid0IGluIG1haW5saW5lLCBhbmQgcHJvYmFibHkgbmVlZHMgZnVydGhlcgo+ID4gPiAgICB3
b3JrIC0gc2hvdWxkIHRoYXQgZ28gaW4gdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFjay00LjE5ID8g
Cj4gPiAKPiA+IElmIHlvdSdyZSB0YWxraW5nIGhlcmUgYWJvdXQgMS80LCB0aGVuIHRoaXMgb25l
IGlzIHByb2JhYmx5IGp1c3QgZmluZSBhcyBpdAo+ID4gaXMuCj4gCj4gSSdtIHRhbGtpbmcgYWJv
dXQgNC80LCB0aGUgIndvcmsgYXJvdW5kIE5va2lhIEdQT04gbW9kdWxlJ3MgVFhfRkFVTFQKPiBh
c3NlcnRpb24iIHBhdGNoLgoKU29ycnksIGxvb2tzIGxpa2UgSSBuZXZlciBzZW50IHRoYXQgb25l
ICh3aGljaCB3b3VsZCd2ZSBiZWVuIHBhdGNoIDUhKQoKPiA+ID4gIFdoYXQgYWJvdXQgdGhlIG51
bWJlcmluZyBvZiB0aGUgZXhpc3RpbmcgN3h4IHBhdGNoZXMgdGhlcmUgLSBkbyBJIGp1c3QgcGlj
awo+ID4gPiAgdGhlIGZpcnN0IGF2YWlsYWJsZSA3eHggbnVtYmVyLCBpLm8udy4gNzAxID8KPiA+
IAo+ID4gWWVzLgo+IAo+IFRoYW5rcywgeW91ciByZXBseSBoYXMgYWxsb3dlZCBtZSB0byBwcm9j
ZWVkIHdpdGggc29tZSBjb25maWRlbmNlIHRoYXQKPiBJJ20gZG9pbmcgdGhlIGNvcnJlY3QgdGhp
bmcuCj4gCj4gLS0gCj4gUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5v
cmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCj4gRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGlu
ZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKPiBBY2NvcmRp
bmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCgotLSAKUk1LJ3Mg
UGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNo
ZXMvCkZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQg
MTIuMU1icHMgZG93biA2MjJrYnBzIHVwCkFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0OiAxMS45
TWJwcyBkb3duIDUwMGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
