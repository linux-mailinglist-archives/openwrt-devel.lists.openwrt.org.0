Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A0E61626
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 20:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccNnBXL33BVciebLviV1PgABOy/lbvbzvtlCX4vY0m0=; b=kOAb/tOkJWlK+C
	7i61It8KK0HJtiEuQpC4QJXlVxLZY06N5L2qou+juMi0HV53TkPz+cxg7LGJB6oT0GIHnrM4Y9N18
	HOtftjUCGi61gF7zzAdt9bvkC5m2J+w/wlZdd9Cr3ctqm/6x9cLQYsuYxzAmx/pdg71YsvYYZQq4F
	XEMtbKtFUj+rSw+v4nxgCNZi5IaPIhM3DGLEqkQlnNfndGrqIX1Orx4Q1aKjN/U2RYn1kZnkum4at
	+caSlSX4gVjsghU5zGflwffBynTu7OAVxSy/8z+18eTIGSMdVWrN/xDbOxPI59YBVf7EL7dBidPiY
	QXzVIbgwXQ8uPx/ECdRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkCDF-0004nR-9a; Sun, 07 Jul 2019 18:48:37 +0000
Received: from mail.redfish-solutions.com ([66.232.79.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkCD6-0004mq-0M
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jul 2019 18:48:29 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id x67Im85s026530
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 7 Jul 2019 12:48:09 -0600
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <BDF539B2-B99C-49BF-93E0-6127D937FA41@redfish-solutions.com>
Date: Sun, 7 Jul 2019 12:48:08 -0600
Message-Id: <F32EF334-3056-431F-9F4F-0715E25C9723@redfish-solutions.com>
References: <9D9B5264-BA3B-4C28-A1E9-4CAEFCAAA230@redfish-solutions.com>
 <BDF539B2-B99C-49BF-93E0-6127D937FA41@redfish-solutions.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_114828_147165_E3BA19AE 
X-CRM114-Status: UNSURE (   6.79  )
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIEp1biAzMCwgMjAxOSwgYXQgOTo1NCBQTSwgUGhpbGlwIFByaW5kZXZpbGxlIDxwaGls
aXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiB3cm90ZToKPiAKPiAKPiAKPj4gT24gSnVu
IDMwLCAyMDE5LCBhdCA2OjEzIFBNLCBQaGlsaXAgUHJpbmRldmlsbGUgPHBoaWxpcHBfc3VieEBy
ZWRmaXNoLXNvbHV0aW9ucy5jb20+IHdyb3RlOgo+PiAKPj4gSeKAmW0gc2VlaW5nIHRoZSBmb2xs
b3dpbmcgZmFpbHVyZSBhZnRlciByZWJhc2luZyB0byBtYXN0ZXIgYW5kIDQuMTk6Cj4+IAo+PiBt
YWtlWzNdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL3BoaWxpcHAvbGVkZS9wYWNrYWdlL2tl
cm5lbC9saW51eCcKPj4gbWtkaXIgLXAgL2hvbWUvcGhpbGlwcC9sZWRlL3N0YWdpbmdfZGlyL3Rh
cmdldC14ODZfNjRfbXVzbC9yb290LXg4Ni9zdGFtcAo+PiAKPj4gU0hFTEw9IGZsb2NrIC9ob21l
L3BoaWxpcHAvbGVkZS90bXAvLnJvb3QtY29weS5mbG9jayAtYyAnY3AgLWZwUiAvaG9tZS9waGls
aXBwL2xlZGUvYnVpbGRfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9saW51eC14ODZfNjQvcGFja2Fn
ZXMvLnBrZ2Rpci9rZXJuZWwvLiAvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19kaXIvdGFyZ2V0
LXg4Nl82NF9tdXNsL3Jvb3QteDg2LycKPj4gdG91Y2ggL2hvbWUvcGhpbGlwcC9sZWRlL3N0YWdp
bmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9yb290LXg4Ni9zdGFtcC8ua2VybmVsX2luc3RhbGxl
ZAo+PiBFUlJPUjogbW9kdWxlICcvaG9tZS9waGlsaXBwL2xlZGUvYnVpbGRfZGlyL3RhcmdldC14
ODZfNjRfbXVzbC9saW51eC14ODZfNjQvbGludXgtNC4xOS41Ni9uZXQvaXB2NC9uZXRmaWx0ZXIv
bmZ0X3JlamVjdF9pcHY0LmtvJyBpcyBtaXNzaW5nLgo+PiBtb2R1bGVzL25ldGZpbHRlci5tazox
MDc5OiByZWNpcGUgZm9yIHRhcmdldCAnL2hvbWUvcGhpbGlwcC9sZWRlL2Jpbi90YXJnZXRzL3g4
Ni82NC9wYWNrYWdlcy9rbW9kLW5mdC1jb3JlXzQuMTkuNTYtMV94ODZfNjQuaXBrJyBmYWlsZWQK
Pj4gbWFrZVszXTogKioqIFsvaG9tZS9waGlsaXBwL2xlZGUvYmluL3RhcmdldHMveDg2LzY0L3Bh
Y2thZ2VzL2ttb2QtbmZ0LWNvcmVfNC4xOS41Ni0xX3g4Nl82NC5pcGtdIEVycm9yIDEKPj4gbWFr
ZVszXTogTGVhdmluZyBkaXJlY3RvcnkgJy9ob21lL3BoaWxpcHAvbGVkZS9wYWNrYWdlL2tlcm5l
bC9saW51eCcKPj4gdGltZTogcGFja2FnZS9rZXJuZWwvbGludXgvY29tcGlsZSM1LjIzIzAuMjYj
NS43Nwo+PiBwYWNrYWdlL01ha2VmaWxlOjEwNzogcmVjaXBlIGZvciB0YXJnZXQgJ3BhY2thZ2Uv
a2VybmVsL2xpbnV4L2NvbXBpbGUnIGZhaWxlZAo+PiBtYWtlWzJdOiAqKiogW3BhY2thZ2Uva2Vy
bmVsL2xpbnV4L2NvbXBpbGVdIEVycm9yIDIKPj4gbWFrZVsyXTogTGVhdmluZyBkaXJlY3Rvcnkg
Jy9ob21lL3BoaWxpcHAvbGVkZScKPj4gcGFja2FnZS9NYWtlZmlsZToxMDM6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICcvaG9tZS9waGlsaXBwL2xlZGUvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNs
L3N0YW1wLy5wYWNrYWdlX2NvbXBpbGUnIGZhaWxlZAo+PiBtYWtlWzFdOiAqKiogWy9ob21lL3Bo
aWxpcHAvbGVkZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvc3RhbXAvLnBhY2thZ2Vf
Y29tcGlsZV0gRXJyb3IgMgo+PiBtYWtlWzFdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvcGhp
bGlwcC9sZWRlJwo+PiAvaG9tZS9waGlsaXBwL2xlZGUvaW5jbHVkZS90b3BsZXZlbC5tazoyMTY6
IHJlY2lwZSBmb3IgdGFyZ2V0ICd3b3JsZOKAmSBmYWlsZWQKPj4gCj4+IEkgaGFkIHByZXZpb3Vz
bHkgYmVlbiBidWlsZGluZyA0LjE5IGEgY291cGxlIG9mIG1vbnRocyBhZ28gYW5kIHdhc27igJl0
IHNlZWluZyB0aGlzLgo+PiAKPj4gV2hvIGhhcyBiZWVuIHdvcmtpbmcgb24gdGhpcyBzdHVmZj8K
Pj4gCj4+IEkgbm90aWNlZCB0aGF0IHRoZXJl4oCZcyBub3cgbmZfcmVqZWN0X2lwdjQuYyBhbmQg
bmZ0X3JlamVjdF9pcHY0LmMsIGV0Yy4gYW5kIGFtIHdvbmRlcmluZyBpZiBib3RoIGFyZSBub3cg
cmVxdWlyZWQgaW4gNC4xOS4KPj4gCj4+IEFueSBpZGVhcz8KPj4gCj4+IFRoYW5rcwo+IAo+IAo+
IFRoYXQgc2hvdWxkIHNheSwg4oCcSSBoYWQgcHJldmlvdXNseSBiZWVuIGJ1aWxkaW5nIDQuMTQg
YSBjb3VwbGUgb2YgbW9udGhzIGFnbyBhbmQgd2FzbuKAmXQgc2VlaW5nIHRoaXMu4oCdCj4gCgoK
QW55b25lPwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
