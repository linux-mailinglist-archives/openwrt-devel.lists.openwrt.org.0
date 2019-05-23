Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9021B28461
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 18:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SDMsrlrO96Mrox4OQ8MhPLOCG5Kmtn0nG8JplZx6U4=; b=Un9MmDnRgb/woJ
	I+c3n2YyKzbw/mfPIr7oCZA29Wk0nueI/GEa0Te3uvLuvWQrYtVG6xPXKEK2y1sfbvZgiFpDN6Y1k
	O8qfsM6s1SoVWQl4ewp+4j6mo8jPznhAay3BCHnfKNA7yIsOVKTx7woqInNaJCj09jYLy7GqiNW1O
	ixV8Hezl+yyfMoNiYRywxd0cdRT9mCb5fVt7w+rNsfi2Eqslqd5dTY/0gdqsoJeOfJtaJNZOwLXQt
	VhLuPEN5kQk4kZmEEaCLfqs9nzRSz7qRtdawtPmSoy4PywjRwpDPE+r/x9S3FhYgju573F/FmSy2B
	V3mxrJz5BekBqifc16ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTr20-0002mJ-MO; Thu, 23 May 2019 16:57:28 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTr1t-0002lI-NE
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 16:57:24 +0000
X-Originating-IP: 95.90.180.177
Received: from [192.168.0.207] (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 705391C000D;
 Thu, 23 May 2019 16:57:11 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190522172419.20630-1-mail@aparcar.org>
 <20190523103035.GD4606@meh.true.cz>
 <3e67359e-14ab-1596-2ec9-e08b38d63d9d@aparcar.org>
 <20190523121615.GB50588@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 mQINBFxz2jMBEAC8Mf/NfBA6kbVD+tiXe3Tqf8l+WPclhdHBJ4wM1zD1pfV6IL1a13iC1D45
 hzXZ7GtKBvT6bjov2F8f0Ez3QiH+t3dAmzub/v0XI9PGKg/5vojRoDwK9HO6LzUnJgqlxlew
 rnua0NcDJIB3S6pKXKnWa2cU4slHBLn3rvKIRAwLJ7moG2dwcy5339z/leKXkhU85oFtHKK1
 rMV7KsmU3qBdKBSRWP78uAlWNqIqEGTHf9XLMefn36M6hEQnFiJ4SszCkt+wmkRlMOGSVv3C
 awxJcLbZwwXjKuiFRfs5Z7FPHTe4ya9+4+kRVDzfCmIsJz1dqKoe/HIYAXM11bhasrBAVKeB
 bkhgmWnUJcynY5DGintBsFHlyT3b85oljoyuVGKNIo4j9iUJutOO3oVVlhrStW7WHw4iAxIv
 V+OHj1TEZHL9QutmoiPz7k7GtKHqVYOz/zXkq+zd7tBqryzoqIxNQk8gc13nLwNWK2nVu7Ex
 RYfCJrSnF/Y7DMJ3JOqLUxDwTcFY66Zro9CYRfqA8dUPXHxX3ohFB2ObNO/HpIsCXWhiwXDe
 o5lWP/j4Owhqw6AwewgkEJA9VAUvIY0xoxLWwfVLP2+CH5cjKv7xR+xH5o2JtqbL/VGYChJl
 YL9ILI9sJIwUkIlwLaupoKYUa+gk15tw+rreQrfGaOE11mHbVwARAQABtB9QYXVsIFNwb29y
 ZW4gPG1haWxAYXBhcmNhci5vcmc+iQJUBBMBCgA+FiEERCOv5fpN8dm4FZLxtHU4kJUx+EQF
 Alxz2jMCGyMFCQlmAYAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQtHU4kJUx+EQWUQ//
 eM6megW2CLd/WwFB4cnSrpjs0APVOydSuEaz9pUFOHYqIBartSVtnlLH7ZfxURfrfSdJKElB
 Ne/t8SnUh6zOpQAiGAZjil/DQOq5E/j56yh96D9Jpm3kNCMAOzVAWskNLpBgY//GMyOyqG5E
 TXXvBkH/aV/y4SI5brjpoBZUfJqUqWBFLI4aCQf27n9tHGc34TWh50icpIS1rumFrr6ZZuey
 oCE97sEkRiZwgcn1t2eM/x2BTxG8TsZZz7X2mclTTtT/Bt1VA8l0nj6CBJ+oXgYIV24Ztce0
 u0S46TW5eppjNR3TqoKivVHD/czkVjpnmgsM1rBv4LrYDI7gCidkvYsNGpVhhUj9N3bLJq+G
 C2LBhVEqW8Eo17qnc7fA0pUVUoWAnTHSxXmTlZoljuIHgj3plKJo5tPzyhKZkhidqX+jxJrs
 hOLeseBB/EPHw7bzWTKI6KZeaAF0GquNKLPOlre2MjF5Cdaj7tq5XkTZ4NQl0P1LeWYjk9rj
 M+wbNHpVnYbtkdG2U7W1Z1Z/EclvF8NO0JQOnl9zfstUdr5EmNi9npSogitn6pU/PVeQhgXQ
 7ycgH1nI99VH0PAZPrWE0Ta2i0o5iDIN5N+wnc4bZsSgVIFx0X1TcV1W5AmkNBKP52hDMmdi
 +fHJQEvAY14NCqLRrv1LGFxE+iSBzwbiuam5Ag0EXHPaMwEQAODu0tQBGqH++8KAZV9Sf0Je
 kzZHua6pBNc6leMxyR0o69QH0KRsk33HeI+QtUF1jA4pnqJelO8qw6+X+wH6fp0CgLc4ZbFz
 XP7ujY66QFkkIlS6Tpjcw65SFN8CaGXbg4LwqEy4S6kH6FR5VTKv+CwWYZO+v6Q/SlF+wnN0
 uV+NJfnwRtB0QbYTo2IHw1GmnH0r3cZQbh6SDJoBwaeAm1yJH52dAM0e/ZC6jODQFW1j97jE
 J9y5xcaI1ArVPjX6yiN2L9WTzVcuv9PW3riApVKK/8J72wKV58YDqaxGwG1J6IZYkeW4Xc1k
 zPYr2KJQ4XZXSon7C1swMqzrXJEmb8sul5EKCGeaS5rPWTNOUltKRv5bT3ldsGr0MZzuRNBL
 WLGtNBtbVnjamVl+3bpnldOXn13Jd34O9f/cjXuuL1HtKLnSSd19K/wfuq+8CbsEXxs0EYNC
 bKux2duhQVYtxlDNL9mglcQNnsVUqWvgieV2eCGskzw+VlK/hIJMhp5J/La99FZqK9LqAaKc
 ULm6w6k6HVwBhJ2yBuT5BTFydVBtIshw+DjRsCtCCQxf8Hu3Oa7M1cndP+Y1+IsAah1urAWP
 +DgExETXeKvIAxfEHtTsrcGLxeJGw5WR6lK0h/v5QxMLuDwbYVatlYFfIGFz6WvclFhLnDXz
 ftDDvJHsZ/IdABEBAAGJAjwEGAEKACYWIQREI6/l+k3x2bgVkvG0dTiQlTH4RAUCXHPaMwIb
 DAUJCWYBgAAKCRC0dTiQlTH4RFDuEACvn6o6UIL2GGv6M8gZrDjb/nEpC/H4eU7lQB83qq96
 3lCj/cMSnQ7oNqPZsGYEawbGMBEkZ7QHFEAfFbORixC44KeEX3r191HnOvfwx9hfIckQYCSa
 bMUQD6bFaaOb9apZtdZufMzVVGse77miMm+eoYpWS5wV4Jbtd9PXioTdSgj+WXLNTm+dFUcK
 bWsl8Q2BiUtGgT+ly3Pe9QIlXiqWX8R7XNQa2XaIaYSbEM6tHB3K2bvn+sJxJerdSRJR2U4n
 1Vy4nxdobK22uO+pALawFr+0IssJ64gndRr/4mC/AbQr34U2Tl5VDZQp7AngyiZ5LgEGqrau
 FtOKx5NvXj0NFcVb2Be4rd76137EpstXcdMre9H52JfPH7OH8TZ+Y4Te8SaKC2gSVZ/qGDQ+
 UEf2disYYs1kQmMQTy0dJiH69oj3eV9DO5MBElUfCaGQc72eOvqWrFTt3GgmA6TPnHItZNV8
 5OUi/C2Q3E7FAvHuijf1fTIYes7s1CDeql3vVR1TajMh1DCRmfdeeFE4nwv1x78nVnDfnD2j
 L1jN2qDSXZviGrr4EG0hizY/4AFwRWZdOHRBZCzRbgnqNvGJIPBzMhfQIM4K65nAQdVo4Z/L
 i1YmLKwXoPXUL3dkvK/e/1ZyhQbUJvLN9Xm7Vehwjbim65Lxvwm9fFwRhvy4d9v7Dg==
Message-ID: <3d593ebc-325b-87f1-8b85-34f6f79f9b3c@aparcar.org>
Date: Thu, 23 May 2019 18:57:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523121615.GB50588@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_095722_057965_9A182F96 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] procd: add docker support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDUvMjMvMTkgMjoxNiBQTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBQYXVsIFNwb29yZW4g
PG1haWxAYXBhcmNhci5vcmc+IFsyMDE5LTA1LTIzIDEzOjM2OjM3XToKPgo+PiBObywgdGhhbmtz
IGZvciB0aGUgbGluay4gU2VlbXMgdGhhdCBEb2NrZXIgbm93IHVzZXMgTFhDIGFueXdheSB3aGlj
aAo+IE5vIG1vcmVbMV0gOi0pCj4KPiAgUmVtb3ZlIExYQyBzdXBwb3J0Lgo+Cj4gIFRoZSBMWEMg
ZHJpdmVyIHdhcyBkZXByZWNhdGVkIGluIERvY2tlciAxLjguICBGb2xsb3dpbmcgdGhlIGRlcHJl
Y2F0aW9uCj4gIHJ1bGVzLCB3ZSBjYW4gcmVtb3ZlIGEgZGVwcmVjYXRlZCBmZWF0dXJlIGFmdGVy
IHR3byBtYWpvciByZWxlYXNlcy4gTFhDIHdvbid0Cj4gIGJlIHN1cHBvcnRlZCBhbnltb3JlIHN0
YXJ0aW5nIG9uIERvY2tlciAxLjEwLgpPaCBzb3JyeSBJJ20gbG9zaW5nIHRyYWNrLi4uCj4+IHJl
c3VsdHMgaW4gdGhlIGF2YWlsYWJpbGl0eSBvZiBjb250YWluZXI9bHhjIGluIC9wcm9jLzEvZW52
aXJvbjoKPj4KPj4gwqDCoMKgIHJvb3RAZGY5OTkyZTRjNTE4Oi8jIGNhdCAvcHJvYy8xL2Vudmly
b24KPj4gwqDCoMKgCj4+IEhPU1ROQU1FPWRmOTk5MmU0YzUxOFNITFZMPTFIT01FPS9yb290Y29u
dGFpbmVyPWx4Y1RFUk09eHRlcm1QQVRIPS91c3Ivc2JpbjovdXNyL2Jpbjovc2JpbjovYmluUFdE
PS9yb290QGRmOTk5MmU0YzUxODovIwo+IFlvdSdyZSBwcm9iYWJseSBqdXN0IHVzaW5nIHNvbWUg
YWxyZWFkeSBvYnNvbGV0ZSB2ZXJzaW9uIG9mIGRvY2tlci1jZS4KCklzIGl0PwoKcm9vdEBkYXdu
Oi9ob21lL2EjIGRvY2tlciAtdgpEb2NrZXIgdmVyc2lvbiAxOC4wOS42LCBidWlsZCA0ODFiYzc3
Cgpyb290QGY2MmMxNmFjOGZhMzovIyBscyAtYSAuZG9ja2VyZW52Ci5kb2NrZXJlbnYKCnJvb3RA
ZjYyYzE2YWM4ZmEzOi8jIGNhdCAvcHJvYy8xL2Vudmlyb24KSE9TVE5BTUU9ZjYyYzE2YWM4ZmEz
U0hMVkw9MUhPTUU9L3Jvb3Rjb250YWluZXI9bHhjVEVSTT14dGVybVBBVEg9L3Vzci9zYmluOi91
c3IvYmluOi9zYmluOi9iaW5QV0Q9LwoKU28gSSdtIGd1ZXNzaW5nIHJlcGxhY2UgLmRvY2tlcmlu
aXQgd2l0aCAuZG9ja2VyZW52IHNob3VsZCBkbyB0aGUgam9iPwoKQmVzdCwKUGF1bAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
