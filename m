Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ECC100684
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 14:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWKtdWGnmG9xJBO+Df2tD3/47blbkY1J6iFc740Cw6g=; b=CLVvN8aIsQsWjt
	W9PwT/ylgLiiwgIes/x7JBkLJnPmCFNq0zDk3ytWL20cX94zHnhheS9zrNR5y185XPCATSyOrm7ql
	YgrLOJspiKMEFpjG3Zp/ukG5rMqvGlRssd7MzmPwT4j6SzmLAk5yzXqZkSuCrUgFcldvrV/YL6Xen
	FHBstsUy+b1MJL1mxCfdH3U6n4BRQT/yRe7PZfhqr/kC9jpPXtRqvyK14zCfyvpPrS7+V+criYmxJ
	x/47A9fNLivQURYE2HF2mqkPPY0G0xbCXqgln+BWzuA0eH+39O+F/HJQ6zsm9KSF6Za7a57kjExtL
	d/IAW6oc95fi+ZHdgMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWh9K-0000eO-0Z; Mon, 18 Nov 2019 13:33:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWh9C-0000d0-9C
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 13:32:56 +0000
X-Originating-IP: 86.206.246.123
Received: from windsurf.home (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 23CA620005;
 Mon, 18 Nov 2019 13:32:37 +0000 (UTC)
Date: Mon, 18 Nov 2019 14:32:36 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Petr =?UTF-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Message-ID: <20191118143236.41da0d04@windsurf.home>
In-Reply-To: <20191116132213.GA52387@meh.true.cz>
References: <20191113151241.752720-1-thomas.petazzoni@bootlin.com>
 <20191115052949.GC13337@meh.true.cz>
 <20191115091632.1aeb1269@windsurf>
 <20191116132213.GA52387@meh.true.cz>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_053254_596520_1A150CB0 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] initd/init: add minimal SELinux
 policy loading support
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gUGV0ciwKClRoYW5rcyBmb3IgeW91ciBmZWVkYmFjayBhZ2Fpbi4KCk9uIFNhdCwgMTYg
Tm92IDIwMTkgMTQ6MjI6MTMgKzAxMDAKUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3Jv
dGU6Cgo+IChuaXRwaWNrLCBpdCdzIE9wZW5XcnQsIG5vdCBPcGVuV1JUKQoKVGhhbmtzIGZvciB0
aGlzIGNsYXJpZmljYXRpb24sIGl0J3MgYWx3YXlzIGdvb2QgdG8gdXNlIHRoZSBwcm9wZXIKY2Fw
aXRhbGl6YXRpb24gZm9yIHByb2plY3QgbmFtZXMuIEknbGwgdHJ5IHRvIHVzZSBPcGVuV3J0IGlu
IHRoZQpmdXR1cmUsIGJ1dCBwbGVhc2UgYmVhciB3aXRoIG1lIGlmIEkgc29tZXRpbWVzIGZvcmdl
dC4KCj4gPiBObywgdGhpcyBwYXRjaCBpcyBub3QgUkZDLCBpdCBzaG91bGQgYmUgcmVhZHkgZm9y
IG1lcmdpbmcsIEknbSBhbHJlYWR5Cj4gPiB1c2luZyBpdCBpbiBzb21lIGRldmljZXMuICAKPiAK
PiBPaywgdGhpcyBwYXRjaCBpcyBnb29kIGVub3VnaCBmb3IgeW91ciBsaW1pdGVkIHVzZSBjYXNl
LCBidXQgaW4gb3JkZXIgdG8KPiBpbmNsdWRlIFNFTGludXggc3VwcG9ydCBpbiBPcGVuV3J0LCB0
aGVuIHRoZSBmaXJzdCBwYXRjaCBzZXJpZXMgc2hvdWxkIGJlIG1vcmUKPiBjb21wcmVoZW5zaXZl
LCBtaW5pbWFsIHlldCBjb21wbGV0ZS4KCkkgZ3Vlc3MgSSdsbCBzZW5kIHRoZSBwYXRjaCBzZXJp
ZXMgaXRzZWxmLCBzbyB3ZSBjYW4gaGF2ZSB0aGUKZGlzY3Vzc2lvbiBvbiB0aGUgYWN0dWFsIHBy
b3Bvc2FsLiBJIHNlbnQgdGhpcyBwcm9jZCBwYXRjaCBzZXBhcmF0ZWx5LApqdXN0IGJlY2F1c2Ug
aXQgaXMgYSByZXF1aXJlbWVudCBmb3IgdGhlIHJlc3Qgb2YgdGhlIHNlcmllcyB0byB3b3JrCihy
aWdodCBub3cgSSB3YXMgd29ya2luZyB3aXRoIHRoaXMgcHJvY2QgcGF0Y2ggaW4gdGhlIE9wZW5X
cnQgcHJvY2QKcGFja2FnZSkuCgo+ID4gVGhlIHRoaW5nIGlzIHRoYXQgdGhlIFNFTGludXggc3Vw
cG9ydCBpbiBPcGVuV1JUIG5lZWRzIHRoaXMgaW1wcm92ZW1lbnQKPiA+IGluIHByb2NkLCBvdGhl
cndpc2UgaXQgd29uJ3Qgd29yayBhdCBydW50aW1lIGFzIG5vdGhpbmcgd2lsbCBiZSBsb2FkaW5n
Cj4gPiB0aGUgU0VMaW51eCBwb2xpY3kuICAKPiAKPiBXaGVyZSBpcyB0aGF0IHBvbGljeT8gV2hh
dCBhYm91dCBrZXJuZWwgcGFydD8gV2hhdCBhYm91dCB1c2Vyc3BhY2UgcGFydD8gV2hhdAo+IGFi
b3V0IGZpbGVzeXN0ZW0gaW1hZ2U/IEFuZCBzbyBvbi4KCkluIHRlcm1zIG9mIHBvbGljeSwgSSdt
IHNpbXBseSB1c2luZyB0aGUgcmVmZXJlbmNlIHBvbGljeSBwcm92aWRlZCBieQp0aGUgU0VMaW51
eCBwcm9qZWN0IGl0c2VsZiwgd2l0aCBubyBzcGVjaWZpYyBjdXN0b21pemF0aW9uIGZvciBPcGVu
V3J0LgpPZiBjb3Vyc2UsIGFkZGl0aW9uYWwgdHVuaW5nIG1heSBiZSByZXF1aXJlZCwgYnV0IGZv
ciBteSB1c2UgY2FzZSwgaXQKd2FzIHN1ZmZpY2llbnQuIEluIHRlcm1zIG9mIGtlcm5lbCBwYXJ0
LCBpdCBvZiBjb3Vyc2UgcmVxdWlyZXMgc29tZQprZXJuZWwgb3B0aW9ucyB0byBiZSBlbmFibGVk
LiBJbiB0ZXJtcyBvZiB1c2VyLXNwYWNlIHBhcnRzLCB0aGlzIGlzCndoZXJlIG15IHBhdGNoIHNl
cmllcyBpcyB0aGUgbW9zdCBpbnRlcmVzdGluZzogaXQgcGFja2FnZXMgYWxsIHRoZQp1c2VyLXNw
YWNlIGNvbXBvbmVudHMgdGhhdCBhcmUgbmVjZXNzYXJ5IHRvIGJlIGFibGUgdG8gd29yayB3aXRo
ClNFTGludXguCgo+ID4gUmVnYXJkaW5nIHRoZSBmbGFzaCBzcGFjZSwgUkFNIGFuZCBDUFUgb3Zl
cmhlYWQsIEknbSBub3Qgc3VyZSBpdCdzIHRoYXQKPiA+IHJlbGV2YW50OiB0aGUgU0VMaW51eCBw
YWNrYWdpbmcgSSd2ZSBkb25lIG1ha2VzIGl0IGNvbXBsZXRlbHkgb3B0aW9uYWwsCj4gPiBzbyB5
b3Ugb25seSBoYXZlIGFuIGltcGFjdCBvZiBmbGFzaCBzcGFjZSwgUkFNIGFuZCBDUFUgaWYgeW91
IGVuYWJsZQo+ID4gU0VMaW51eCBzdXBwb3J0LiAgCj4gCj4gT25jZSBpdHMgbWVyZ2VkLCB3ZSBi
YXNpY2FsbHkgc2F5LCB0aGF0IGl0cyBtb3JlIG9yIGxlc3Mgc3VwcG9ydGVkLCBldmVuIGlmCj4g
aXQncyBvcHRpb25hbC4KPiAKPiBJdCdzIHByZXR0eSBtdWNoIGNyeXN0YWwgY2xlYXIsIHRoYXQg
c29tZSBhZGRpdGlvbmFsIGhhcmRlbmluZyBsYXllciB3b3VsZCBiZQo+IHZlcnkgd2VsY29tZS4g
SSB0aGluaywgdGhhdCBPcGVuV3J0IHNob3VsZCBhaW0gZm9yIHNvbWV0aGluZywgd2hpY2ggY291
bGQgYmUKPiB1c2FibGUgb24gbW9zdCBvZiBtb2Rlcm4gZGV2aWNlcyB0b2RheSBhbmQgZW5hYmxl
ZCBieSBkZWZhdWx0LiBTZWN1cml0eQo+IHNob3VsZG4ndCBiZSBhbiBvcHRpb24sIGl0IHNob3Vs
ZCBiZSBkZWZhdWx0Lgo+IAo+IFNFTGludXggaXMganVzdCBvbmUgb2YgdGhlIExTTXMgaW4gTGlu
dXguICBJcyBTRUxpbnV4IHRoZSByaWdodCBvbmUgZm9yCj4gT3BlbldydCBwcm9qZWN0PyBBcmUg
d2UgZ29pbmcgdG8gc3VwcG9ydCBhbGwgb2YgdGhlbT8gSSBkb3VidCB0aGF0LCBzbwo+IGRlY2lz
aW9uIG5lZWRzIHRvIGJlIG1hZGUuCgpJIGd1ZXNzIGhlcmUgSSBkb24ndCBoYXZlIHRoZSBPcGVu
V3J0IG1pbmRzZXQsIGFzIEkgY29tZSBmcm9tIGEKQnVpbGRyb290IGJhY2tncm91bmQuIEJ1aWxk
cm9vdCBzdXBwb3J0cyBtdWx0aXBsZSBzb2x1dGlvbnMgZm9yIHRoZQpzYW1lICJwcm9ibGVtIiwg
YW5kIGxldCB1c2VycyBkZWNpZGUgd2hpY2ggc29sdXRpb24gdGhleSB3YW50IHRvIHVzZQooc28g
dGhlIHVzZXJzIGhhdmUgc29tZSBpbnRlZ3JhdGlvbiB3b3JrIHRvIGRvKSwgd2hpbGUgaXQgc2Vl
bXMgdGhhdApPcGVuV3J0IHdhbnRzIHRvIG1ha2UgYSBkZWNpc2lvbiBvbiBvbmUgc29sdXRpb24g
dG8gdXNlLCBidXQgcHJvdmlkZQpzb21ldGhpbmcgdGhhdCBpcyBzZWFtbGVzc2x5IGludGVncmF0
ZWQgZm9yIHVzZXJzLgoKPiA+IERvIHlvdSBoYXZlIG1vcmUgZGV0YWlscyBhYm91dCBlbnRlcmlu
ZyBmYWlsc2FmZSBtb2RlID8gSG93IGRvIHlvdSBkbyB0aGF0ID8gIAo+IAo+IEl0J3MgdXN1YWxs
eSB0cmlnZ2VyZWQgYnkgdGhlIGJ1dHRvbiBkdXJpbmcgdGhlIGJvb3QgcHJvY2Vzc1sxXSwgYnV0
IGl0IHNob3VsZAo+IGJlIHBvc3NpYmxlIHRvIGZvcmNlIGl0IGZyb20gcHJvY2QgYXMgd2VsbC4K
PiAKPiAxLiBodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUtdXNlci90cm91Ymxlc2hvb3Rp
bmcvZmFpbHNhZmVfYW5kX2ZhY3RvcnlfcmVzZXQKCk9LLCB0aGFua3MuCgpUaG9tYXMKLS0gClRo
b21hcyBQZXRhenpvbmksIENUTywgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVu
Z2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
