Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE78312D7B0
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 10:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fNcstEz/E3iUyt5ZfxUnatsm6acGH/HoVjiQg63Iahg=; b=Ut1jmSziB4311wHGXv2Gws2daL
	XX0L9TyoLo1oiIyXiwheG1Jsy7D5F9tfuGjrA7xpyS/7uI3D3DFNXwOvjbSMfhrh/Efn+IDtF1hpS
	dem4SkOyd4umwiOUzy90SUrPiZol/HgW2aEv+1FLsTBKUSZ3jauUqy6SXRic5m4VUtqAjeOCbtwSr
	Nfmlghv/tUgi1yQ/jURdVNmQBcXsC2ojLBwGWShp6boXDYCeM5nZGsozzRe2mHlOgP2tlaBdOV0sm
	SQDaVXBJFh3PEi6MRrsf3fX9OKsathvm5VlP45iT8Z7+WWJ0vly6lnM4iLNEyuIIinAmyZnPDfgGL
	7uyivYxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEIC-0001DT-Bi; Tue, 31 Dec 2019 09:58:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEI4-0001DA-EW
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 09:58:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5A8F64DAF;
 Tue, 31 Dec 2019 10:58:13 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 499294ed;
 Tue, 31 Dec 2019 10:58:01 +0100 (CET)
Date: Tue, 31 Dec 2019 10:58:01 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20191231095801.GK70184@meh.true.cz>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz>
 <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_015816_638832_772F5FE8 
X-CRM114-Status: UNSURE (   3.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMTktMTItMzEgMDk6NDI6NTNdOgoKPiByb290
QE9wZW5XcnQ6fiMgc3lzdXBncmFkZSAtdiBodHRwczovL2Rvd25sb2Fkcy5vcGVud3J0Lm9yZy9z
bmFwc2hvdHMvdGFyZ2V0cy9icmNtMjcwOC9iY20yNzExL29wZW53cnQtYnJjbTI3MDgtYmNtMjcx
MS1ycGktNC1leHQ0LXN5c3VwZ3JhZGUuaW1nLmd6Cj4gd2dldDogU1NMIHN1cHBvcnQgbm90IGF2
YWlsYWJsZSwgcGxlYXNlIGluc3RhbGwgb25lIG9mIHRoZSBsaWJ1c3RyZWFtLS4qW3NzbHx0bHNd
IHBhY2thZ2VzIGFzIHdlbGwgYXMgdGhlIGNhLWJ1bmRsZSBhbmQgY2EtY2VydGlmaWNhdGVzIHBh
Y2thZ2VzLgoKdXNlIGh0dHA6Ly8gb3IgaW5zdGFsbCB0aGUgcmVjb21tZW5kZWQgcGFja2FnZXMg
aW4gb3JkZXIgdG8gYmUgYWJsZSB0byB1c2UKaHR0cHM6Ly8KCj4gSW1hZ2UgbWV0YWRhdGEgbm90
IGZvdW5kCj4gVXNlIHN5c3VwZ3JhZGUgLUYgdG8gb3ZlcnJpZGUgdGhpcyBjaGVjayB3aGVuIGRv
d25ncmFkaW5nIG9yIGZsYXNoaW5nIHRvIHZlbmRvciBmaXJtd2FyZQo+IFJlYWRpbmcgcGFydGl0
aW9uIHRhYmxlIGZyb20gYm9vdGRpc2suLi4KPiBSZWFkaW5nIHBhcnRpdGlvbiB0YWJsZSBmcm9t
IGltYWdlLi4uCj4gSW52YWxpZCBwYXJ0aXRpb24gdGFibGUgb24gL3RtcC9pbWFnZS5icwo+IEZh
aWxlZCB0byBwYXJzZSBtZXNzYWdlIGRhdGEKPiBzaDogb3V0IG9mIHJhbmdlCgpUaGUgZG93bmxv
YWQgb2YgZmlybXdhcmUgaW1hZ2UgaGFzIGZhaWxlZCwgYnV0IHRoZSBzeXN1cGdyYWRlIHByb2Nl
c3MKY29udGludWVzLCBzbyB0aGlzIGVycm9ycyBhcmUgImV4cGVjdGVkIiwgZm9sbG93aW5nIHBh
dGNoWzFdIHNob3VsZCBmaXggc29tZQpvZiB0aGlzLgoKMS4gaHR0cHM6Ly9naXQub3BlbndydC5v
cmcvNmRiYWY3MTQxMWU3ZjE2Y2MxYzkyMGI2YTYzYmJlMzNlZjJiODkyMQoKLS0geW5lenoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
