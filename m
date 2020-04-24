Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530A01B6F15
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 09:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ufWmpzgfzgQ/I4/oyzEBotCxI7hfXTa92I6ZUhP790A=; b=AC0MLmjRll0pzpAqDI8Vix1byr
	c1NeQzVuZd7AvP2H4gEIzDtn6Acnee/YWQDBeJD8B+fm8Mg+o5HLKOKehSQLn3aH5UvndoweCHFfJ
	ySXugzRugp10nVKMa2HvoXnpnDF/keWsXKqmDnRVHNlH2+D80/uzj7xvcgIXt1bshRO6vAYQ2je/1
	G1jb9Uwjcj8u5yfpw5A+ZKZLf3ii5wX6XFOPF7EsOte9LcR87kuCvGEg9Vi+/n7mUm+IuEd/6BTdQ
	vD2ZbSod7QLuoynCgWiCOOQ4GdvjiLfJgqp1esHvmrrhIN7pBWVhrnMt2aGtgliIkJ89ECiwC8a0O
	6IVYibHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsqR-0004GT-Rp; Fri, 24 Apr 2020 07:33:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsqL-0004D2-7s
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 07:33:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 09CD64035;
 Fri, 24 Apr 2020 09:33:43 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8d1e5c72;
 Fri, 24 Apr 2020 09:33:28 +0200 (CEST)
Date: Fri, 24 Apr 2020 09:33:28 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel =?utf-8?B?R29uesOhbGV6?= Cabanelas <dgcbueu@gmail.com>
Message-ID: <20200424073328.GB76955@meh.true.cz>
References: <2247807.iZASKD2KPV@tool> <20200423084100.GA76955@meh.true.cz>
 <CABwr4_uhWJck651=0T7B_Jn5s6oo5EiFLsff3dXW00qv7W0__A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABwr4_uhWJck651=0T7B_Jn5s6oo5EiFLsff3dXW00qv7W0__A@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_003349_432509_FAD70D14 
X-CRM114-Status: UNSURE (   4.11  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] kernel: add package
 linkstation-poweroff driver
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

RGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwuY29tPiBbMjAyMC0wNC0y
MyAxMTowNzozNl06CgpIaSwKCj4gSGkgUGV0ciwgc28gSSBzaG91bGQgc2VuZCB0aGUgcGF0Y2gg
dG8gTGludXggQVJNIEtlcm5lbCB1cHN0cmVhbSBhbmQKCnJ1bm5pbmcgYHNjcmlwdHMvZ2V0X21h
aW50YWluZXIucGwgeW91ci5wYXRjaGAgaXMgZ29pbmcgdG8gdGVsbCB5b3Ugd2hlcmUgdG8Kc2Vu
ZCB0aGlzIGV4YWN0bHkuCgo+IHRoZW4gYmFja3BvcnQgdGhpcyBwYWNrYWdlIGFzIGEgcGF0Y2gg
aW50byB0aGUga2VybmVsIHNwZWNpZmljIHRhcmdldAo+IHBhdGNoZXMsIHJpZ2h0PwoKWWVzLgoK
LS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
