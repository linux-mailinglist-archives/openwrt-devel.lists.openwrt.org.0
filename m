Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F555B32C
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 05:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9H6AjNNvzyJqTgjNC5Qb0zI38SEaMUtQ0KmKnoOr4M=; b=be1DHEim2YiLje
	ullCX+evjyAl4HHNzr5mzJ25fkObxrgpcMFQl518pGYUhWTiIE8SDkYvNQ/yheCE/FEcmK7KVcflc
	RFpGWieT+uloqBBUOyp79k+2t9eDEKmJXw+zIqq2/qj5P8XVbFpK3DZXHFVD1o40gLdthtX1KWAH3
	x+VIgGP6vpqk6zEo7I1LLBWguxG2dHfxiBUKFHzYnjHDwJdPyN/Bj6lnXkWHSJddzVZc9oW1iQ/UW
	2wpo3oQPakPxC7NYnH8757whG1RiH9+kJFfkfmtREs9wsaSH6OYn54iGvdTwSF4/CC4IG89Gah/5P
	1J7fZZ5xFe7RRkIadDFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhnPN-0001Qg-4z; Mon, 01 Jul 2019 03:55:13 +0000
Received: from mail.redfish-solutions.com ([66.232.79.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhnP1-0001QI-1q
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 03:54:52 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id x613scC8020104
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 30 Jun 2019 21:54:38 -0600
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <9D9B5264-BA3B-4C28-A1E9-4CAEFCAAA230@redfish-solutions.com>
Date: Sun, 30 Jun 2019 21:54:38 -0600
Message-Id: <BDF539B2-B99C-49BF-93E0-6127D937FA41@redfish-solutions.com>
References: <9D9B5264-BA3B-4C28-A1E9-4CAEFCAAA230@redfish-solutions.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_205451_163482_B7D0458E 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Issues with 4.19 and nft_reject_ipv4.ko after
 rebasing/updating
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIEp1biAzMCwgMjAxOSwgYXQgNjoxMyBQTSwgUGhpbGlwIFByaW5kZXZpbGxlIDxwaGls
aXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiB3cm90ZToKPiAKPiBJ4oCZbSBzZWVpbmcg
dGhlIGZvbGxvd2luZyBmYWlsdXJlIGFmdGVyIHJlYmFzaW5nIHRvIG1hc3RlciBhbmQgNC4xOToK
PiAKPiBtYWtlWzNdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL3BoaWxpcHAvbGVkZS9wYWNr
YWdlL2tlcm5lbC9saW51eCcKPiBta2RpciAtcCAvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19k
aXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3Jvb3QteDg2L3N0YW1wCj4gCj4gU0hFTEw9IGZsb2NrIC9o
b21lL3BoaWxpcHAvbGVkZS90bXAvLnJvb3QtY29weS5mbG9jayAtYyAnY3AgLWZwUiAvaG9tZS9w
aGlsaXBwL2xlZGUvYnVpbGRfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9saW51eC14ODZfNjQvcGFj
a2FnZXMvLnBrZ2Rpci9rZXJuZWwvLiAvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19kaXIvdGFy
Z2V0LXg4Nl82NF9tdXNsL3Jvb3QteDg2LycKPiB0b3VjaCAvaG9tZS9waGlsaXBwL2xlZGUvc3Rh
Z2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3Jvb3QteDg2L3N0YW1wLy5rZXJuZWxfaW5zdGFs
bGVkCj4gRVJST1I6IG1vZHVsZSAnL2hvbWUvcGhpbGlwcC9sZWRlL2J1aWxkX2Rpci90YXJnZXQt
eDg2XzY0X211c2wvbGludXgteDg2XzY0L2xpbnV4LTQuMTkuNTYvbmV0L2lwdjQvbmV0ZmlsdGVy
L25mdF9yZWplY3RfaXB2NC5rbycgaXMgbWlzc2luZy4KPiBtb2R1bGVzL25ldGZpbHRlci5tazox
MDc5OiByZWNpcGUgZm9yIHRhcmdldCAnL2hvbWUvcGhpbGlwcC9sZWRlL2Jpbi90YXJnZXRzL3g4
Ni82NC9wYWNrYWdlcy9rbW9kLW5mdC1jb3JlXzQuMTkuNTYtMV94ODZfNjQuaXBrJyBmYWlsZWQK
PiBtYWtlWzNdOiAqKiogWy9ob21lL3BoaWxpcHAvbGVkZS9iaW4vdGFyZ2V0cy94ODYvNjQvcGFj
a2FnZXMva21vZC1uZnQtY29yZV80LjE5LjU2LTFfeDg2XzY0Lmlwa10gRXJyb3IgMQo+IG1ha2Vb
M106IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS9waGlsaXBwL2xlZGUvcGFja2FnZS9rZXJuZWwv
bGludXgnCj4gdGltZTogcGFja2FnZS9rZXJuZWwvbGludXgvY29tcGlsZSM1LjIzIzAuMjYjNS43
Nwo+IHBhY2thZ2UvTWFrZWZpbGU6MTA3OiByZWNpcGUgZm9yIHRhcmdldCAncGFja2FnZS9rZXJu
ZWwvbGludXgvY29tcGlsZScgZmFpbGVkCj4gbWFrZVsyXTogKioqIFtwYWNrYWdlL2tlcm5lbC9s
aW51eC9jb21waWxlXSBFcnJvciAyCj4gbWFrZVsyXTogTGVhdmluZyBkaXJlY3RvcnkgJy9ob21l
L3BoaWxpcHAvbGVkZScKPiBwYWNrYWdlL01ha2VmaWxlOjEwMzogcmVjaXBlIGZvciB0YXJnZXQg
Jy9ob21lL3BoaWxpcHAvbGVkZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvc3RhbXAv
LnBhY2thZ2VfY29tcGlsZScgZmFpbGVkCj4gbWFrZVsxXTogKioqIFsvaG9tZS9waGlsaXBwL2xl
ZGUvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3N0YW1wLy5wYWNrYWdlX2NvbXBpbGVd
IEVycm9yIDIKPiBtYWtlWzFdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvcGhpbGlwcC9sZWRl
Jwo+IC9ob21lL3BoaWxpcHAvbGVkZS9pbmNsdWRlL3RvcGxldmVsLm1rOjIxNjogcmVjaXBlIGZv
ciB0YXJnZXQgJ3dvcmxk4oCZIGZhaWxlZAo+IAo+IEkgaGFkIHByZXZpb3VzbHkgYmVlbiBidWls
ZGluZyA0LjE5IGEgY291cGxlIG9mIG1vbnRocyBhZ28gYW5kIHdhc27igJl0IHNlZWluZyB0aGlz
Lgo+IAo+IFdobyBoYXMgYmVlbiB3b3JraW5nIG9uIHRoaXMgc3R1ZmY/Cj4gCj4gSSBub3RpY2Vk
IHRoYXQgdGhlcmXigJlzIG5vdyBuZl9yZWplY3RfaXB2NC5jIGFuZCBuZnRfcmVqZWN0X2lwdjQu
YywgZXRjLiBhbmQgYW0gd29uZGVyaW5nIGlmIGJvdGggYXJlIG5vdyByZXF1aXJlZCBpbiA0LjE5
Lgo+IAo+IEFueSBpZGVhcz8KPiAKPiBUaGFua3MKCgpUaGF0IHNob3VsZCBzYXksIOKAnEkgaGFk
IHByZXZpb3VzbHkgYmVlbiBidWlsZGluZyA0LjE0IGEgY291cGxlIG9mIG1vbnRocyBhZ28gYW5k
IHdhc27igJl0IHNlZWluZyB0aGlzLuKAnQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
