Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A5D1734ED
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 11:04:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3PWHswtegb/MdncJLbNCO546o3LsAci4yMSURYwKW6w=; b=Ubvw0s18GVHMTrm6n+vdIdQR28
	ho9vUPIq+zs3rarVmOiqJoNdByd2XUb3htANBbwsfMrR/28FBy3koctz9lFetkKHl1yAhiBJOZjfV
	Aqr4mj4VNEY8uzwTrAHv2i34iWOh35mBtSylBmfeOZ2jZW2BCzD8dAXfoFkEBmbmNdI85zDaYc/lm
	OkudHbgYb/yrTCKphsUc8pnvb9Hkw/EdBzhemgJK+YMYWEaEHSmJVAsAqZp5Zr5nKNrc6tWDCYA7/
	9B1NVVSCjwafZ6VITXnpnAzcnFvxkwwOblOZX/NY9cd+MK4hLpXk1roSEX7RGs5jYzFHUPptE4ruo
	Ja+ku+KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cVK-0003tn-Ts; Fri, 28 Feb 2020 10:04:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cUJ-0003Eo-AH
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 10:03:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BCBBC3A7D;
 Fri, 28 Feb 2020 11:03:07 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2aed1a56;
 Fri, 28 Feb 2020 11:02:54 +0100 (CET)
Date: Fri, 28 Feb 2020 11:02:54 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200228100254.GB2524@meh.true.cz>
References: <20191128191933.5421-1-rosenp@gmail.com>
 <20191225111701.GI70645@meh.true.cz>
 <CAKxU2N9rckeK7LL2QvoEzghFLENtzNy3i-zFBW7a6RcH3OMcrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N9rckeK7LL2QvoEzghFLENtzNy3i-zFBW7a6RcH3OMcrw@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_020319_541484_F68C7946 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/3] tools/pkg-config: Replace with
 pkgconf
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDE5LTEyLTI1IDEyOjUxOjMzXToKCj4g
T24gV2VkLCBEZWMgMjUsIDIwMTkgYXQgMzoxNyBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPiA+Cj4gPiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTkt
MTEtMjggMTE6MTk6MzFdOgo+ID4KPiA+ID4gcGtnY29uZiBpcyBhIG5ld2VyLCBhY3RpdmVseSBt
YWludGFpbmVkIGltcGxlbWVudGF0aW9uIG9mIHBrZy1jb25maWcKPiA+Cj4gPiBJJ20gd29uZGVy
aW5nIGlmIHRoYXQgYGFjdGl2ZWx5IG1haW50YWluZWRgIHBhcnQgc3RpbGwgaG9sZHMgdHJ1ZS4K
Pgo+IEl0IGRvZXMuIFRoZSB0ZWFtIGhhcyBtYW5hZ2VtZW50IGlzc3VlcyBpdCBzZWVtcy4gVGhl
eSd2ZSBwdWJsaWNseQo+IHN0YXRlZCB0aGV5IHdhbnQgdG8gbW92ZSBhd2F5IGZyb20gR2l0SHVi
Ogo+IGh0dHBzOi8vZ2l0aHViLmNvbS9wa2djb25mL3BrZ2NvbmYuZ2l0aHViLmlvL2lzc3Vlcy8x
Cj4gCj4gU28geW91IHdvdWxkIHRoaW5rIGJhc2VkIG9uIHRoZSBVUkwgb2YgdGhlIGRvd25sb2Fk
IHRoYXQgZGV2ZWxvcG1lbnQKPiBtb3ZlZCBoZXJlOiBodHRwczovL2dpdC5kZXJlZmVyZW5jZWQu
b3JnL3BrZ2NvbmYvcGtnY29uZiMKPiAKPiBCdXQgdGhlcmUncyBhbHNvIGEgdGhpcmQgcGxhY2Ug
d2hlcmUgZGV2ZWxvcG1lbnQgc2VlbXMgdG8gaGF2ZSBtb3ZlZDoKPiBodHRwczovL2dpdC5zci5o
dC9+a2FuaWluaS9wa2djb25mL2xvZwo+IAo+IFNlZW1zIGl0J3MgYSBtZXNzLgoKU28gaG93IHRv
IHNvcnQgdGhpcyBvdXQ/CgpJJ20gc2ltcGx5IGluIGZhdm9yIG9mIGtlZXBpbmcgdGhlIGN1cnJl
bnQgcGtnLWNvbmZpZywgYmVjYXVzZSB0aGUgc3VnZ2VzdGVkCnJlcGxhY2VtZW50IGRvZXNuJ3Qg
c2VlbSBsaWtlIGEgd29ydGggY29uc2lkZXJpbmcgeWV0LCBidXQgbWF5YmUgSSByZWFkIGl0Cndy
b25nLgoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
