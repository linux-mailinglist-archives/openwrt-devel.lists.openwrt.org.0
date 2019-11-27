Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DC010ADCE
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 11:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MvOuANARKdD2S1iIcx0kAOKTUx5CiL5tSmxCz6YQiY=; b=fLSJjujaPopPBh
	7Ghlh+C9Ao2C/0XiiEkaCB0bR5w8BC3v+hUtd1kj8OESE+WYUBJdMNmElh0/mp4KGL3HTRXVLWcf6
	asFPruNjtWgyDFYLXsvFWvimF0KfoLNqybcmQMNzOv4WYqLCXoKYlnRaNrtxxpKfgN8OHCk+hhA+e
	jgWQPwp2MrZo+FWYSWsp9Llfg0/UXnGTYyqNYSf5fDjHZrg8w0vNMIA/L1TylDv8pNGFKBUHnnITA
	X1d0bOAo7cDTO+TQ5DkVjH8XCw597Felnl6vrSX6/t7k8D4lc83hbCOi0oYgjTHX/qPpSf39A1YOU
	y2BTyb97uInTaxhjlrAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZufQ-0003ZO-WD; Wed, 27 Nov 2019 10:35:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZufF-0003Z2-G6
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 10:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2A0ZMSEaSSmII4z635aWO88AODxTDA1s3prxyJmEij4=; b=rLEignLLtl5F3lFdEEric8aEK
 3AOU4M8fwnrId7NdAEEb9X2yF+x5XDE+gz5kDDoqlRjU7JwlAJ2xwl/8ACly+jOACwwSkfkZBTSxd
 s9wOxVjmXYPvOzyykhUZaff40vnf7C/mDcIe928NiNWy5g8Ft/CRkoAZ01IoeOjbhVy/qT23N+VpZ
 AjjQhv25E5eHZ61bAnOKsb+x1RWcvwz/Kv9Yre8b6aVSwq0yVchQ5WZW5/VQfOTln+8663wSEdGOI
 2Nf5DpZWCvTqdblmUo97L4OTtyY39ClWw3H7PjWOeOgYsOlzPZJC7eX/fZkFselsMP4m3VokJvheW
 1nVW2T/cQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45272)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZuf9-0002nh-Ox; Wed, 27 Nov 2019 10:35:11 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZuf8-0000CH-I0; Wed, 27 Nov 2019 10:35:10 +0000
Date: Wed, 27 Nov 2019 10:35:10 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191127103510.GD25745@shell.armlinux.org.uk>
References: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191127085045.GA37269@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127085045.GA37269@meh.true.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_023517_544231_99073CE9 
X-CRM114-Status: GOOD (  27.81  )
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

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMDk6NTA6NDVBTSArMDEwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gPGxpbnV4QGFybWxpbnV4Lm9y
Zy51az4gWzIwMTktMTEtMjYgMDA6MDc6NDNdOgo+IAo+IEhpLAo+IAo+ID4gSSBjYW4gc2VlIHlv
dXIgcmVwbHkgaW4gdGhlIE9wZW5XcnQgYXJjaGl2ZXMsIGJ1dCBJIG5ldmVyIHJlY2VpdmVkCj4g
PiBpdCwgc28gSSBjYW4ndCByZXBseSB0byBpdC4uLiAgKEknbSBub3Qgc3Vic2NyaWJlZCB0byBv
cGVud3J0LWRldmVsLikKPiAKPiBGWUkgUmVuw6kganVzdCBkaWRuJ3QgQ2M6IHlvdS4KClllcywg
SSBndWVzc2VkIGFzIG11Y2gsIGFzIHNvbWUgbWFpbGluZyBsaXN0cyBhcmUgc3dpdGNoaW5nIHRv
IGEgInJlcGx5CnRvIGxpc3QiIHBvbGljeSAtIHdoaWNoIGlzIGZpbmUgaWYgeW91IGNhbiBndWFy
YW50ZWUgdGhhdCBhbGwgd2hvIHBvc3QKdGhlcmUgYXJlIHN1YnNjcmliZWQuICBXaXRoIGFuIG9w
ZW4gbGlzdCwgeW91IGVuZCB1cCB3aXRoIGV4YWN0bHkgdGhpcwpwcm9ibGVtLgoKPiA+IE15IGlt
cHJlc3Npb24gaXMgdGhhdCB0aGUgYnVpbGQgc3lzdGVtIGlzIGRlc2lnbmVkIHRvIGtlZXAgcGVv
cGxlIG91dCEKPiAKPiBZb3UgbWVhbiBNYWtlIHdhcyBkZXNpZ25lZCB0byBrZWVwIHBlb3BsZSBv
dXQ/IDotKQo+IAo+IFB1dGluZyBqb2tlcyBhc2lkZSwgaWYgeW91IGltYWdpbmUsIHRoYXQgT3Bl
bldydCBwcm92aWRlcyBjb21wbGV0ZSBmbGFzaGFibGUKPiBpbWFnZXMgKGJvb3Rsb2FkZXIsIGtl
cm5lbCwgbW9kdWxlcywgZmlybXdhcmUsIHVzZXJzcGFjZSwgd2ViIFVJKSwgcGFja2FnZXMKPiB3
aXRoIHBhY2thZ2UgbWFuYWdlciwgcGFja2FnZSBmZWVkcywgU0RLLCBpbWFnZSBidWlsZGVyIGFu
ZCBhbGwgb2YgdGhpcyBmb3IKPiBpbnNhbmUgbnVtYmVyIG9mIHBsYXRmb3JtcyBhbmQgZGV2aWNl
cy4gVGhlbiBhZGQgTGludXgvbWFjT1MvV1NMIGhvc3QgYnVpbGQKPiBzeXN0ZW1zIGluIHRoZSBt
aXggYW5kIHlvdSdsbCBlbmQgdXAgd2l0aCBwcmV0dHkgY29tcGxleCBwcmVyZXF1aXNpdGVzLgoK
SXQgbWFrZXMgaXQgdmVyeSBkaWZmaWN1bHQgdG8gdW5kZXJzdGFuZC4gIEZvciBleGFtcGxlLCB3
aGVyZSBpcyB0aGUKa2VybmVsICsga21vZCBwYWNrYWdlIHZlcnNpb24vcmVsZWFzZSBzZXQgLSBh
bmQgc2hvdWxkIGl0IGJlCmluY3JlbWVudGVkIHNvIHRoYXQgb3BrZyBvbiB0aGUgdGFyZ2V0IGRv
ZXNuJ3QgbWVzcyB1cCBpdCdzICJzdGF0dXMiCmZpbGUgd2hlbiByZWluc3RhbGxpbmcgdGhlIGtt
b2QgcGFja2FnZXM/ICAoWWVzLCBJJ3ZlIGhhZCB0byBtYW51YWxseQplZGl0IHRoYXQgZmlsZSB0
byBnZXQgcmlkIG9mIGFueSBlbnRyeSB3aXRoICJpbnN0YWxsIG9rIG5vdC1pbnN0YWxsZWQiCnN0
YXR1cywgYmVjYXVzZSBvcGtnIHdvbid0IGRvIF9hbnl0aGluZ18gd2l0aCB0aG9zZS4KCj4gPiBT
b21lIGd1aWRhbmNlIHdvdWxkIGJlIG1vc3QgaGVscGZ1bC4gIFNpbGVuY2Ugb24gdGhlIG90aGVy
IGhhbmQKPiA+IHdpbGwgcmVzdWx0IGluIG5vdGhpbmcgY2hhbmdpbmcuCj4gCj4gQUZBSUsgSm9u
YXMgcGxhbnMgdG8gYm9ycm93IGZldyBTRlAgbW9kdWxlcyBhbmQgdGVzdCB0aGlzIG9uIGhpcyBD
bGVhckZvZyBQUk8KPiBhbmQgaGUgaXMgZXZlbnR1YWxseSBnb2luZyB0byBtZXJnZSB0aGlzIGFz
IHdlbGwuCgpTdXJlbHkgb25seSBvbmUgcGVyc29uIHNob3VsZCBiZSBtZXJnaW5nIHRoaXM/Cgo+
ID4gMSkgYXMgdGhlc2UgYXJlIHRvdWNoaW5nIHBoeSBjb2RlLCB1c2luZyA3eHggbnVtYmVycyB3
b3VsZCBiZQo+ID4gICAgcmVhc29uYWJsZSAgT3IgbWF5YmUgMHh4IGZvciBhdCBsZWFzdCBzb21l
Pwo+IAo+IEl0J3MganVzdCBhIHNvZnQgZ3VpZGFuY2UsIG5vdCBwZWRhbnRpYyBzeXN0ZW0sIEkg
bWVhbiBpZiB5b3UgbG9vayBhdCBtdmVidQo+IHBhdGNoZXMsIHlvdSBjYW4gc2VlIG5ldC9waHkg
cmVsYXRlZCBwYXRjaGVzIHdpdGggNXh4IG51bWJlcmluZyBzY2hlbWUuCj4gU29tZXRpbWVzIGl0
J3MgYmVpbmcgZG9uZSBvbiBwdXJwb3NlLCBpbiBvcmRlciB0byBtYWtlIHJlZnJlc2hpbmcgb2Yg
cGF0Y2hlcwo+IGVhc2llciBhbmQvb3IgdG8gYXZvaWQgY2xhc2hlcyB3aXRoIHNvbWUgb3RoZXIg
cGF0Y2hlcy4KPiAKPiBJZiB5b3UgdGFrZSBhIGxvb2sgaW4gaW5jbHVkZS9xdWlsdC5tayB5b3Un
bGwgZmluZCBvdXQgZm9sbG93aW5nOgo+IAo+ICAkKGNhbGwgUGF0Y2hEaXIsJChMSU5VWF9ESVIp
LCQoR0VORVJJQ19CQUNLUE9SVF9ESVIpLGdlbmVyaWMtYmFja3BvcnQvKQo+ICAkKGNhbGwgUGF0
Y2hEaXIsJChMSU5VWF9ESVIpLCQoR0VORVJJQ19QQVRDSF9ESVIpLGdlbmVyaWMvKQo+ICAkKGNh
bGwgUGF0Y2hEaXIsJChMSU5VWF9ESVIpLCQoR0VORVJJQ19IQUNLX0RJUiksZ2VuZXJpYy1oYWNr
LykKPiAgJChjYWxsIFBhdGNoRGlyLCQoTElOVVhfRElSKSwkKFBBVENIX0RJUikscGxhdGZvcm0v
KQo+IAo+IHdoaWNoIG1lYW5zLCB0aGF0IHRoZSByZXN1bHRpbmcga2VybmVsIGlzIGJlaW5nIGNv
bnN0cnVjdGVkIGZyb20KPiBnZW5lcmljL2JhY2twb3J0LCBnZW5lcmljL3BlbmRpbmcsIGdlbmVy
aWMvaGFjaywgZ2VuZXJpYy9maWxlcywKPiBwbGF0ZnJvbS9wYXRjaGVzIGFuZCBwbGF0Zm9ybS9m
aWxlcyBzb3VyY2VzLgo+IAo+IFNvIHdoZW4geW91J3JlIGFkZGluZyBzb21ldGhpbmcgaXQncyBn
b29kIHRvIGtlZXAgdGhpcyBpbiBtaW5kIGluIG9yZGVyIHRvCj4gYXZvaWQgcG9zc2libGUgY2xh
c2hlcy4gSSB3b3VsZCBwcm9iYWJseSBqdXN0IHN0aWNrIHdpdGggN3h4LgoKT2suCgo+ID4gMikg
dGhlcmUgYXJlIG5vIDd4eCBudW1iZXJzIGluIHRhcmdldC9saW51eC9nZW5lcmljL2JhY2twb3J0
LTQuMTksIHNvCj4gPiAgICBudW1iZXJpbmcgdGhlbSA3MDAgdGhyb3VnaCB0byA3NDIgZm9yIHRo
ZSBmaXJzdCBwYXRjaGVzIHdvdWxkIGJlCj4gPiAgICBva2F5PyAgVGhlc2UgYXJlIGFsbCBxdWV1
ZWQgaW4gbWFpbmxpbmUgbmV0LW5leHQuIAo+IAo+IFllcy4gRllJIGluIG9yZGVyIHRvIG1ha2Ug
dGhlIGtlcm5lbCByZWZyZXNoIHByb2Nlc3MgZWFzaWVyL29idmlvdXMsIGl0J3MgbmljZQo+IHRv
IGhhdmUgKG5vdCBtYW5kYXRvcnkpIHRoZSBrZXJuZWwgdmVyc2lvbiBhdCB0aGUgYmVnaW5uaW5n
IG9mIHRoZSBmaWxlbmFtZS4KCk9rLiAgSSd2ZSBuZWVkZWQgdG8gbW92ZSBzb21lIGFkZGl0aW9u
YWwgcGF0Y2hlcyBmcm9tIG12ZWJ1IHRvIGdlbmVyaWMKZm9yIHRoaXMuCgo+ID4gMykgcGF0Y2gg
MyBhcmVuJ3QgcXVldWVkIHlldCwgYnV0IGFyZSBwdWJsaXNoZWQgaW4gbXkgZ2l0IHRyZWUsIGFu
ZCB3aWxsCj4gPiAgICBiZSBzZW50IGZvciB0aGUgbmV4dCBtZXJnZSB3aW5kb3cuICBEb2VzIHRo
aXMgc3RpbGwgcXVhbGlmeSBhcwo+ID4gICAgc3VpdGFibGUgZm9yIGJhY2twb3J0LTQuMTksIG9y
IHNob3VsZCB0aGV5IGdvIGVsc2V3aGVyZT8gCj4gCj4gRnJvbSBteSBQT1YgaXQncyBiYWNrcG9y
dC4KCk9rLgoKPiA+IDQpIHBhdGNoIDQsIHRoZSB1RFBVIHBhdGNoZXMgc3RheSBpbiB0YXJnZXQv
bGludXgvbXZlYnUvcGF0Y2hlcy00LjE5Pwo+IAo+IFllcy4KCk9rLgoKPiA+ICAgIDN4eCBvciBz
b21lIG90aGVyIG51bWJlcj8KPiAKPiAweHggb3IgM3h4LCB1c3VhbGx5IHdoYXRldmVyIGF2b2lk
cyBjbGFzaGVzIHdpdGggYW55IHByZXZpb3VzL2xhdGVyIHBhdGNoZXMgOi0pCgpJJ3ZlIGVuZGVk
IHVwIGdpdmluZyB0aGVtIDU0NC4uNTQ2IHRvIGZvbGxvdyBvbiBmcm9tIHRoZSBsYXN0IERUUyBw
YXRjaC4KTG9va2luZyBhdCB0aGUgbnVtYmVyaW5nIHVzZWQgdGhlcmUsIHRoZXJlIGRvZXNuJ3Qg
c2VlbSB0byBiZSBhbnkgcmh5bWUKb3IgcmVhc29uIHRvIGl0LgoKPiA+IDUpIHRoZSBmaW5hbCBw
YXRjaCwgd2hpY2ggaXNuJ3QgaW4gbWFpbmxpbmUsIGFuZCBwcm9iYWJseSBuZWVkcyBmdXJ0aGVy
Cj4gPiAgICB3b3JrIC0gc2hvdWxkIHRoYXQgZ28gaW4gdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFj
ay00LjE5ID8gCj4gCj4gSWYgeW91J3JlIHRhbGtpbmcgaGVyZSBhYm91dCAxLzQsIHRoZW4gdGhp
cyBvbmUgaXMgcHJvYmFibHkganVzdCBmaW5lIGFzIGl0Cj4gaXMuCgpJJ20gdGFsa2luZyBhYm91
dCA0LzQsIHRoZSAid29yayBhcm91bmQgTm9raWEgR1BPTiBtb2R1bGUncyBUWF9GQVVMVAphc3Nl
cnRpb24iIHBhdGNoLgoKPiA+ICBXaGF0IGFib3V0IHRoZSBudW1iZXJpbmcgb2YgdGhlIGV4aXN0
aW5nIDd4eCBwYXRjaGVzIHRoZXJlIC0gZG8gSSBqdXN0IHBpY2sKPiA+ICB0aGUgZmlyc3QgYXZh
aWxhYmxlIDd4eCBudW1iZXIsIGkuby53LiA3MDEgPwo+IAo+IFllcy4KClRoYW5rcywgeW91ciBy
ZXBseSBoYXMgYWxsb3dlZCBtZSB0byBwcm9jZWVkIHdpdGggc29tZSBjb25maWRlbmNlIHRoYXQK
SSdtIGRvaW5nIHRoZSBjb3JyZWN0IHRoaW5nLgoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0
cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFu
ZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIy
a2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBz
IHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
