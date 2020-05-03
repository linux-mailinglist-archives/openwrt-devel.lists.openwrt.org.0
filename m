Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811CC1C2E91
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 20:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBvFXy28GFkwoKrJURXJA0Z9MldBsUOszDebfV41HCA=; b=OKHBon+hsS67dW
	iyv6AEvJpKxv/RwCKssmFmx3rR6E93+zfrdDTHJb2qlk+F8kuxdeOoPzPT114NmfcXOJP9e2Crg5u
	yrOUc7zfK70QTU0ezs/CGc5SgI2Q41+URaQIonHK4FAWZYkjTqwZ3dcaKcymaPkz2aAYW9hRwbFqK
	z7xvFmtTDYNLYCgdcYti28gFMaGdxviHyw2Q2Eb/qxHP7wFYiz+LP9WSulCxMKCNJxLu47VX5Wqr0
	d7S0cOx4MZRn8JdwmghPE03Lpo67ZvNwGGGPlKbKQXIsclfSZS2l1AaEPcCby74cgMG905wA45HNf
	j3V69ZrANn3fMnLlV6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVJbT-0004ta-AW; Sun, 03 May 2020 18:44:39 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVJbI-0004sp-Qa
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 18:44:30 +0000
Received: from macmini.redfish-solutions.com (openwrt.redfish-solutions.com
 [192.168.1.252]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 043IiQLB031602
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 3 May 2020 12:44:26 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <CAJsYDVLaRPB4hw2WeBXE408eiy=_Tw3igmR_jiDZ_=m7hnnqsQ@mail.gmail.com>
Date: Sun, 3 May 2020 12:44:26 -0600
Message-Id: <EC526695-F837-4484-83EA-916FF9E6D96D@redfish-solutions.com>
References: <C69F94A6-C2A8-4836-B01F-C184013F9B30@redfish-solutions.com>
 <001301d620dc$1f0ba880$5d22f980$@adrianschmutzler.de>
 <875E4890-4ABC-4AFA-A7B3-F47642BA6AF0@gmx.us>
 <6A13D3D4-7E4A-4730-A817-DC3FEFF4D5D0@redfish-solutions.com>
 <CA+BfgNL=BgMipVmv6_xcaqH=F7ro0k-AURsU=CWe2R+3b4qH5Q@mail.gmail.com>
 <BC52B358-08DB-41F9-9B03-6DD5B53EBA1C@redfish-solutions.com>
 <CAJsYDVLaRPB4hw2WeBXE408eiy=_Tw3igmR_jiDZ_=m7hnnqsQ@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_114428_962091_EDCA209A 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Proposal: Differentiating "skinny" platforms
 from others... (resending)
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
Cc: Dustin Howett <dustin@howett.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIE1heSAyLCAyMDIwLCBhdCAxMDowMCBQTSwgQ2h1YW5ob25nIEd1byA8Z2NoOTgxMjEz
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gSGkhCj4gCj4gRmlyc3Qgb2YgYWxsOiBQbGVhc2UgZG9u
J3QgdG9wLXBvc3QgbGlrZSB0aGlzIG9uIG1haWxpbmcgbGlzdHMgOikKPiAKPiBPbiBTdW4sIE1h
eSAzLCAyMDIwIGF0IDEwOjQwIEFNIFBoaWxpcCBQcmluZGV2aWxsZQo+IDxwaGlsaXBwX3N1YnhA
cmVkZmlzaC1zb2x1dGlvbnMuY29tPiB3cm90ZToKPj4gCj4+IEnigJltIG5vdCBjb252aW5jZWQg
dGhhdCB3b3VsZCBiZSBuZWNlc3NhcnksIG9yIHRoYXQgdGhpcyBwcm9wb3NhbCB3b3VsZCBjcmVh
dGUgYW55IG5ldyBjaXJjdW1zdGFuY2VzLgo+PiAKPj4gQW4gZXhhbXBsZSBpcyB0aGF0IGNlcnRh
aW4gYXJjaGl0ZWN0dXJlcyBhcmUgc3VwcG9ydGVkIGJ5IE1VU0wgYW5kIG90aGVycyBieSB1Q2xp
YmMsIG9yIGVnbGliYywgZXRjLiAgVGhhdCBpbiB0dXJuIG1lYW5zIHRoYXQgc29tZSBmdW5jdGlv
bmFsaXR5IGlzIGF2YWlsYWJsZSBhbmQgb3RoZXJzIG5vdCwgYmVjYXVzZSBub3QgYWxsIHBhY2th
Z2VzIGNvbXBpbGUgYWdhaW5zdCBhbGwgYXJjaGl0ZWN0dXJlcyBhbmQgcnVudGltZXMsIGV0Yy4K
Pj4gCj4+IFRoZSBzY2hpc20gb2Yg4oCcZmF04oCdIHZzLiDigJxza2lubnnigJ0gZGV2aWNlIGlu
IHNvbWUgY2FzZXMgbWlnaHQgYmUgYW4gYXJjaGl0ZWN0dXJhbCBpc3N1ZSwgYXMgc29tZSBwcm9j
ZXNzb3JzIG9yIFNvQ3MgZG9u4oCZdCBoYXZlIHRoZSBwaHlzaWNhbCBhYmlsaXR5IHRvIGFkZHJl
c3MgbW9yZSB0aGFuIE4gbWVnYWJ5dGVzIG9mIG1lbW9yeSwgc28gdGhleSBhcmUgYXJjaGl0ZWN0
dXJhbGx5IGNvbnN0cmFpbmVkLiAgSXTigJlzIGNvbW1vbiBmb3IgMzItYml0IHByb2Nlc3NvcnMg
dG8gaGF2ZSB1bmRlciA0R0Igb2YgbWVtb3J5IGFuZCBpbiBzb21lIGNhc2VzIHN1YnN0YW50aWFs
bHkgbGVzcyB0aGFuIDRHQi4KPj4gCj4+IExpa2V3aXNlIEFSTTY0IGFuZCB4ODZfNjQgcHJvY2Vz
c29ycyBjYW4gYWxtb3N0IGd1YXJhbnRlZSBwbGF0Zm9ybXMgaGF2aW5nIGF0IGxlYXN0IDFHQiBh
bmQgdXN1YWxseSBtb3JlLgo+IAo+IFRoYXQgd2lsbCBiZSBjaGFuZ2VkIHNvb24uCj4gU29DIHZl
bmRvcnMgbGlrZSBRdWFsY29tbSBhbmQgTWVkaWF0ZWsgYXJlIHN0cmlwcGluZyB0aGVpciBtb2Jp
bGUKPiBTb0NzIGZvciByb3V0ZXIgc29sdXRpb24uIE5vd2FkYXlzIHRoZXJlIGFyZSBzZXZlcmFs
IGFybXY3L2FybXY4Cj4gU29DcyBmb3Igcm91dGVycyAoZS5nLiBpcHE4MDZ4IGlwcTQweHggbXQ3
NjIyIG10NzYyOSkuIEhvbWUKPiByb3V0ZXJzIGRvbid0IHJlYWxseSBuZWVkIGEgdG9uIG9mIG1l
bW9yeSBhbmQgZmxhc2ggc3BhY2Ugc28gcm91dGVyCj4gdmVuZG9ycyBhcmUgbGlrZWx5IHRvIGtl
ZXAgdXNpbmcgbGltaXRlZCBmbGFzaC9yYW0gZXZlbiB0aG91Z2ggU29DCj4gc3VwcG9ydHMgbW9y
ZS4gVGhleSB0eXBpY2FsbHkgY29tZSB3aXRoIDEyOE0vMjU2TSByYW0gYW5kCj4gMTZNIE5PUi8x
MjhNIE5BTkQuCj4gQW4gZXh0cmVtZSBleGFtcGxlOiBUUC1MaW5rIHNlbGxzIG1lZGlhdGVrIHRw
MTkwMGFjIChhIHN0cmlwcGVkLWRvd24KPiBtdDc2MjkgYXJtdjcgc29jIHdpdGggYSB0cC1saW5r
IGJhZGdlIDpQKSByb3V0ZXJzIHdpdGggNE0gZmxhc2ggYW5kCj4gMzJNIHJhbS4KPiAKPiBUaGlz
IGtpbmQgb2YgImZhdCBwYWNrYWdlcyIgc2VwYXJhdGlvbiBoYXMgdG8gYmUgYSBwZXItdGFyZ2V0
IG9uZSBsaWtlCj4gY3VycmVudCBTTUFMTF9GTEFTSCBwcm9wZXJ0eSwgYW5kIHdlIGVpdGhlciBu
ZWVkIHNvbWUgY2xldmVyCj4gcGFja2FnZSBmZWVkIHNldHVwIG9yIG1vcmUgc3RvcmFnZSBzcGFj
ZSBhbmQgYnVpbGRib3QgZGVtYW5kLgo+IAoKMTI4TSBSQU0gKyAxMjhNIEZsYXNoIHNvdW5kcyBy
ZWFzb25hYmx5IGNhcGFibGUuICBBdCBsZWFzdCBub3QgYXMgaGFtc3RydW5nIGFzIHNvbWUgZXhh
bXBsZXMgd2XigJl2ZSBzZWVuIGluIHRoZSBwYXN0LCBvciB0aGUgVFAxOTAwQUMgd2hpY2ggeW91
IHNpdGUuCgpJIHNlZSB5b3VyIHBvaW50LCBob3dldmVyOiB5ZXMsIHdl4oCZbGwgZW5kIHVwIHdp
dGggYSBzY2hpc20gb2Ygc29tZSDigJxjYXBhYmxl4oCdIEFSTXY4IGJveGVzIGFuZCBzb21lIOKA
nGxvYm90b21pemVk4oCdIEFSTXY4IGJveGVzIGxpa2UgdGhlIFRQMTkwMEFDIHdoaWNoIHdvdWxk
IG5lY2Vzc2l0YXRlIGVpdGhlciBoYXZpbmcgYSDigJxza2lubnnigJ0gZmVlZCBmb3IgYWxsIGJv
eGVzIHNvIHRoYXQgd2UgZG9u4oCZdCBuZWVkIGEgMm5kIGZlZWQsIG9yIGhhdmluZyBza2lubnkv
cmVndWxhciB2YXJpYW50cy4KCk1heWJlIHRoZSB2YXJpYW50IHBhY2thZ2luZyBpcyB0aGUgd2F5
IHRvIGdvLCBzaW5jZSBvbmx5IGEgc21hbGwgcGVyY2VudGFnZSBvZiB0aGUgcGFja2FnZXMgd2ls
bCBuZWVkIHRvIGhhdmUgdmFyaWFudHMgYW55d2F5LiAgQ2VydGFpbmx5IG5vdCB3b3J0aCBkb3Vi
bGluZyB0aGUgbnVtYmVyIG9mIGJ1aWxkcyB3ZSBkb+KApgoKR2l2ZW4gdGhhdCB0aGUgQk9NIGNv
c3Qgb2YgYW5vdGhlciAyNTZNQiBvZiBEUkFNIGlzIGFib3V0ICQzIChJ4oCZbSBhc3N1bWluZyBp
dOKAmXMgRERSMj8pLCBJIGRvbuKAmXQgdW5kZXJzdGFuZCB3aHkgYSBtYW51ZmFjdHVyZXIgd291
bGQgc2hpcCBhIGJveCB0aGF04oCZcyBhbG1vc3Qgb2Jzb2xldGUgYXMgcXVpY2tseSBhcyBpdCBo
aXRzIHRoZSBzdG9yZSBzaGVsdmVz4oCmIGJ1dCB0aGF04oCZcyBhIGRpZmZlcmVudCBjb252ZXJz
YXRpb24uCgotUGhpbGlwCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
