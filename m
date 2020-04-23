Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9821B65C5
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 22:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fNguB2wRQEqmFK8jldk7A3Fg4I7Osz5qoLAa1WmHDU=; b=WLI3JwV/lSCiqF
	F8o3q07csHbw1RzOuWaFwOO6IOBVwxx1OvE8VH5bjTkLAU7d6booY/VnfKMDVrGSLp9qic7C+RLBE
	tNvHnzhXeWSVyNbO5E20oiLhI2kspOC4+9t+jUAzgzDV11i48P/8TV7lG1c1WPU/0DJ9PtXlr0Bnu
	5XUgvvT+mTvkWT3hnHPeTi0L917c9A1ZNmq8o0bAc6aHarb3+MJatkwTTeKIDy8vgHOg8sRJTRomS
	KhtL7SlZXBeLwMtegsz7ghNo9C9ngzc1BzK6M3FsocLJWNWilFN5aRHwLt37Kb9PE+kyAnlkv54pA
	qK53WSfeVUdDQAvI5DSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRioV-0007q8-Ul; Thu, 23 Apr 2020 20:51:15 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRioP-0007nq-Cr
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 20:51:10 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03NKp0Mo005355
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Apr 2020 14:51:00 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <CABwr4_uhWJck651=0T7B_Jn5s6oo5EiFLsff3dXW00qv7W0__A@mail.gmail.com>
Date: Thu, 23 Apr 2020 14:51:00 -0600
Message-Id: <B3371271-6F1A-436C-926A-E106C7AA0614@redfish-solutions.com>
References: <2247807.iZASKD2KPV@tool> <20200423084100.GA76955@meh.true.cz>
 <CABwr4_uhWJck651=0T7B_Jn5s6oo5EiFLsff3dXW00qv7W0__A@mail.gmail.com>
To: =?utf-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_135109_524318_DFB81508 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] kernel: add package
 linkstation-poweroff driver
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
Cc: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIEFwciAyMywgMjAyMCwgYXQgMzowNyBBTSwgRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVs
YXMgPGRnY2J1ZXVAZ21haWwuY29tPiB3cm90ZToKPiAKPiBFbCBqdWUuLCAyMyBhYnIuIDIwMjAg
YSBsYXMgMTA6NDEsIFBldHIgxaB0ZXRpYXIgKDx5bmV6ekB0cnVlLmN6PikgZXNjcmliacOzOgo+
PiAKPj4gRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwuY29tPiBbMjAy
MC0wNC0yMiAyMzo0MTo1Nl06Cj4+IAo+PiBIaSwKPj4gCj4+PiBUaGlzIHBhY2thZ2UgYWRkcyB0
aGUgZHJpdmVyIGZvciBpbXBsZW1lbnRpbmcgdGhpcyBmdW5jdGlvbi4KPj4gCj4+IEkgZmFpbCB0
byBzZWUgaG93IGlzIHRoaXMgZHJpdmVyIE9wZW5XcnQgc3BlY2lmaWMsIHdoeSB0aGUgZHJpdmVy
IHNob3VsZCBiZQo+PiBtYWludGFpbmVkIGJ5IE9wZW5XcnQuIEluIG90aGVyIHdvcmRzLCBwbGVh
c2UgZml4IHRoaXMgdXBzdHJlYW0gYW5kIHRoZW4ganVzdAo+PiBiYWNrcG9ydCB0aGUgZml4ZXMg
aGVyZSwgdGhhbmtzLgo+PiAKPj4gLS0geW5lenoKPiAKPiBIaSBQZXRyLCBzbyBJIHNob3VsZCBz
ZW5kIHRoZSBwYXRjaCB0byBMaW51eCBBUk0gS2VybmVsIHVwc3RyZWFtIGFuZAo+IHRoZW4gYmFj
a3BvcnQgdGhpcyBwYWNrYWdlIGFzIGEgcGF0Y2ggaW50byB0aGUga2VybmVsIHNwZWNpZmljIHRh
cmdldAo+IHBhdGNoZXMsIHJpZ2h0Pwo+IAo+IFJlZ2FyZHMKPiBEYW5pZWwKCgpJZiB0aGV5IGFj
Y2VwdCBpdCwgeW91IHdvbuKAmXQgbmVlZCB0byBkbyBhbnl0aGluZ+KApiBpdCB3aWxsIGV2ZW50
dWFsbHkgYXBwZWFyIGluIG91ciB0cmVlIGFzIHdlIGFkb3B0IHRoZSBrZXJuZWwgcmV2aXNpb24g
aGF2aW5nIHRoZSB1cHN0cmVhbSBmaXhlcyBpbiBpdC4KCi1QaGlsaXAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
