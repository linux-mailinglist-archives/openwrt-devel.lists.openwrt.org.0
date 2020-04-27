Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E3F1BACF5
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 20:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiCaqCIGlBtuqVfBpmrwnCxLYpffHySBwV2FIM1/McE=; b=R8LOPmRKsRi/Nk
	/uH6F6/L0y0IIzbuv6sYwnTdbMMvxZLUfZPCnC7BVnJgrPQetQqb509esexSxLy+mQ2xnpvywqwlq
	hOcSg0WNNxqqkawVwAxBj/bNEQmXFMBznjudj9JN/54GAnx11uamGXM6TRL2R0KHyIAf8WM8iBq/z
	h6mCJGQncxkLx339SBWECE1tJhuIWx7VBCz7MP1fDFbtxDE/9mqodfvh3RuMTEiKc10TNxNFO7ESF
	SlnyZa6UiWRf8nueMSB/bNqK1aaUF8B7BrtCj/0eS6pJDLiTM7ut1lrAWPGfQO7utC6ikw/JgGrqC
	EvQdzWOQYGTtIiOjY8Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8fG-0001dk-Si; Mon, 27 Apr 2020 18:39:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8f7-0001cs-91
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 18:39:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CCB442A0DF3;
 Mon, 27 Apr 2020 19:39:23 +0100 (BST)
Date: Mon, 27 Apr 2020 20:39:21 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <20200427203921.57d0d1c6@collabora.com>
In-Reply-To: <20200427191922.0202180c@xps13>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-7-boris.brezillon@collabora.com>
 <20200427191922.0202180c@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_113925_456545_4C21B744 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 6/9] mtd: rawnand: bcm47xx: Get rid of
 the legacy implementation
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCAyNyBBcHIgMjAyMCAxOToxOToyMiArMDIwMApNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKCj4gSGkgQm9yaXMsCj4gCj4gQm9yaXMgQnJlemls
bG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGUgb24gU3VuLCAxOSBBcHIK
PiAyMDIwIDE0OjUxOjM3ICswMjAwOgo+IAo+ID4gTm93IHRoYXQgZXhlY19vcCgpIGlzIGltcGxl
bWVudGVkIHdlIGRvbid0IG5lZWQgdG8gaW1wbGVtZW50IGFsbCB0aG9zZQo+ID4gbGVnYWN5IGhv
b2tzLCB3aGljaCBzaW1wbGlmaWVzIHRoZSBjb2RlIHF1aXRlIGEgYml0Lgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
Pgo+ID4gLS0tCj4gPiAgLi4uL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvYmNtNDd4eG5mbGFzaC5o
ICAgIHwgICA2IC0KPiA+ICAuLi4vbXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvb3BzX2JjbTQ3
MDYuYyAgfCAzMTUgLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMjEg
ZGVsZXRpb25zKC0pICAKPiAKPiBMb3ZlIHRoZSBkaWZmc3RhdCEKCldlbGwsIHRoZSByZWFsIGRp
ZmZzdGF0IGlzIGluIHRoZSBjb3ZlciBsZXR0ZXIsIGJ1dCB5ZXMsIGl0J3MgbmljZSB0bwpzZWUg
aG93IGV4ZWNfb3AoKSBjYW4gc2ltcGxpZnkgdGhpbmdzIHF1aXRlIGEgYml0LiBJJ20gbW9yZSBp
bXByZXNzZWQKYnkgdGhlIHJlYWRhYmlsaXR5IGltcHJvdmVtZW50IHRob3VnaCA7LSkuCgo+IAo+
IFJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+
IAo+IFRoYW5rcywKPiBNaXF1w6hsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
