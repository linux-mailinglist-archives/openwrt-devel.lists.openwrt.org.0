Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F9E309CA
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 10:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SP8fEFr9sanF1Xk40axliNbLxmyXW3cHWyKoo8re4ew=; b=jHbXfNXIvuwjjL
	c5Dnzfwc0Ili5+j+yTxoA6DEt71yjs6FXb3SW6vQrwQUQsbphFQnB3zW0TSVTSCkmgtgNxTgkSgKQ
	cVkQAVWCcYldLwzwkOSrIKx+JxJhiduXEV2HG+/rkinr6m34OQEyA2axIHxR2vowBvRxghYdrrJ3c
	1rbd3xfhcNrHmyEfymUV3Jo/ueXBg6oaCm/upzR5PPLoV/8u97Q/ZGEovpxyg/ttCmZav1iWAwDRU
	tEWnLXyBGU6yWvWofHPetma+7LXMinWff2GU3ePRlagmcNk/BmbOPtb3BSBar08IYtSqv7+D9I9Bb
	3txCm/5jvXKc+lonkqGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcV9-0006ul-U8; Fri, 31 May 2019 08:02:59 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcV3-0006uD-2I
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 08:02:54 +0000
Received: by mail-it1-x141.google.com with SMTP id t184so14290984itf.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 May 2019 01:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tCF04VYN47qW/xlyaVHqlpYRqWtVrv8XKXY6jy/X3tE=;
 b=pACihqjZgCIqVJ4SANV9xfC2/1fhU2OtmkmbecuasJXDa6U5OQdKNu6+e49jJUzjHV
 3VALjebuUBGdp24DxDbzTnt1+/5jyWzvwm64DgZlklCdptuHTOyYyionNGWmtYCqHzvb
 Y4p0ZbjNiJ2D28wfSTDJNzoEpHSRPORbrp6NVVzKZWFW2DcXUTAvVR7uBqPv/xd44W5g
 hX1v+RyEGfPtsvD/Q9rZeg+4YVDdOlsfLQERoEx7esTl5iQarUCYv8dj3afnSgczTfjk
 mqElbe/myl0RQCdW8Ac/vSev/vw4IJ3ct0OsQ6+zVhWBPThoZk1jVUVuGX8mw+YqP58m
 iDzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tCF04VYN47qW/xlyaVHqlpYRqWtVrv8XKXY6jy/X3tE=;
 b=Z5u2+BKNUXJ8j/KxB5DwUXDRaEkUuEQZ1H+K9Yl/W5tLacr2cnr/wKJ6j1K/6Hyxkh
 SgMsAYX3dclPfSw5mvIaldNBDQm92DGhd1mukqGwuMrxDvE5DDhquzQgHKFSpmPFk3tn
 98Hgyfr1l4S9F+rEnh4DP3I6vfNFiO177ONEEi0vv0ubyn5iMoka4FOCmkYc2XQC++M3
 Ogb++38hLoxuAHBlSAQLA2TyddPDpZty1W/6mCaQW7qi2q1Y9Wy+X7HrWeD85KGjjH39
 bhGFL2/LP8JWtPQ7MctG6ijvqKclqS6hhZZSZQZEmiamNmCwuXr6WaSgFYFU8wvbOqh4
 3P7Q==
X-Gm-Message-State: APjAAAX7NGx7GXJRweCTUa6ZTvrZ+5yngN8SuO9yVmaVwIcTxj3RIuZO
 R4V15hcb7iXd1VoZaU0qvuFX0fI0qpXhJhRtsJ2mug==
X-Google-Smtp-Source: APXvYqx9E0hfVndL+UEGtM3fQujZPRE9BTWkgaeHJD9qguvAkTRkHYKryYXY2cxqmwaQqOhJ/hTVw2yVP+103+WxwVQ=
X-Received: by 2002:a05:6638:1a2:: with SMTP id
 b2mr5511649jaq.113.1559289771036; 
 Fri, 31 May 2019 01:02:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190520180732.8846-1-kristian.evensen@gmail.com>
 <20190531075708.GG13432@meh.true.cz>
In-Reply-To: <20190531075708.GG13432@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Fri, 31 May 2019 10:02:40 +0200
Message-ID: <CAKfDRXj3X=fe2neJV0on7pKg-pRE_6OgV2BvwbUJNzVbKNemLg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_010253_134611_05E0AD49 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add support for ZBT-WD323
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKClRoYW5rcyBmb3IgeW91ciBjb21tZW50cy4KCk9uIEZyaSwgTWF5IDMxLCAyMDE5
IGF0IDk6NTcgQU0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gPiAremJ0
bGluayx6YnQtd2QzMjMpCj4gPiArICAgICB1Y2lkZWZfc2V0X2xlZF93bGFuICJ3bGFuIiAiV0xB
TiIgIiRib2FyZG5hbWU6Z3JlZW46d2lmaSIgInBoeTB0cHQiCj4gPiArICAgICA7Owo+ID4gIGVz
YWMKPgo+IFBsZWFzZSBhZGQgdGhpcyB0cmlnZ2VyIHRvIHRoZSBEVFMuCgpXaWxsIGRvLgoKPiA+
ICsjaW5jbHVkZSAiYXI5MzQ0LmR0c2kiCj4gPiArICAgICBjb21wYXRpYmxlID0gInpidGxpbmss
emJ0LXdkMzIzIiwgInFjYSxhcjkzMzQiOwo+Cj4gSXMgaXQgcmVhbGx5IGFyOTMzNCA/CgpUaGFu
a3MgZm9yIHNwb3R0aW5nIG15IHR5cG8sIHRvbyBtYW55IDNzIGFuZCA0cyA6KQoKPiA+ICsgICAg
IGFsaWFzZXMgewo+ID4gKyAgICAgICAgICAgICBzZXJpYWwwID0gJnVhcnQ7Cj4gPiArICAgICB9
Owo+Cj4gV2h5IGRvIHlvdSBuZWVkIHRoaXMgYWxpYXM/IERvZXMgaXQgd29yayB3aXRob3V0IGl0
PyBhcjkzNDQgaGFzIG5zMTY1NTBhIFVBUlQKPiB3aGljaCBkb2Vzbid0IG5lZWQgdGhpcyBhbGlh
cy4KClByb2JhYmx5IG5vdCBhbmQgdGhpcyB3YXMganVzdCBhIGMmcCBmcm9tIHRoZSBkdHMgSSBz
dGFydGVkIHdpdGguIEkKd2lsbCB0cnkgd2l0aG91dC4KCj4gPiArICAgICBrZXlzIHsKPiA+ICsg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJncGlvLWtleXMtcG9sbGVkIjsKPgo+IERvZXMgaXQg
d29yayBmb3IgeW91IHdpdGggImdwaW8ta2V5cyIgY29tcGF0aWJsZT8gSXQncyBpbnRlcnJ1cHQg
ZHJpdmVuLCBzbwo+IHNob3VsZCBiZSBwcmVmZXJyZWQuCgpXaWxsIHRyeS4KCkJSLApLcmlzdGlh
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
