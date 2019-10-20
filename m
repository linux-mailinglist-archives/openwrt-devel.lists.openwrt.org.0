Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74FBDDE4E
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 13:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIXSQvt9zljAK3loZa0LagYSRbpgWWf/rApY7emOjK0=; b=qFDZsi5E9cr34P
	sKkepZ/e3Ln+N9YC/E1Etk2kpoK63QYfOwhKXX+44IlvhaP3yIAkF4gzODFCg+TYf63QN1lop9Ie6
	DPes/GlXjNmGtt53NnMIstIRzwwq4TdywLBPPigWP7rrNsBFZGbUjqnckZhskcitLUoXoo21nV7G3
	Ka8+aSroc23+HL4idey9Wxs1f+zZFTWLXPy+POm22GvBN7+J2t733WZWevJzFxn+7mlxlprsj25G9
	WBQUuv+5tb2OpYUdgpDQYatQ11DeyudT8eSZ4wxMk+eET+fv2TSHzjgFUNCfqsIIRCd+Oi1Ez9sxT
	RMNKUuV5e+loueX/VzyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM9Tb-0007NC-4D; Sun, 20 Oct 2019 11:34:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM9TP-0007Mq-A4
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 11:34:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id f5so10395620ljg.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 04:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PKLkBkJ5jMBI1A4BL8IRp7R81EfKVa01fjFzpo3whHQ=;
 b=WAm9WkHXEyz+WZkyD4XogascG0hRjAd/aHzdJW881uOmsuUDUAu7f8kF/YC4CeYZV+
 S/LnZdewPvaFOsi1CE2LfpzHvzZZUE44N6y1gCqSTusbr6ydnmX7/Q4+HKlMRgthAI0K
 f3dZZBHnU756/3JcSnrwi3zAnlI16gK5LNlnUc0RktjYG4t70nErx+YSOuzbppq9PMq9
 U1K0fdrU+Lm6ET6XTxPPfShXOhX3SvsTsnQFEkgA55sY3RWc8VquVg254d4ZveZiBQd1
 SJrlaYj4YVjnoYZVEOdCUx70s9UC1vv9oRsnlgkIQOzBoqPSJL07+hqnZPboMPAkBtqs
 Hx1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PKLkBkJ5jMBI1A4BL8IRp7R81EfKVa01fjFzpo3whHQ=;
 b=UW1A0RSiJT/aYVPZXYrVkUFMO8zJun32HVxK12WBHggmQbpHLiZWLK5j9mvl7a3jND
 JSNAyVuF+bLeRvT0ZHCU8GFm+Z7fUbjDhr988VREs8PIU3rgc9fo4xdD+Dwnw2s0Uj01
 07GQFT//EGQYJp70TZ5jPWxJiArNMeBGgBUQn0sOvmUYNEKWjviSgdNXI3G0MHrftI0k
 S45NC9ZqiTEtE8VaKfcSlJbkNPz+nPez89Gq+NnXQNefqtc7GEk3udlwHIzuUQseeL39
 prcbU/qhpO4y+Sewpoe4DOBUrDdwHPLhAQWbkUoqgiou98pCgHtsrNQ55Pa1p55nGoWU
 3G8w==
X-Gm-Message-State: APjAAAU5V2xuXLxkubYAJGMHcS9VLc9EHrBaIV81NOpp+cgSVKH4Hdg1
 iMb8B8bWWjHZIh2ousijRPlbseWLH7IhcsVG3Te6XEJdrFw=
X-Google-Smtp-Source: APXvYqxGC6qSAgGOke5fMdzTjnkg5mYWFUaB/7bcaOpMW650B7yHT+1bZD6wHanccs8g+dU2gbO2+Japx7j2UtmrvFs=
X-Received: by 2002:a05:651c:1ad:: with SMTP id
 c13mr11562515ljn.131.1571571247773; 
 Sun, 20 Oct 2019 04:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
 <CAECwjAivYh3Rs_N6hzfzyXyZ7w_MT0oOnSLN6ZHJ2D+Zw5aSkw@mail.gmail.com>
 <20191019050149.GB52694@meh.true.cz>
In-Reply-To: <20191019050149.GB52694@meh.true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Sun, 20 Oct 2019 19:33:56 +0800
Message-ID: <CAECwjAgROm-npRx8eATu8U29y0HutWQoENupnNffqDEfK7cxQg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_043411_374290_EA222C34 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] rpcd memory leaks [Was: Re: OpenWrt 19.07
 release schedule ?]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0LCAxOSBPY3QgMjAxOSBhdCAxMzowMiwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBZb3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNvbT4gWzIwMTkt
MTAtMTkgMTI6MTE6MDhdOgo+Cj4gSGksCj4KPiA+ID4gKiBycGNkIGxlYWtzIG1lbW9yeQo+ID4K
PiA+IEkgd2lsbCBnaXZlIHRoaXMgYSB0cnkgYW5kIHNlZSBob3cgbWFueSBsZWFrcyBJIGNhbiB1
bmNvdmVyIGluIHRoZSB3ZWVrZW5kLgo+Cj4gZ3JlYXQhIEJUVyB0aGF0IHJlbGVhc2UgYmxvY2tp
bmcgb25lIG1pZ2h0IGJlIGFscmVhZHkgZml4ZWQsIGp1c3QgZ3Vlc3NpbmcgZnJvbSB0aGlzIElS
QyBkaXNjdXNzaW9uOgo+Cj4gIDwgam93PiBIYXVrZTogdGhlIGxlYWsgaW4gcnBjZCBjYW4gYmUg
ZWFzaWx5IHByb3Zva2VkIGJ5IHJ1bm5pbmcgc29tZXRoaW5nIGxpa2UgICB3aGlsZSB0cnVlOyBk
byB1YnVzIGNhbGwgaXdpbmZvIGluZm8gJ3sgImRldmljZSI6ICJyYWRpbzAiIH0nOyBkb25lCj4g
IDwgam93PiBIYXVrZTogaXQgaGFzIGJlZW4gKGluYWR2ZXJ0ZW50bHkpIGZpeGVkIGJ5IGh0dHBz
Oi8vZ2l0Lm9wZW53cnQub3JnLz9wPXByb2plY3QvaXdpbmZvLmdpdDthPWNvbW1pdGRpZmY7aD1h
MjliN2Q0ZTI2YThkOTdlNDhjMmE4OTlkZGEzNjY1ZDM4NWI5NWRiCj4gIDwgam93PiBIYXVrZTog
ZGlkbid0IHlldCBjaGVjayBpZiAxOC4wNiBpcyBhZmZlY3RlZAo+CgpJIG9ubHkgdGVzdGVkIG1h
c3RlciBicmFuY2ggYW5kIGNvdWxkIG5vdCByZXByb2R1Y2UgdGhlIGlzc3VlIHRoZXJlLgpMaWtl
bHkgaXQncyBhbHJlYWR5IGZpeGVkLgoKPiBOb25ldGhlbGVzcyBzY2FuLWJ1aWxkIGZyb20gY2xh
bmcgdmVyc2lvbiA5IHJlcG9ydHMgc29tZSBpc3N1ZXNbMV0sIGFzIHRoZXJlCj4gYXJlIG5vIHZh
bGdyaW5kIENJIHRlc3RzIHlldCwgSSdtIHVuc3VyZSBpZiB0aG9zZSBhcmUgZmFsc2UgcG9zaXRp
dmVzLgo+Cj4gMS4gaHR0cHM6Ly95bmV6ei5naXRsYWIuaW8vLS9vcGVud3J0LXJwY2QvLS9qb2Jz
LzMyMzQyMDIzMC9hcnRpZmFjdHMvYnVpbGQvc2Nhbi8yMDE5LTEwLTE3LTA3NTc0MS0xNjMtMS9p
bmRleC5odG1sCj4KPiAtLSB5bmV6egoKVGhpcyBzY2FuLWJ1aWxkIGlzIGdyZWF0LiAgSSB3aWxs
IGxvb2sgaW50byBpdCBpbiBtb3JlIGRldGFpbHMgbGF0ZXIgOykKClJlZ2FyZHMsCiAgICAgICAg
ICAgICAgIHlvdXNvbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
