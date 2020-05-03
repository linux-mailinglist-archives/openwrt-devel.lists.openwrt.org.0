Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCBA1C2E88
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 20:36:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8JAIDiA7m2CHePIzs5s4TWgLP7DOvQZ68dfDF9OMdA=; b=F3wCqteVcNiCPV
	mg9qXSi60TtOcD/NV1SmU9fM+M75G4llfawd3UUPx3ozdgIXooKdonV57toTF54uAnGsvRsVgIYPC
	CnqaRMIK4sG3be8Wmxjxx/0O2AsFYMS3ZIiV6nGH1GGEvlVnO7cHC2FMIn2Hmm1zr2mLA/dVIWo0c
	m3BmNKwaoDAeu1+pGOZ1RFqrwrIvfnId+31fj80K42MX4XcijqDtiQUuxBzO/FFuhxfK4NpiAyppS
	KgSXHnWsbbmzLY70ASe7srsaxT0XK61IdRp5IzRSWP3hZUPmxd2Z8XTunPGn4wQ4ag/WwWOeOT/X/
	RrzaSZXdCWZF+Y6VXucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVJTW-0001Di-Nk; Sun, 03 May 2020 18:36:26 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVJTR-0001Co-TF
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 18:36:23 +0000
Received: from macmini.redfish-solutions.com (openwrt.redfish-solutions.com
 [192.168.1.252]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 043IaHQY031575
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 3 May 2020 12:36:17 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <19425.1588520852@localhost>
Date: Sun, 3 May 2020 12:36:17 -0600
Message-Id: <8FABDF96-45A9-46A3-A328-E94EF89AB5B5@redfish-solutions.com>
References: <532E3E19-A97E-46A7-A7BF-E527EEAB75F4@redfish-solutions.com>
 <19425.1588520852@localhost>
To: Michael Richardson <mcr@sandelman.ca>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_113622_107885_A10122AF 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Proposal: Differentiating "skinny" platforms
 from others...
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIE1heSAzLCAyMDIwLCBhdCA5OjQ3IEFNLCBNaWNoYWVsIFJpY2hhcmRzb24gPG1jckBz
YW5kZWxtYW4uY2E+IHdyb3RlOgo+IAo+IAo+IEkgdGhpbmsgdGhhdCBDT05GSUdfU0tJTk5ZIGlz
IGEgZ29vZCBjb25jZXB0LCBidXQgZm9yIGFsbCB0aGUgcmVhc29ucyB5b3UKPiBjaXRlOgo+IAo+
IEFidXNlIERlcGFydG1lbnQgPGFidXNlQHJlZGZpc2gtc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4+
IFNvbWUgb2YgdXMgd29yayB3aXRoIG1vcmUgY3VycmVudCBtYWNoaW5lcyB0aGF0IGFyZSBhbHNv
IG1vcmUgY2FwYWJsZSwKPj4gcmVhbGl6aW5nIHRoYXQgZXZlbnR1YWxseSBtYWNoaW5lcyB3aXRo
IDMyTUIgb2YgRFJBTSBhbmQgMTI4TUIgb2YgRmxhc2gKPj4gd2lsbCDigJxhZ2Ugb3V04oCdIHRo
cm91Z2ggZmFpbHVyZSBhbmQgc2NhcmNpdHkuCj4gCj4+IEJ5IHRoZW4gd2XigJlsbCBoYXZlIGEg
bmV3IOKAnG5vcm1hbOKAnSBhYm91dCB3aGF0IHRoZSBtaW5pbXVtIGV4cGVjdGF0aW9ucwo+PiBh
cmUsIGFuZCB0aGUgY29udmVyc2F0aW9uIHdpbGwgY29udGludWUsIGJ1dCB3aXRoIGRpZmZlcmVu
dAo+PiBwYXJhbWV0ZXJzLgo+IAo+PiBVbmRlcnN0YW5kaW5nIHRoYXQgdGhlIGRlZmluaXRpb24g
b2YgYSDigJxza2lubnnigJ0gbWFjaGluZSBpc27igJl0IHRvZGF5Cj4+IHdoYXQgaXQgd2FzIDUg
eWVhcnMgYWdvLCBhbmQgdGhhdCBpdCB3b27igJl0IGJlIHRoZSBzYW1lIGFnYWluIGluIGFub3Ro
ZXIKPj4gNSB5ZWFycywgSeKAmWQgbGlrZSB0byBwcm9wb3NhbCBhIENPTkZJR18gc3ltYm9sIHRo
YXQgZGVub3RlcyB0aGF0IGEKPj4gcGxhdGZvcm0gaXMgaW4gYSBjbGFzcyBvZiBjb25zdHJhaW5l
ZCBhcmNoaXRlY3R1cmVzLgo+IAo+IGl0IHNlZW1zIHRoYXQgU0tJTk5ZIHNob3VsZCBiZSBhbiBp
bnRlZ2VyIG9mIHNvbWUga2luZCwgbm90IGEgYm9vbGVhbi4KPiAKCgpJZiB3ZSB3ZXJlIGdvaW5n
IHRvIGRvIGl0IGFzIGEgc2NhbGFyIChvciBjb250aW51dW0pLCB0aGVuIGl0IHdvdWxkIG1ha2Ug
c2Vuc2UgdG8gZG8gaXQgZm9yIGFsbCBwbGF0Zm9ybXMsIGV2ZW4gaWYgc29tZSBwbGF0Zm9ybXMg
aW5oZXJpdGVkIGEg4oCccHJvY2Vzc29yIGFyY2hpdGVjdHVyZeKAnSBkZWZhdWx0LgoKLVBoaWxp
cAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
