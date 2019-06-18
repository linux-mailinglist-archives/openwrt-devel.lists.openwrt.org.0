Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145EC4A731
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 18:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oiyDI/3wqOEWApX+aLYSGwvLn/uvfTVXVn6UFLvJGP8=; b=JtNNUGFIhmARgYMiRKuhvDhpl
	vDlexnpWSdDSsxBm4cRnG2byOX7md3ZX5YDVprSdudlwHnTRyM21p1NIyObiX+XSZKIBmy7dXy4RP
	th41dxmuS/K+2ZZ9QW/MiHh34CCD8s7yu/jbzDp8WAZA0FJnpc1uKm0tWlpJWF5ACvfCaoeIeB32Z
	WDYrlPDkR11jyE/MPo7aL0Vq1Xnwu6nkPqMl+jTDeK/XprGiZjr7lZD6wFG1yUwFggiWVtq1w+vN7
	n/DgRTTvqWhYTzABZxrQz9l4CglxoAtUgGq7XnB0j4rT70AWGy4GoDr8S3R0QV31MNVdsfgITAA3t
	6BDACjWaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdH95-0002as-FM; Tue, 18 Jun 2019 16:39:43 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdH8r-0002Y2-Uz; Tue, 18 Jun 2019 16:39:31 +0000
Received: from p5dcfbabb.dip0.t-ipconnect.de ([93.207.186.187]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hdH8q-0004hC-8i; Tue, 18 Jun 2019 18:39:28 +0200
From: John Crispin <john@phrozen.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
References: <10485eb8-934c-cbb7-d636-5cd18b2be03e@phrozen.org>
Message-ID: <c87c5dd3-cd65-1f66-d990-266c53897d2c@phrozen.org>
Date: Tue, 18 Jun 2019 18:39:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <10485eb8-934c-cbb7-d636-5cd18b2be03e@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_093930_154010_67C387E3 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] download server downtime
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE4LzA2LzIwMTkgMTg6MzAsIEpvaG4gQ3Jpc3BpbiB3cm90ZToKPiBIaSwKPgo+IHRoZSBE
TCBzZXJ2ZXIgd2lsbCBnbyBkb3duIGluIGEgZmV3IG1pbnV0ZXMgZm9yIG1haW50ZW5hbmNlLCBp
ZiBhbGwgCj4gZ29lcyB3ZWxsIGl0J2xsIGJlIGJhY2sgdXAgd2l0aGluIHRoZSBob3VyCj4KPiDC
oMKgwqAgSm9obgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IG9wZW53cnQtYWRtIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtYWRtQGxpc3RzLm9w
ZW53cnQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWFkbQoKCkFuZCBpdHMgYmFjaywgdGhhdCB3ZW50IGZhc3RlciB0aGFuIGV4cGVjdGVk
CgogwqDCoMKgIEpvaG4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
