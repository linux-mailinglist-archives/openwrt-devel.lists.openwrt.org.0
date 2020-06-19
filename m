Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D0820053B
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 11:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1+TaEd1kR05YZY6RuKV+G83G4pQVpStNAo0LtFRSJn8=; b=SWtDSRKGpJWUKVmK2l1unAtbPr
	2ZRjlmLYJliht57tPXzXX8wvY+ROL94emfB+2H8FB/rQ9bmPxtSYGyXPOiKfFoD+ASpMLFarnpca8
	cd9cxpZbSDRGhV+1cHAEDnI4oJgxhoeYVqcoUbhC6Ff01jeyB+btfNC5LIIlUv37T3AQDkSYz6q66
	CnxPsYiUWrFLjfrUYGqPeRrQjqVqf7NP2Joo5zXsnqFtTP7x32O1p/1C/XvWYuI3w2UHr3BRMreFn
	TQAD7UV+NulLPpeWwRAKpXZJGXufYUjiqY1LqoHZTooZqPQD+WPJPOwSaU8tSDPD4Lbwftyx724P9
	lSArREpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDQA-0006LE-I7; Fri, 19 Jun 2020 09:34:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDOI-0004fR-DO
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 09:32:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D28561881B;
 Fri, 19 Jun 2020 11:32:52 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b2fe28e1;
 Fri, 19 Jun 2020 11:32:36 +0200 (CEST)
Date: Fri, 19 Jun 2020 11:32:36 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Baptiste Jonglez <baptiste@bitsofnetworks.org>
Message-ID: <20200619093236.GA79323@meh.true.cz>
References: <20200617215657.4330-1-ynezz@true.cz>
 <20200619082257.GA563509@tuxmachine.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619082257.GA563509@tuxmachine.localdomain>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_023254_648659_FE45452F 
X-CRM114-Status: UNSURE (   7.84  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: archer-c7-v5: fix initramfs image
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

QmFwdGlzdGUgSm9uZ2xleiA8YmFwdGlzdGVAYml0c29mbmV0d29ya3Mub3JnPiBbMjAyMC0wNi0x
OSAxMDoyMjo1N106CgpIaSwKCj4gT24gMTctMDYtMjAsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4g
PiBDdXJyZW50bHkgaXQncyBub3QgcG9zc2libGUgdG8gdGZ0cGJvb3QgaW5pdHJhbWZzIGltYWdl
IGFzIHRoZSBpbWFnZQo+ID4gY29udGFpbnMgdHBsaW5rLXYxLWhlYWRlciB3aGljaCBsZWFkcyB0
bzoKPiAKPiBPdXQgb2YgY3VyaW9zaXR5LCBpdCBsb29rcyBsaWtlIGJvb3RpbmcgYW4gaW5pdHJh
bWZzIGltYWdlIGlzIG9ubHkKPiBwb3NzaWJsZSB3aXRoIHNlcmlhbCBhY2Nlc3MgdG8gdGhlIGJv
b3Rsb2FkZXI/CgppbmRlZWQsIG15IHVzZSBjYXNlIGlzIENJIGF1dG9tYXRpYyB0ZXN0aW5nIHdp
dGggbGFiZ3JpZCwgc28gSSBkb24ndCB3YW50IHRvCnRyYXNoIG15IGZsYXNoLiBJbiBwcm9iYWJs
eSB3ZWVrbHkgQ0kgam9iIEkgcGxhbiB0byB3cml0ZSBmYWN0b3J5IGltYWdlIGFuZApwZXJmb3Jt
IHN5c3VwZ3JhZGUgaW4gb3JkZXIgdG8gdGVzdCB0aG9zZSBpbWFnZXMgYXMgd2VsbC4KCj4gPiAt
LS0gYS90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy10cC1saW5rLm1rCj4gPiArKysg
Yi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy10cC1saW5rLm1rCj4gPiBAQCAtMTk3
LDYgKzE5Nyw3IEBAIGRlZmluZSBEZXZpY2UvdHBsaW5rX2FyY2hlci1jNy12NQo+ID4gICAgVFBM
SU5LX0JPQVJEX0lEIDo9IEFSQ0hFUi1DNy1WNQo+ID4gICAgQk9BUkROQU1FIDo9IEFSQ0hFUi1D
Ny1WNQo+ID4gICAgU1VQUE9SVEVEX0RFVklDRVMgKz0gYXJjaGVyLWM3LXY1Cj4gPiArICBLRVJO
RUxfSU5JVFJBTUZTIDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IHVJbWFnZUFy
Y2hlciBsem1hCj4gPiAgZW5kZWYKPiA+ICBUQVJHRVRfREVWSUNFUyArPSB0cGxpbmtfYXJjaGVy
LWM3LXY1Cj4gCj4gVGhpcyBpcyBzdHJhbmdlLCBEZXZpY2UvdHBsaW5rLXNhZmVsb2FkZXItdWlt
YWdlIGFscmVhZHkgZGVmaW5lcyBLRVJORUwKPiB0aGUgc2FtZSB3YXk6Cj4gCj4gICBLRVJORUwg
Oj0ga2VybmVsLWJpbiB8IGFwcGVuZC1kdGIgfCBsem1hIHwgdUltYWdlQXJjaGVyIGx6bWEKPiAK
PiBBRkFJSywgS0VSTkVMX0lOSVRSQU1GUyBzaG91bGQgZGVmYXVsdCB0byB0aGUgc2FtZSB2YWx1
ZSBhcyBLRVJORUwuCgpJbmRlZWQsIGJ1dCBEZXZpY2UvdHBsaW5rLXYxIHJlZGVmaW5lcyB0aGF0
IHRvOgoKIEtFUk5FTF9JTklUUkFNRlMgOj0ga2VybmVsLWJpbiB8IGFwcGVuZC1kdGIgfCBsem1h
IHwgdHBsaW5rLXYxLWhlYWRlcgoKYW5kIERldmljZS90cGxpbmstc2FmZWxvYWRlci11aW1hZ2Ug
aW5oZXJpdHMgZnJvbSBEZXZpY2UvdHBsaW5rLXYxLCByZXVzaW5nCnRoYXQgS0VSTkVMX0lOSVRS
QU1GUyB2YXJpYWJsZS4KClRoYW5rcyBmb3IgdGhlIHJldmlldywgZ29pbmcgdG8gc2VuZCBob3Bl
ZnVsbHkgcHJvcGVyIHBhdGNoIGluIGEgbW9tZW50LgoKLS0geW5lenoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
