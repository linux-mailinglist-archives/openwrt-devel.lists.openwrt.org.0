Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B3319ED72
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 20:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uhLU/VfmOL86VnzsgeDobd78CcQV/oKwXGGeau4Lgpg=; b=AU8aO1/bbSbTkIt9Yw81Zmk1Mm
	FaL5nnMg0e/xrCZcc9+I/9Atq0B/kNr5pVl9Qg4H+HnNegNTBzM4D7CQ055piby0LozuoPDOmdQWA
	wqPEc+p6krn2cKDmOnQVV/QnhVkOzaotHVICpJKejDz9e97mbQ8L0zIlgtNpLVWQMR8OvRyqH5SJ2
	hVLQ35wnwX/VtpV+jAdZeqHjs3puy3SyNNsEVVlbZov14Wc9f+wl2pcdt3EYMSkfeV91oVEgYNwD7
	T613qNg07RB4JEfsQSaHkPivEinxniQhcG6DPRh/2tBHwAGoMlAf02Ss1BuClN5M8MclVWMgq/smY
	VD1zkAjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLANO-0004oF-MK; Sun, 05 Apr 2020 18:52:10 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLANH-0004nG-LQ
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 18:52:05 +0000
Received: by mail-yb1-xb42.google.com with SMTP id i4so7550717ybl.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 11:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CL4992lymGYDd53brL7LcKLPfNPxKt4lPQgN3t7uq60=;
 b=gBL2L934nqSts/Ugc1fEAdeb30OyXEG5Pk3heU4+npEBvR9MG/VWTB3ZSKcD2i5d6y
 0dH4G3YsFyeZ+p2PUjX1zThy8FKiK9Im7aH082M6cdNh5awzQnUCZx10+KcsmUT/yyj/
 4lylgZdiR5oX57TmJhtAcBLnS2DLbJnJb3AyWCO3vwMCtazn5c86Y/FHSYPRRw91dUre
 y0/f1nmsDSGPjlWRmHqE7uEpYYnNQedYf7SzRBw5oY0w3tHLOTO2h6ouSqXfXKuQBxk6
 JkBgV+uDsAMvTwZ0WL+zOXBI6EF+ul7C+r8rMoU6nseekuZn2H4SbALQ/cYxz0Wpb5e7
 6GJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=CL4992lymGYDd53brL7LcKLPfNPxKt4lPQgN3t7uq60=;
 b=sqoI29GtXAj5s1t2rEQUzdkQsrYWJaeklu7xjKJoxKfrMGXKUP94LAVi02c1TGl4zD
 XrKNpOYDvPwSZCTAqi9m4mBPMoy5aKsAAeKYHaHy109cRC3OY5O16G7ZGi0+FusnvTJw
 1YASH+mlTiyzdb620qf/gdeOlqhmmciJk0ovmE4iTHQSvX9CEjjXHhT1C/hPUpBv7nwX
 NeE0O9tmGCKFbP3hk66/STgOFv8wUbDcn3/F2aGee/m+3v/jJazPcMWaY+soSz7Y3sze
 D0PlHPe/GZKdygb9P/HQeeXyN/ZguQ+koschIqAWrG05bi8TQU69ZVoHQgCsH5c1bMAm
 dG5Q==
X-Gm-Message-State: AGi0PuZQd4RzXSnQt4nh1iy75kATZZtVj6R9dbCE3SAs/mWk50fAgcGJ
 AQ0aSgBRm+cAebOwuzhy2yN/jE8k+EY3Ntkx+9JUHA==
X-Google-Smtp-Source: APiQypL/MH+/pLij9Eb9Ay576AaNFHJXbryOMS7FV6o4VhGYQ6aWYyeZYhUh6oBaPhIAVW3TgweoJ6JqnYwpxBxnD+A=
X-Received: by 2002:a25:d7c3:: with SMTP id
 o186mr31849570ybg.371.1586112721610; 
 Sun, 05 Apr 2020 11:52:01 -0700 (PDT)
MIME-Version: 1.0
References: <4627303.31r3eYUQgx@tool>
 <3c6eb003-c398-4b5b-dbe1-ebc891bf4869@o2.pl>
 <CABwr4_tooaz56ZNhGLGrQ87OY4k0DCMZgCfrL=WOoHweO=gGaA@mail.gmail.com>
 <53061148-17ce-2c1b-3926-a86ec7c49905@o2.pl>
 <CABwr4_su0ZDGFBvZxQxFbKLjrxCZicpkmU67yXHy4DcDVXFaig@mail.gmail.com>
In-Reply-To: <CABwr4_su0ZDGFBvZxQxFbKLjrxCZicpkmU67yXHy4DcDVXFaig@mail.gmail.com>
From: =?UTF-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
Date: Sun, 5 Apr 2020 20:51:50 +0200
Message-ID: <CABwr4_v+NH+qzvcKAHG2EFfLb9ZuZCs1z-fcfOPj2+zDYpXDmg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_115203_724586_9AB9B8F6 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Fwd: [PATCH v2] mvebu: add support for Buffalo
 LinkStation LS421DE
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgVG9tYXN6CgpFbCBkb20uLCA1IGFici4gMjAyMCBhIGxhcyAyMDowNiwgVG9tYXN6IE1hY2ll
aiBOb3dhawooPHRvbWVrX25AbzIucGw+KSBlc2NyaWJpw7M6Cj4KPiBXIGRuaXUgMDMuMDQuMjAy
MCBvIDE5OjIyLCBEYW5pZWwgR29uesOhbGV6IENhYmFuZWxhcyBwaXN6ZToKPiA+IFRoYW5rcyBm
b3IgYmVpbmcgcHJlY2lzZS4gSSBhbHJlYWR5IHR1bmVkIGFnYWluIHRoZSBkdHMgZmlsZSB3aXRo
IHlvdXIKPiA+IGluc3RydWN0aW9ucy4gSSdsbCBkZWxldGUgdGhlIG5scyBtb2R1bGVzLCBhbmQg
aW5jbHVkZSBrbW9kLW1kLW1vZCwKPiA+IGttb2QtbWQtcmFpZDAgYW5kIGttb2QtbWQtcmFpZDEg
d2hpY2ggYXJlIHVzZWQgYnkgdGhlIHN0b2NrIGZpcm13YXJlCj4gPiBmb3IgbWFuYWdpbmcgdGhl
IFNBVEEgZHJpdmVzLgo+ID4KPiA+IEkgYWxzbyBub3RpY2VkIHRoYXQgdGhpcyBib2FyZCBjb21l
cyB3aXRoIHRoZSBHUElPNCAgZW5hYmxlZCBmb3IKPiA+IHN1cG9vcnRpbmcgdGhlIENQVSBwb3dl
ciBkb3duLiBGb3IgZW5hYmxpbmcgdGhpcyBwaW5tdXggcmlnaHQgbm93IEknbQo+ID4gdXNpbmcg
dGhpcyBkdHMgY29kZToKPiA+Cj4gPiAuLi4uLi4uLi4uLi4uLi4uLi4uLgo+ID4gJnBtc3Ugewo+
ID4gICAgICBwaW5jdHJsLTAgPSA8JnBteF9wb3dlcl9jcHU+Owo+ID4gICAgICBwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+ID4gfTsKPiA+Cj4gPiAmcGluY3RybCB7Cj4gPiAgICAgcG14X3Bv
d2VyX2NwdTogcG14LXBvd2VyLWNwdSB7Cj4gPiAgICAgbWFydmVsbCxwaW5zID0gIm1wcDQiOwo+
ID4gICAgbWFydmVsbCxmdW5jdGlvbiA9ICJjcHVfcGQiOwo+Cj4gU2hvdWRsbid0IGl0IGJlICJj
cHUtcGQiPwoKSSBjb21taXRlZCBhIG1pc3Rha2UsIGJ1dCBpbiBmYWN0IGl0IHNob3VsZCBiZSB2
ZGQgOgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NC4xOS4xMTQvc291cmNlL2Ry
aXZlcnMvcGluY3RybC9tdmVidS9waW5jdHJsLWFybWFkYS0zNzAuYyNMNDIKCj4KPiA+IH07Cj4g
PiAuLi4uLi4uLi4uLi4uLi4uCj4gPgo+ID4gSXMgdGhpcyB0aGUgcmlnaCB3YXkgdG8gZG8gaXQ/
Lgo+Cj4gTG9va3MgT0ssIHRoZXJlJ3Mgbm90aGluZyB3cm9uZyB3aXRoIGRlZmluaW5nIHJlbGV2
YW50IGJpdHMgaW4gZHRzLAo+IGlmIHRoZXkgYXJlIGNvcnJlY3QuCj4KPiA+IEJUVywgdGhlIGJv
YXJkIHdvcmtzIG9rIHdpdGhvdXQgaXQgZW5hYmxlZCBieSBPcGVud3J0LAo+Cj4gTWF5YmUgdGhl
IGRyaXZlciBhbHJlYWR5IHVzZXMgaXQgc2luY2Ugb25seSBvbmUgcGluIGlzIGRlZmluZWQgYXMK
PiAiY3B1LXBkIj8KCkkgZG9uJ3Qgc2VlIGFueSByZWZlcmVuY2UgdG8gdGhpcyBwaW4gaW4gdGhp
cyBkcml2ZXIuIEkgYXNzdW1lZCB0aGlzCmZlYXR1cmUgaXMgaGFyZHdhcmUgY29udHJvbGxlZC4K
CkFub3RoZXIgaXNzdWUsIEkgY2FuJ3QgZGVzZWxlY3QgdGhlIGttb2QtdXNiMyBmcm9tIHRoZSBp
bWFnZSBjcmVhdGlvbgp3aXRob3V0IGxvb3NpbmcgdGhlIGZyb250IHBvcnQsIGJlY2F1c2UgaXQn
cyBub3QgcGFydCBvZiBTb0MgYnV0IGFuIElDCmNvbm5lY3RlZCB0byBhIFBDSSBidXMuIEFuZCB0
aGUga2VybmVsIGRvZXMgbm90IHNlbGVjdCBDT05GSUdfVVNCX1BDSQpieSBkZWZhdWx0LgpUaHVz
IEknbGwgaW5jbHVkZSB0aGlzIG1vZHVsZSBpbiB0aGUgaW1hZ2UgY3JlYXRpb24uCgpSZWdhcmRz
LgpEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
