Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F75DECFE
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 15:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eE+0PbXKJKE6NFYp5wYzODgFfaIiHnxRrBePNTKewq4=; b=WPubTLE4E8HmZQ80AjYsfGXCA1
	pmdwYxTmwTkNoHitJgaX02b+0F6HEES8Bi+9LfS5yKVL9Vg3mBpebzLBtO6lGk8xDUV20f7hT+sK2
	KJJ4dQKZeYM6y5U5wzSDjxd5YOA/6E8zC2V+aVSEXEc5NEWI+V8akMdv1YwoOBozjlMgxyNUx5FxG
	XHMpL7KTjfn6JK1cE0g8pxyFge592v5FMVqLqaY2O+gZgt9C63aVyKVH8VyflgIwQOI/I6uuB4HX7
	LgdCmqG2+CV06yZEWatbbFRzUFF5wmoMM26meqHUn6eTnVyFf/s2kAaq+hPld3SSc9PpHt0LfVS5N
	b5oB6G7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXKV-0005jb-9n; Mon, 21 Oct 2019 13:02:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXKI-0005iq-1c
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 13:02:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A0BEB3FC8;
 Mon, 21 Oct 2019 15:02:19 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b9711f5f;
 Mon, 21 Oct 2019 15:02:09 +0200 (CEST)
Date: Mon, 21 Oct 2019 15:02:09 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?QW5kcsOp?= Valentin <avalentin@marcant.net>
Message-ID: <20191021130209.GD52694@meh.true.cz>
References: <20191021123214.2252-1-avalentin@marcant.net>
 <20191021123214.2252-5-avalentin@marcant.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021123214.2252-5-avalentin@marcant.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_060222_237122_0404B3D9 
X-CRM114-Status: UNSURE (   4.07  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 4/5] target/generic: add ascii search
 option to mtd-mac-address helper
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+IFsyMDE5LTEwLTIxIDE0OjMy
OjEzXToKCkhpLAoKPiBUaGlzIGltcHJvdmVzIHRoZSBmdW5jdGlvbiBvZl9nZXRfbWFjX2FkZHJl
c3NfbXRkLi4uCgpidXQgb24gdGhlIG90aGVyIGhhbmQgaXRzIGFsc28gaW50cm9kdWNpbmcgc29t
ZXRoaW5nIHdoaWNoIHdvdWxkIG5ldmVyIGJlCmFjY2VwdGVkIHVwc3RyZWFtLCBmb3IgZGV0YWls
cyBzZWUgbXkgb3RoZXIgY29tbWVudFsxXS4KCj4gQ29kZSBoYXMgYmVlbiB0YWtlbiBmcm9tIGFy
NzF4eC4KCkl0IG1ha2VzIG1lIHdvbmRlciBmcm9tIHdoZXJlIGV4YWN0bHkgYXMgSSBjYW4ndCBz
ZWVtIHRvIGZpbmQgaXQuCgoxLiBodHRwOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTEx
MjQ5NS8jMjE4OTAzMAoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
