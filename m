Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A5C1CFB1D
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 18:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BUg7jKceFmy9eSKj8BWOyDHcf3JqVyOw1I82Za3qnZI=; b=R6T6ZxqdRMZsh8MswUzKD2l9ON
	5I0RrTMrabEFc/XdAWcFEJy432KK8Bh6pB+eql5zbqkIWTHVJK2eHaU676BY4cFQGncA+83T3bUgD
	UtSEQ2TBANkEd3p53qXfhpJoAnAOX9XMn32GCxuG93uBiB4U6HM/CMa9oLvhBIYfaUCpj6B/+9Px1
	GiywCWGL4Q8F1yroHgRcmGv2aoPxnqoHjZmElY6gO6E5EVcTjZTcvykp0v7Qcpgq269w+5CZLzxan
	9pF2sAb144JEBDi6CiDtdX7BqcGjktkQACeZBiq+/EnqN5xvr/4dvVyGy/SdJXxVJ6xU3Uk6kgwzr
	C96EBEtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXyy-0005NL-Nh; Tue, 12 May 2020 16:42:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXwJ-00010z-Oc
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 16:39:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 42C2C6CF3;
 Tue, 12 May 2020 18:39:28 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1c9c912f;
 Tue, 12 May 2020 18:39:12 +0200 (CEST)
Date: Tue, 12 May 2020 18:39:12 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Fertser <fercerpav@gmail.com>
Message-ID: <20200512163912.GC69771@meh.true.cz>
References: <20200511113702.10975-1-fe@dev.tdt.de>
 <20200511142542.GB69771@meh.true.cz>
 <20200511144355.GP16976@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511144355.GP16976@home.paul.comp>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093931_955363_0190FA1F 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard-tools: fix version
 indicator
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
Cc: dedeckeh@gmail.com, Jason@zx2c4.com, openwrt-devel@lists.openwrt.org,
 Eckert.Florian@googlemail.com, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGF1bCBGZXJ0c2VyIDxmZXJjZXJwYXZAZ21haWwuY29tPiBbMjAyMC0wNS0xMSAxNzo0Mzo1Nl06
CgpIaSwKCj4gT24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMDQ6MjU6NDJQTSArMDIwMCwgUGV0ciDF
oHRldGlhciB3cm90ZToKPiA+ID4gSWYgd2UgZXhlY3V0ZSBgd2cgLS12ZXJzaW9uYCB3ZSBnZXQg
YSBkaWZmcmVudCB2ZXJzaW9uIHN0cmluZyB0aGF0IGRvZXMKPiA+ID4gbm90IG1hdGNoIHdpdGgg
dGhlIHZlcnNpb24gc3RyaW5nIGluIHRoZSBvcGVud3J0IG1ha2VmaWxlLgo+ID4gPgo+ID4gPiBD
dXJyZW50IHZlcnNpb24gc3RyaW5nOgo+ID4gPiBgd2lyZWd1YXJkLXRvb2xzIHZyZWJvb3QtMTMx
NTktZ2FjNWNhYTI3MTggLWh0dHBzOi8vZ2l0Lnp4MmM0LmNvbS93aXJlZ3VhcmQtdG9vbHMvYAo+
IAo+IFRoaXMgaXMgY2xlYXJseSB0aGUgZ2l0IHRhZyBmcm9tIE9wZW5XcnQgdHJlZSBpdHNlbGYu
CgpJbmRlZWQuCgo+ID4gb2ssIGJ1dCBJIGZhaWwgdG8gc2VlIHdoeSB0aGlzIHBhdGNoIHNob3Vs
ZCBiZSBtYWludGFpbmVkIGJ5IE9wZW5XcnQsIHRoaXMKPiA+IGxvb2tzIGxpa2UgaXQgc2hvdWxk
IGJlIGZpeGVkIHVwc3RyZWFtLiBUaGFua3MuCj4gCj4gTWFueSBwcm9qZWN0cyB3aGVuIGNsb25l
ZCBmcm9tIGEgZ2l0IHRyZWUgdXNlIHNvbWUgdmFyaWF0aW9uIG9mICJnaXQKPiBkZXNjcmliZSIg
dG8gZW1iZWQgYSBtZWFuaW5nZnVsIHZlcnNpb24gaW4gdGhlIGNvbXBpbGVkIGJpbmFyeS4gCgpP
cGVuV3J0IGlzIHVzaW5nIFdpcmVHdWFyZCByZWxlYXNlIHRhcmJhbGxzLgoKLS0geW5lenoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
