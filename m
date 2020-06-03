Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD831ED34E
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 17:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTwtxbL/A4jUq45NuR0S1n8uZLfNTPrSg6MgK3br0qk=; b=rMlZ8v29nkOKPM
	UHCpm0V8z23SGHqWBUICJE14fLvoGjmkwSIDt1SBRnNoARzzXDQ3g6IVP6leAVhdySXxjrn2R8dVe
	j7bgncFYLHHhDFSZRoRFi5sEV4cFJPB03piR8jPjshcnVEakY/nYNHvVRNHu/lMPurwl/FJ5T7Pbh
	uu8qskbvotPJ7OBkzharmrnmASVH53TaHybbxSsKtVwYZBrKLx66gTDzJv6465oPXICcvUROOIUKn
	xrYBj5+EwnlaoRRzOOZBFNYkv5z0FgX5WR5bTKK/AllkzRF3KnUOoXUlZdMxW35P9E3sF1Xb57UC5
	NyObBxszp6BzubXSQ1OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVHi-0003tX-3q; Wed, 03 Jun 2020 15:26:30 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVHL-0003k3-40
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 15:26:08 +0000
Received: by mail-ot1-x343.google.com with SMTP id g7so1084130oti.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 08:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=O9CUmaf1Asp/NYwCkHzPUT+0cEAPVWWawsBkpYnDiGY=;
 b=VmPXdzIZ8lGKRC2BiGpo6XXFxTdzan6aF4h+k5/1BcgH8UM/CCyzliOYcuD+7fRYur
 MKQfZqlk3tSCNkmNXovQkvSIF6ZXODWOXHFu3iOx5EBmZIQm/XDgqAAOykjI3IdLRC+9
 7cxNE8H2vRHMtysSVCuy14uUmdgG4fwcgMg5400e7bATggT9QrkojDVqVSJxsRVQ5mVZ
 YvwFLX8m/UGuhivOSFbmYr9IiEpqghel9ntTOTn5mhtmJfwZCvCVtg8OOblIc80e7nj0
 w0n1i2egsuPLCUBpv3UFC2wxEv6zfzEvfC1pYGd6pbfy1YMq6iqn1GT/9WOZkyy0Ej4r
 FGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=O9CUmaf1Asp/NYwCkHzPUT+0cEAPVWWawsBkpYnDiGY=;
 b=P8CvzpIicGaSDHJUnb+vSntA8DDWKgqgVVpFEypniZtF3AqtiFECeTsRreLsju0tgJ
 OX3kFwUyL+jq2Gv/FUntlhgM1D+HPWhktaC/s+m6PuudV1WqwS2EivlK2nrHEZavvExT
 vi0feMGgX9wWkMN0jPQDr4iOKVmHYC9SMyX1DOPJat000m6rkkb1QVRvD5fLPoSbMC1L
 Blm0e6xQ8/9ITMgiM3oskCX+G+GcMdWnMWPjGA9CJ+nOUtxCq9YefM7SGd0Mnl80qVgB
 xNKR8Q6+HoQ5Z2+wHUCk4QNVApnYoIqxOVJso/q+jHsdLs+eoWXsr8zs74Cp4bK5Orms
 CNsA==
X-Gm-Message-State: AOAM532y7sSEgXRVxU0iTSxScMc4m6t65M2U4Jfwr0iiimaT6CUZYk5S
 MbqE452sBcttqLJq4/5zmvtsERHAdmSD42yB5c6aT07MCTE=
X-Google-Smtp-Source: ABdhPJwM/0p7MDvtzU9DC2LrhIq/EUIWs3Z1rgusfDIrnAi3YhMUCv/7nUbuUrsNDInIX5JyIJ8LlewR5xpDSMR2g8k=
X-Received: by 2002:a9d:186:: with SMTP id e6mr371609ote.33.1591197966002;
 Wed, 03 Jun 2020 08:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <1590674204-26618-1-git-send-email-tharvey@gateworks.com>
 <20200603122419.GA13801@meh.true.cz>
In-Reply-To: <20200603122419.GA13801@meh.true.cz>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 3 Jun 2020 08:25:54 -0700
Message-ID: <CAJ+vNU1jgdyRxS_a-=isLz76Q4F2Kf4_0-HsEg+eBMi+cHXgjw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_082607_206616_EED7BFB9 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add I2C retries for ventana i2c1
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBKdW4gMywgMjAyMCBhdCA1OjI0IEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+Cj4gVGltIEhhcnZleSA8dGhhcnZleUBnYXRld29ya3MuY29tPiBbMjAyMC0w
NS0yOCAwNjo1Njo0NF06Cj4KPiBIaSwKPgo+ID4gVGhlIEdTQyBzaXR0aW5nIG9uIGkyYzEgY2Fu
IE5BSyBJMkMgdHJhbnNhY3Rpb25zIGlmIGl0IGlzIGJ1c3kKPiA+IHBlcmZvcm1pbmcgYW4gQURD
IGN5Y2xlLiBBbGxvdyBlbm91Z2ggcmV0cmllcyB0byB3b3JrIGFyb3VuZCB0aGlzLgo+Cj4gdGhp
cyBsb29rcyBsaWtlIHlvdSBlaXRoZXIgbmVlZCB0byBrZWVwIGluIHlvdXIgb3duIHZlbmRvciB0
cmVlIG9yIHRyeSB0byBmaXgKPiBwcm9wZXJseSB1cHN0cmVhbSwgdGhhbmtzLiBTbyBJJ20gbm90
IGdvaW5nIHRvIGFjY2VwdCB0aGlzIGFzIHRoaXMgd291bGQKPiBiZWNvbWUganVzdCBhbm90aGVy
IG1haW50ZW5hbmNlIGJ1cmRlbiBkdXJpbmcga2VybmVsIHZlcnNpb24gYnVtcHMgZXRjLgo+CgpX
aGF0IGRvIHlvdSBtZWFuIGJ5IGtlZXAgaXQgaW4gbXkgb3duIHZlbmRvciB0cmVlPyBJcyB0aGVy
ZSBzb21ldGhpbmcKaW4gT3BlbldydCB5b3UgYXJlIHRhbGtpbmcgYWJvdXQgb3IgYXJlIHlvdSBz
aW1wbHkgc2F5aW5nIGl0J3Mgbm90CnVwc3RyZWFtIGFuZCB0aGVyZWZvcmUgbm90IGFjY2VwdGVk
PwoKVG8gYmUgY29tcGxldGVseSBmYWlyIGhvdyBkb2VzIHRoaXMgZGlmZmVyIGZyb20gdGhlIDM4
IHBhdGNoZXMgaW4KdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFjay01LjQ/CgpUaGFua3MsCgpUaW0K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
