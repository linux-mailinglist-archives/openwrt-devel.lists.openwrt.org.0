Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE2610AF6A
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 13:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=om730OkCdRBdPY3nHnAlfUeNUCrjQ1v/JamcPKCng+Y=; b=ruJT/0SJ4Vh9ql
	cHrCBF+Sb8QzG5eOsHvfscyhcPYNn4pk9dxQ7nn6DKiYYRJOO6ytb93WF4XUJPcpmjVHYNAbt5kRk
	eHP7BXn1C/WMhtTWUAjoVPHBk2+g/PRdETEuR3f+5ClyjJR6NDJUxGa/+El3dexOJTLM691klAncn
	E60mpHG1bslRLKEchUuVQASb+xCxEWPGSDQ5LsrZfsODN9NTKq9ZwxTQh0kqtvM4u0y2FSey/Iqat
	H0IaYtcFEBNPZ085tLZXZmEgPpEjLsJguBtyEqp/ymg/NnZAH9k/molTRBsRTXrlSZBqFCL5467Cz
	ztOsEThZ+MCNXn6BlQ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZwDP-000355-NG; Wed, 27 Nov 2019 12:14:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZwDD-00032t-Cm
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 12:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vTBgshJxTO6enpJ005dOFEqf3E13E/Go0/+OzkNx/DU=; b=T/ASu1Pw28PuShdZq9XghXZvw
 12MNxKg0UUWUyiqT0xb1eikE3PBKbLG8c4wmvVe/20t9kb6FRHDmFFrTVV7p8urDqYi48ujL4e+uh
 me0axaM512eSpXN5aCNUMPyRJMmXYfL3zxMf4yHpjlK/9WX8MoGcbFgsp3sZ9e4Sp+lCE2l5VRvoc
 79O/0fg+h6PKmzUOlQ8h4SmPpvIs50Ht/mYFgoiffdrB9iUJB7t2Vw8QYbp+D0gQWID5GrRd9oSpL
 07wpwsHgAakV5g/fj/f2+8CjT4ukJyfrlEc1mjaL6z5Pkzaun/k1EKjWzOfZXrvao7YfF2f8p8RqJ
 2AiLIqgDQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33646)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZwD8-0003FY-EA; Wed, 27 Nov 2019 12:14:22 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZwD7-0000GO-Cz; Wed, 27 Nov 2019 12:14:21 +0000
Date: Wed, 27 Nov 2019 12:14:21 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191127121421.GE25745@shell.armlinux.org.uk>
References: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191127085045.GA37269@meh.true.cz>
 <20191127103510.GD25745@shell.armlinux.org.uk>
 <20191127115735.GC37269@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127115735.GC37269@meh.true.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_041427_465309_B05500D5 
X-CRM114-Status: GOOD (  15.38  )
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

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMTI6NTc6MzVQTSArMDEwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gPGxpbnV4QGFybWxpbnV4Lm9y
Zy51az4gWzIwMTktMTEtMjcgMTA6MzU6MTBdOgo+IAo+ID4gSXQgbWFrZXMgaXQgdmVyeSBkaWZm
aWN1bHQgdG8gdW5kZXJzdGFuZC4gIEZvciBleGFtcGxlLCB3aGVyZSBpcyB0aGUKPiA+IGtlcm5l
bCArIGttb2QgcGFja2FnZSB2ZXJzaW9uL3JlbGVhc2Ugc2V0IAo+IAo+IGZyb20ga21vZC1saWJw
aHlfNC4xOS44NS0xX2FhcmNoNjRfY29ydGV4LWE1My5pcGsvY29udHJvbC50YXIuZ3ovY29udHJv
bDoKPiAKPiAgUGFja2FnZToga21vZC1saWJwaHkKPiAgVmVyc2lvbjogNC4xOS44NS0xCj4gIERl
cGVuZHM6IGtlcm5lbCAoPTQuMTkuODUtMS1mMjRlMzAxYmU4OGViOTIxNTIzZDBlYjI2MDEyZWMw
ZikKPiAKPiBJJ20gaW50ZXJlc3RlZCBob3cgdGhlIFZlcnNpb246IGlzIHNldDoKPiAKPiAgJCBn
aXQgZ3JlcCBWZXJzaW9uOiBpbmNsdWRlLwo+ICBpbmNsdWRlL3BhY2thZ2UtZHVtcGluZm8ubWs6
KVZlcnNpb246ICQoVkVSU0lPTikKPiAKPiBTbyB0aGVuIEkgbmVlZCB0byBrbm93IGhvdyB0aGUg
VkVSU0lPTiBpcyBzZXQ6Cj4gCj4gICQgZ2l0IGdyZXAgVkVSU0lPTi4qOi4qPSBpbmNsdWRlL2tl
cm5lbCoKPiAgaW5jbHVkZS9rZXJuZWwubWs6ICAgIFZFUlNJT046PSQoTElOVVhfVkVSU0lPTikk
KGlmICQoUEtHX1ZFUlNJT04pLCskKFBLR19WRVJTSU9OKSktJChpZiAkKFBLR19SRUxFQVNFKSwk
KFBLR19SRUxFQVNFKSwkKExJTlVYX1JFTEVBU0UpKQo+IAo+IFNvIGZyb20gYWJvdmUgaXQncyBQ
S0dfUkVMRUFTRSBvciBMSU5VWF9SRUxFQVNFIG5vdzoKPiAKPiAgJCBnaXQgZ3JlcCAtRSAnKFBL
R19SRUxFQVNFfExJTlVYX1JFTEVBU0UpJyBpbmNsdWRlL2tlcm5lbCoKPiAgaW5jbHVkZS9rZXJu
ZWwtdmVyc2lvbi5tazpMSU5VWF9SRUxFQVNFPz0xCj4gCj4gU28gaW4gb3JkZXIgdG8gYnVtcCB0
aGUgcmVsZWFzZSBpbiB0aGUgNC4xOS44NS0xIGZyb20gMSB0byAyIEkgd291bGQgcHJvYmFibHkK
PiBuZWVkIHRvIHNldCBMSU5VWF9SRUxFQVNFOj0yIHNvbWV3aGVyZSBpbiB0aGUgTWFrZSBmaWxl
cyBvciBwcm92aWRlIGl0IHRvIE1ha2UKPiB2aWEgY29tbWFuZGxpbmUsIGFzIGBtYWtlIC4uLiBM
SU5VWF9SRUxFQVNFPTJgLgoKVGhhbmtzLCB0aGF0J3MgdXNlZnVsIGluZm9ybWF0aW9uLgoKPiA+
ID4gQUZBSUsgSm9uYXMgcGxhbnMgdG8gYm9ycm93IGZldyBTRlAgbW9kdWxlcyBhbmQgdGVzdCB0
aGlzIG9uIGhpcyBDbGVhckZvZyBQUk8KPiA+ID4gYW5kIGhlIGlzIGV2ZW50dWFsbHkgZ29pbmcg
dG8gbWVyZ2UgdGhpcyBhcyB3ZWxsLgo+ID4gCj4gPiBTdXJlbHkgb25seSBvbmUgcGVyc29uIHNo
b3VsZCBiZSBtZXJnaW5nIHRoaXM/Cj4gCj4gSSdtIG5vdCBpbXBseWluZyB0aGF0LCBidXQgSm9u
YXMgaXMgYWxyZWFkeSBpbnZvbHZlZCBhbmQgaGFzIGFjY2VzcyB0byB0aGUKPiBhY3R1YWwgaGFy
ZHdhcmUsIHNvIGl0IG1ha2VzIHNlbnNlIHRvIGxldCBoaW0gdGVzdCBhbmQgbWVyZ2UgaXQuCgpI
bW0sIHNvIHlvdSdyZSBzYXlpbmcgdGhhdCB0aGUgbWFpbmxpbmUga2VybmVsIG1haW50YWluZXIg
KG1lKQpzaG91bGRuJ3QgYmUgcHVzaGluZyB0aGVzZSBwYXRjaGVzIGZvciBPcGVuV3J0LCBiZWNh
dXNlIHlvdSBkb24ndAp0cnVzdCBtZSB0byB0ZXN0IHRoZW0sIGRlc3BpdGUgdGVzdGluZyB0aGVt
IG9uIHRoZSB1RFBVLCBTb2xpZFJ1bgpDbGVhcmZvZyBhbmQgY2V4NyBwbGF0Zm9ybXMgd2l0aCBt
dWx0aXBsZSBkaWZmZXJlbnQgU0ZQIGFuZCBTRlArCm1vZHVsZXMgZnJvbSBzZXZlcmFsIHZlbmRv
cnMuCgpJbnN0ZWFkIHlvdSdkIHJhdGhlciB0cnVzdCBzb21lb25lIHdpdGggb25seSBvbmUgU0ZQ
IG1vZHVsZSwgd2hvJ3MKcGF0Y2ggdGhhdCB3YXMgbWVyZ2VkIGludG8gT3BlbldydCB3aWxsIGJy
ZWFrIHNvbWUgbW9kdWxlcyB0aGF0CmhhdmUgYmVlbiB0ZXN0ZWQgdG8gd29yayB3aXRoIHRoZSB1
cHN0cmVhbSBrZXJuZWw/CgpTb3VuZCBzYW5lPwoKSSB0aGluayB5b3UncmUgYWN0dWFsbHkgY29u
ZnVzZWQgYWJvdXQgd2hhdCBJJ3ZlIGFza2VkIEpvbmFzIHRvIGRvLgpJIGhhdmVuJ3QgYXNrZWQg
aGltIHRvIHRlc3QgdGhlc2UgcGF0Y2hlcyB3aXRoIGEgdmlldyB0byBtZXJnaW5nCnRoZW0sIEkn
dmUgYXNrZWQgaGltIHRvIHJlcG9ydCBiYWNrIHdoYXQgdGhlIHNpdHVhdGlvbiBpcyB3aXRoIHRo
aXMKcGF0Y2ggc2V0IHdpdGhvdXQgaGlzICI0NTAtcmVwcm9iZV9zZnBfcGh5IiBwYXRjaCBhcHBs
aWVkLCB3aGljaApuZXZlciBtYWRlIGl0IGludG8gdGhlIHVwc3RyZWFtIGtlcm5lbCAtIGFuZCB0
aGVuIHdlJ2xsIHdvcmsgb24gYQp3YXkgdG8gbWFrZSBoaXMgbW9kdWxlIHdvcmsgd2l0aCAqYm90
aCogT3BlbldydCBhbmQgdGhlIG1haW5saW5lCmtlcm5lbC4KCi0tIApSTUsncyBQYXRjaCBzeXN0
ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBi
cm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBk
b3duIDYyMmticHMgdXAKQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRvd24g
NTAwa2JwcyB1cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
