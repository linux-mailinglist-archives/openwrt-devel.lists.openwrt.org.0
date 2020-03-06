Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C8917B81B
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 09:09:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NzE7lt0GOdntI6pg9m4eh/dmLNkMGrKyWJq+OxB05rg=; b=CUDTotLC45czk1o8mSD4Ou0qB
	d4tJ7ozZuUQf9oTdH1OxXr7t92S4Y48jlLCFryr8xnvhJ9In5VA/g79TszjYqnVSBizaTS/qwOl4i
	MJ5jy6fWYjjBLIuaPG2BgDu9S5lobVssOKgBAs22WyxNzdvCmR8faKbWIpfvOoK6UfDZ5o2nVxyeI
	p99IPntXiqWmNC77nUc/t56fnSVYqIyWa2hUje8PpeiUpnWFdm6I/YF3MJ/xbG63XbPngKj7p0GLT
	K77UR6ukT4uhzmFe0MBiP4Tqr4pTdIyGtj6JoJ9sGLOaPYSvqxocP9237Ccdzuz8A4408fOwUVSMd
	7EPZiTWfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA82x-0001mc-6L; Fri, 06 Mar 2020 08:09:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA82p-0001la-I8
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 08:09:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id g134so1289053wme.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 06 Mar 2020 00:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+3ZuXUw+08FzBQT5GAvkgTsC/9UcHZEXmlS0M2tC3iI=;
 b=s9XEDSmVIfMb2QrmUibuQKVPY86dpl6P0MGcrHwwD+r3OawhFQzArgeZ4Ga5kDVSMn
 0a67DIRAFO7luXXye9Yc72WGhAsYsqjJVepepVjWnK+kWukU3ftnWGdhD5clT4aWCSX3
 tz0e9tt47yy1UJePl7rUpN80WEUSvcgOZaPnwCoFzQdsBJ85jL27onO2AkPFI8kQwfWD
 vmaVXPBoBMn30k6ErbJ0Tnn7XxhT7v+tisHzgR+w8YUVEkW5nKahphKVmPImIHyYseT6
 IZdaGsKQsTLMmO94o45tqHVGr2Dks35XblY4LcC/muvVoQ5LAIUQEEpz8Mggnbu0gp0t
 sQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+3ZuXUw+08FzBQT5GAvkgTsC/9UcHZEXmlS0M2tC3iI=;
 b=KDXPf64K237BAKJMpG4jWQ/BqJieNmFm1zPTHRI/gKLo5Ty4cezZ/oyMwbd0zFGlrv
 /fopqoiM+x58wBIa9RsRQ/ZOXKd/d8ETtV9GMY4bSlzC33ewSO78AbRksGVCp1UZaFJy
 1cmSYgiUxnFXNPozOMH67DqO7aVSF5zPy8DmN4FTBPz/N7a3FAylRu9p2gj+ltisls3r
 Dh+IXwXDD68jt7S6zEHOA2rSxLlwyJ7bOj4WpcCOt/PFpd3mK7fi1ZdAvRdHEIIKmzm7
 yfAuDK8QDuwrilqWAUYahJ9KYcIs44bM8JMJliyxw/ANMlAXndvyIk6KfJkTvipz9tc4
 ERjQ==
X-Gm-Message-State: ANhLgQ0tdSwPpkjyUIs76N8mJQJO6to8cXGRawu0xDni8uqAUgflnaFs
 cCRvHlginh/ojR+2AlQ1vdg=
X-Google-Smtp-Source: ADFU+vtkpNmTVUT1i5siuM6MkRQekL6HQdSBGisomL2ZX5yI4IzHCB7JbuzGc/3lqk4QESsx18H0lA==
X-Received: by 2002:a1c:9c4c:: with SMTP id f73mr2495745wme.125.1583482156606; 
 Fri, 06 Mar 2020 00:09:16 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id f8sm5239314wmf.20.2020.03.06.00.09.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 00:09:15 -0800 (PST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200302125820.12353-1-ynezz@true.cz>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <6fed6fd3-271f-5d78-978c-63e76bef7156@gmail.com>
Date: Fri, 6 Mar 2020 09:09:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200302125820.12353-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_000919_628587_2D7BCFCE 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] Revert "kernel: rewrite
 run_parsers_by_type() to use add_mtd_partitions()"
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwgUmFmYcWCLAoKT24gMDIuMDMuMjAyMCAxMzo1OCwgUGV0ciDFoHRldGlhciB3cm90
ZToKPiBUaGlzIHJldmVydHMgY29tbWl0IDE1YTA3MDFjZGRlOGVlYWUyYTU0ODgwYjgxM2NkYjhj
ZGMwOWEzODQuCj4gCj4gU2VlbXMgbGlrZSB0aGlzIHBhdGNoIGhhcyBpbnRyb2R1Y2VkIHNvbWUg
cmVncmVzc2lvbnMgb24gdGhlIHJhbWlwcwo+IHRhcmdldCB3aGljaCBpcyBzdGlsbCBvbiA0LjE0
IGtlcm5lbCBhcyB0aGlzIGNvbW1pdCB0b3VjaGVzIG9ubHkgNC4xNAo+IGtlcm5lbCBwYXRjaGVz
Lgo+IAo+ICAgamZmczI6IEVyYXNlIGF0IDB4MDAzNzgwMDAgZmFpbGVkIGltbWVkaWF0ZWx5OiBl
cnJubyAtMjIKPiAgIGpmZnMyOiBOb2RlIENSQyBmZmZmZmZmZiAhPSBjYWxjdWxhdGVkIENSQyBm
MDllNzg0NSBmb3Igbm9kZSBhdCAwMGMwODUxMAo+IAo+IFJlZjogRlMjMjgzNywgRlMjMjg2MgoK
Rml4ZXMgYWxzbyB2ZXJ5IHNlcmlvdXMgKGVyYXNlIG9mIEFSVCkgRlMjMjg2NC4KUmVmOiBodHRw
czovL2J1Z3Mub3BlbndydC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0yODY0Cgot
LSAKQ2hlZXJzLApQaW90cgoKPiBSZWY6IGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9qZmZz
Mi1wYXJ0aXRpb24tbm90LXNhdmUtbmV3LXBhY2thZ2UtaW5zdGFsbGF0aW9uLW9yLXNhdmUtc2V0
dGluZ3MKPiBDYzogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IFNpZ25lZC1v
ZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4gICAuLi5mb3ItZGlm
ZmVyZW50LXBhcnRpdGlvbi1wYXJzZXItdHlwZXMucGF0Y2ggfCAzMyArKysrKysrKysrKystLS0t
LS0tCj4gICAuLi5hcnNlcnMtZm9yLXJvb3Rmcy1hbmQtZmlybXdhcmUtc3BsaXQucGF0Y2ggfCAg
NCArLS0KPiAgIC4uLi80MDQtbXRkLWFkZC1tb3JlLWhlbHBlci1mdW5jdGlvbnMucGF0Y2ggICB8
ICAyICstCj4gICAzIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQv
NDAxLW10ZC1hZGQtc3VwcG9ydC1mb3ItZGlmZmVyZW50LXBhcnRpdGlvbi1wYXJzZXItdHlwZXMu
cGF0Y2ggYi90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvNDAxLW10ZC1hZGQtc3Vw
cG9ydC1mb3ItZGlmZmVyZW50LXBhcnRpdGlvbi1wYXJzZXItdHlwZXMucGF0Y2gKPiBpbmRleCBh
ZTEzMTEyZWY2ZDAuLjA1N2Q0NzM2ODQ0MyAxMDA2NDQKPiAtLS0gYS90YXJnZXQvbGludXgvZ2Vu
ZXJpYy9wZW5kaW5nLTQuMTQvNDAxLW10ZC1hZGQtc3VwcG9ydC1mb3ItZGlmZmVyZW50LXBhcnRp
dGlvbi1wYXJzZXItdHlwZXMucGF0Y2gKPiArKysgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5k
aW5nLTQuMTQvNDAxLW10ZC1hZGQtc3VwcG9ydC1mb3ItZGlmZmVyZW50LXBhcnRpdGlvbi1wYXJz
ZXItdHlwZXMucGF0Y2gKPiBAQCAtMjAsMzUgKzIwLDQ0IEBAIFNpZ25lZC1vZmYtYnk6IEdhYm9y
IEp1aG9zIDxqdWhvc2dAb3BlbndydC5vcmc+Cj4gICAgCj4gICAgLyoKPiAgICAgKiBHaXZlbiBh
IHBvaW50ZXIgdG8gdGhlIE1URCBvYmplY3QgaW4gdGhlIG10ZF9wYXJ0IHN0cnVjdHVyZSwgd2Ug
Y2FuIHJldHJpZXZlCj4gLUBAIC03NjIsNiArNzY2LDI3IEBAIGludCBtdGRfZGVsX3BhcnRpdGlv
bihzdHJ1Y3QgbXRkX2luZm8gKm0KPiArQEAgLTc2Miw2ICs3NjYsMzYgQEAgaW50IG10ZF9kZWxf
cGFydGl0aW9uKHN0cnVjdCBtdGRfaW5mbyAqbQo+ICAgIH0KPiAgICBFWFBPUlRfU1lNQk9MX0dQ
TChtdGRfZGVsX3BhcnRpdGlvbik7Cj4gICAgCj4gICArc3RhdGljIGludAo+ICAgK3J1bl9wYXJz
ZXJzX2J5X3R5cGUoc3RydWN0IG10ZF9wYXJ0ICpzbGF2ZSwgZW51bSBtdGRfcGFyc2VyX3R5cGUg
dHlwZSkKPiAgICt7Cj4gLSsJc3RydWN0IG10ZF9wYXJ0aXRpb25zIHBwYXJ0cyA9IHsgfTsKPiAt
KwlpbnQgZXJyOwo+ICsrCXN0cnVjdCBtdGRfcGFydGl0aW9uICpwYXJ0czsKPiArKwlpbnQgbnJf
cGFydHM7Cj4gKysJaW50IGk7Cj4gICArCj4gLSsJcHBhcnRzLm5yX3BhcnRzID0gcGFyc2VfbXRk
X3BhcnRpdGlvbnNfYnlfdHlwZSgmc2xhdmUtPm10ZCwgdHlwZSwKPiAtKwkJCQkJCSAgICAgICAm
cHBhcnRzLnBhcnRzLCBOVUxMKTsKPiAtKwlpZiAocHBhcnRzLm5yX3BhcnRzIDw9IDApCj4gLSsJ
CXJldHVybiBwcGFydHMubnJfcGFydHM7Cj4gKysJbnJfcGFydHMgPSBwYXJzZV9tdGRfcGFydGl0
aW9uc19ieV90eXBlKCZzbGF2ZS0+bXRkLCB0eXBlLCAoY29uc3Qgc3RydWN0IG10ZF9wYXJ0aXRp
b24gKiopJnBhcnRzLAo+ICsrCQkJCQkJTlVMTCk7Cj4gKysJaWYgKG5yX3BhcnRzIDw9IDApCj4g
KysJCXJldHVybiBucl9wYXJ0czsKPiAgICsKPiAtKwlpZiAoV0FSTl9PTighcHBhcnRzLnBhcnRz
KSkKPiArKwlpZiAoV0FSTl9PTighcGFydHMpKQo+ICAgKwkJcmV0dXJuIDA7Cj4gICArCj4gLSsJ
ZXJyID0gYWRkX210ZF9wYXJ0aXRpb25zKCZzbGF2ZS0+bXRkLCBwcGFydHMucGFydHMsIHBwYXJ0
cy5ucl9wYXJ0cyk7Cj4gKysJZm9yIChpID0gMDsgaSA8IG5yX3BhcnRzOyBpKyspIHsKPiArKwkJ
LyogYWRqdXN0IHBhcnRpdGlvbiBvZmZzZXRzICovCj4gKysJCXBhcnRzW2ldLm9mZnNldCArPSBz
bGF2ZS0+b2Zmc2V0Owo+ICAgKwo+IC0rCWtmcmVlKHBwYXJ0cy5wYXJ0cyk7Cj4gKysJCW10ZF9h
ZGRfcGFydGl0aW9uKHNsYXZlLT5wYXJlbnQsCj4gKysJCQkJICBwYXJ0c1tpXS5uYW1lLAo+ICsr
CQkJCSAgcGFydHNbaV0ub2Zmc2V0LAo+ICsrCQkJCSAgcGFydHNbaV0uc2l6ZSk7Cj4gKysJfQo+
ICsrCj4gKysJa2ZyZWUocGFydHMpOwo+ICAgKwo+IC0rCXJldHVybiBlcnIgPyBlcnIgOiBwcGFy
dHMubnJfcGFydHM7Cj4gKysJcmV0dXJuIG5yX3BhcnRzOwo+ICAgK30KPiAgICsKPiAgICAjaWZk
ZWYgQ09ORklHX01URF9TUExJVF9GSVJNV0FSRV9OQU1FCj4gICAgI2RlZmluZSBTUExJVF9GSVJN
V0FSRV9OQU1FCUNPTkZJR19NVERfU1BMSVRfRklSTVdBUkVfTkFNRQo+ICAgICNlbHNlCj4gLUBA
IC0xMTQ3LDYgKzExNzIsNjEgQEAgdm9pZCBtdGRfcGFydF9wYXJzZXJfY2xlYW51cChzdHJ1Y3Qg
bXRkXwo+ICtAQCAtMTE0Nyw2ICsxMTgxLDYxIEBAIHZvaWQgbXRkX3BhcnRfcGFyc2VyX2NsZWFu
dXAoc3RydWN0IG10ZF8KPiAgICAJfQo+ICAgIH0KPiAgICAKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0
L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMi1tdGQtdXNlLXR5cGVkLW10ZC1wYXJzZXJz
LWZvci1yb290ZnMtYW5kLWZpcm13YXJlLXNwbGl0LnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVy
aWMvcGVuZGluZy00LjE0LzQwMi1tdGQtdXNlLXR5cGVkLW10ZC1wYXJzZXJzLWZvci1yb290ZnMt
YW5kLWZpcm13YXJlLXNwbGl0LnBhdGNoCj4gaW5kZXggMTQ5YzMyOGFjNGQ1Li4yY2MwNmRkNDYz
YjMgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMi1t
dGQtdXNlLXR5cGVkLW10ZC1wYXJzZXJzLWZvci1yb290ZnMtYW5kLWZpcm13YXJlLXNwbGl0LnBh
dGNoCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMi1tdGQtdXNl
LXR5cGVkLW10ZC1wYXJzZXJzLWZvci1yb290ZnMtYW5kLWZpcm13YXJlLXNwbGl0LnBhdGNoCj4g
QEAgLTEwLDcgKzEwLDcgQEAgU2lnbmVkLW9mZi1ieTogR2Fib3IgSnVob3MgPGp1aG9zZ0BvcGVu
d3J0Lm9yZz4KPiAgIAo+ICAgLS0tIGEvZHJpdmVycy9tdGQvbXRkcGFydC5jCj4gICArKysgYi9k
cml2ZXJzL210ZC9tdGRwYXJ0LmMKPiAtQEAgLTc5NSw2ICs3OTUsNyBAQCBydW5fcGFyc2Vyc19i
eV90eXBlKHN0cnVjdCBtdGRfcGFydCAqc2xhCj4gK0BAIC04MDQsNiArODA0LDcgQEAgcnVuX3Bh
cnNlcnNfYnlfdHlwZShzdHJ1Y3QgbXRkX3BhcnQgKnNsYQo+ICAgIAo+ICAgIHN0YXRpYyB2b2lk
IHNwbGl0X2Zpcm13YXJlKHN0cnVjdCBtdGRfaW5mbyAqbWFzdGVyLCBzdHJ1Y3QgbXRkX3BhcnQg
KnBhcnQpCj4gICAgewo+IEBAIC0xOCw3ICsxOCw3IEBAIFNpZ25lZC1vZmYtYnk6IEdhYm9yIEp1
aG9zIDxqdWhvc2dAb3BlbndydC5vcmc+Cj4gICAgfQo+ICAgIAo+ICAgIHN0YXRpYyB2b2lkIG10
ZF9wYXJ0aXRpb25fc3BsaXQoc3RydWN0IG10ZF9pbmZvICptYXN0ZXIsIHN0cnVjdCBtdGRfcGFy
dCAqcGFydCkKPiAtQEAgLTgwNCw2ICs4MDUsMTIgQEAgc3RhdGljIHZvaWQgbXRkX3BhcnRpdGlv
bl9zcGxpdChzdHJ1Y3QgbQo+ICtAQCAtODEzLDYgKzgxNCwxMiBAQCBzdGF0aWMgdm9pZCBtdGRf
cGFydGl0aW9uX3NwbGl0KHN0cnVjdCBtCj4gICAgCWlmIChyb290ZnNfZm91bmQpCj4gICAgCQly
ZXR1cm47Cj4gICAgCj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmct
NC4xNC80MDQtbXRkLWFkZC1tb3JlLWhlbHBlci1mdW5jdGlvbnMucGF0Y2ggYi90YXJnZXQvbGlu
dXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvNDA0LW10ZC1hZGQtbW9yZS1oZWxwZXItZnVuY3Rpb25z
LnBhdGNoCj4gaW5kZXggZDFhMzI4NzJhZjIxLi43YjQ4MWZmYjQ3YTUgMTAwNjQ0Cj4gLS0tIGEv
dGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwNC1tdGQtYWRkLW1vcmUtaGVscGVy
LWZ1bmN0aW9ucy5wYXRjaAo+ICsrKyBiL3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmctNC4x
NC80MDQtbXRkLWFkZC1tb3JlLWhlbHBlci1mdW5jdGlvbnMucGF0Y2gKPiBAQCAtMTEsNyArMTEs
NyBAQCBTaWduZWQtb2ZmLWJ5OiBHYWJvciBKdWhvcyA8anVob3NnQG9wZW53cnQub3JnPgo+ICAg
Cj4gICAtLS0gYS9kcml2ZXJzL210ZC9tdGRwYXJ0LmMKPiAgICsrKyBiL2RyaXZlcnMvbXRkL210
ZHBhcnQuYwo+IC1AQCAtMTI1MSw2ICsxMjUxLDI0IEBAIGludCBtdGRfaXNfcGFydGl0aW9uKGNv
bnN0IHN0cnVjdCBtdGRfaW4KPiArQEAgLTEyNjAsNiArMTI2MCwyNCBAQCBpbnQgbXRkX2lzX3Bh
cnRpdGlvbihjb25zdCBzdHJ1Y3QgbXRkX2luCj4gICAgfQo+ICAgIEVYUE9SVF9TWU1CT0xfR1BM
KG10ZF9pc19wYXJ0aXRpb24pOwo+ICAgIAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
