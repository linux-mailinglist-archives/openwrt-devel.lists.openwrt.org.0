Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE7A1B137D
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 19:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fraRmOZ/jpWcTlAJ+ko30hxHCwM/o1q3KEVdAAwC6Y=; b=rJaSsi5bOQZNFy
	2sdFAWW0vkqomOIM2B1iaGtv+LeJXfUPqccA08/k5O/3LRVANZYxVcnFZfj3BoEiKtDKwhMLfPmy4
	WR0YKXpta5YF5bOjh4wOlBSl+kq14QIxyxDqCSInkJa/tcy6+OCtHXeTm4ubqvMpp111V7NfIO3hU
	PEcrGT2NbFN8hAoBheT3pRx5I0hFXcUK4DU7l9o70nj9Wve/huKNWWx7OKZGI6MFgfLKrRRosUyOD
	lLftQBAJTWxuSXRUF/31bWmam6hfP7EQsOgzF3PhaYxKoJQZa14KIMzaIs4Gbu+o1ZnVLU8F/QSKg
	12vIw6zay42hrMSfi8fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaWh-0001Gq-Dw; Mon, 20 Apr 2020 17:48:11 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaVs-0000XT-ED
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 17:47:21 +0000
Received: from [192.168.1.19] (iphoneXS-philip.redfish-solutions.com
 [192.168.1.19]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03KHlIsS014812
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
 Mon, 20 Apr 2020 11:47:18 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 20 Apr 2020 11:47:17 -0600
Message-Id: <DFD58001-0578-43AA-A3EF-A5D21BF3A2F0@redfish-solutions.com>
References: <20200420071833.GA50609@meh.true.cz>
In-Reply-To: <20200420071833.GA50609@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: iPhone Mail (17E262)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_104720_756815_A8B68FC5 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Can build x86_64 because of ntf_reject_ipv4.ko
 missing
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIEFwciAyMCwgMjAyMCwgYXQgMToxOCBBTSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4gCj4g77u/UGhpbGlwIFByaW5kZXZpbGxlIDxwaGlsaXBwX3N1YnhAcmVk
ZmlzaC1zb2x1dGlvbnMuY29tPiBbMjAyMC0wNC0xOSAyMTo0NzoxOV06Cj4gCj4gSGksCj4gCj4+
IEkganVzdCByZWJhc2VkIHRvIG9wZW53cnQgbWFzdGVyIHRvZGF5LCBhbmQgdHJpZWQgdG8gcmVi
dWlsZCBmcm9tIHNjcmF0Y2ggYnV0IEnigJltIGdldHRpbmc6Cj4gCj4gU28gcGVyaGFwcyBzb21l
dGhpbmcgcmVsYXRlZCB0byB5b3VyIGxvY2FsIGNoYW5nZXMvc2V0dXAvdHJlZT8gQnVpbGRib3Rz
IGFyZQo+IGdyZWVuLCBJIGRvbnQgcmVtZW1iZXIgc2VlaW5nIGJyb2tlbiB4ODYvNjQgYnVpbGQg
YW5kIEkgYnVpbGQgYW5kIHJ1biB0ZXN0IGl0Cj4gd2l0aCBldmVyeSBrZXJuZWwgYnVtcC4gSXQn
cyBpbmNyZW1lbnRhbCBsb2NhbCBidWlsZCBhbmQgYnVpbGQgZnJvbSBzY3JhdGNoIG9uCj4gQ0ku
Cj4gCj4gLS0geW5lenoKCkFob2ogUGV0ciwKCldoYXTigJlzIHRoZSBkaWZmZXJlbmNlIGJldHdl
ZW4gbmZfcmVqZWN0LmtvIGFuZCBuZnRfcmVqZWN0LmtvIGFueXdheT8KCi1QaGlsaXAKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
