Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690C0150A6
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 17:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMeEF7yI/sM6bW+lOPxECRk9ligmBM7lxNWTj+P5lCs=; b=R5AvR3sG4WCNbC
	V/eWv5q+tZejqR5eFohXnNpLGLRTC8eW6gDIg4dMHT7Lvomu8OJFr4OfH4b9usrh5KG0P/tsNin88
	mdvSc0CMfOxrrLh3DiE4Focw+g2d3HGIKWJkrFImHP3B4wZq5HHt58zuxYyutEh38vM0BGzi8Cyz2
	SBSpXMZwHaq7ZvM/+X2sPMcMw9Ms8mzirKI7vWD66B6pDM5wbzRl7YX+RVV/wFGP5Z6Um4W1+ap3E
	NJdYf1g/vCrBSKZI/gul2YovhKt8tsLF9rSg9nU2xqkOWA09tcrjv50drk0SPiS6orVQXRVurZQoT
	ZWNs1B2UkH0qqRfSiJ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfrP-0005Lt-1E; Mon, 06 May 2019 15:48:59 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfrF-0005Iv-VR
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 15:48:51 +0000
Received: (wp-smtpd smtp.tlen.pl 18052 invoked from network);
 6 May 2019 17:48:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557157727; bh=x2KWfB4N6r/ptgEKXypjVSG6OADQ/+tXyliXUyQ5HcI=;
 h=Subject:To:Cc:From;
 b=XLnXk5QWmLXIQPqTvorp9FRN53BApC6gx3UPLPb/ZdHRG4V90XInvBcxZKJJXyesq
 X0rPCmu4mLI0Z+BtYu0ahGgKLfjALiNKurZafL66h92SmNyvmIYVDC53oVFx9AuNeI
 yd8VHExsIoxZp0chcb9/wg1Er5jCGRMwzI3bqcV4=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 May 2019 17:48:47 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190501174354.19409-1-tomek_n@o2.pl>
 <20190503112124.GK346@meh.true.cz>
 <429c18c8-ae90-ffc0-0c54-7ca6a8a2a7a8@o2.pl>
 <20190505071654.GL71477@meh.true.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <6e04e4d7-e66e-6548-68e5-e3c24f1d365d@o2.pl>
Date: Mon, 6 May 2019 17:48:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190505071654.GL71477@meh.true.cz>
Content-Language: en-US
X-WP-MailID: ccf31f88e5195f473d916c7f2bd100fe
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [UZOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_084850_171669_11F3F000 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] tegra: add vendor string to device name
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

VyBkbml1IDA1LjA1LjIwMTkgb8KgMDk6MTYsIFBldHIgxaB0ZXRpYXIgcGlzemU6Cj4gVG9tYXN6
IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4gWzIwMTktMDUtMDQgMTQ6Mzk6MzhdOgo+IAo+
PiBXIGRuaXUgMDMuMDUuMjAxOSBvwqAxMzoyMSwgUGV0ciDFoHRldGlhciBwaXN6ZToKPj4+IFRv
bWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIucGw+IFsyMDE5LTA1LTAxIDE5OjQzOjU0XToK
Pj4+Cj4+PiBIaSwKPj4+Cj4+Pj4gZm9yIGJldHRlciBpZGVudGlmaWNhdGlvbi4gQWxzbyBjcmVh
dGUgU1VQUE9SVEVEX0RFVklDRVMgc3RyaW5nIGZyb20gaXQKPj4+PiB3aGljaCBjb3JyZXNwb25k
cyB0byBkdHMgY29tcGF0aWJsZSBzdHJpbmcuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBUb21h
c3ogTWFjaWVqIE5vd2FrIDx0b21la19uQG8yLnBsPgo+Pj4KPj4+IC4uLgo+Pj4KPj4+PiAgZGVm
aW5lIFUtQm9vdC90cmltc2xpY2UKPj4+PiAgICBOQU1FIDo9IENvbXB1TGFiIFRyaW1TbGljZQo+
Pj4+IC0gIEJVSUxEX0RFVklDRVMgOj0gdHJpbXNsaWNlCj4+Pj4gKyAgQlVJTERfREVWSUNFUyA6
PSBjb21wdWxhYl90cmltc2xpY2UKPj4+PiAgICBVQk9PVF9JTUFHRSA6PSB0cmltc2xpY2UtbW1j
LmltZyB0cmltc2xpY2Utc3BpLmltZwo+Pj4KPj4+IHdoYXQgYWJvdXQgdGhpcyBmaWxlcz8gU2hv
dWxkbid0IHlvdSByZW5hbWUgdGhlbSBhcyB3ZWxsPwo+Pgo+PiBUaGF0IGNvdWxkIGJlIGRvbmUs
IGJ1dCBJIGxlZnQgaXQgYXMgaXMsIHRvIGJlIGluIGxpbmUgd2l0aCBjYm9vdGltYWdlLWNvbmZp
Z3M6Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9OVklESUEvY2Jvb3RpbWFnZS1jb25maWdzL2Jsb2Iv
N2MzYjQ1OGI5M2VkNjk0N2NkMDgzNjIzZjU0M2U5M2Y5MTAzY2MwZi90ZWdyYTIwL2NvbXB1bGFi
L3RyaW1zbGljZS90cmltc2xpY2UtbW1jLmltZy5jZmcjTDIyCj4gCj4gSSdtIHB1enpsZWQgbm93
LCBhcyBJIGRvbid0IGtub3cgbXVjaCBhYm91dCBjYm9vdGltYWdlLCBhbmQgdGhpcyBmaWxlIHJl
ZmVycwo+IHRvIHRyaW1zbGljZS1tbWMuYmN0IHNvIGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBt
ZSBpbiB0aGlzIGNvbnRleHQuCgpJbiB0aGUgZmlyc3QgY2FsbCBvZiBjYm9vdGltYWdlIHdlIGNy
ZWF0ZSB0cmltc2xpY2UtbW1jLmJjdC4gVGhlbiBpbiBzZWNvbmQgKGZpbmFsKQpjYWxsLCBjYm9v
dGltYWdlIGNyZWF0ZXMgZnJvbSB0aGlzIGJjdCBhIGZsYXNoYWJsZSBVLUJvb3QgaW1hZ2UuIFVu
Zm9ydHVuYXRlbHkgdGhlCmJjdCBjYW4ndCBiZSBwYXNzZWQgYXMgcGFyYW1ldGVyIGFuZCBpcyBy
ZWQgZnJvbSBjb25maWd1cmF0aW9uIGZpbGUgSSBtZW50aW9uZWQuIFNvCml0IGlzIG1hdHRlciBv
ZiBjb252ZW5pZW5jZSwgYmVjYXVzZSB3ZSB3b3VsZCBuZWVkIHRvIHBhdGNoIHRoZSBzb3VyY2Vz
IG9yIGFkZAphZGRpdGlvbmFsIHNoZWxsIGNvbW1hbmRzLgoKUmVnYXJkcwoKLS0gClRNTgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
