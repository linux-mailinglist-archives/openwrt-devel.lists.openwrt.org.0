Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330AD1AF8FB
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 11:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dO+jOL2th63jQ8HuajnbAMeLXmjTRWBijrJW9CBifQ=; b=HT3LOey6reZPxu
	77H6wrymOrLwc28i9f2UTmHfvggg4d4W1SC8gudIqAqkfIBhvbP2tZ7qxHV+281LJfNkqXNBi2EAF
	ruGnDlJ/hx8cnUgb97DPUUHTVla960Yb52Cf/hTiRxeGCpE+AbLU2i9H3Ey2Yt60oPXyHb1x8jha/
	XCKv8Rvcr6imC9xlyQ7M3zObrTRlpzjY/xuhokYxJOxmiL2x1GxA43Dya3ILYpzlYEB6YXmA6ZmGZ
	x2bwXtG6BdRrnylcjMOW8+uTN1A6FKmTjAa5Y5SxMnxfd+FvTgNBcoUH+832LjUYMhV7A9xIrxsic
	qFnVgZPKVDOR61cc55yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ6JS-0004B2-Em; Sun, 19 Apr 2020 09:32:30 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ6JG-00048o-Eo
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 09:32:20 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 03J9W3HM023482
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Sun, 19 Apr 2020 11:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1587288724; bh=Vo0jjHaCu+IFQnTqsN0KZCT3sGl4f4EDrF06VLyk9EQ=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=h1UhjSpfdFBhW22AxV5R8tng8ZK/3zzgVBh1WKJnUumAVmpgMXjSvuhDTgVQj99Rf
 qS5SqXG9PpLWej735xuY9MaY5vl2Zin52vUxqCkZZFBHIw53UBkOM7sJ5+5rr4cFsL
 BT5FiYPW1MQTZnZlTGY9hJXbYxJd7UwZoLZDyTrY=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jQ6J1-0003zg-76; Sun, 19 Apr 2020 11:32:03 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Sven Roederer <devel-sven@geroedel.de>
Organization: m
References: <4082642.HFx9K4o6oR@strike>
Date: Sun, 19 Apr 2020 11:32:03 +0200
In-Reply-To: <4082642.HFx9K4o6oR@strike> (Sven Roederer's message of "Sat, 18
 Apr 2020 22:11:55 +0200")
Message-ID: <87lfmrizxo.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_023219_006119_45A4CF97 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] linux5.4: build-dependency to rsync
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U3ZlbiBSb2VkZXJlciA8ZGV2ZWwtc3ZlbkBnZXJvZWRlbC5kZT4gd3JpdGVzOgoKPiBJIHdhcyBq
dXN0IGJ1aWxkaW5nIGEgbWFzdGVyLWJyYW5jaCBmb3IgeDg2LWdlbmVyaWMgYW5kIGdvdCBmb2xs
b3dpbmcgZXJyb3I6Cj4KPiBtYWtlWzVdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9tbnQvbG9jYWwv
YnRyZnMvYnVpbGQvZnJlaWZ1bmsvZmZiZXJsaW4vCj4gZmlybXdhcmUvb3BlbndydC9idWlsZF9k
aXIvdG9vbGNoYWluLWkzODZfcGVudGl1bTRfZ2NjLTguNC4wX211c2wvCj4gbGludXgtNS40LjI4
Jwo+ICAgSU5TVEFMTCAvbW50L2xvY2FsL2J0cmZzL2J1aWxkL2ZyZWlmdW5rL2ZmYmVybGluL2Zp
cm13YXJlL29wZW53cnQvYnVpbGRfZGlyLwo+IHRvb2xjaGFpbi1pMzg2X3BlbnRpdW00X2djYy04
LjQuMF9tdXNsL2xpbnV4LWRldi8vaW5jbHVkZQo+IC9iaW4vc2g6IDE6IHJzeW5jOiBub3QgZm91
bmQKPiBtYWtlWzVdOiAqKiogW01ha2VmaWxlOjExODY6IGhlYWRlcnNfaW5zdGFsbF0gRXJyb3Ig
MTI3Cj4gbWFrZVs1XTogTGVhdmluZyBkaXJlY3RvcnkgJy9tbnQvbG9jYWwvYnRyZnMvYnVpbGQv
ZnJlaWZ1bmsvZmZiZXJsaW4vZmlybXdhcmUvCj4gb3BlbndydC9idWlsZF9kaXIvdG9vbGNoYWlu
LWkzODZfcGVudGl1bTRfZ2NjLTguNC4wX211c2wvbGludXgtNS40LjI4Jwo+IG1ha2VbNF06ICoq
KiBbTWFrZWZpbGU6MTA4OiAvbW50L2xvY2FsL2J0cmZzL2J1aWxkL2ZyZWlmdW5rL2ZmYmVybGlu
L2Zpcm13YXJlLwo+IG9wZW53cnQvYnVpbGRfZGlyL3Rvb2xjaGFpbi1pMzg2X3BlbnRpdW00X2dj
Yy04LjQuMF9tdXNsLwo+IGxpbnV4LTUuNC4yOC8uY29uZmlndXJlZF0gRXJyb3IgMgo+IG1ha2Vb
NF06IExlYXZpbmcgZGlyZWN0b3J5ICcvbW50L2xvY2FsL2J0cmZzL2J1aWxkL2ZyZWlmdW5rL2Zm
YmVybGluL2Zpcm13YXJlLwo+IG9wZW53cnQvdG9vbGNoYWluL2tlcm5lbC1oZWFkZXJzJwo+IHRp
bWU6IHRvb2xjaGFpbi9rZXJuZWwtaGVhZGVycy9jb21waWxlIzEuNDYjMC44MyMyLjI2Cj4KPgo+
IEluIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21taXQvNTliMmJkMDVmNWY0
ZCB0aGUgY2FsbCB0byByc3luYyAKPiB3YXMgYWRkZWQuIEkgdGhpbmsgd2UgaGF2ZSB0aGUgMiBv
cHRpb25zOgo+ICogdXNlIGhvc3QtY29tbWFuZCAoY2hhbmdpbmcgdGhlIGJ1aWxkLXJlcXVpcmVt
ZW50cykKPiAqIGNvbXBpbGUgaXQgb3Vyc2VsZiAobGlrZSB3ZSBkbyB3aXRoIHppcDogYWQ4YzJk
NjA5OWE3ZGE1MSkKClRoaXMgbmV3IGRlcGVuZGVuY3kgbG9va3MgbGlrZSBpdCBtaWdodCBoYXZl
IGJlZW4gdW5pbnRlbnRpb25hbC4gIHJzeW5jCmlzIG5vdCBkb2N1bWVudGVkIGluIERvY3VtZW50
YXRpb24vcHJvY2Vzcy9jaGFuZ2VzLnJzdCAuIEFuZCB0aGVyZSBtdXN0CmJlIG1hbnkgb3RoZXIg
cmVjdXJzaXZlIGZpbGUgY29weWluZyBydWxlcyBpbiB0aGUga2VybmVsIGJ1aWxkIHN5c3RlbSwK
d2hpY2ggZG8gKm5vdCogZGVwZW5kIG9uIHJzeW5jLgoKTWF5YmUgY2hlY2sgd2l0aCB0aGUga2Vy
bmVsIGNvbW11bml0eSBmaXJzdCwgdmVyaWZ5aW5nIHRoYXQgdGhpcyBuZXcKYnVpbGQgZGVwZW5k
ZW5jeSB3YXMgaW4gZmFjdCBpbnRlbmRlZD8gIEF0IHRoZSB2ZXJ5IGxlYXN0LCB0aGF0IHNob3Vs
ZApyZXN1bHQgaW4gYSBwYXRjaCB0byBEb2N1bWVudGF0aW9uL3Byb2Nlc3MvY2hhbmdlcy5yc3Qg
bWFraW5nIHRoaXMKZXhwbGljaXQuIAoKCgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
