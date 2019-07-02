Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B525C63D
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 02:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z04kB/YvnSCsd/iDXssKzstp57x9n/DL6V5K5DaHlDw=; b=XUTJV//Y1okglejF+RrFqogHZ
	+kchw7RinKiO+gefXWpnnH/GBiAxT9zgDmQlssCgoqYS7GzdNI+44TYdSVf/UDhS72myf4BsPD4mR
	0yFFd5D9J3W6xP1U6tNJj60Z+goVhMCwKOdF66sVS9gXluKs1pzUANXVg3Yt1DvZM87pIS4ujhezj
	YsPWpfh1x9Wr/UjTTaIHGt1IYmdw2wgz2ddBMZuXsaNmLe0Y7XqVi3uOdsZA/Tnsood9x/SOVYpeL
	tI/4sI8DqFxkFzm9+RXeJUz7usKXHfKhzPGs4ORwAlq3NlHxExaVRDYfSGbr0M04H3GQIk1vQsOCU
	EodA+zXvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi6Nz-00047E-9y; Tue, 02 Jul 2019 00:11:03 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi6Ng-00046g-Kz
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 00:10:45 +0000
Received: from JKLETSKY-MBP15.guidewire.com (unknown [199.91.43.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 3A3FD252A0;
 Mon,  1 Jul 2019 17:10:41 -0700 (PDT)
To: Hannu Nyman <hannu.nyman@iki.fi>, openwrt-devel@lists.openwrt.org
References: <c2ab63c9-7a8c-9282-8188-a7e0d3244749@allycomm.com>
 <9b2a9cfc-2c9f-2117-c05d-1782f4a6f6a0@iki.fi>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <5e4176bc-0d99-76f6-b279-45c170ab5bed@allycomm.com>
Date: Mon, 1 Jul 2019 17:10:41 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <9b2a9cfc-2c9f-2117-c05d-1782f4a6f6a0@iki.fi>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_171044_693002_A060B8A6 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] build: sysupgrade: kernel: mtd: Image too SMALL
 to Restore Config
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

VGhhbmtzISBCbG9ja3NpemUgdHVybmVkIG91dCB0byBiZSB0aGUgaXNzdWUgLS0gcmVzb2x2ZWQg
Zm9yIHRoZSBkZXZpY2VzIAppbiBxdWVzdGlvbi4KCkknbSBzdGlsbCBpbnRlcmVzdGVkIGluIGZp
bmRpbmcgb3V0IHdoZXJlIHRoZSBkZWZpbml0aW9uIG9mIHRoZSAKImRlZmF1bHQiIHN5c3VwZ3Jh
ZGUuaW1nCmlzIGZvdW5kIGluIG1ha2UgZmlsZXMgb2YgdGhlIGJ1aWxkIHN5c3RlbS4KCkplZmYK
CgpPbiA3LzEvMTkgMTo0NyBQTSwgSGFubnUgTnltYW4gd3JvdGU6Cj4+IFRoZSBzbWFsbGVyLCAi
ZmFpbGluZyIgaW1hZ2UgY29udGFpbnMgaW4gL2Rldi9tdGQyOgo+Cj4+IDAwM2VlYmQwIDAwIDAx
IDU5IDVhIGJlIGU3IDIwIDAwwqAgMDAgMDAgMDAgMDAgMDQgODAgMDAgMDDCoCB8Li5ZWi4uIAo+
PiAuLi4uLi4uLi58Cj4+IDAwM2VlYmUwwqAgMDAgMDAgZGMgZWIgMjAgMDAgMDAgMDDCoCAwMCAw
MCBmZiBmZiBmZiBmZiBmZiBmZiB8Li4uLiAKPj4gLi4uLi4uLi4uLi58Cj4+IDAwM2VlYmYwwqAg
ZmYgZmYgZmYgZmYgZmYgZmYgZmYgZmbCoCBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiAKPj4gfC4u
Li4uLi4uLi4uLi4uLi58Cj4+ICoKPj4gMDA0MDAwMDDCoCAxOSA4NSAyMCAwMyAwMCAwMCAwMCAw
Y8KgIGYwIDYwIGRjIDk4IDE5IDg1IGUwIDAxwqAgfC4uIAo+PiAuLi4uLi5gLi4uLi4ufAo+PiAw
MDQwMDAxMMKgIDAwIDAwIDAwIDM2IDVkIDQ0IDQ4IGZlwqAgMDAgMDAgMDAgMDEgMDAgMDAgMDAg
MDAgCj4+IHwuLi42XURILi4uLi4uLi4ufAo+PiAwMDQwMDAyMMKgIDAwIDAwIDAwIDAyIDAwIDAw
IDAwIDAwwqAgMGUgMDggMDAgMDAgOTcgOGYgMGEgNWIgCj4+IHwuLi4uLi4uLi4uLi4uLi5bfAo+
PiAwMDQwMDAzMMKgIDMxIGZmIDNkIGJjIDczIDc5IDczIDc1wqAgNzAgNjcgNzIgNjEgNjQgNjUg
MmUgNzQgCj4+IHwxLj0uc3lzdXBncmFkZS50fAo+Cj4KPiBUaGUgZmFpbHVyZSBtYXkgYWN0dWFs
bHkgYmUgb24gdGhlIGltYWdlIHN5c3VwZ3JhZGUgYXBwZW5kaW5nIGxvZ2ljIAo+IGR1cmluZyBz
eXN1cGdyYWRlL2ZsYXNoIHRpbWUsIGFuZCBub3QgaW4gdGhlIGJvb3QgdGltZSBsb2dpYy4gVGhl
IAo+IGludGVyZXN0aW5nIHBhcnQgaXMgdGhhdCB0aGUgYXBwZW5kZWQgc3lzdXBncmFkZSBkYXRh
IHN0YXJ0cyBhdCAKPiAweDQwMDAwMCBpbiBib3RoIGNhc2VzLCBldmVudGhvdWdoIHRoZSBmaXJt
d2FyZSBpbWFnZSBlbmRzIGF0IAo+IDB4M2ViMzcxMCBpbiB0aGUgZmFpbGluZyBjYXNlLiBJbiB0
aGUgZmFpbGluZyBjYXNlLCB0aGVyZSBpcyB0aHVzIGFuIAo+IGV4dHJhIDY0IGtCIG9mIGVtcHR5
IDB4ZmYgYmVmb3JlIHRoZSBhcHBlbmRlZCBzeXN1cGdyYWRlLnRneiwgYW5kIHRoYXQgCj4gcG9z
c2libHkgY2F1c2VzIHRoZSBzeXN1cGdyYWRlIGFyY2hpdmUgZGV0ZWN0aW9uIHByb2JsZW0gYXQg
dGhlIGJvb3QgCj4gdGltZSAoYXMgdGhlIGRldGVjdGlvbiBsb29rcyBwcm9wZXJseSBhdCAweDNm
MDAwMCBiYXNlZCBvbiB0aGUgCj4gc3BsaXQtZGV0ZWN0ZWQgamZmczIgc2l6ZSBhbmQgZmluZHMg
bm90aGluZykuCj4KPiBQb3NzaWJsZSBtaXNtYXRjaCBpbiB0aGUgZXJhc2VibG9jayBzaXplIGRl
dGVjdGlvbj8gTWF5YmUgdGhlIAo+IHN5c3VwZ3JhZGUgY3JlYXRpb24gc2NyaXB0IG9yIHBhZGpm
ZnMgdGhpbmtzIHRoYXQgeW91IGhhdmUgYSAxMjgga0IgCj4gZXJhc2UgYmxvY2sgaW5zdGVhZCBv
ZiA2NCBrQiwgYW5kIHBhZHMgdXAgdG8gMHg0MDAwMDAgaW5zdGVhZCBvZiAKPiAweDNmMDAwMCwg
c28gdGhhdCB0aGVlciBpcyBubyBkZWFkY29kZSBpbmRpY2F0b3IgYXQgMHgzZjAwMDAuCj4KPiBZ
b3VyIHNlY29uZGFyeSBOQU5EIGZsYXNoIHNlZW1zIHRvIGhhdmUgMTI4IGtCIGJsb2NrIHNpemU/
Cj4gwqDCoMKgwqAgc3BpLW5hbmQgc3BpMC4xOiAxMjggTWlCLCBibG9jayBzaXplOiAxMjggS2lC
LCBwYWdlIHNpemU6IDIwNDgsIAo+IE9PQiBzaXplOiAxMjgKPgo+IEFueSB3YXkgdGhhdCB5b3Ug
Z2V0IGludG8gcGljdHVyZSBoZXJlIGFuZCBjcmVhdGUgY29uZnVzaW9uIGFib3V0IHRoZSAKPiBO
T1IgZmxhc2ggYmxvY2sgc2l6ZT/CoCBEdWFsIE5PUi9OQU5EIGZsYXNoIHN5c3RlbXMgYXJlIHJh
cmUsIHdoaWNoIAo+IGNvdWxkIGV4cGxhaW4gd2h5IG5vYm9keSBoYXMgc3R1bWJsZWQgaW50byB0
aGlzIGVhcmxpZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
