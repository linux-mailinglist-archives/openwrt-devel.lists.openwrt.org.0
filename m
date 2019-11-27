Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC8F10AC3E
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 09:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:Message-ID:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=gXGsATCPWFxv4JPv1xERNMF/YJiGq8YSuuh23x02aUY=; b=RH3
	8GPmVHg6NY2EREkEjPmnD5udqkI6rP97Ke/dRl9dmsFRK1HF0sW3O9M5oaf0iV40+t6LbcuwBBsDh
	z8D/6Je1p2bCDckLURyOyV7hfa1a0Nx4PA4i+5jOKY2s7UhxgxGIejwT+lh08DDYp61VHXO6T5PCQ
	nKvq0OLrDRWN2jVb1PkWk55FWRODNAoJaFObSZoSN2r7GVKSm7DwItTqi0CLOacUtiuptPU9HzVhM
	bt72HE5AZHPJ5G8oz9qR0i6HrCgchtsywPyZ8gU3cbfi7/tXSepUUH/h10rwpkhKqehGClBhHD1/z
	wCkDGQ9dp2GD4Zwd6TknQZeaX6n5Rgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZt2a-0005cT-Ri; Wed, 27 Nov 2019 08:51:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZt2N-0005bR-GN
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 08:51:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B99674A95;
 Wed, 27 Nov 2019 09:50:55 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id db3ca079;
 Wed, 27 Nov 2019 09:50:45 +0100 (CET)
Date: Wed, 27 Nov 2019 09:50:45 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Message-ID: <20191127085045.GA37269@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_005105_334541_436E4E3F 
X-CRM114-Status: GOOD (  15.02  )
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIDxsaW51eEBhcm1saW51eC5vcmcudWs+IFsy
MDE5LTExLTI2IDAwOjA3OjQzXToKCkhpLAoKPiBJIGNhbiBzZWUgeW91ciByZXBseSBpbiB0aGUg
T3BlbldydCBhcmNoaXZlcywgYnV0IEkgbmV2ZXIgcmVjZWl2ZWQKPiBpdCwgc28gSSBjYW4ndCBy
ZXBseSB0byBpdC4uLiAgKEknbSBub3Qgc3Vic2NyaWJlZCB0byBvcGVud3J0LWRldmVsLikKCkZZ
SSBSZW7DqSBqdXN0IGRpZG4ndCBDYzogeW91LgoKPiBNeSBpbXByZXNzaW9uIGlzIHRoYXQgdGhl
IGJ1aWxkIHN5c3RlbSBpcyBkZXNpZ25lZCB0byBrZWVwIHBlb3BsZSBvdXQhCgpZb3UgbWVhbiBN
YWtlIHdhcyBkZXNpZ25lZCB0byBrZWVwIHBlb3BsZSBvdXQ/IDotKQoKUHV0aW5nIGpva2VzIGFz
aWRlLCBpZiB5b3UgaW1hZ2luZSwgdGhhdCBPcGVuV3J0IHByb3ZpZGVzIGNvbXBsZXRlIGZsYXNo
YWJsZQppbWFnZXMgKGJvb3Rsb2FkZXIsIGtlcm5lbCwgbW9kdWxlcywgZmlybXdhcmUsIHVzZXJz
cGFjZSwgd2ViIFVJKSwgcGFja2FnZXMKd2l0aCBwYWNrYWdlIG1hbmFnZXIsIHBhY2thZ2UgZmVl
ZHMsIFNESywgaW1hZ2UgYnVpbGRlciBhbmQgYWxsIG9mIHRoaXMgZm9yCmluc2FuZSBudW1iZXIg
b2YgcGxhdGZvcm1zIGFuZCBkZXZpY2VzLiBUaGVuIGFkZCBMaW51eC9tYWNPUy9XU0wgaG9zdCBi
dWlsZApzeXN0ZW1zIGluIHRoZSBtaXggYW5kIHlvdSdsbCBlbmQgdXAgd2l0aCBwcmV0dHkgY29t
cGxleCBwcmVyZXF1aXNpdGVzLgoKPiBTb21lIGd1aWRhbmNlIHdvdWxkIGJlIG1vc3QgaGVscGZ1
bC4gIFNpbGVuY2Ugb24gdGhlIG90aGVyIGhhbmQKPiB3aWxsIHJlc3VsdCBpbiBub3RoaW5nIGNo
YW5naW5nLgoKQUZBSUsgSm9uYXMgcGxhbnMgdG8gYm9ycm93IGZldyBTRlAgbW9kdWxlcyBhbmQg
dGVzdCB0aGlzIG9uIGhpcyBDbGVhckZvZyBQUk8KYW5kIGhlIGlzIGV2ZW50dWFsbHkgZ29pbmcg
dG8gbWVyZ2UgdGhpcyBhcyB3ZWxsLgoKPiAxKSBhcyB0aGVzZSBhcmUgdG91Y2hpbmcgcGh5IGNv
ZGUsIHVzaW5nIDd4eCBudW1iZXJzIHdvdWxkIGJlCj4gICAgcmVhc29uYWJsZSAgT3IgbWF5YmUg
MHh4IGZvciBhdCBsZWFzdCBzb21lPwoKSXQncyBqdXN0IGEgc29mdCBndWlkYW5jZSwgbm90IHBl
ZGFudGljIHN5c3RlbSwgSSBtZWFuIGlmIHlvdSBsb29rIGF0IG12ZWJ1CnBhdGNoZXMsIHlvdSBj
YW4gc2VlIG5ldC9waHkgcmVsYXRlZCBwYXRjaGVzIHdpdGggNXh4IG51bWJlcmluZyBzY2hlbWUu
ClNvbWV0aW1lcyBpdCdzIGJlaW5nIGRvbmUgb24gcHVycG9zZSwgaW4gb3JkZXIgdG8gbWFrZSBy
ZWZyZXNoaW5nIG9mIHBhdGNoZXMKZWFzaWVyIGFuZC9vciB0byBhdm9pZCBjbGFzaGVzIHdpdGgg
c29tZSBvdGhlciBwYXRjaGVzLgoKSWYgeW91IHRha2UgYSBsb29rIGluIGluY2x1ZGUvcXVpbHQu
bWsgeW91J2xsIGZpbmQgb3V0IGZvbGxvd2luZzoKCiAkKGNhbGwgUGF0Y2hEaXIsJChMSU5VWF9E
SVIpLCQoR0VORVJJQ19CQUNLUE9SVF9ESVIpLGdlbmVyaWMtYmFja3BvcnQvKQogJChjYWxsIFBh
dGNoRGlyLCQoTElOVVhfRElSKSwkKEdFTkVSSUNfUEFUQ0hfRElSKSxnZW5lcmljLykKICQoY2Fs
bCBQYXRjaERpciwkKExJTlVYX0RJUiksJChHRU5FUklDX0hBQ0tfRElSKSxnZW5lcmljLWhhY2sv
KQogJChjYWxsIFBhdGNoRGlyLCQoTElOVVhfRElSKSwkKFBBVENIX0RJUikscGxhdGZvcm0vKQoK
d2hpY2ggbWVhbnMsIHRoYXQgdGhlIHJlc3VsdGluZyBrZXJuZWwgaXMgYmVpbmcgY29uc3RydWN0
ZWQgZnJvbQpnZW5lcmljL2JhY2twb3J0LCBnZW5lcmljL3BlbmRpbmcsIGdlbmVyaWMvaGFjaywg
Z2VuZXJpYy9maWxlcywKcGxhdGZyb20vcGF0Y2hlcyBhbmQgcGxhdGZvcm0vZmlsZXMgc291cmNl
cy4KClNvIHdoZW4geW91J3JlIGFkZGluZyBzb21ldGhpbmcgaXQncyBnb29kIHRvIGtlZXAgdGhp
cyBpbiBtaW5kIGluIG9yZGVyIHRvCmF2b2lkIHBvc3NpYmxlIGNsYXNoZXMuIEkgd291bGQgcHJv
YmFibHkganVzdCBzdGljayB3aXRoIDd4eC4KCj4gMikgdGhlcmUgYXJlIG5vIDd4eCBudW1iZXJz
IGluIHRhcmdldC9saW51eC9nZW5lcmljL2JhY2twb3J0LTQuMTksIHNvCj4gICAgbnVtYmVyaW5n
IHRoZW0gNzAwIHRocm91Z2ggdG8gNzQyIGZvciB0aGUgZmlyc3QgcGF0Y2hlcyB3b3VsZCBiZQo+
ICAgIG9rYXk/ICBUaGVzZSBhcmUgYWxsIHF1ZXVlZCBpbiBtYWlubGluZSBuZXQtbmV4dC4gCgpZ
ZXMuIEZZSSBpbiBvcmRlciB0byBtYWtlIHRoZSBrZXJuZWwgcmVmcmVzaCBwcm9jZXNzIGVhc2ll
ci9vYnZpb3VzLCBpdCdzIG5pY2UKdG8gaGF2ZSAobm90IG1hbmRhdG9yeSkgdGhlIGtlcm5lbCB2
ZXJzaW9uIGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIGZpbGVuYW1lLgoKPiAzKSBwYXRjaCAzIGFy
ZW4ndCBxdWV1ZWQgeWV0LCBidXQgYXJlIHB1Ymxpc2hlZCBpbiBteSBnaXQgdHJlZSwgYW5kIHdp
bGwKPiAgICBiZSBzZW50IGZvciB0aGUgbmV4dCBtZXJnZSB3aW5kb3cuICBEb2VzIHRoaXMgc3Rp
bGwgcXVhbGlmeSBhcwo+ICAgIHN1aXRhYmxlIGZvciBiYWNrcG9ydC00LjE5LCBvciBzaG91bGQg
dGhleSBnbyBlbHNld2hlcmU/IAoKRnJvbSBteSBQT1YgaXQncyBiYWNrcG9ydC4KCj4gNCkgcGF0
Y2ggNCwgdGhlIHVEUFUgcGF0Y2hlcyBzdGF5IGluIHRhcmdldC9saW51eC9tdmVidS9wYXRjaGVz
LTQuMTk/CgpZZXMuCgo+ICAgIDN4eCBvciBzb21lIG90aGVyIG51bWJlcj8KCjB4eCBvciAzeHgs
IHVzdWFsbHkgd2hhdGV2ZXIgYXZvaWRzIGNsYXNoZXMgd2l0aCBhbnkgcHJldmlvdXMvbGF0ZXIg
cGF0Y2hlcyA6LSkKCj4gNSkgdGhlIGZpbmFsIHBhdGNoLCB3aGljaCBpc24ndCBpbiBtYWlubGlu
ZSwgYW5kIHByb2JhYmx5IG5lZWRzIGZ1cnRoZXIKPiAgICB3b3JrIC0gc2hvdWxkIHRoYXQgZ28g
aW4gdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFjay00LjE5ID8gCgpJZiB5b3UncmUgdGFsa2luZyBo
ZXJlIGFib3V0IDEvNCwgdGhlbiB0aGlzIG9uZSBpcyBwcm9iYWJseSBqdXN0IGZpbmUgYXMgaXQK
aXMuCgo+ICBXaGF0IGFib3V0IHRoZSBudW1iZXJpbmcgb2YgdGhlIGV4aXN0aW5nIDd4eCBwYXRj
aGVzIHRoZXJlIC0gZG8gSSBqdXN0IHBpY2sKPiAgdGhlIGZpcnN0IGF2YWlsYWJsZSA3eHggbnVt
YmVyLCBpLm8udy4gNzAxID8KClllcy4KCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
