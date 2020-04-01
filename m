Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D088A19AC86
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 15:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAIqbkHJnN4YeWS4ITVLVGpR8Ib2mo7KaDa7MqOBTPk=; b=I0CjU+GsjDF0xT
	iqL9hdARi+3Q+EuzKOQEN2YDyqpfT3DoowfsxQZPJ22GeURh6aFSbzzqv4nbLJRsbJvH+8xH60TYB
	X5/J81c+Mj5jyQvGWW3/ysNxlAGlWH6KgzL5p3pIpsSJhWwYUdVWbt4w1RoM/6pOxFQUjdrKr1z41
	/2vcWjDY982RgLzLafXXPumLVWl2oBEgNlzE9aGs5mq7pkMgHpl3hVV8fZ3BFpIoPIBn/MMEEyFjA
	M6r3atmy5aR/RsBxRwAOSGdxBj0CZgt8vg2KaqO5QkM+vC1tixM5BO3AUIj7pe5sz3SKN34S94l9J
	9JhrFI6RpVHgL55bXjrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdFd-0001GX-04; Wed, 01 Apr 2020 13:17:49 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdFV-0001Fe-Sq
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 13:17:43 +0000
Received: (wp-smtpd smtp.tlen.pl 5281 invoked from network);
 1 Apr 2020 15:17:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1585747058; bh=8yyUjgoGNRuocQnx/JAJD4eIYSCrvOyopFiF9Vdb8S0=;
 h=Subject:To:Cc:From;
 b=DZ0D99LiSQ7iAM/U+eCtWf/aAkTuRwmTFKhJBMWBxRAZevmcjaso9KrqQE0do/mY7
 MKZ3d6x5ujDAoAB42g6KYXw0cqdqOjwSPRmMoaykqoCA05L5sed2c0Qq3BjSAfCHjW
 3ZKB6wVoZbBxkw8rjzEtV/pI1mbt28oXcFiPcSOI=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <chunkeey@gmail.com>; 1 Apr 2020 15:17:38 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200331092158.5787-1-ynezz@true.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <1d98f481-8d58-0180-291a-ecf0da707b5e@o2.pl>
Date: Wed, 1 Apr 2020 15:17:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200331092158.5787-1-ynezz@true.cz>
Content-Language: en-US
X-WP-MailID: 9c6ea994e70836be167b1d4e1140fad1
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000003 [gYDV]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_061742_093340_1025E47A 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu,
 tegra: make CPU subtype default to vfp3-d16
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
Cc: Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDMxLjAzLjIwMjAgb8KgMTE6MjEsIFBldHIgxaB0ZXRpYXIgcGlzemU6Cj4gQXJtYWRh
IDM3MCBhbmQgVGVncmEyIHByb2Nlc3NvcnMgaGF2ZSBvbmx5IDE2IGRvdWJsZS1wcmVjaXNpb24K
PiByZWdpc3RlcnMuIFRoZSBjaGFuZ2UgaW50cm9kdWNlZCBieSBjb21taXQgOGRjYzEwODc2MDJl
ICgidG9vbGNoYWluOgo+IEFSTTogRml4IHRvb2xjaGFpbiBjb21waWxhdGlvbiBmb3IgZ2NjIDgu
eCIpIHN3aXRjaGVkIGFjY2lkZW50YWxseSB0aGUKPiB0b29sY2hhaW4gZm9yIG12ZWJ1IGNvcnRl
eGE5IHN1YnRhcmdldCB0byBjcHUgdHlwZSB3aXRoIDMyCj4gZG91YmxlLXByZWNpc2lvbiByZWdp
c3RlcnMuCj4gCj4gVGhpcyBzdGVtcyBmcm9tIGdjYyBkZWZhdWx0cyB3aGljaCBhc3N1bWUgInZm
cHYzLWQzMiIgaWYgb25seSAidmZwdjMiIGFzCj4gbWZwdSBpcyBzcGVjaWZpZWQuIFRoYXQgY2hh
bmdlIHJlc3VsdGVkIGluIHVudXNhYmxlIGltYWdlLCBpbiB3aGljaAo+IGtlcm5lbCB3aWxsIGtp
bGwgdXNlcnNwYWNlIGFzIHNvb24gYXMgaXQgY2F1c2luZyAiSWxsZWdhbCBpbnN0cnVjdGlvbiIu
Cj4gCj4gSW4gb3JkZXIgdG8gZml4IHRob3NlIGlzc3VlcyBUb21hcyBpbiBjb21taXQgMmQ2MWY4
ODIxYzdjICgibXZlYnU6Cj4gY29ydGV4YTk6IGNvcnJlY3QgY3B1IHN1YnR5cGUiKSBhbmQgY29t
bWl0IDQzZDFkODg1MTA2MiAoInRlZ3JhOiBjb3JyZWN0Cj4gY3B1IHN1YnR5cGUiKSBjaGFuZ2Vk
IHRoZSBDUFUgc3VidHlwZSB0byBleHBsaWNpdCB2ZnB2My1kMTYgd2hpY2ggZml4ZWQKPiB0aGUg
YWJvdmUgbWVudGlvbmVkIGlzc3VlLCBidXQgb24gdGhlIG90aGVyIGVuZCBpdCBoYXMgcmVzdWx0
ZWQgaW4gdGhlCj4gbmVlZCBvZiBidWlsZGluZyBwYWNrYWdlcyBmb3IgdGhpcyBuZXcgQ1BVIHN1
YnR5cGUgd2hpY2ggaXMgbm90IHdhbnRlZAo+IGR1ZSB0byB0aGUgaW5jcmVhc2VkIGluZnJhc3Ry
dWN0dXJlIGNvc3RzLCBsaWtlIGRpc2sgc3BhY2UgYW5kCj4gYWRkaXRpb25hbCBidWlsZCB0aW1l
IHdoaWNoIGlzIGh1Z2UgZm9yIHBhY2thZ2VzIGZlZWQuCj4gCj4gU28gbGV0cyBqdXN0IHRha2Ug
YSBzdGVwIGJhY2sgYW5kIG1ha2UgdGhlIHZmcDMtZDE2IGV4cGxpY2l0IGFnYWluLgo+IAo+IENj
OiBUb21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19uQG8yLnBsPgo+IENjOiBDaHJpc3RpYW4gTGFt
cGFydGVyIDxjaHVua2VleUBnbWFpbC5jb20+Cj4gUmVwb3J0ZWQtYnk6IFBhdWwgU3Bvb3JlbiA8
bWFpbEBhcGFyY2FyLm9yZz4KPiBGaXhlczogNDNkMWQ4ODUxMDYyICgidGVncmE6IGNvcnJlY3Qg
Y3B1IHN1YnR5cGUiKQo+IEZpeGVzOiAyZDYxZjg4MjFjN2MgKCJtdmVidTogY29ydGV4YTk6IGNv
cnJlY3QgY3B1IHN1YnR5cGUiKQo+IEZpeGVzOiA4ZGNjMTA4NzYwMmUgKCJ0b29sY2hhaW46IEFS
TTogRml4IHRvb2xjaGFpbiBjb21waWxhdGlvbiBmb3IgZ2NjIDgueCIpCj4gU2lnbmVkLW9mZi1i
eTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KCkZvciB0aGUgdGVncmEgdGFyZ2V0ClRl
c3RlZC1ieTogVG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4KCj4gLS0tCj4gIGlu
Y2x1ZGUvdGFyZ2V0Lm1rICAgICAgICAgICAgICAgICAgICAgfCAzICsrKwo+ICB0YXJnZXQvbGlu
dXgvbXZlYnUvY29ydGV4YTkvdGFyZ2V0Lm1rIHwgMiArLQo+ICB0YXJnZXQvbGludXgvdGVncmEv
TWFrZWZpbGUgICAgICAgICAgIHwgMiArLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS90YXJnZXQubWsg
Yi9pbmNsdWRlL3RhcmdldC5tawo+IGluZGV4IDliZDRjMTQ5MzZjMS4uOTRlYTFhOWUwMDAxIDEw
MDY0NAo+IC0tLSBhL2luY2x1ZGUvdGFyZ2V0Lm1rCj4gKysrIGIvaW5jbHVkZS90YXJnZXQubWsK
PiBAQCAtMTc5LDYgKzE3OSw5IEBAIGlmZXEgKCQoRFVNUCksMSkKPiAgICBlbmRpZgo+ICAgIGlm
bmVxICgkKGZpbmRzdHJpbmcgYXJtLCQoQVJDSCkpLCkKPiAgICAgIENQVV9UWVBFID89IHhzY2Fs
ZQo+ICsgICAgaWZlcSAoJChDT05GSUdfU09GVF9GTE9BVCksKQo+ICsgICAgICBDUFVfQ0ZMQUdT
X3ZmcHYzID0gLW1mcHU9dmZwdjMtZDE2Cj4gKyAgICBlbmRpZgo+ICAgIGVuZGlmCj4gICAgaWZl
cSAoJChBUkNIKSxwb3dlcnBjKQo+ICAgICAgQ1BVX0NGTEFHU182MDNlOj0tbWNwdT02MDNlCj4g
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhOS90YXJnZXQubWsgYi90YXJn
ZXQvbGludXgvbXZlYnUvY29ydGV4YTkvdGFyZ2V0Lm1rCj4gaW5kZXggY2RkNGQ4NmU0OTM2Li4y
YTc1NTk5YmM5YTMgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE5L3Rh
cmdldC5tawo+ICsrKyBiL3RhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhOS90YXJnZXQubWsKPiBA
QCAtMTAsNSArMTAsNSBAQCBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5tawo+ICBBUkNIOj1hcm0K
PiAgQk9BUkROQU1FOj1NYXJ2ZWxsIEFybWFkYSAzN3gvMzh4L1hQCj4gIENQVV9UWVBFOj1jb3J0
ZXgtYTkKPiAtQ1BVX1NVQlRZUEU6PXZmcHYzLWQxNgo+ICtDUFVfU1VCVFlQRTo9dmZwdjMKPiAg
S0VSTkVMTkFNRTo9ekltYWdlIGR0YnMKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3RlZ3Jh
L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L3RlZ3JhL01ha2VmaWxlCj4gaW5kZXggNWRkNGQ0Mzk4
NDllLi4wYjQ4ZmMxNmJhYTIgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L3RlZ3JhL01ha2Vm
aWxlCj4gKysrIGIvdGFyZ2V0L2xpbnV4L3RlZ3JhL01ha2VmaWxlCj4gQEAgLTExLDcgKzExLDcg
QEAgQk9BUkQgOj0gdGVncmEKPiAgQk9BUkROQU1FIDo9IE5WSURJQSBUZWdyYQo+ICBGRUFUVVJF
UyA6PSBhdWRpbyBib290LXBhcnQgZGlzcGxheSBleHQ0IGZwdSBncGlvIHBjaSBwY2llIHJvb3Rm
cy1wYXJ0IHJ0YyBzcXVhc2hmcyB1c2IKPiAgQ1BVX1RZUEUgOj0gY29ydGV4LWE5Cj4gLUNQVV9T
VUJUWVBFIDo9IHZmcHYzLWQxNgo+ICtDUFVfU1VCVFlQRSA6PSB2ZnB2Mwo+ICAKPiAgS0VSTkVM
X1BBVENIVkVSIDo9IDUuNAo+ICBLRVJORUxfVEVTVElOR19QQVRDSFZFUiA6PSA1LjQKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4g
Ci0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
