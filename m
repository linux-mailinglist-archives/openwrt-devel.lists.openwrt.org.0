Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 374A137EEB
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Jun 2019 22:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fU352yKu5mIW9q6ri82j8ZIbbY/5f3FAv7jli2hQYsI=; b=FE/6f/T9qp6eRu
	9ubKSBiPLXvHJ/t2HJZhSN7GrjQc2Q+dORQNeeoPVEcmH6zlblthQrGZvSWGgXbwxqlCkLrLafiSJ
	mO7otqoffCIUVmbndKvq76ruS33hPJyF0pBZm0CBOsKLivHTZzwO+CFbboHqsQPkcbHEFkUovh3gR
	UZeNCZfhleZOmMEo2np3n3mGFh7Oiy27FRUZk7iqJ+09y4DMm2nuBgyEDFikjKO4ZxX2jVoQUnBSR
	wR6YSjIafIkkgwXiS4D/1TVOdfEK+MdtI8ZmSkGVrg9dwP4JASNqs9oUmIFPgHwd6ry7xEN8QaoIs
	vl/pUuOpJrMEu+lwagfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzBn-0000Bb-3P; Thu, 06 Jun 2019 20:40:47 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzBg-0000BC-Va
 for openwrt-devel@lists.openwrt.org; Thu, 06 Jun 2019 20:40:42 +0000
Received: by mail-qk1-x744.google.com with SMTP id b18so2353405qkc.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Jun 2019 13:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bfWbNS/fnHssScPeWRhlJf1HZeTnu+PL3VZ1HQ1DIhU=;
 b=O0zX93m+X6mVwymOpbTKaOXpOuUb69XmUa/BS8Miz5jyoX2ius6M2huA9LpXtjUKvD
 PO1j3mqTSfR3JxSj5bv+Z/FpO7/nQRJ4ap82N36Ex6Y/18XxMTR2rZXJxUEW4L0+siHI
 7ZunT49hSAivfqvMf8TJB4fZCQ5g9TyI1qJb5FkMkfVgaBJos2m0vcFe2eUBNQJmPdLd
 e+Qlrp7/a6jYup5PJD+KRF8x8Za14CFvh4tiosZG2VXRi0GQ7fuvCiFN0o9pQV1zBdhf
 T758S35zieKT1+2XcJAujptrum/ItEApohlfRVldx0hXz4Hqq7RNpvCLWmtlXBPEoKN8
 8ZYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bfWbNS/fnHssScPeWRhlJf1HZeTnu+PL3VZ1HQ1DIhU=;
 b=oqCmJfxXXF6g73AYGR3GxUBIFJnlibB2yxqeHeBKyM9Ipd+Iv93k58REc/JUOJK4BE
 Q8gidJaLKvMPeL+feFr7NJonQbuyQQqpowR1GlGKjXxS/cJknk7g1Rmt6Y3NTcuJnGbM
 OE8xMj64MJt8MFfbIzkCYeMux0Ey93hVxzdyJK+Z4jKP2uLoevD7KmAPQ2/9nsHTK01k
 1VXT+cN3HhRsIrAc/vBWiSHhWU2r/03Rjw3oXMCHmlJFa042Pv3x7vI0Ms+ZWe67zXSF
 Zwmj8HPa9u+yFWN7wqlfeyFsI8Qja7XxBCBJ33Q6gcVgwlUcBV2FSCH5tPTm7gW78HdV
 4mug==
X-Gm-Message-State: APjAAAWAEiPVGBpV8pWEvEfBIj5cOWIXSZExHA9dLQp4sF9USUiVT5s6
 3CLDQprckJV35o3Tup5h19AjKOdbMaJ4q0V+zhs=
X-Google-Smtp-Source: APXvYqwJ3WqQzZd9bx6Yfh7MoIE5fjRtc3uGHL4oVG3+1JsoFEkHlF4yKHXean+aMSLZZrnkAtZ0vHu2tI0YBS/RTGQ=
X-Received: by 2002:a05:620a:5b1:: with SMTP id
 q17mr39634028qkq.174.1559853637775; 
 Thu, 06 Jun 2019 13:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190606135055.30432-1-avalentin@marcant.net>
 <20190606135055.30432-3-avalentin@marcant.net>
In-Reply-To: <20190606135055.30432-3-avalentin@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 6 Jun 2019 22:40:26 +0200
Message-ID: <CAJLcKsHWb=GoiL9zRQnGtcTdSA7EFOc4bEcSTgvpRhks6f_Myw@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Valentin?= <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_134041_067212_80CF41F7 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] netifd: add xfrm interface support
 scripts
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpDb21tZW50cyBpbmxpbmUKCkhhbnMKCk9uIFRodSwgSnVuIDYsIDIwMTkgYXQgMzo1MiBQ
TSBBbmRyw6kgVmFsZW50aW4gPGF2YWxlbnRpbkBtYXJjYW50Lm5ldD4gd3JvdGU6Cj4KPiBUaGlz
IHBhY2thZ2UgYWRkcyBzY3JpcHRzIGZvciB4ZnJtIGludGVyZmFjZXMgc3VwcG9ydC4KPiBFeGFt
cGxlIGNvbmZpZ3VyYXRpb24gdmlhIC9ldGMvY29uZmlnL25ldHdvcms6Cj4KPiBjb25maWcgaW50
ZXJmYWNlICd4ZnJtMCcKPiAgICAgICAgIG9wdGlvbiBwcm90byAneGZybScKPiAgICAgICAgIG9w
dGlvbiBtdHUgJzEzMDAnCj4gICAgICAgICBvcHRpb24gem9uZSAnVlBOJwo+ICAgICAgICAgb3B0
aW9uIHR1bmxpbmsgJ3dhbicKPiAgICAgICAgIG9wdGlvbiBpZmlkIDMwCj4KPiBjb25maWcgaW50
ZXJmYWNlICd4ZnJtMF9zdGF0aWMnCj4gICAgICAgICBvcHRpb24gcHJvdG8gJ3N0YXRpYycKPiAg
ICAgICAgIG9wdGlvbiBpZm5hbWUgJ0B4ZnJtMCcKPiAgICAgICAgIG9wdGlvbiBpcDZhZGRyICdm
ZTgwOjoxLzY0Jwo+ICAgICAgICAgb3B0aW9uIGlwYWRkciAnMTAuMC4wLjEvMzAnCj4KPgo+IC0t
LQo+ICBwYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vTWFrZWZpbGUgICAgICB8IDQ0ICsrKysr
KysrKysrKysrKysrKysrKysrKysKPiAgcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVz
L3hmcm0uc2ggfCA1NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgOTggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgcGFja2FnZS9u
ZXR3b3JrL2NvbmZpZy94ZnJtL01ha2VmaWxlCj4gIGNyZWF0ZSBtb2RlIDEwMDc1NSBwYWNrYWdl
L25ldHdvcmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5zaAo+Cj4gZGlmZiAtLWdpdCBhL3BhY2th
Z2UvbmV0d29yay9jb25maWcveGZybS9NYWtlZmlsZSBiL3BhY2thZ2UvbmV0d29yay9jb25maWcv
eGZybS9NYWtlZmlsZQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4u
OTQzYTRiYTMyNgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9wYWNrYWdlL25ldHdvcmsvY29uZmln
L3hmcm0vTWFrZWZpbGUKPiBAQCAtMCwwICsxLDQ0IEBACj4gKyMKPiArIyBDb3B5cmlnaHQgKEMp
IDIwMTQgT3BlbldydC5vcmcKPiArIwo+ICsjIFRoaXMgaXMgZnJlZSBzb2Z0d2FyZSwgbGljZW5z
ZWQgdW5kZXIgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIHYyLgo+ICsjIFNlZSAvTElD
RU5TRSBmb3IgbW9yZSBpbmZvcm1hdGlvbi4KPiArIwpQbGVhc2UgbGVhdmUgdGhlIENvcHlyaWdo
dCBoZWFkZXIgb3V0IGFzIEkgZG9uJ3QgdGhpbmsgeW91IGhhdmUgYW55CmNvbnRyYWN0dWFsIGFn
cmVlbWVudCB3aXRoIE9wZW5XcnQKPiArCj4gK2luY2x1ZGUgJChUT1BESVIpL3J1bGVzLm1rCj4g
Kwo+ICtQS0dfTkFNRTo9eGZybQo+ICtQS0dfVkVSU0lPTjo9MQo+ICtQS0dfUkVMRUFTRTo9MwpX
aHkgaXMgUEtHX1JFTEVBU0Ugc2V0IHRvIDMgPwo+ICtQS0dfTElDRU5TRTo9R1BMLTIuMAo+ICsK
PiAraW5jbHVkZSAkKElOQ0xVREVfRElSKS9wYWNrYWdlLm1rCj4gKwo+ICtkZWZpbmUgUGFja2Fn
ZS94ZnJtL0RlZmF1bHQKPiArICBTRUNUSU9OOj1uZXQKPiArICBDQVRFR09SWTo9TmV0d29yawo+
ICsgIE1BSU5UQUlORVI6PUFuZHJlIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+Cj4g
K2VuZGVmCj4gKwo+ICtkZWZpbmUgUGFja2FnZS94ZnJtCj4gKyQoY2FsbCBQYWNrYWdlL3hmcm0v
RGVmYXVsdCkKPiArICBUSVRMRTo9WEZSTSBJUHNlYyBUdW5uZWwgSW50ZXJmYWNlIGNvbmZpZyBz
dXBwb3J0Cj4gKyAgREVQRU5EUzo9K2ttb2QteGZybS1pbnRlcmZhY2UKPiArZW5kZWYKPiArCj4g
K2RlZmluZSBQYWNrYWdlL3hmcm0vZGVzY3JpcHRpb24KPiArIFhGUk0gSVBzZWMgVHVubmVsIElu
dGVyZmFjZSBjb25maWcgc3VwcG9ydCAoSVB2NCBhbmQgSVB2NikgaW4gL2V0Yy9jb25maWcvbmV0
d29yay4KPiArZW5kZWYKPiArCj4gK2RlZmluZSBCdWlsZC9Db21waWxlCj4gK2VuZGVmCj4gKwo+
ICtkZWZpbmUgQnVpbGQvQ29uZmlndXJlCj4gK2VuZGVmCj4gKwo+ICtkZWZpbmUgUGFja2FnZS94
ZnJtL2luc3RhbGwKPiArICAgICAgICQoSU5TVEFMTF9ESVIpICQoMSkvbGliL25ldGlmZC9wcm90
bwo+ICsgICAgICAgJChJTlNUQUxMX0JJTikgLi9maWxlcy94ZnJtLnNoICQoMSkvbGliL25ldGlm
ZC9wcm90by94ZnJtLnNoCj4gK2VuZGVmCj4gKwo+ICskKGV2YWwgJChjYWxsIEJ1aWxkUGFja2Fn
ZSx4ZnJtKSkKPiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVz
L3hmcm0uc2ggYi9wYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5zaAo+IG5l
dyBmaWxlIG1vZGUgMTAwNzU1Cj4gaW5kZXggMDAwMDAwMDAwMC4uYjkzZTA5MGU5MAo+IC0tLSAv
ZGV2L251bGwKPiArKysgYi9wYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5z
aAo+IEBAIC0wLDAgKzEsNTQgQEAKPiArIyEvYmluL3NoCj4gKwo+ICtbIC1uICIkSU5DTFVERV9P
TkxZIiBdIHx8IHsKPiArICAgICAgIC4gL2xpYi9mdW5jdGlvbnMuc2gKPiArICAgICAgIC4gL2xp
Yi9mdW5jdGlvbnMvbmV0d29yay5zaAo+ICsgICAgICAgLiAuLi9uZXRpZmQtcHJvdG8uc2gKPiAr
ICAgICAgIGluaXRfcHJvdG8gIiRAIgo+ICt9Cj4gKwo+ICtwcm90b194ZnJtX3NldHVwKCkgewo+
ICsgICAgICAgbG9jYWwgY2ZnPSIkMSIKPiArICAgICAgIGxvY2FsIG1vZGU9Inhmcm0iCj4gKwo+
ICsgICAgICAgbG9jYWwgZGYgdHVubGluayBpZmlkIG10dSB6b25lCj4gKyAgICAgICBqc29uX2dl
dF92YXJzIGRmIHR1bmxpbmsgaWZpZCBtdHUgem9uZQo+ICsKPiArICAgICAgIHByb3RvX2luaXRf
dXBkYXRlICIkY2ZnIiAxCj4gKwo+ICsgICAgICAgcHJvdG9fYWRkX3R1bm5lbAo+ICsgICAgICAg
anNvbl9hZGRfc3RyaW5nIG1vZGUgIiRtb2RlIgo+ICsgICAgICAganNvbl9hZGRfaW50IG10dSAi
JHttdHU6LTEyODB9Igo+ICsgICAgICAgWyAtbiAiJHR1bmxpbmsiIF0gJiYganNvbl9hZGRfc3Ry
aW5nIGxpbmsgIiR0dW5saW5rIgo+ICsKPiArICAgICAgIGpzb25fYWRkX29iamVjdCAnZGF0YScK
PiArICAgICAgIFsgLW4gIiRpZmlkIiBdICYmIGpzb25fYWRkX2ludCBpZmlkICIkaWZpZCIKPiAr
ICAgICAgIGpzb25fY2xvc2Vfb2JqZWN0Cj4gKwo+ICsgICAgICAgcHJvdG9fY2xvc2VfdHVubmVs
Cj4gKwo+ICsgICAgICAgcHJvdG9fYWRkX2RhdGEKPiArICAgICAgIFsgLW4gIiR6b25lIiBdICYm
IGpzb25fYWRkX3N0cmluZyB6b25lICIkem9uZSIKPiArICAgICAgIHByb3RvX2Nsb3NlX2RhdGEK
PiArCj4gKyAgICAgICBwcm90b19zZW5kX3VwZGF0ZSAiJGNmZyIKPiArfQo+ICsKPiArcHJvdG9f
eGZybV90ZWFyZG93bigpIHsKPiArICAgICAgIGxvY2FsIGNmZz0iJDEiCj4gK30KPiArCj4gK3By
b3RvX3hmcm1faW5pdF9jb25maWcoKSB7Cj4gKyAgICAgICBub19kZXZpY2U9MQo+ICsgICAgICAg
YXZhaWxhYmxlPTEKPiArCj4gKyAgICAgICBwcm90b19jb25maWdfYWRkX2ludCAibXR1Igo+ICsg
ICAgICAgcHJvdG9fY29uZmlnX2FkZF9zdHJpbmcgInR1bmxpbmsiCj4gKyAgICAgICBwcm90b19j
b25maWdfYWRkX3N0cmluZyAiem9uZSIKPiArICAgICAgIHByb3RvX2NvbmZpZ19hZGRfaW50ICJp
ZmlkIgo+ICt9Cj4gKwo+ICsKPiArWyAtbiAiJElOQ0xVREVfT05MWSIgXSB8fCB7Cj4gKyAgICAg
ICBbIC1mIC9saWIvbW9kdWxlcy8kKHVuYW1lIC1yKS94ZnJtX2ludGVyZmFjZS5rbyAtbyAtZCAv
c3lzL21vZHVsZS94ZnJtX2ludGVyZmFjZSBdICYmIGFkZF9wcm90b2NvbCB4ZnJtCj4gK30KPiAt
LQo+IDIuMTEuMAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
