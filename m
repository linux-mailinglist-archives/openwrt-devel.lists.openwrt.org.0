Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155731007F3
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 16:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgCUrgUH95OgcbGAgLUlm2RP4EQ0sWy8oU/dnh9K0U4=; b=s4ob9ezFb5WyVe
	gn3Kp7Tr6P4lkCWYS6jf8JihQGHDsVMxwvoWjFgmsbzGG3bXiUXEEMW/MFyh+tThoFCbZKWiAGpST
	eS52Ts5Y2tY7gtIIcM9jWiASG0uRTE+6iTMhBDpMzY3PiB81VWOmSjCc6wmoV4oc1CXfJgIn8BKRj
	b8Q4TkOWpv1aCwivN50JaottQN9qEoQAPBhtKC6o5CBZMBrDtXxwymp/RxA4eyoz1NuGck9tg12iz
	x7VrPP4ReO/4Lyu0gHLNHX0CIlDUVqbkadl97VvVFhACYjNdlvVk6kBnfOgwb809wVqTGM9m3s5XT
	XmHf2n7IOMk+04ZSF6pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWikF-0003NT-Th; Mon, 18 Nov 2019 15:15:16 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWik4-0002az-NJ
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 15:15:06 +0000
Received: by mail-il1-x144.google.com with SMTP id s75so16321486ilc.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 Nov 2019 07:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hfaFKs1QIAr1b1JRE+wBlO9ourI6+8gnYCQ9aE3olp8=;
 b=KDwtvvdK1hsWLeOPTRYHPviY03Q/loZbBVVm52wDv63mKOaSFlfEOf5l7SlAZwcHvD
 TjdN/fGMPhA0bGHSmDqWZ4mB3+D6S23qLOracYdCxQtt6uDxmfPjk/IoiZ2AzKyBqzAi
 Oy9LJfQbxuzTfIzjoXT8uNhpyY12MYs8Pu55+1pqCiKg+NhORe9eEp4VUcKuaGyMZ+xD
 I4mvqqeQnLn2NE4X01sdxbLSTIEtHG1Ak+EkSb583vFM3ZFSJH3SEFEu5zgPIBWHufDi
 Xx5Nsk1Ya7wkKUiZg4tLVepAQs6Pkr/DV/YO3aWk51rEmQAIQi9sd0GTgF/j+DtBQf5w
 PdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hfaFKs1QIAr1b1JRE+wBlO9ourI6+8gnYCQ9aE3olp8=;
 b=t7jNEJ5JOw3zgdIxzp9yScfXgENFLFNjyAI0T1q5UABz2GB7alAGHuC2vCdLic0qEU
 6lbf5eYAaF3DqFyaFKvQou3baKPvjiFEJqUmNiMPK41wutJLaeGaSnRtQ852UzTttXVt
 D0VXgo9+KNN+1um8pnrv44GPXe3KpafMXDCvS7zENNaxCaexjmIeM72/2opQT1ngNSdP
 XpOaeaa9jYAl6SbE6AHHdd7W3w7s2oIUsaYNf1QYr3SOSpB/HYhl7dvddQoEFStWMoyM
 Arm7WrVrErBkI805+HBwCeHhaHirnl+ZZ0fu63vofQzKq+BrN0hPS5Hbwtw2WZfLeTUu
 eiBA==
X-Gm-Message-State: APjAAAXEKtSk/ALPxd1qdQl0qN5BaIxEoqZZ1oW23uGExPa+A4u9uvzE
 mTRfZvKMUY4SL9HK1smU1kXjJnsGAEq5iA5CkRI=
X-Google-Smtp-Source: APXvYqyl4L2aGYi9uTp5wWcTinXIp5IFwzZgWRdS3f9BWut8nGwIXVwaJSCot3ZOyg5jU+/33parhWWJdUe1jtNY+mI=
X-Received: by 2002:a92:aa48:: with SMTP id j69mr16614107ili.162.1574090100311; 
 Mon, 18 Nov 2019 07:15:00 -0800 (PST)
MIME-Version: 1.0
References: <20191113151241.752720-1-thomas.petazzoni@bootlin.com>
 <20191115052949.GC13337@meh.true.cz> <20191115091632.1aeb1269@windsurf>
 <20191116132213.GA52387@meh.true.cz> <20191118143236.41da0d04@windsurf.home>
In-Reply-To: <20191118143236.41da0d04@windsurf.home>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Mon, 18 Nov 2019 07:14:48 -0800
Message-ID: <CAOdf3grODt9K0P+5x91m-To+ibVwZz1XnMBXkyG_jZr83E4t6g@mail.gmail.com>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_071504_792056_FA32D753 
X-CRM114-Status: GOOD (  29.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gVGhvbWFzLAoKTGUgbHVuLiAxOCBub3YuIDIwMTkgw6AgMDU6MzMsIFRob21hcyBQZXRh
enpvbmkKPHRob21hcy5wZXRhenpvbmlAYm9vdGxpbi5jb20+IGEgw6ljcml0IDoKPgo+IEhlbGxv
IFBldHIsCj4KPiBUaGFua3MgZm9yIHlvdXIgZmVlZGJhY2sgYWdhaW4uCj4KPiBPbiBTYXQsIDE2
IE5vdiAyMDE5IDE0OjIyOjEzICswMTAwCj4gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4g
d3JvdGU6Cj4KPiA+IChuaXRwaWNrLCBpdCdzIE9wZW5XcnQsIG5vdCBPcGVuV1JUKQo+Cj4gVGhh
bmtzIGZvciB0aGlzIGNsYXJpZmljYXRpb24sIGl0J3MgYWx3YXlzIGdvb2QgdG8gdXNlIHRoZSBw
cm9wZXIKPiBjYXBpdGFsaXphdGlvbiBmb3IgcHJvamVjdCBuYW1lcy4gSSdsbCB0cnkgdG8gdXNl
IE9wZW5XcnQgaW4gdGhlCj4gZnV0dXJlLCBidXQgcGxlYXNlIGJlYXIgd2l0aCBtZSBpZiBJIHNv
bWV0aW1lcyBmb3JnZXQuCj4KPiA+ID4gTm8sIHRoaXMgcGF0Y2ggaXMgbm90IFJGQywgaXQgc2hv
dWxkIGJlIHJlYWR5IGZvciBtZXJnaW5nLCBJJ20gYWxyZWFkeQo+ID4gPiB1c2luZyBpdCBpbiBz
b21lIGRldmljZXMuCj4gPgo+ID4gT2ssIHRoaXMgcGF0Y2ggaXMgZ29vZCBlbm91Z2ggZm9yIHlv
dXIgbGltaXRlZCB1c2UgY2FzZSwgYnV0IGluIG9yZGVyIHRvCj4gPiBpbmNsdWRlIFNFTGludXgg
c3VwcG9ydCBpbiBPcGVuV3J0LCB0aGVuIHRoZSBmaXJzdCBwYXRjaCBzZXJpZXMgc2hvdWxkIGJl
IG1vcmUKPiA+IGNvbXByZWhlbnNpdmUsIG1pbmltYWwgeWV0IGNvbXBsZXRlLgo+Cj4gSSBndWVz
cyBJJ2xsIHNlbmQgdGhlIHBhdGNoIHNlcmllcyBpdHNlbGYsIHNvIHdlIGNhbiBoYXZlIHRoZQo+
IGRpc2N1c3Npb24gb24gdGhlIGFjdHVhbCBwcm9wb3NhbC4gSSBzZW50IHRoaXMgcHJvY2QgcGF0
Y2ggc2VwYXJhdGVseSwKPiBqdXN0IGJlY2F1c2UgaXQgaXMgYSByZXF1aXJlbWVudCBmb3IgdGhl
IHJlc3Qgb2YgdGhlIHNlcmllcyB0byB3b3JrCj4gKHJpZ2h0IG5vdyBJIHdhcyB3b3JraW5nIHdp
dGggdGhpcyBwcm9jZCBwYXRjaCBpbiB0aGUgT3BlbldydCBwcm9jZAo+IHBhY2thZ2UpLgo+Cj4g
PiA+IFRoZSB0aGluZyBpcyB0aGF0IHRoZSBTRUxpbnV4IHN1cHBvcnQgaW4gT3BlbldSVCBuZWVk
cyB0aGlzIGltcHJvdmVtZW50Cj4gPiA+IGluIHByb2NkLCBvdGhlcndpc2UgaXQgd29uJ3Qgd29y
ayBhdCBydW50aW1lIGFzIG5vdGhpbmcgd2lsbCBiZSBsb2FkaW5nCj4gPiA+IHRoZSBTRUxpbnV4
IHBvbGljeS4KPiA+Cj4gPiBXaGVyZSBpcyB0aGF0IHBvbGljeT8gV2hhdCBhYm91dCBrZXJuZWwg
cGFydD8gV2hhdCBhYm91dCB1c2Vyc3BhY2UgcGFydD8gV2hhdAo+ID4gYWJvdXQgZmlsZXN5c3Rl
bSBpbWFnZT8gQW5kIHNvIG9uLgo+Cj4gSW4gdGVybXMgb2YgcG9saWN5LCBJJ20gc2ltcGx5IHVz
aW5nIHRoZSByZWZlcmVuY2UgcG9saWN5IHByb3ZpZGVkIGJ5Cj4gdGhlIFNFTGludXggcHJvamVj
dCBpdHNlbGYsIHdpdGggbm8gc3BlY2lmaWMgY3VzdG9taXphdGlvbiBmb3IgT3BlbldydC4KPiBP
ZiBjb3Vyc2UsIGFkZGl0aW9uYWwgdHVuaW5nIG1heSBiZSByZXF1aXJlZCwgYnV0IGZvciBteSB1
c2UgY2FzZSwgaXQKPiB3YXMgc3VmZmljaWVudC4gSW4gdGVybXMgb2Yga2VybmVsIHBhcnQsIGl0
IG9mIGNvdXJzZSByZXF1aXJlcyBzb21lCj4ga2VybmVsIG9wdGlvbnMgdG8gYmUgZW5hYmxlZC4g
SW4gdGVybXMgb2YgdXNlci1zcGFjZSBwYXJ0cywgdGhpcyBpcwo+IHdoZXJlIG15IHBhdGNoIHNl
cmllcyBpcyB0aGUgbW9zdCBpbnRlcmVzdGluZzogaXQgcGFja2FnZXMgYWxsIHRoZQo+IHVzZXIt
c3BhY2UgY29tcG9uZW50cyB0aGF0IGFyZSBuZWNlc3NhcnkgdG8gYmUgYWJsZSB0byB3b3JrIHdp
dGgKPiBTRUxpbnV4LgoKSWYgeW91IGNhbiBpbmNsdWRlIHRoZSBjb21wcmVzc2VkIHNpemUgb2Yg
ZWFjaCBwYXJ0LCB0aGlzIGlzIGFsc28KaW1wb3J0YW50IGZvciB0aGUgZGlzY3Vzc2lvbiBJIHRo
aW5rCkkga25vdyBwYXJ0IG9mIHRoZSBkZWJ1ZyB0b29scyBvbiByZWd1bGFyIGRpc3RybywgbGlr
ZSBhdWRpdDJ3aHksIGFyZQpweXRob24gc2NyaXB0cywgc28gcHJldHR5IGh1Z2UgZGVwZW5kZW5j
eQoKUmVnYXJkcwpFdGllbm5lCgo+Cj4gPiA+IFJlZ2FyZGluZyB0aGUgZmxhc2ggc3BhY2UsIFJB
TSBhbmQgQ1BVIG92ZXJoZWFkLCBJJ20gbm90IHN1cmUgaXQncyB0aGF0Cj4gPiA+IHJlbGV2YW50
OiB0aGUgU0VMaW51eCBwYWNrYWdpbmcgSSd2ZSBkb25lIG1ha2VzIGl0IGNvbXBsZXRlbHkgb3B0
aW9uYWwsCj4gPiA+IHNvIHlvdSBvbmx5IGhhdmUgYW4gaW1wYWN0IG9mIGZsYXNoIHNwYWNlLCBS
QU0gYW5kIENQVSBpZiB5b3UgZW5hYmxlCj4gPiA+IFNFTGludXggc3VwcG9ydC4KPiA+Cj4gPiBP
bmNlIGl0cyBtZXJnZWQsIHdlIGJhc2ljYWxseSBzYXksIHRoYXQgaXRzIG1vcmUgb3IgbGVzcyBz
dXBwb3J0ZWQsIGV2ZW4gaWYKPiA+IGl0J3Mgb3B0aW9uYWwuCj4gPgo+ID4gSXQncyBwcmV0dHkg
bXVjaCBjcnlzdGFsIGNsZWFyLCB0aGF0IHNvbWUgYWRkaXRpb25hbCBoYXJkZW5pbmcgbGF5ZXIg
d291bGQgYmUKPiA+IHZlcnkgd2VsY29tZS4gSSB0aGluaywgdGhhdCBPcGVuV3J0IHNob3VsZCBh
aW0gZm9yIHNvbWV0aGluZywgd2hpY2ggY291bGQgYmUKPiA+IHVzYWJsZSBvbiBtb3N0IG9mIG1v
ZGVybiBkZXZpY2VzIHRvZGF5IGFuZCBlbmFibGVkIGJ5IGRlZmF1bHQuIFNlY3VyaXR5Cj4gPiBz
aG91bGRuJ3QgYmUgYW4gb3B0aW9uLCBpdCBzaG91bGQgYmUgZGVmYXVsdC4KPiA+Cj4gPiBTRUxp
bnV4IGlzIGp1c3Qgb25lIG9mIHRoZSBMU01zIGluIExpbnV4LiAgSXMgU0VMaW51eCB0aGUgcmln
aHQgb25lIGZvcgo+ID4gT3BlbldydCBwcm9qZWN0PyBBcmUgd2UgZ29pbmcgdG8gc3VwcG9ydCBh
bGwgb2YgdGhlbT8gSSBkb3VidCB0aGF0LCBzbwo+ID4gZGVjaXNpb24gbmVlZHMgdG8gYmUgbWFk
ZS4KPgo+IEkgZ3Vlc3MgaGVyZSBJIGRvbid0IGhhdmUgdGhlIE9wZW5XcnQgbWluZHNldCwgYXMg
SSBjb21lIGZyb20gYQo+IEJ1aWxkcm9vdCBiYWNrZ3JvdW5kLiBCdWlsZHJvb3Qgc3VwcG9ydHMg
bXVsdGlwbGUgc29sdXRpb25zIGZvciB0aGUKPiBzYW1lICJwcm9ibGVtIiwgYW5kIGxldCB1c2Vy
cyBkZWNpZGUgd2hpY2ggc29sdXRpb24gdGhleSB3YW50IHRvIHVzZQo+IChzbyB0aGUgdXNlcnMg
aGF2ZSBzb21lIGludGVncmF0aW9uIHdvcmsgdG8gZG8pLCB3aGlsZSBpdCBzZWVtcyB0aGF0Cj4g
T3BlbldydCB3YW50cyB0byBtYWtlIGEgZGVjaXNpb24gb24gb25lIHNvbHV0aW9uIHRvIHVzZSwg
YnV0IHByb3ZpZGUKPiBzb21ldGhpbmcgdGhhdCBpcyBzZWFtbGVzc2x5IGludGVncmF0ZWQgZm9y
IHVzZXJzLgo+Cj4gPiA+IERvIHlvdSBoYXZlIG1vcmUgZGV0YWlscyBhYm91dCBlbnRlcmluZyBm
YWlsc2FmZSBtb2RlID8gSG93IGRvIHlvdSBkbyB0aGF0ID8KPiA+Cj4gPiBJdCdzIHVzdWFsbHkg
dHJpZ2dlcmVkIGJ5IHRoZSBidXR0b24gZHVyaW5nIHRoZSBib290IHByb2Nlc3NbMV0sIGJ1dCBp
dCBzaG91bGQKPiA+IGJlIHBvc3NpYmxlIHRvIGZvcmNlIGl0IGZyb20gcHJvY2QgYXMgd2VsbC4K
PiA+Cj4gPiAxLiBodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUtdXNlci90cm91Ymxlc2hv
b3RpbmcvZmFpbHNhZmVfYW5kX2ZhY3RvcnlfcmVzZXQKPgo+IE9LLCB0aGFua3MuCj4KPiBUaG9t
YXMKPiAtLQo+IFRob21hcyBQZXRhenpvbmksIENUTywgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4
IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
