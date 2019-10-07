Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0B9CDC03
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 09:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbHLsbGs6Gw7go1E6lyBJH1Hi9mTe3kvb71ACN/IpvE=; b=QwiKoIfRfUozFe
	rHPmdnclbYazxvFz4jZ2j3i7WQsGrLZi1IxAJV9EBQlT6SQhOE5dM283Gv2i0pQDflU/SMrSIxTTh
	W7RN6R3hE066juBunACGmuBkMf6GOWXRpAVtUjlBanpiR5WwQaw3BMZyKR5Mf/lFKdWtwGCnZUVAR
	lbi3ZVifyFiskDTVryPMn0+smIqmY5JIL7hu8YmkVChtvg5nuwmbvBYsbiAXbkAaVP+bQtwOCoZna
	eCpNOYjOz3zt5PAaylGS1m9ji4OBoO2YD1gqZjfNFccoNyHhA173v3TRpatr4UnKWOsPlzE5yqTYP
	BDaBxEk/+XtmL8JI9F3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHN1m-0007U1-Rp; Mon, 07 Oct 2019 07:01:54 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHN1d-0007Tg-T0
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 07:01:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B5610609D2EB;
 Mon,  7 Oct 2019 09:01:44 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id jpZztFuySzTt; Mon,  7 Oct 2019 09:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 6EC80608313B;
 Mon,  7 Oct 2019 09:01:44 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4RhXkFLAXwfB; Mon,  7 Oct 2019 09:01:44 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 459BC606368D;
 Mon,  7 Oct 2019 09:01:44 +0200 (CEST)
Date: Mon, 7 Oct 2019 09:01:44 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <1234311876.17146.1570431703997.JavaMail.zimbra@nod.at>
In-Reply-To: <a3556167-cb60-903c-fcb3-985a4108c37a@ncentric.com>
References: <1570054885-11705-1-git-send-email-tharvey@gateworks.com>
 <5022641f-0bdc-d055-c232-18bb3da486af@ncentric.com>
 <a3556167-cb60-903c-fcb3-985a4108c37a@ncentric.com>
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: imx6: bootscript: enable UBI fastmap support
Thread-Index: uXpZESRPpc4fOh6ht7+jK7PDFHbk/A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_000147_328210_815BA971 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] imx6: bootscript: enable UBI
 fastmap support
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
Cc: Tim Harvey <tharvey@gateworks.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S29lbiwKCi0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiAKPiBJJ20gYWxzbyBzZWVp
bmcgdGhpcyB3YXJuaW5nOgo+IAo+IAo+IFvCoMKgwqAgMC4wMDAwMDBdIEtlcm5lbCBjb21tYW5k
IGxpbmU6IGNvbnNvbGU9dHR5bXhjMSwxMTUyMDAgdWJpMDp1YmkKPiB1YmkubXRkPTIgcm9vdGZz
dHlwZT1zcXVhc2hmcyx1YmlmcyB1YmkuZm1fYXV0b2NvbnZlcnQ9MQo+IAo+IFvCoMKgwqAgMi4z
NTYzMDRdIHViaTA6IGRlZmF1bHQgZmFzdG1hcCBwb29sIHNpemU6IDk1Cj4gW8KgwqDCoCAyLjM2
MDg1MF0gdWJpMDogZGVmYXVsdCBmYXN0bWFwIFdMIHBvb2wgc2l6ZTogNDcKPiBbwqDCoMKgIDIu
MzY1Njg0XSB1YmkwOiBhdHRhY2hpbmcgbXRkMgo+IFvCoMKgwqAgMi41NTEzMTddIHJhbmRvbTog
Y3JuZyBpbml0IGRvbmUKPiBbwqDCoMKgIDIuNzg2NzA4XSB1YmkwOiBzY2FubmluZyBpcyBmaW5p
c2hlZAo+IAo+IFvCoMKgwqAgMi43OTUzODBdIHViaTAgd2FybmluZzogdWJpX2ViYV9pbml0OiBj
YW5ub3QgcmVzZXJ2ZSBlbm91Z2ggUEVCcwo+IGZvciBiYWQgUEVCIGhhbmRsaW5nLCByZXNlcnZl
ZCAzOCwgbmVlZCA0MMKgwqDCoCDCoMKgwqAgPC0tLQo+IAo+IFvCoMKgwqAgMi44MDY2NTFdIHVi
aTA6IGF0dGFjaGVkIG10ZDIgKG5hbWUgInViaSIsIHNpemUgMjM5IE1pQikKPiBbwqDCoMKgIDIu
ODEyMTUxXSB1YmkwOiBQRUIgc2l6ZTogMTMxMDcyIGJ5dGVzICgxMjggS2lCKSwgTEVCIHNpemU6
IDEyNjk3Ngo+IGJ5dGVzCj4gW8KgwqDCoCAyLjgxOTA1MV0gdWJpMDogbWluLi9tYXguIEkvTyB1
bml0IHNpemVzOiAyMDQ4LzIwNDgsIHN1Yi1wYWdlIHNpemUgMjA0OAo+IFvCoMKgwqAgMi44MjU4
NTVdIHViaTA6IFZJRCBoZWFkZXIgb2Zmc2V0OiAyMDQ4IChhbGlnbmVkIDIwNDgpLCBkYXRhCj4g
b2Zmc2V0OiA0MDk2Cj4gW8KgwqDCoCAyLjgzMjgyNV0gdWJpMDogZ29vZCBQRUJzOiAxOTEyLCBi
YWQgUEVCczogMCwgY29ycnVwdGVkIFBFQnM6IDAKPiBbwqDCoMKgIDIuODM4OTM3XSB1YmkwOiB1
c2VyIHZvbHVtZTogMywgaW50ZXJuYWwgdm9sdW1lczogMSwgbWF4LiB2b2x1bWVzCj4gY291bnQ6
IDEyOAo+IFvCoMKgwqAgMi44NDYxNzVdIHViaTA6IG1heC9tZWFuIGVyYXNlIGNvdW50ZXI6IDQv
MSwgV0wgdGhyZXNob2xkOiA0MDk2LAo+IGltYWdlIHNlcXVlbmNlIG51bWJlcjogMTY1OTY5OTYw
NQo+IFvCoMKgwqAgMi44NTUzMjddIHViaTA6IGF2YWlsYWJsZSBQRUJzOiAwLCB0b3RhbCByZXNl
cnZlZCBQRUJzOiAxOTEyLCBQRUJzCj4gcmVzZXJ2ZWQgZm9yIGJhZCBQRUIgaGFuZGxpbmc6IDM4
Cj4gW8KgwqDCoCAyLjg2NDY1N10gdWJpMDogYmFja2dyb3VuZCB0aHJlYWQgInViaV9iZ3QwZCIg
c3RhcnRlZCwgUElEIDgyNgo+IFvCoMKgwqAgMi44NzE0OTZdIGJsb2NrIHViaWJsb2NrMF8xOiBj
cmVhdGVkIGZyb20gdWJpMDoxKHJvb3RmcykKPiBbwqDCoMKgIDIuODc3MDI1XSB1YmlibG9jazog
ZGV2aWNlIHViaWJsb2NrMF8xIChyb290ZnMpIHNldCB0byBiZSByb290Cj4gZmlsZXN5c3RlbQo+
IAo+IAo+IEl0IGRvZXNuJ3Qgc2VlbSB0byBiZSBhIGNvaW5jaWRlbmNlIHRoYXQgaXQncyBtaXNz
aW5nIDIgUEVCJ3Mgd2hpbGUKPiBmYXN0bWFwIHVzZXMgMiBvZiB0aGVtCgpEaWQgeW91IGNyZWF0
ZSB0aGlzIFVCSSBvZmZsaW5lPyBJZiB5b3UgY2hvb3NlIGEgbGF5b3V0IHdoaWNoIGxlYXZlcyBh
bG1vc3QKbm8gZW1wdHkgYmxvY2tzLCB0aGlzIGNhbiBoYXBwZW4uCgpUaGFua3MsCi8vcmljaGFy
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
