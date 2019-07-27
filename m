Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE50C77762
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Jul 2019 09:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EddBTKM6zXq+wHpR9+7DURkTQifzQT9yCHEJx6Jadb8=; b=PZIpAso5v/79M6
	fx9OCzTS3SK8aSTJxDY4kLa9c1IHxMyojgN0mFlLyH+crqSL/96ZphPsLRLvJhtiGGbc/aPhwhrLT
	bVQbWBye148wO5Gkz+yL5p21nyDI6f6twhV9yXng21cQXbCFzz5XOZP7LVKsh9pCaZGhWj8cd2pRd
	SdsuK8C2UGVxHzmWHEYPIKbZEvEGE4B/q8Q3G4QcJx7jeZkgEVewFtgfuK5oT1kcR2tj8ovCsf/hw
	906Rq3mPCU/cA1NGuRpC4HSjTeQFouIR06OKUwl8tKieoW7KM8WRrjrFgaeQzA+0ou7Mgc8+oYjYP
	gqwIbb02LtlXPSIctWXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrGke-0006uz-1h; Sat, 27 Jul 2019 07:04:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrGkN-0006ua-Ln
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 07:04:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id c9so38555896lfh.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Jul 2019 00:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Bs/TNXu79CHRfUo4ej+O2N2Xjx4UNWvjONDWxY/s8T4=;
 b=ulEbajOHK+Vx7BwKSZGwxlBYWPdN1OVLT8OwjjcwpMxjtQi82dqsMlKtPIk/NpId2a
 Q+BjXNHcJftV+X59hqmEgnjx4QlDMV6JbXfaMEos7IdZyuhMxyL7bit0HtJo38hSF/wD
 fFTWPyFNY3HsyIGQ6H5CDmsIYSqLiEBDjQI7uhSBbOMiBIrPmcq+oCIKr8q2bJ6pOOwX
 d6qB2sNsWZQ1buuIewNc7bc/BFajqvLKU9CRmLWPp8sNHbXEFp1dnhXzdetCppktXXk1
 dEMTIz2b0BEt3W5eLPUyMCotTiiaM4/Xv8TWQdYO1P1W+XComT3h/ZJTHggIPwHn1Jz3
 YMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Bs/TNXu79CHRfUo4ej+O2N2Xjx4UNWvjONDWxY/s8T4=;
 b=IsxIu7pPja+KGzfbE3q7mKvvHB+gA5ffKQHLiiHvPM8ppwdwh44W3SSLTHNvXMlaQ0
 wLCDyjV9VC6nYS3uYCQttkT3j+YeGgEor4CwQ02sfOdxbg4TmGbvJM/hplIDFqFJac/X
 8k9ilSc0uMmLSqQQGNrblUC4Fotn2pcmDHS7LzUOaoXin4CBVL3mvD3FpDLzHvzeJkEq
 0Ns2ktQX+QvbK4yRETrjWlJCYdyR97UKTLQXrXg+Wth0m2QDcQB5LLtBBNEln4H6oSKe
 c10nDnJ2xXRrKtUXOj/xl83LIblmM0rqHtuQnvVRZcWA64XkxKY4BOPJormdg3Nj8wQf
 hDrA==
X-Gm-Message-State: APjAAAXBaXY0dm3uGaMxRDBru07cBm9zHa/maLHmE4bcB0FJfrnCstbg
 CDM/CMPHmSJ/EOzTubCnXnkRIX6Ylpq9f2GSbwA=
X-Google-Smtp-Source: APXvYqyIm+PdHnTYdRDc59HDCd7veyDk8B+85nr/yUyfmWV4QCnxKxZSeN3mRZDN2uv6xp5kAwrsakwt2lS8GN9c1Ys=
X-Received: by 2002:ac2:528e:: with SMTP id q14mr2021341lfm.17.1564211040614; 
 Sat, 27 Jul 2019 00:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190727060221.17084-1-ynezz@true.cz>
In-Reply-To: <20190727060221.17084-1-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Sat, 27 Jul 2019 15:03:48 +0800
Message-ID: <CAECwjAiv1OOwq5dMx6CyoS_evj5jd6rO8AD-J03guuiuFxa08g@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_000403_974248_85EA9BF3 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] scripts/ubinize-image.sh: fix buildbot
 breakage
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

T24gU2F0LCAyNyBKdWwgMjAxOSBhdCAxNDowMiwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBOZXcgRG9ja2VyIGJhc2VkIGJ1aWxkc2xhdmVzIGluc3RhbGwganVzdCBi
YXJlIG1pbmltdW0gb2YgcGFja2FnZXMsIHRodXMKPiBub3QgaGF2aW5nIGJzZG1haW51dGlscyBw
YWNrYWdlIGluc3RhbGxlZCB3aGljaCBwcm92aWRlcyBgaGV4ZHVtcGAKPiB1dGlsaXR5LCBsZWFk
aW5nIHRvIHRoZSBmb2xsb3dpbmcgYnVpbGQgYnJlYWthZ2Ugb24gYnVpbGRib3RzOgo+Cj4gIHVi
aW5pemUtaW1hZ2Uuc2g6IDEyOiAvYnVpbGRlci9zY3JpcHRzL3ViaW5pemUtaW1hZ2Uuc2g6IGhl
eGR1bXA6IG5vdCBmb3VuZAo+Cj4gU28gdGhpcyBwYXRjaCBzaW1wbHkgcmVwbGFjZXMgYGhleGR1
bXBgIHdpdGggYG9kYCB1dGlsaXR5IHByb3ZpZGVkIGJ5Cj4gY29yZXV0aWxzIHBhY2thZ2UsIHdo
aWNoIHNob3VsZCBiZSBsaWtlbHkgYXZhaWxhYmxlLgo+Cj4gU2lnbmVkLW9mZi1ieTogUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAtLS0KPiAgc2NyaXB0cy91YmluaXplLWltYWdlLnNo
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9zY3JpcHRzL3ViaW5pemUtaW1hZ2Uuc2ggYi9zY3JpcHRzL3ViaW5p
emUtaW1hZ2Uuc2gKPiBpbmRleCAwOWEwMGIxODk4Y2UuLjc5OTM1YmFkMWRiMiAxMDA3NTUKPiAt
LS0gYS9zY3JpcHRzL3ViaW5pemUtaW1hZ2Uuc2gKPiArKysgYi9zY3JpcHRzL3ViaW5pemUtaW1h
Z2Uuc2gKPiBAQCAtOSw3ICs5LDcgQEAgb3V0ZmlsZT0iIgo+ICBlcnI9IiIKPgo+ICBnZXRfbWFn
aWNfd29yZCgpIHsKPiAtICAgICAgIGRkIGlmPSQxIGJzPTIgY291bnQ9MSAyPi9kZXYvbnVsbCB8
IGhleGR1bXAgLXYgLW4gMiAtZSAnMS8xICIlMDJ4IicKPiArICAgICAgIGRkIGlmPSQxIGJzPTIg
Y291bnQ9MSAyPi9kZXYvbnVsbCB8IG9kIC14IHwgaGVhZCAtMSB8IGN1dCAtZCAnICcgLWYyCj4g
IH0KClRoZSBjaGFuZ2Ugd2lsbCBoYXZlIGVuZGlhbiBpc3N1ZS4KCkkgZXhwZXJpbWVudGVkIGl0
IGEgYml0LCB0aGUgZm9sbG93aW5nIHNob3VsZCB3b3JrCgogIG9kIC1BIG4gLU4gMiAtdCB4MSBh
IHwgdHIgLWQgJyAnCgpPbiB0YXJnZXQgc3lzdGVtIGJ5IGRlZmF1bHQgd2UgaGF2ZSBoZXhkdW1w
IGJ1dCBubyBvZC4gIE1heWJlIHdlCnNob3VsZCByZXZpc2UgdGhlIGRvY2tlciBpbWFnZSB0byBh
bHNvIGluY2x1ZGUgaGV4ZHVtcC4KClJlZ2FyZHMsCiAgICAgICAgICAgICAgICB5b3Vzb25nCgo+
Cj4gIGlzX3ViaWZzKCkgewo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
