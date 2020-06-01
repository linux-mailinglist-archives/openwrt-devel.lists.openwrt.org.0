Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43831EA45B
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 15:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G4MgN8Fi8mq1ZdQ/j4BEEDfuP3I0+638dUjOnHZAbMo=; b=hwwplMCQp//yHwBTBOt70a4aBW
	C3Oi1iPKLKlE6wCjMVc96Z7clDX/jDoiV0TMarIODI+olzW9qP8Fx1HFWjyqyPno05yvM9eV+GTTd
	LFVuZMtUu1/hmsXb/nke6coDz4G6NsvcVZhvkw3iDooQIBPRbewI+8OZv7f0LEiLYDHLqVuDYxbKR
	xknwRoaJV1CSnkLQimnlmL/nzug/UzBQDi48zoQC2KYvwcTL6wqW0Pcinp9zt5g/COg3GR84yN3yp
	jE6r/6g3Fnz2d6iAWMarSeOAZSdyO7R6vcv9dT+D8pfX8IbNFCr3HQYMqZKlDWybGdEu+3C6L9qPI
	JbjcIuYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfk4v-0001Ol-Li; Mon, 01 Jun 2020 13:02:09 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfk4q-0001OR-0L
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 13:02:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B3AA947EF;
 Mon,  1 Jun 2020 15:01:59 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 76a60ac6;
 Mon, 1 Jun 2020 15:01:44 +0200 (CEST)
Date: Mon, 1 Jun 2020 15:01:44 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Message-ID: <20200601130144.GF58206@meh.true.cz>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
 <79845b43-f39d-c215-e968-41b93eb00b65@universe-factory.net>
 <0890d3e5-a989-5b8d-f29a-54e62707715b@universe-factory.net>
 <20200601102121.GE58206@meh.true.cz>
 <459b72d9-4e6d-65f3-afd0-c0287bd15c62@universe-factory.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <459b72d9-4e6d-65f3-afd0-c0287bd15c62@universe-factory.net>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_060204_193307_F79F9695 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/4] build: use zstd for SDK and
 ImageBuilder tarballs
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TWF0dGhpYXMgU2NoaWZmZXIgPG1zY2hpZmZlckB1bml2ZXJzZS1mYWN0b3J5Lm5ldD4gWzIwMjAt
MDYtMDEgMTQ6Mzg6MTZdOgoKSGksCgo+IE9uIDYvMS8yMCAxMjoyMSBQTSwgUGV0ciDFoHRldGlh
ciB3cm90ZToKPiA+IAo+ID4gIDEuIFNvbWVvbmUgaGFzIHRvIHByb3ZpZGUgcGF0Y2hlcyBhZ2Fp
bnN0IEJ1aWxkYm90WzFdIHJlcG8gd2l0aCB0aGUgenN0ZAo+ID4gICAgIG5hbWluZyBjaGFuZ2Vz
Cj4gCj4gSSBjYW4gd3JpdGUgdGhlIHBhdGNoLCBidXQgaXQgc2VlbXMgdGhpcyBpcyBvbmx5IGEg
ZGVmYXVsdCB2YWx1ZSwgYW5kIHRoZQo+IGNvbmZpZyBmaWxlIGRlZmluZXMgdGhlIGFjdHVhbCB2
YWx1ZSAtIHdoaWNoIG1ha2VzIHNlbnNlLCBhcyBvbmx5IG1hc3Rlcgo+IHNuYXBzaG90cyB3b3Vs
ZCB1c2UgdGhlIG5ldyB2YWx1ZSwgd2hpbGUgMTkuMDcgYW5kIG9sZGVyIHdvdWxkIHN0aWxsIHVz
ZQo+IC54ei4gV2hlcmUgYXJlIHRoZXNlIHBlci1pbnN0YW5jZXMgdmFyaWFibGVzIGRlZmluZWQ/
CgpBaCwgcmlnaHQsIGl0J3MgaW4gcm9sZXMvYnVpbGRzbGF2ZS90ZW1wbGF0ZXMvY29uZmlnLmlu
aS5qMiBpbiBhbnNpYmxlLmdpdAoKIFtyc3luY10KIHslIGlmIG1hc3Rlcl9kYXRhLmJyYW5jaCA9
PSAibWFzdGVyIiAlfQogc2RrX3BhdHRlcm4gPSBvcGVud3J0LXNkay0qLnRhci54egogeyUgZWxz
ZSAlfQogc2RrX3BhdHRlcm4gPSB7eyBkaXN0cmlidXRpb24gfX0tc2RrLSoudGFyLnh6CiB7JSBl
bmRpZiAlfQoKSSBjYW4gY2hhbmdlIHRoaXMgQW5zaWJsZSBwYXJ0IG9uY2UgbmVlZGVkLgoKLS0g
eW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
