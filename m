Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543B690719
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 19:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r8OOvb3nHzICqmnvDHOp7j7o7evzMdbLSKHSsHWblzQ=; b=HHmOCR1A6k2lDlVNytmmemHvR
	1nVj5pGivbVqrR6selcd+hRIyd1qrTaw6nzgXfHl9StWckYhec1sywgxGhQD0CkMKC/EyZHExr3oo
	LQfGbtN5I8Lq/AyxTKwvpFKbltci1+G0v3jDIY7RLpi310WZtWYP9vSie0uTDddZnAJJepHgwQ9T7
	GkC+bJObBMZHECTTCx8kVSvXgs4SaiJuYTjEWzAWqCA830I0T070cFze8O2MPo/mwldOd1WcEUPqO
	uGq5VJMf7vcPQ78RUBhzJ5s67M7DczBda66Wa9XPkTR1r/HEHv59tQKIU2O2XP4sy+4iFZbhRMxN/
	kgqHFqXWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygDg-0004Fw-3g; Fri, 16 Aug 2019 17:40:56 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygD4-0004CA-6w
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 17:40:21 +0000
Received: from pd95fd441.dip0.t-ipconnect.de ([217.95.212.65]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hygCz-0007SN-V0; Fri, 16 Aug 2019 19:40:14 +0200
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
References: <20190816142848.14412-1-zajec5@gmail.com>
 <e684cf3e-12fb-ef97-1f9d-cf780bf7d775@phrozen.org>
 <87sgq184pe.fsf@miraculix.mork.no>
From: John Crispin <john@phrozen.org>
Message-ID: <2cbb663b-85b5-c986-67c7-b0252d1aa853@phrozen.org>
Date: Fri, 16 Aug 2019 19:40:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <87sgq184pe.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_104018_743044_01FCBC77 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: support passing "options"
 to the "sysupgrade" ubus method
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE2LzA4LzIwMTkgMTg6MTcsIEJqw7hybiBNb3JrIHdyb3RlOgo+IEpvaG4gQ3Jpc3BpbiA8
am9obkBwaHJvemVuLm9yZz4gd3JpdGVzOgo+Cj4+PiArCQlmb3IgKGMgPSBuYW1lICsgc3RybGVu
KHByZWZpeCk7ICpjOyBjKyspIHsKPj4+ICsJCQkqYyA9IHRvdXBwZXIoKmMpOwo+Pj4gKwkJfQo+
Pj4gKwo+PiBhbmQsIG1hdHRlciBvZiB0YXRzZSwgYnV0IGknZCBkcm9wIHRoZSB0cmF2b2x0YSBi
cmFja2V0cyBvbiBzaW5nbGUKPj4gbGluZSBjbGF1c2VzCj4gSSB0aG91Z2h0IDw+IHdlcmUgInRy
YXZvbHRhIGJyYWNrZXRzIiwgcmVmCj4gaHR0cDovL3d3dy5tb3JldGhpbmdzLmNvbS9mYW4vcXVl
bnRpbl90YXJhbnRpbm8vcHVscF9maWN0aW9uL3B1bHBfZmljdGlvbjE3MjAuanBnCj4gaHR0cDov
L3d3dy5tb3JldGhpbmdzLmNvbS9mYW4vcXVlbnRpbl90YXJhbnRpbm8vcHVscF9maWN0aW9uL3B1
bHBfZmljdGlvbjE3MTAuanBnCj4KPgo+IEJqw7hybi4KCkkga25vdyB0aGVtIGFzIHRoZXNlCgpo
dHRwczovL2Nkbi0wMi5pbmRlcGVuZGVudC5pZS9taWdyYXRpb25fY2F0YWxvZy9Ob24tU3RhZmYv
YXJ0aWNsZTI1MjAyNDgyLmVjZS8zZWMxMy9BVVRPQ1JPUC93NjIwLzM1OTU1Ny5qcGcKCgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
