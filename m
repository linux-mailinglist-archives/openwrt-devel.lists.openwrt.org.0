Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E349E10B02A
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 14:28:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dyGom4tnLKxMpjpDd1XUna/riMQqs3MVd+gcPqG4tw=; b=tVJDf6s8HjdRG4
	l6PlzxuT6WzVWLLCr0fINIe0Nd9ndN4FL2xTkslAaim2/0rK2YtjeirLgjg6wRC/zy5EeTb05fH5v
	rfe1T7Go9l+E21+7f4gDypAf7fhsnblOLZpadFswcjfZ+khL5CW0hSqtbD/Tzdz+jT7S3oqf+SKX5
	pqWL60Nc+BCaT7i/k0IWkp//ezcM3I6SzIqR6hxuics0ByCk0i+z+oi4hv1hONHWWwKS//s/PvIIE
	AF09BVWnb06wBP0yaG8BCaG3gKFWo16J/tbm6J3aDw5Fmd7rzK8uT4hNyQhW0Tsp5mqnHxCEQkWAO
	6b8EPxZOe61caDd+Mzeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZxMU-0003JN-Vy; Wed, 27 Nov 2019 13:28:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZxMM-0003Hl-M5
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 13:28:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=udTijn8MUX0F8sGbetzja4KTb3MvImPQ5m5ngPsu4zY=; b=N3uKhxFELEhPNKpem1bWw+QvN
 pamy+en8OtREHlmrACq583TR+rAyNgszuQc6BU26MnhBIIpA1S879arWlfh9FaWawYt9O61MDjKnI
 64NeJRhVs1opY0GYVz2ao5sE/oowjnNB/i+AXnp73xOegxdr9uqcy6G5ObfGTd2FC4xidTnTIgo0m
 9WhSSGuR/0pbDRHYU1ah7Wogxs56t1dqLJF6xllTmLLfZbO+UYHmojf+IuXiIPxW5vFXPt9264QRm
 VP0AWMsSgPdRTMehfJmp6OGdjW3T9WeQkIloFp61YOpOx0jdeGbhEsMwap+GQPyBukiPjvB9udsxT
 +MnQD4Fzg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45330)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZxME-0003Xj-Nf; Wed, 27 Nov 2019 13:27:50 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZxMD-0000K2-J9; Wed, 27 Nov 2019 13:27:49 +0000
Date: Wed, 27 Nov 2019 13:27:49 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jonas Gorski <jonas.gorski@gmail.com>
Message-ID: <20191127132749.GF25745@shell.armlinux.org.uk>
References: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191127085045.GA37269@meh.true.cz>
 <20191127103510.GD25745@shell.armlinux.org.uk>
 <20191127115735.GC37269@meh.true.cz>
 <20191127121421.GE25745@shell.armlinux.org.uk>
 <CAOiHx=moeDKc+_23H1L+pGrGHqGtbYwi9++_55sQvKGfxqCtww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOiHx=moeDKc+_23H1L+pGrGHqGtbYwi9++_55sQvKGfxqCtww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_052759_114279_1AACBE36 
X-CRM114-Status: GOOD (  32.37  )
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
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMDI6MDM6NDBQTSArMDEwMCwgSm9uYXMgR29yc2tpIHdy
b3RlOgo+IE9uIFdlZCwgMjcgTm92IDIwMTkgYXQgMTM6MTQsIFJ1c3NlbGwgS2luZyAtIEFSTSBM
aW51eCBhZG1pbgo+IDxsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+ID4KPiA+IE9uIFdl
ZCwgTm92IDI3LCAyMDE5IGF0IDEyOjU3OjM1UE0gKzAxMDAsIFBldHIgxaB0ZXRpYXIgd3JvdGU6
Cj4gPiA+IFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiA8bGludXhAYXJtbGludXgub3Jn
LnVrPiBbMjAxOS0xMS0yNyAxMDozNToxMF06Cj4gPiA+Cj4gPiA+ID4gSXQgbWFrZXMgaXQgdmVy
eSBkaWZmaWN1bHQgdG8gdW5kZXJzdGFuZC4gIEZvciBleGFtcGxlLCB3aGVyZSBpcyB0aGUKPiA+
ID4gPiBrZXJuZWwgKyBrbW9kIHBhY2thZ2UgdmVyc2lvbi9yZWxlYXNlIHNldAo+ID4gPgo+ID4g
PiBmcm9tIGttb2QtbGlicGh5XzQuMTkuODUtMV9hYXJjaDY0X2NvcnRleC1hNTMuaXBrL2NvbnRy
b2wudGFyLmd6L2NvbnRyb2w6Cj4gPiA+Cj4gPiA+ICBQYWNrYWdlOiBrbW9kLWxpYnBoeQo+ID4g
PiAgVmVyc2lvbjogNC4xOS44NS0xCj4gPiA+ICBEZXBlbmRzOiBrZXJuZWwgKD00LjE5Ljg1LTEt
ZjI0ZTMwMWJlODhlYjkyMTUyM2QwZWIyNjAxMmVjMGYpCj4gPiA+Cj4gPiA+IEknbSBpbnRlcmVz
dGVkIGhvdyB0aGUgVmVyc2lvbjogaXMgc2V0Ogo+ID4gPgo+ID4gPiAgJCBnaXQgZ3JlcCBWZXJz
aW9uOiBpbmNsdWRlLwo+ID4gPiAgaW5jbHVkZS9wYWNrYWdlLWR1bXBpbmZvLm1rOilWZXJzaW9u
OiAkKFZFUlNJT04pCj4gPiA+Cj4gPiA+IFNvIHRoZW4gSSBuZWVkIHRvIGtub3cgaG93IHRoZSBW
RVJTSU9OIGlzIHNldDoKPiA+ID4KPiA+ID4gICQgZ2l0IGdyZXAgVkVSU0lPTi4qOi4qPSBpbmNs
dWRlL2tlcm5lbCoKPiA+ID4gIGluY2x1ZGUva2VybmVsLm1rOiAgICBWRVJTSU9OOj0kKExJTlVY
X1ZFUlNJT04pJChpZiAkKFBLR19WRVJTSU9OKSwrJChQS0dfVkVSU0lPTikpLSQoaWYgJChQS0df
UkVMRUFTRSksJChQS0dfUkVMRUFTRSksJChMSU5VWF9SRUxFQVNFKSkKPiA+ID4KPiA+ID4gU28g
ZnJvbSBhYm92ZSBpdCdzIFBLR19SRUxFQVNFIG9yIExJTlVYX1JFTEVBU0Ugbm93Ogo+ID4gPgo+
ID4gPiAgJCBnaXQgZ3JlcCAtRSAnKFBLR19SRUxFQVNFfExJTlVYX1JFTEVBU0UpJyBpbmNsdWRl
L2tlcm5lbCoKPiA+ID4gIGluY2x1ZGUva2VybmVsLXZlcnNpb24ubWs6TElOVVhfUkVMRUFTRT89
MQo+ID4gPgo+ID4gPiBTbyBpbiBvcmRlciB0byBidW1wIHRoZSByZWxlYXNlIGluIHRoZSA0LjE5
Ljg1LTEgZnJvbSAxIHRvIDIgSSB3b3VsZCBwcm9iYWJseQo+ID4gPiBuZWVkIHRvIHNldCBMSU5V
WF9SRUxFQVNFOj0yIHNvbWV3aGVyZSBpbiB0aGUgTWFrZSBmaWxlcyBvciBwcm92aWRlIGl0IHRv
IE1ha2UKPiA+ID4gdmlhIGNvbW1hbmRsaW5lLCBhcyBgbWFrZSAuLi4gTElOVVhfUkVMRUFTRT0y
YC4KPiA+Cj4gPiBUaGFua3MsIHRoYXQncyB1c2VmdWwgaW5mb3JtYXRpb24uCj4gCj4gVG8gYWRk
IHRvIHRoaXMsIHRoZSBmMjRlMzAxYmU4OGViOTIxNTIzZDBlYjI2MDEyZWMwZiBwYXJ0IGlzIHRo
ZSBoYXNoCj4gb2YgdGhlIGtlcm5lbCBjb25maWcgdXNlZCBkdXJpbmcgdGhlIGJ1aWxkIG9mIHRo
ZSBtb2R1bGUva2VybmVsLiBUaGlzCj4gaXMgdG8gYXZvaWQgaW5zdGFsbGluZyBrZXJuZWwgbW9k
dWxlcyBidWlsZCB3aXRoIGEgZGlmZmVyZW50IEFCSSBkdWUKPiB0byBkaWZmZXJlbnQgY29uZmln
Lgo+IAo+IFNlZSBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L2Jsb2IvbWFzdGVy
L2luY2x1ZGUva2VybmVsLWRlZmF1bHRzLm1rI0wxMDgKPiBmb3IgaG93IGl0J3MgZ2VuZXJhdGVk
Lgo+IAo+ID4gPiA+ID4gQUZBSUsgSm9uYXMgcGxhbnMgdG8gYm9ycm93IGZldyBTRlAgbW9kdWxl
cyBhbmQgdGVzdCB0aGlzIG9uIGhpcyBDbGVhckZvZyBQUk8KPiA+ID4gPiA+IGFuZCBoZSBpcyBl
dmVudHVhbGx5IGdvaW5nIHRvIG1lcmdlIHRoaXMgYXMgd2VsbC4KPiA+ID4gPgo+ID4gPiA+IFN1
cmVseSBvbmx5IG9uZSBwZXJzb24gc2hvdWxkIGJlIG1lcmdpbmcgdGhpcz8KPiA+ID4KPiA+ID4g
SSdtIG5vdCBpbXBseWluZyB0aGF0LCBidXQgSm9uYXMgaXMgYWxyZWFkeSBpbnZvbHZlZCBhbmQg
aGFzIGFjY2VzcyB0byB0aGUKPiA+ID4gYWN0dWFsIGhhcmR3YXJlLCBzbyBpdCBtYWtlcyBzZW5z
ZSB0byBsZXQgaGltIHRlc3QgYW5kIG1lcmdlIGl0Lgo+ID4KPiA+IEhtbSwgc28geW91J3JlIHNh
eWluZyB0aGF0IHRoZSBtYWlubGluZSBrZXJuZWwgbWFpbnRhaW5lciAobWUpCj4gPiBzaG91bGRu
J3QgYmUgcHVzaGluZyB0aGVzZSBwYXRjaGVzIGZvciBPcGVuV3J0LCBiZWNhdXNlIHlvdSBkb24n
dAo+ID4gdHJ1c3QgbWUgdG8gdGVzdCB0aGVtLCBkZXNwaXRlIHRlc3RpbmcgdGhlbSBvbiB0aGUg
dURQVSwgU29saWRSdW4KPiA+IENsZWFyZm9nIGFuZCBjZXg3IHBsYXRmb3JtcyB3aXRoIG11bHRp
cGxlIGRpZmZlcmVudCBTRlAgYW5kIFNGUCsKPiA+IG1vZHVsZXMgZnJvbSBzZXZlcmFsIHZlbmRv
cnMuCj4gPgo+ID4gSW5zdGVhZCB5b3UnZCByYXRoZXIgdHJ1c3Qgc29tZW9uZSB3aXRoIG9ubHkg
b25lIFNGUCBtb2R1bGUsIHdobydzCj4gPiBwYXRjaCB0aGF0IHdhcyBtZXJnZWQgaW50byBPcGVu
V3J0IHdpbGwgYnJlYWsgc29tZSBtb2R1bGVzIHRoYXQKPiA+IGhhdmUgYmVlbiB0ZXN0ZWQgdG8g
d29yayB3aXRoIHRoZSB1cHN0cmVhbSBrZXJuZWw/Cj4gPgo+ID4gU291bmQgc2FuZT8KPiA+Cj4g
PiBJIHRoaW5rIHlvdSdyZSBhY3R1YWxseSBjb25mdXNlZCBhYm91dCB3aGF0IEkndmUgYXNrZWQg
Sm9uYXMgdG8gZG8uCj4gPiBJIGhhdmVuJ3QgYXNrZWQgaGltIHRvIHRlc3QgdGhlc2UgcGF0Y2hl
cyB3aXRoIGEgdmlldyB0byBtZXJnaW5nCj4gPiB0aGVtLCBJJ3ZlIGFza2VkIGhpbSB0byByZXBv
cnQgYmFjayB3aGF0IHRoZSBzaXR1YXRpb24gaXMgd2l0aCB0aGlzCj4gPiBwYXRjaCBzZXQgd2l0
aG91dCBoaXMgIjQ1MC1yZXByb2JlX3NmcF9waHkiIHBhdGNoIGFwcGxpZWQsIHdoaWNoCj4gPiBu
ZXZlciBtYWRlIGl0IGludG8gdGhlIHVwc3RyZWFtIGtlcm5lbCAtIGFuZCB0aGVuIHdlJ2xsIHdv
cmsgb24gYQo+ID4gd2F5IHRvIG1ha2UgaGlzIG1vZHVsZSB3b3JrIHdpdGggKmJvdGgqIE9wZW5X
cnQgYW5kIHRoZSBtYWlubGluZQo+ID4ga2VybmVsLgo+IAo+IFRoZSBiaXQgeW91IGFyZSBwcm9i
YWJseSBtaXNzaW5nIGlzIHRoYXQgSSBhbHNvIGhhcHBlbiB0byBiZSBhbgo+IE9wZW5XcnQgbWFp
bnRhaW5lciB3aXRoIGNvbW1pdCBhY2Nlc3MuCj4gCj4gU28gdW5sZXNzIHlvdSBhbHNvIGhhdmUg
Y29tbWl0IGFjY2VzcyB5b3Vyc2VsZiB5b3Ugd291bGQgbmVlZCBzb21lb25lCj4gZnJvbSB0aGUg
bWFpbnRhaW5lciBncm91cCB0byBhY2NlcHQgYW5kIG1lcmdlIHlvdXIgcGF0Y2hlcy4gQW5kIHNp
bmNlCj4gSSBoYXZlIGFjY2VzcyB0byBhIGRldmljZSB3aXRoIGFuIFNGUCBwb3J0LCBJIGNhbiBk
byBib3RoIHRoZSBjaGVja3MKPiB5b3UgYXNrZWQgbWUgdG8gZG8gYXMgd2VsbCBhcyBkbyB0aGUg
bWVyZ2UuIFR3byBiaXJkcyB3aXRoIG9uZSBzdG9uZQo+IDstKQo+IAo+IEFuZCBzb21ldGltZXMg
Y2hhbmdlcyBjYW4gaGF2ZSB1bmV4cGVjdGVkIHNpZGUgZWZmZWN0cyBkdWUgdG8gdGhlCj4gYW1v
dW50IG9mIGxvY2FsIHBhdGNoZXMgd2UgaGF2ZSBmb3IgZWFjaCB0YXJnZXQsIGFuZCBJIGRvbid0
IGV4cGVjdAo+IGFueW9uZSB0byBiZSBhd2FyZSBvZiBhbGwgb2YgdGhlbSwgb3IgaGF2aW5nIHRl
c3RlZCBhbGwgb2YgdGhlbS4KCldlbGwsIEkgZXhwZWN0IHlvdXIgdGVzdGluZyB0byBmYWlsLCBi
ZWNhdXNlIHlvdXIgbW9kdWxlIGlzIGxpa2VseQpub24tY29tcGxpYW50IGluIHJlZ2FyZCBvZiBo
b2xkaW5nIHRoZSBUWF9GQVVMVCBzaWduYWwgYWN0aXZlIHdoaWxlCml0IGlzIGluaXRpYWxpc2lu
ZyAtIGJ1dCB0aGVuIG1vc3QgY29wcGVyIG1vZHVsZXMgYmVoYXZlIHRoZSBzYW1lCndheSwganVz
dCBmb3IgYSBzaG9ydGVyIHRpbWUuCgpHaXZlbiB0aGF0IHlvdXIgdGVzdGluZyB3b24ndCBiZSBz
dWNjZXNzZnVsLCB3aGF0IGRvIHdlIGRvPwoKT3IgYXJlIHlvdSBwcm9wb3NpbmcganVzdCBhIGNv
bXBpbGUgdGVzdD8KCj4gSSBob3BlIHRoYXQgY2xlYXJzIGl0IGEgYml0IHVwPyBOb3RoaW5nIGFi
b3V0IG5vdCB0cnVzdGluZyB5b3UgYW5kCj4geW91ciBjb2RlLCBqdXN0IG5vdCB0cnVzdGluZyBp
dCBibGluZGx5LiBFc3BlY2lhbGx5IHNpbmNlIHlvdQo+IG1lbnRpb25lZCBoYXZpbmcgaXNzdWVz
IHdpdGggdGhlIE9wZW5XcnQgYnVpbGQgc3lzdGVtLgoKVGhlIGJ1aWxkIHN5c3RlbSBpcyBqdXN0
IHZlcnkgcGFpbmZ1bCBmb3IgYSBuZXctY29tZXIgdG8gdW5kZXJzdGFuZC4KSSBkb24ndCBkb3Vi
dCB0aGF0IGl0IGRvZXMgd2hhdCB5b3UgbmVlZCBpdCB0bywgYnV0IHRyeWluZyB0byB3b3JrCm91
dCBzdHVmZiBmcm9tIGl0IGlzIGEgbmlnaHRtYXJlIHVubGVzcyB5b3UgaGF2ZSBzb21lIGtub3ds
ZWRnZQphYm91dCBob3cgaXQgaXMgc2V0dXAuCgpGb3IgZXhhbXBsZSwgcmVmZXJlbmNpbmc6Cgog
aHR0cHM6Ly9vcGVud3J0Lm9yZy9kb2NzL2d1aWRlLWRldmVsb3Blci9zaW5nbGUucGFja2FnZQoK
YW5kIHRyeWluZyB0byBidWlsZCBqdXN0IHRoZSBrZXJuZWwuICBTbzoKCiAkIG1ha2UgdG9vbHMv
aW5zdGFsbAogJCBtYWtlIHRvb2xjaGFpbi9pbnN0YWxsCiAkIG1ha2UgdGFyZ2V0L2xpbnV4L2lu
c3RhbGwKCmZhaWxzIGJlY2F1c2UgdGhlcmUgaXMgbm8gb3BrZyBob3N0IHRvb2wgcHJlc2VudC4K
ClRyeWluZyB0byBmaW5kIG91dCBob3cgdG8gYnVpbGQgb3BrZyBpcyByZWFsbHkgbm90IGVhc3ku
ICBZb3UgZmluZAoiaG9zdC1jb21waWxlIiBhbmQgImhvc3QtaW5zdGFsbCIgdGFyZ2V0cyBpbiB0
aGUgbWFrZWZpbGVzLCBzbyB5b3UKYXNzdW1lIHRoYXQgaWYgeW91IHRyeSBtYWtlIHBhY2thZ2Uv
c3lzdGVtL29wa2cvaG9zdC1pbnN0YWxsLCBtYXliZQppdCdsbCBpbnN0YWxsIGEgaG9zdCBidWls
dCBvcGtnIGludG8gc3RhZ2luZ19kaXIvaG9zdC9iaW4gLSBidXQgbm8sCnRoYXQgZG9lc24ndCB3
b3JrLiAgVGhhdCBzZWVtcyB0byBiZSB1dHRlcmx5IGltcG9zc2libGUgdG8gZG8uClRoYXQgaGFz
IGFsb25lIG1hZGUgbWUgZGV2ZWxvcCBhIGdyZWF0IGhhdGUgZm9yIHRoZSBpbXBsZW1lbnRhdGlv
bgphZnRlciBzcGVuZGluZyBhIGxvdCBvZiB0aW1lIHRyeWluZyB0byBmaWd1cmUgaXQgb3V0LgoK
VGhlIG9ubHkgd2F5IHNlZW1zIHRvIGJlIHRvIHVzZSBwbGFpbiAibWFrZSIgaW4gdGhlIHRvcCBs
ZXZlbApkaXJlY3RvcnkgLSBzbyB0aGUgaW5mb3JtYXRpb24gaW4gdGhlIGFib3ZlIFVSTCBpcyBw
bGFpbmx5Cm1pc2xlYWRpbmcuICBJZiB5b3UgaGF2ZW4ndCBiZWVuIHRocm91Z2ggdGhlIGVudGly
ZSBjb25maWd1cmF0aW9uCmluICdtYWtlIG1lbnVjb25maWcnIGJlZm9yZSwgeW91IGVuZCB1cCBo
YXZpbmcgdG8gYnVpbGQgYW4gZW50aXJlCk9wZW5XcnQgc3lzdGVtIC0gd2hpY2ggcmVhbGx5IGlz
bid0IG5pY2UgaWYgeW91J3JlIGVpdGhlciBsaW1pdGVkCndpdGggZGlzayBzcGFjZSBvciBvbiBh
ICduZXQgY29ubmVjdGlvbiB3aXRoIGEgbGltaXRlZCBtb250aGx5CmFsbG93YW5jZS4KClNvLCBJ
IGZpbmQgdGhlIGJ1aWxkIHN5c3RlbSB2ZXJ5IGxpbWl0aW5nIGFuZCBwcm9ibGVtYXRpY2FsLCBi
dXQKdGhhdCBkb2Vzbid0IG1lYW4gdGhhdCBJJ3ZlIGJlZW4gaGFja2luZyBhcm91bmQgaXQgLSB0
aGUgb25seQpjaGFuZ2VzIGFyZSB0aG9zZSB0aGF0IEkndmUgcHVibGlzaGVkIHBsdXMgdGhlIGFk
ZGl0aW9uIG9mIG9uZQphZGRpdGlvbmFsIGtlcm5lbCBwYXRjaCBmaWxlLgoKLS0gClJNSydzIFBh
dGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVz
LwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEy
LjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1i
cHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
