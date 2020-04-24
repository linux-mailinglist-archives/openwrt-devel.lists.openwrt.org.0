Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5369D1B70C5
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 11:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HCScWik3HGac2cOF/Mp0Fb2jhUsaMFAbYM5fZe63f00=; b=F6BBsoQ71uIxIZRn+axdrpeKH4
	RtrA8liNJ5uIay8/FiSK7uetvIkROK/kmkkPOPrU392Sv+V+pVMlfVGLnnnJe6jlfdI42VlzphDkI
	2pESTaRlyyeP7pRUgjPF9JDwQ6o9vEvqwSzrbuKvELt602lYYWNsae/sNxkd3Jj2GtGtjuZ/30mW7
	Pl1huJI0zCONwE4ClvQ1hnEkHKeJfewfPkjy3rgF0YmXGrExbmggFnLdnHlgaA2HBXjwWPtjVMBpJ
	7gpn/p6ftKij8nQOYyR1WbwXI5+ELxQXsGaghaLcdPxWwpFE6WTJc2v8B9tishGEhupsKejy8V+e+
	y86BbUxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRuaO-0003w1-Bt; Fri, 24 Apr 2020 09:25:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRuaG-0001bH-AL
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 09:25:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 26A8F448C;
 Fri, 24 Apr 2020 11:25:14 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 96b442bf;
 Fri, 24 Apr 2020 11:25:00 +0200 (CEST)
Date: Fri, 24 Apr 2020 11:25:00 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Zoltan HERPAI <wigyori@uid0.hu>
Message-ID: <20200424092500.GC76955@meh.true.cz>
References: <20200420142932.12056-1-ynezz@true.cz>
 <7581c5c4-1db9-e3c9-e971-d799fde8417a@uid0.hu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7581c5c4-1db9-e3c9-e971-d799fde8417a@uid0.hu>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_022520_518597_FBAE170B 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] arm-trusted-firmware-sunxi: bump to
 v2.3-rc1 and use atf-builds binaries
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 atf.builds@tbspace.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

KGFkZGluZyBhdGYtYnVpbGQncyBlbWFpbCB0byBDYzogbG9vcCkKClpvbHRhbiBIRVJQQUkgPHdp
Z3lvcmlAdWlkMC5odT4gWzIwMjAtMDQtMjMgMTc6MjQ6MDRdOgoKSGksCgo+IE9uIDQvMjAvMjAy
MCAxNjoyOSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiA+IFVwZGF0ZSBBVEYgdG8gbGF0ZXN0IHYy
LjMtcmMxIHZlcnNpb24gYW5kIHVzZSByZXByb2R1Y2libGUgYmwzMSBiaW5hcmllcwo+ID4gZnJv
bSBhdGYtYnVpbGRzIHByb2plY3QuCj4gPiAKPiA+IGF0Zi1idWlsZHMgcHJvamVjdCBzdGFydGVk
IHJlY2VudGx5IG9mZmVyaW5nIHJlcHJvZHVjaWJsZSBBVEYgYmluYXJpZXMKPiA+IHdoaWNoIGlz
IG1vcmUgY29udmVuaWVudCB0aGVuIGJ1aWxkaW5nIHZlcnkgdGlueSBBVEYgYXJ0aWZhY3RzIGZy
b20KPiA+IHNjcmF0Y2ggZHVyaW5nIGVhY2ggYnVpbGQsIHRodXMgc2F2aW5nIGNvbnNpZGVyYWJs
ZSBidWlsZCByZXNvdXJjZXMuICBJdAo+ID4gaGFzIHJlZHVjZWQgYnVpbGQgZnJvbSBzY3JhdGNo
IHRpbWUgb24gbXkgQ0kgYnVpbGRlciBmb3Igc3VueGkvY29ydGV4YTUzCj4gPiB0YXJnZXQgZnJv
bSA1N21pbiBkb3duIHRvIDI5bWluLgo+ID4gCj4gPiBSdW4gdGVzdGVkIG9uIGE2NC1vbGludXhp
bm8tZW1tYy4KPiA+IAo+IE5BSyBmb3Igbm93LCBzb3JyeSAtIHRoZXkgZG9uJ3QgcHJvdmlkZSBI
NiBidWlsZHMgd2hpY2ggaGFzIGEgc2VwYXJhdGUgcGxhdCwKPiBhbmQgdGhlIEE2NCBidWlsZHMg
Y2FuJ3QgYmUgdXNlZCBvbiBpdC4KCkknbSBwcm9iYWJseSBtaXNzaW5nIHNvbWV0aGluZyBoZXJl
LCB3aGVyZSBpcyB0aGlzIEg2IHVzZWQgcmlnaHQgbm93PyBPciB5b3UKcGxhbiB0byBhZGQgdGhp
cyBzb29uPyBJJ20gcXVpdGUgbG9zdCBoZXJlIGFzIEkgZGlkIGJ1aWxkL3J1biB0ZXN0IHRoaXMK
Y2hhbmdlLCBkaWRuJ3Qgbm90aWNlZCBhbnkgYnJlYWthZ2UuIEknbSBxdWl0ZSBsb3N0IGhlcmUu
Cgo+ICBJZiB5b3UgY2FuIHBpbmcgdGhlbSB0byByZWxlYXNlIEg2IGJ1aWxkcyBhcyB3ZWxsLCB0
aGVuIGxldCdzIHJlLWRpc2N1c3MuIAoKWW91IG9yIGFueW9uZSBlbHNlIGNhbiBwaW5nIHRoZW1b
MV0gd2l0aCBhIHNpbXBsZSBQUiB3aGljaCB3b3VsZCBhZGQgb3RoZXIKYmluYXJpZXMuIEkgZGlk
IHRoZSBzYW1lIHdpdGggIkFkZCBzdW41MGlfYTY0IHRhcmdldCJbMl0gZm9yIGE2NC4KCmF0Zi1i
dWlsZHMgc3RhcnRlZCBpbiAicm9ja2NoaXA6IGFkZCBzdXBwb3J0IGZvciBQaW5lNjQgUm9ja1By
bzY0IlszXSwKb3RoZXJ3aXNlIHdlIHdvdWxkIG5lZWQgdG8gYnVpbGQgYW5vdGhlciB0b29sY2hh
aW4gKGJ1aWxkIHRpbWUgZXhwZW5zaXZlKSBqdXN0CnRvIGdldCBzbWFsbCBBVEYgYmluYXJ5LiBV
c2luZyByZXByb2R1Y2libGUgQVRGIGJpbmFyaWVzIHNlZW1lZCBiZXR0ZXIKc29sdXRpb24gdG8g
bWUsIHRoZW4gZm9yIGV4YW1wbGUgaGF2aW5nIExpbnV4IG9ubHkgc29sdXRpb24gKGR1ZSB0byBk
b3dubG9hZGVkCkxpbnV4IHRvb2xjaGFpbikgaW4gYXJtLXRydXN0ZWQtZmlybXdhcmUtbXZlYnUu
Cgo+IEFsc28sIGlmIHlvdSBjb3VsZCBzaGFyZSBob3cgdGhlIHNwZWVkLXVwIHdhcyBtZWFzdXJl
ZCBvbmx5IHdpdGggdGhpcwo+IGNoYW5nZSwgdGhhdCdkIGJlIGdyZWF0LgoKSSdtIGJ1aWxkaW5n
IG15IHN0YWdpbmcgdHJlZSBmb3Igc29tZSB0aW1lIG9uIEdpdExhYiBDSSwgdXNpbmcgc2FtZQpz
dGVwcy9jb25maWcgYXMgdXNlZCBvbiB0aGUgcHJvamVjdCdzIGJ1aWxkYm90cy4gTW9zdCBvZiB0
aGUgYnVpbGRzIGFyZSBhcm91bmQKMzBtaW4sIHNvIHRob3NlIGFsbW9zdCBkb3VibGUgYnVpbGQg
dGltZXMgZm9yIGE1MyBhcmUgZWFzaWx5IG5vdGljZWFibGUuCgpodHRwczovL2dpdGxhYi5jb20v
eW5lenovb3BlbndydC8tL2pvYnMvNTE4MTg2NDM2ICgyOW1pbiwgc3VueGkvY29ydGV4YTUzIHdp
dGggYXRmLWJ1aWxkcykKCmh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0Ly0vam9icy81
MDI2Mjg5MjEgKDU3bWluLCBzdW54aS9jb3J0ZXhhNTMpCmh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6
ei9vcGVud3J0Ly0vam9icy80OTc0ODY3OTIgKDU2bWluLCBzdW54aS9jb3J0ZXhhNTMpCmh0dHBz
Oi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0Ly0vam9icy80OTYyMTI2NDAgKDU3bWluLCBzdW54
aS9jb3J0ZXhhNTMpCgpodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC8tL2pvYnMvNDg1
MDE0Nzk4ICgyN21pbiwgc3VueGkvY29ydGV4YTgpCmh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9v
cGVud3J0Ly0vam9icy80ODUwMTQ3OTcgKDMybWluLCBzdW54aS9jb3J0ZXhhNykKCjEuIGh0dHBz
Oi8vZ2l0aHViLmNvbS9hdGYtYnVpbGRzL2F0ZiNhZGRpbmctbmV3LWJ1aWxkLXRhcmdldHMKMi4g
aHR0cHM6Ly9naXRodWIuY29tL2F0Zi1idWlsZHMvYXRmL3B1bGwvMQozLiBodHRwczovL2dpdGh1
Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMjkxNyNpc3N1ZWNvbW1lbnQtNjE0MzI5MjI3Cgot
LSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
