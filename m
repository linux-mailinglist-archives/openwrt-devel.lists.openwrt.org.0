Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62821FAFF
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 21:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T0U1MXCm1ng4WCH6B15eq0hyY30vtXmLJlpwDlSc1Vo=; b=KU/UGm3R6aCOTLuHDdiywPW8Fm
	GXgDra1jRdNll8HkBoMjn0GdfX7sctUn1RZlrVOO46lX+1aOyhh8gsmphJmLUuw7HUn+vtS54SW6g
	vIXHZCT4PWufcKTyJ4em4kMtCrhD/y74bvDECuxYhxs3IjnJwDauoaIoJiJqQ5ofyR7N2h3vXWbIr
	VIgZuMIfBxWncihQ4HgEnErYE+PiUDQzELVvPP048KMM1Xb/mwMPbcsDsqfcSg7wUG+AzvJtRsHvy
	93oQlfDF0mmLpFNv2uCEdW725vSbAiK0rd0JUye+/gsUE8DhVnFUR4H/SfiEzUtzpIBbOxhfnoX08
	UHKYc1Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzgn-0005wE-2m; Wed, 15 May 2019 19:35:45 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzgg-0005vr-1S
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 19:35:39 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FJZVAE052640
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 21:35:31 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 418D53B49;
 Wed, 15 May 2019 21:35:29 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2d8a754f;
 Wed, 15 May 2019 21:35:28 +0200 (CEST)
Date: Wed, 15 May 2019 21:35:28 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Message-ID: <20190515193528.GD63920@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-4-be.dissent@gmail.com>
 <20190515160152.GC4938@meh.true.cz>
 <CAEdN=pFgpHN6zjMqEjs-3p-SgDneFG18B4=-Tyk4fnR_zofuXA@mail.gmail.com>
 <20190515185538.GB63920@meh.true.cz>
 <CAEdN=pENo3cxEyffOBdLd1OAcmbpTYzrkk9bWx_F6csoiwLGVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEdN=pENo3cxEyffOBdLd1OAcmbpTYzrkk9bWx_F6csoiwLGVA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_123538_394756_49C67EDF 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] ipq40xx: add support for secondary
 cores bringup
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
Cc: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0J/QsNCy0LXQuyA8YmUuZGlzc2VudEBnbWFpbC5jb20+IFsyMDE5LTA1LTE1IDIyOjE0OjQxXToK
Cj4gTm90IGEgcHJvYmxlbSwgYWN0dWFsbHksIGJ1dCBJJ3ZlIGJlZW4gc3VnZ2VzdGVkIHRvIHNx
dWFzaCB0aGVtIDopCj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzIw
NDMjaXNzdWVjb21tZW50LTQ5MTU4MTg5NwoKb2ssIHRoYW5rcyBmb3IgdGhlIGJhY2tncm91bmQs
IGJ1dCBzdGlsbCwgc3F1YXNoaW5nIGRvZXNuJ3QgbWVhbiBjaGFuZ2luZwphdXRob3JzaGlwIGFu
ZCBDaHJpc3RpYW4gaGFzIHByb2JhYmx5IGFsc28gd2FybmVkIHlvdSBiZWZvcmVoYW5kIDotKQoK
IihOb3RlOiBJbiBzb21lIG9mIHRoZSBwYXRjaGVzIHRoZSAiQXV0aG9yIiBpbiB0aGUgY29tbWl0
cyBpcyBkaXNzZW50MSEgU28KICB3YXRjaCBvdXQgYmVmb3JlIHNlbmRpbmcgdGhlbSBvZmYpIgoK
PiBTaG91bGRuJ3QgdGhlIGRldiBzZW5kIHRoZSBwYXRjaCBkaXJlY3RseSB0byBtZSBpbiBvcmRl
ciB0byBiZSBhYmxlIHRvIHBvc3QKPiBpdCBvbiBoaXMgYmVoYWxmLCBsaWtlIG9wZW53cnQgc3Vi
bWl0dGluZyBwYXRjaGVzIGd1aWRlbGluZSBkZXNjcmliZXM/CgpGcm9tIHRoZSBrZXJuZWwgZG9j
c1sxXToKCiJUaGUgY29udHJpYnV0aW9uIGlzIGJhc2VkIHVwb24gcHJldmlvdXMgd29yayB0aGF0
LCB0byB0aGUgYmVzdCBvZiBteQoga25vd2xlZGdlLCBpcyBjb3ZlcmVkIHVuZGVyIGFuIGFwcHJv
cHJpYXRlIG9wZW4gc291cmNlIGxpY2Vuc2UgYW5kIEkgaGF2ZSB0aGUKIHJpZ2h0IHVuZGVyIHRo
YXQgbGljZW5zZSB0byBzdWJtaXQgdGhhdCB3b3JrIHdpdGggbW9kaWZpY2F0aW9ucywgd2hldGhl
cgogY3JlYXRlZCBpbiB3aG9sZSBvciBpbiBwYXJ0IGJ5IG1lLCB1bmRlciB0aGUgc2FtZSBvcGVu
IHNvdXJjZSBsaWNlbnNlICh1bmxlc3MKIEkgYW0gcGVybWl0dGVkIHRvIHN1Ym1pdCB1bmRlciBh
IGRpZmZlcmVudCBsaWNlbnNlKSwgYXMgaW5kaWNhdGVkIGluIHRoZSBmaWxlOyIKCnNvIGluIHNo
b3J0LCBrZXJuZWwgaXMgY292ZXJlZCBieSBHUEx2MiB3aGljaCBhbGxvd3MgeW91IHRvIGRvIHRo
aXMgaWYgeW91CnJldGFpbiB0aGUgYXV0aG9yc2hpcC4KCjEuIGh0dHBzOi8vd3d3Lmtlcm5lbC5v
cmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLmh0bWwjc2lnbi15
b3VyLXdvcmstdGhlLWRldmVsb3Blci1zLWNlcnRpZmljYXRlLW9mLW9yaWdpbgoKLS0geW5lenoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
