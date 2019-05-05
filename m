Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6849014256
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 22:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bbHenHU5aRiarw9mGW52nKOesniRAe4HaNoM5Xm1+f8=; b=pUflzVl0ZlaR6RvVoFXvhwLn5w
	VMV9AsVIS4459ll3PXatNZcvByRf7+MCDrwKM69gJ3BOWO+5c1WZZu026ip81d5fI1pG732lgE3f7
	NXiG7sBF/3T+foj3GPeEXMDzUPIincVcHK7e4qi/dwiVkQ+fxmxZi1jhhPMEMPD5BZOdOScDx85Vx
	jqLLxkm8L6xz418sty42QlResUSu50ul5ESwVgL1k469ahqrjSFadFT8QIfVLrvAQ3TupwEJ1tp0w
	De2nNDNJspJ/ed6rBb3J0mqh/Ndqp+y6aTwhEk+krwQ9KN05mddXIEyeyNJiBaPbEGTJFvUhHTpV3
	gTqivTvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNNyU-0003T5-Ea; Sun, 05 May 2019 20:43:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNNyN-0003Si-G6
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 20:43:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0D4043F48;
 Sun,  5 May 2019 22:42:57 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6e81722b;
 Sun, 5 May 2019 22:42:55 +0200 (CEST)
Date: Sun, 5 May 2019 22:42:55 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190505204255.GD81826@meh.true.cz>
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-7-tomek_n@o2.pl>
 <69de5f77-e694-d2bd-9c67-a94173c91243@hauke-m.de>
 <20190503223803.GK71477@meh.true.cz>
 <d847ec33-e2b5-b81a-e6fc-b2d98ff23635@o2.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d847ec33-e2b5-b81a-e6fc-b2d98ff23635@o2.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_134259_690452_0446CCFF 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 6/8] mvebu: add vendor to device names
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4gWzIwMTktMDUtMDQgMTY6MDE6MTFd
OgoKPiBXIGRuaXUgMDQuMDUuMjAxOSBvwqAwMDozOCwgUGV0ciDFoHRldGlhciBwaXN6ZToKPiA+
IAo+ID4gU1VQUE9SVEVEX0RFVklDRVMgdmFyaWFibGUgaXMgdXNlZCBmb3IgdGhpcywgc28gaXQn
cyBwcm9iYWJseSBnb2luZyB0byB3b3JrLAo+ID4gYnV0IGlmIHdlJ3JlIHdpbGxpbmcgdG8gcmVu
YW1lIGl0LCBpdCBtaWdodCBiZSBhIGdvb2QgaWRlYSB0byBmb2xsb3cgdGhlIERUCj4gPiBjb21w
YXRpYmxlIG5hbWluZyBzY2hlbWUgYXMgdXNlZCBpbiBvdGhlciB0YXJnZXRzLgo+ID4gCj4gPiBT
byBpbnN0ZWFkIG9mIHRoaXMgaW4gcGF0Y2ggNC84Ogo+ID4gCj4gPiAgLSAgU1VQUE9SVEVEX0RF
VklDRVMgPSAkJChERVZJQ0VfRFRTKQo+ID4gICsgIFNVUFBPUlRFRF9ERVZJQ0VTID0gJCQoZmly
c3R3b3JkICQkKERFVklDRV9EVFMpKQo+ID4gCj4gPiBUb21hc3ogc2hvdWxkIGJlIGRvaW5nIGZv
bGxvd2luZzoKPiA+IAo+ID4gIC0gIFNVUFBPUlRFRF9ERVZJQ0VTID0gJCQoREVWSUNFX0RUUykK
PiA+ICArICBTVVBQT1JURURfREVWSUNFUyA9ICQoc3Vic3QgXywkKGNvbW1hKSwkKDEpKQo+IAo+
IElkZWFsbHkgdGhhdCB3b3VsZCBiZSB0aGUgY2FzZSwgdW5mb3J0dW5hdGVseSB0aGVyZSBpcyBp
bmNvbnNpc3RlbmN5IGluIHRoZSB1cHN0cmVhbQo+IGR0c2VzLCBmb3IgZXhhbXBsZSAoc3RhbmQg
YWZ0ZXIgbXkgcGF0Y2ggcmVuYW1pbmcgZGV2aWNlIG5hbWVzKToKCmZyb20gbXkgUE9WLCBpdCBz
ZWVtcyBtb3JlIGNvbnZlbmllbnQgdG8gc3RpY2sgdG8gRFQgY29tcGF0aWJsZSwgYXMgaXQncyB0
aGVuCmdvaW5nIHRvIGJlIHJlZmVyZW5jZWQgaW4gdGhlIG90aGVyIHBsYWNlcyBhcyB3ZWxsLCBz
byBpdCdzIHByb2JhYmx5IGdvaW5nIHRvCm1lYW4gbGVzcyBjb25mdXNpb24uCgo+IGxpbmtzeXMt
d3J0MTIwMGFjIGhhcyBjb21wYXRpYmxlIGxpbmtzeXMsY2FpbWFuLAoKSSBjb3VsZCBzdGlsbCBn
cmVwIGZvciB3cnQxMjAwYWMgd2l0aCB0aGUgZm9sbG93aW5nIGNvZGUgYW5kIGZpbmQgb3V0IHRo
ZQpwcm9wZXIgZGV2aWNlL2ltYWdlOgoKIERldmljZS9saW5rc3lzX2NhaW1hbgogICAkKGNhbGwg
RGV2aWNlL2xpbmtzeXMsV1JUMTIwMEFDIChDYWltYW4pKQogICBTVVBQT1JURURfREVWSUNFUyAr
PSBsaW5rc3lzLXdydDEyMDBhYwogICAuLi4KIGVuZGVmCiBUQVJHRVRfREVWSUNFUyArPSBsaW5r
c3lzX2NhaW1hbgoKYW5kIGlmIHdlJ3JlIGdvaW5nIHRvIHJlbmFtZSBpdCwgd2Ugc2hvdWxkIGZp
eCBhbGwgdGhlIHJlZmVyZW5jZXMgaW4gdGhlIHdpa2kgYXMgd2VsbC4KCj4gbWFydmVsbC1hcm1h
ZGEtMzg1LWRiLWFwIC0+IG1hcnZlbGwsYTM4NS1kYi1hcAo+IG1hcnZlbGwtYXJtYWRhLTM3MjAt
ZGIgLT4gbWFydmVsbCxhcm1hZGEtMzcyMC1kYgo+IG1hcnZlbGwtYXJtYWRhLTgwNDAtZGIgLT4g
bWFydmVsbCxhcm1hZGE4MDQwLWRiCgpzZWVtcyBvayB0byBtZS4KCj4gbWFydmVsbC1tYWNjaGlh
dG9iaW4gLT4gbWFydmVsbCxhcm1hZGE4MDQwLW1jYmluCgpxdWl0ZSB3ZWlyZCwgYnV0IHRoYXQn
cyBhIGxpZmUsIHN0aWxsIERFVklDRV9USVRMRSBpcyBnb2luZyB0byBtYWtlIGl0IGNsZWFyLgoK
LS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
