Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750E39D9D9
	for <lists+openwrt-devel@lfdr.de>; Tue, 27 Aug 2019 01:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NOc0HFKwvhNcHohL7Dmjod6XauMYx0tSSo3vv+4hFFs=; b=ZrZ7o0L22PKKkrnwd7o0ao9C8
	NelMtBsfuN1LY5568+F92mlwDd9DXYXfUTlhtePEtUiyKl8ObvulfWdT08M/rvOot2Lzyal4Dl6sb
	tYRngFZCkKe7kMI2mwjMNIU9HhQezfnaT1Ko7NELsRRrTN7lqe5SkpCv7pFwVnsoa3fOolKu/f6wm
	Jzx3+3ckD7NHmJFuNWdI94Bl6bHYGeoXlZ9P48MZvDURoeH7hBJ0Pg/fK2frlcJ03QmO1NC9i5RyS
	FUiU/R87jD1JneqS9ls8ugNE3YrAq3wF3rXa/RBA293gz+bVM1/J1Cu27+aPzYk0QxzRy60UXMR1L
	gZtlxAwlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2OH0-00085S-DI; Mon, 26 Aug 2019 23:19:42 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2OGp-000856-Ln
 for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 23:19:34 +0000
X-Originating-IP: 168.105.224.196
Received: from [168.105.224.196]
 (dhcp-168-105-224-196.wireless.manoa.hawaii.edu [168.105.224.196])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E7ADAFF808;
 Mon, 26 Aug 2019 23:19:17 +0000 (UTC)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
References: <0d49237b-8aa8-1792-46c5-d4c360a398f0@aparcar.org>
 <87ef18wdqo.fsf@miraculix.mork.no>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <152cc58b-5a6c-7c81-7eb0-5380865fdb87@aparcar.org>
Date: Mon, 26 Aug 2019 13:19:13 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87ef18wdqo.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_161931_867163_38112D02 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC] use Debian like release channel
 identifiers?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjUuMDguMTkgMjI6MDgsIEJqw7hybiBNb3JrIHdyb3RlOgo+IFBhdWwgU3Bvb3JlbiA8bWFp
bEBhcGFyY2FyLm9yZz4gd3JpdGVzOgo+Cj4+IGFzIDE5LjA3IGlzICpqdXN0IGFyb3VuZCB0aGUg
Y29ybmVyKiBJIHdhcyB3b25kZXJpbmcgaWYgdGhlcmUncyBhCj4+IGJldHRlciB3YXkgb2YgZGlz
dGluZ3Vpc2hpbmcgYmV0d2VlbiB2ZXJzaW9ucy4KPj4KPj4gUmlnaHQgbm93LCBJIHNlZSA0IGRp
ZmZlcmVudCAqY2hhbm5lbHMqIHdoaWNoIHNvbWV3aGF0IG1hdGNoIHRoZQo+PiBEZWJpYW4gc3R5
bGUsIHRoZXJlZm9yZSBhIHBvc3NpYmxlIG1hcHBpbmc6Cj4+Cj4+IDE4LjA2Lk4gLT4gc3RhYmxl
Cj4+IDE5LjA3LXJjTiAtPiB0ZXN0aW5nCj4+IDE5LjA3LVNOQVBTSE9UIC0+IHVuc3RhYmxlCj4+
IFNOQVBTSE9UIC0+IGV4cGVyaW1lbnRhbAo+IFRoaXMgbG9va3MgZmluZSByaWdodCBub3cuICBC
dXQgc3VjaCBtYXBwaW5ncyB0ZW5kIHRvIGNvbmZ1c2UgdXNlcnMgb3Zlcgo+IHRpbWUsIHdoZW4g
InN0YWJsZSIgc3VkZGVubHkgaXMgcmVkZWZpbmVkIHRvIDE5LjA3LjEsIDIyLjA5LjEgZXRjLiAg
QW5kCj4gd2hhdCBkbyB5b3UgY2FsbCAxOC4wNi45NyB3aGVuIDIyLjA5LjEgaXMgInN0YWJsZSI/
CgpJIGd1ZXNzIHRoYXQncyBhIGdvb2QgcG9pbnQsIGhvdyB0byBoYW5kbGUgbXVsdGlwbGUgc3Rh
YmxlIChwb2ludCkgCnJlbGVhc2VzIGF0IHRoZSBzYW1lIHRpbWU/IEknZCB0aGluayBhIHVzZXIg
cnVubmluZyAyMC41LjIgc2hvdWxkIGJlIApvZmZlcmVkIHRvIHVwZ3JhZGUgdG8gMjEuMC4xIGFu
ZCAyMC41LjMuIFdoZXJlYXMgdGhlIGZvcm1lciBpcyAKcmVjb21tZW5kZWQsIG5vdD8KCj4gRGVi
aWFuIGhhZCBhIGxvbmcgZGlzY3Vzc2lvbiBhYm91dCBkcm9wcGluZyBjb2RlIG5hbWVzIGluIGZh
dm91ciBvZgo+IHJlbGVhc2UgdmVyc2lvbnMgcmVjZW50bHkgU2VlOgo+IGh0dHBzOi8vbHduLm5l
dC9BcnRpY2xlcy83OTI2NDYvCgpUaGFua3MgZm9yIHRoZSBhcnRpY2xlLiBMb29raW5nIGF0IHNv
bWUgdmVuZG9yIGltcGxlbWVudGF0aW9ucywgdGhleSAKb2ZmZXIgc29tZXRoaW5nIGxpa2UgYSBz
dGFibGUgYW5kIGJldGEgY2hhbm5lbCwgd2hlcmUgdGhlIHN0YWJsZSBjaGFubmVsIAphbHNvICJz
dWRkZW5seSIgY2hhbmdlcyBvbmNlIGEgbmV3IHJlbGVhc2UgYXBwZWFycy4gSXNuJ3QgdGhhdCBk
ZXNpcmVkIAp0byBrZWVwIHVzZXJzIHdpdGggdGhlIGxhdGVzdCBzb2Z0d2FyZT8KCkFwcGx5aW5n
IHRoZSBzY2hlbWEgbWVudGlvbmVkIGFib3ZlLCBJJ2Qgc3VnZ2VzdCB0aGUgZm9sbG93aW5nIHVw
Z3JhZGUgCmJlaGF2aW9ycwoKKiAoc3RhYmxlKSBwb2ludCB1cGdyYWRlcyB0byBuZXdlciBwb2lu
dCByZWxlYXNlcyBvciBtYWpvciByZWxlYXNlLCBidXQgCm9ubHkgb25lIG1ham9yIGF0IGEgdGlt
ZS4gKG5vdCAxOS4wMSB0byAyMC4wMSBidXQgdG8gMTkuMDcgZmlyc3QpLgoKKiAodGVzdGluZykg
cmMgdXBncmFkZSB0byBuZXdlc3QgcG9pbnQgb3IgcmMgcmVsZWFzZSwgYnV0IGFsc28gbWF4IG9u
ZSAKaW4gYmV0d2Vlbi4gU28gMTkuMDctcmMyIHRvIDE5LjA3LXJjMyBvciAyMC4wMS1yYzEuCgoq
ICh1bnN0YWJsZSkgcmVsZWFzZSBzbmFwc2hvdCB0byB3aGF0ZXZlciBuZXdlc3QgcmVsZWFzZSBz
bmFwc2hvdCwgcmMgb3IgCnBvaW50LiBVcGdyYWRpbmcgZnJvbSBzbmFwIHRvIHJjIGNhbiBiZSBi
YXNlZCBvbiByZXZpc2lvbi4KCiogKGV4cGVyaW1lbnRhbCkgc25hcHNob3QgdG8gd2hhdGV2ZXIg
cmV2aXNpb24gc25hcHNob3QgaXMgbW9yZSByZWNlbnQKCkFzIHR3byByZWxlYXNlcyBhcmUgcGxh
bmVkIHBlciB5ZWFyLCBJIHNlZSBpdCBuZWNlc3NhcnkgdG8gc2ltcGxpZnkgdGhlIAp1cGdyYWRl
IHByb2Nlc3MgYmV0d2VlbiB0aG9zZS4KCj4gSSBhbSBub3Qgc3VyZSBpZiB0aGV5IGhhdmUgcmVh
Y2hlZCBhbnkgY29uY2x1c2lvbi4gIEJ1dCBJIGJlbGlldmUgd2UKPiBzaG91bGQgdGhpbmsgYWJv
dXQgdGhlIHBvc3NpYmxlIGRyYXdiYWNrcyBoZXJlIGJlZm9yZSBkZWNpZGluZyB0byBjaGFuZ2UK
PiB0aGUgcmVsZWFzZSBuYW1pbmcgeWV0IGFnYWluLiAgSSBmb3Igb25lIHdvdWxkIHByZWZlciBh
bnkgc2NoZW1lIHdoaWNoCj4gbGFzdGVkIG1vcmUgdGhhbiAyIHJlbGVhc2VzLi4uLgoKVmVyeSBy
aWdodCA6KQoKUGF1bAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
