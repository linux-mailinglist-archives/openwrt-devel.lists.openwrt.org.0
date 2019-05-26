Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85772A9C5
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 14:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OTPaA9JVZvGexsW0esTkRHsiYv5RkyfypAR8lm9XG2A=; b=hjGKaCiMB0mfCqe6aHx9JDu5mh
	P0P/O0l7YDd98SI0j4TxksJBkYjJJ+tWca9l2JDTh5kHOQXJ/adIzNKOM1Kf07gFr5dMDyZgGSgl2
	B5lz+qDdJ49uWHcRISUh1VBm7Yd9E7Ugvr2Ap3KVvY4Zw5RZaNwHOzSH4SuWmsO6A6vTmqkt5aNla
	BcPi2llFAkbMPNMF5PdcrSEHq/tRnUFbXjpzpBiWTZHdkjj3LISJ6awBt33G8LNQ3dxBPZUabQ6k4
	8/xbXJ1TprnQrl+WKP1oUkjLh1BFKls6zI1fp9ZZIM+hKxccYHZ3uHmt9wm5oOuaPaGk+98vmyFZ0
	NNkH1qzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUsYx-0001WA-Im; Sun, 26 May 2019 12:47:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUsYq-0001Vp-Jt
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 12:47:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E74284EC0;
 Sun, 26 May 2019 14:47:34 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8c7ce6c0;
 Sun, 26 May 2019 14:47:33 +0200 (CEST)
Date: Sun, 26 May 2019 14:47:33 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stephan =?utf-8?Q?M=C3=BCller?= <smueller@chronox.de>
Message-ID: <20190526124733.GG50588@meh.true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <20190521145502.GB4606@meh.true.cz>
 <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
 <7720302.cQ4CF4HUsA@positron.chronox.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7720302.cQ4CF4HUsA@positron.chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_054736_804614_F536727C 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U3RlcGhhbiBNw7xsbGVyIDxzbXVlbGxlckBjaHJvbm94LmRlPiBbMjAxOS0wNS0yNSAyMTo0Mjox
OV06CgpIaSwKCj4gSWYgeW91IGFyZSBpbnRlcmVzdGVkLCBJIHdyb3RlIGEgY29tcGxldGUgcmVw
bGFjZW1lbnQgaW1wbGVtZW50YXRpb24gb2YgdGhlIAo+IGN1cnJlbnQgL2Rldi9yYW5kb20gb3Ig
L2Rldi91cmFuZG9tIGF2YWlsYWJsZSBhdCBbMl0uIEl0IHVzZXMgdGhlIGluLWtlcm5lbCAKPiBK
aXR0ZXIgUk5HLCBpdCBoYXMgcGx1Z2dhYmxlIFBSTkdzIGFuZCBvdGhlciBsb2dpYyByZWxldmFu
dCBmb3IsIHNheSwgRklQUyAKPiAxNDAtMi4gVGhpcyBpbXBsZW1lbnRhdGlvbiB3b3VsZCBub3Qg
cmVxdWlyZSB5b3UgdG8gaGF2ZSB5b3VyIHNlcGFyYXRlIHVzZXIgCj4gc3BhY2UgZW50cm9weSBk
YWVtb24gdGhhdCBpcyBkaXNjdXNzZWQgaGVyZS4gCgp0aGUgbWFpbiByZWFzb24gZm9yIHVybmdk
IHdhcyBzaXplLCBiZWNhdXNlIEkgcGxhbiB0byBoYXZlIGl0IGluY2x1ZGVkIGluIGFsbApkZWZh
dWx0IGZpcm13YXJlIGltYWdlcywgZXZlbiBmb3IgdGlueSBkZXZpY2VzIHdpdGggNE1pQiBvZiBm
bGFzaCBzcGFjZS4gVGhlCmtlcm5lbCBtYWNoaW5lcnkgaXMgbW9yZSBoZWF2eSBhcyBpdCBoYXZl
IG1vcmUgZmVhdHVyZXMuCgo+IFlldCwgdGhpcyBjb2RlIHdhcyByZWplY3RlZC4KCmNvdWxkIHlv
dSBwbGVhc2UgcG9pbnQgbWUgdG8gdGhhdCBlbWFpbCB0aHJlYWQ/IFdoYXQncyB5b3VyIHBsYW4g
bm93PyBEbyB5b3UKc2ltcGx5IHBsYW4gdG8gbWFpbnRhaW4gaXQgYXMgb3V0IG9mIHRyZWUga2Vy
bmVsIG1vZHVsZSBmb3JldmVyIG9yIGRvIHlvdSBwbGFuCnRvIGV2ZW50dWFsbHkgYWRkcmVzcyB0
aGUgY29tbWVudHMgbGVhZGluZyB0byB0aGUgcmVqZWN0IGFuZCB0cnkgaXQgYWdhaW4KbGF0ZXI/
CgpUaGFua3MgYSBsb3QgZm9yIHlvdXIgZ3JlYXQgd29yayEKCj4gWzFdIGh0dHA6Ly93d3cuY2hy
b25veC5kZS9saWJrY2FwaS5odG1sCj4gWzJdIGh0dHA6Ly93d3cuY2hyb25veC5kZS9scm5nLmh0
bWwKCkNoZWVycywKClBldHIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
