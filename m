Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC49D1E0B12
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 11:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Su35LNZtRsCk9ZJI9EVAsiv4VF5Hog0PO3PfejIPD7c=; b=oTN07rXpGxuLIqsRvVR1L+ZDkL
	bLokCDijrm/BUn50VDgEoi40oHfy0tvmSE06Or4YvLnfPzhKvvF+HJ6O264MzYzuI2G7PjbnMEnSE
	aN1o/d44wvPJjfHlQTayBT5xV/5qyT5qCJ+EuW6FGOZNBs26Q9DGOeiPdWP9njhhnUzQn92fFZdSB
	/JOeiEMGHUa0gtbPevNnODkLH7wTs8grGsCHVWVNyEN9IGBUFb46bW3rmdwt56la6ZZzeUCnxTzgR
	bDgDp6WuulpEWtI+GSky7EjxEQbxdJK4gesTpU7EKMq3n2hOLJ61JY4viqXWp9VqgHwbuuGEHMPTF
	wsJGd6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9pI-0003hW-54; Mon, 25 May 2020 09:55:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9pC-0003hA-D4
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 09:55:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F337C5455;
 Mon, 25 May 2020 11:55:12 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 87efcf52;
 Mon, 25 May 2020 11:54:57 +0200 (CEST)
Date: Mon, 25 May 2020 11:54:57 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <20200525095457.GC58206@meh.true.cz>
References: <20200525083106.30473-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525083106.30473-1-zajec5@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_025514_593205_7F875C79 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH RFC libubox] blobmsg: another attrs
 iteration fix for blobmsg_check_array_len()
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Chris Nisbet <nischris@gmail.com>, openwrt-devel@lists.openwrt.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21haWwuY29tPiBbMjAyMC0wNS0yNSAxMDozMTowNl06
CgpIaSwKCj4gRnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IEFm
dGVyIG1vcmUgcmV2aWV3cyBpcyBzZWVtcyB0aGF0IGJsb2Jtc2dfZm9yX2VhY2hfYXR0cigpIHNo
b3VsZCBub3QgYmUKPiB1c2VkIHdoZW4gZGVhbGluZyB3aXRoIHVudHJ1c3RlZCBkYXRhIGFzIGl0
IHJlYWRzIGxlbmd0aCBmcm9tIGJsb2IgZGF0YQo+IGl0c2VsZi4gSXQgbWVhbnMgaXQgY2FuJ3Qg
YmUgdXNlZCBpbiB0aGUgYmxvYm1zZ19jaGVja19hcnJheV9sZW4oKS4KPiAKPiBTd2l0Y2ggYmFj
ayB0byB1c2luZyBfX2Jsb2Jtc2dfZm9yX2VhY2hfYXR0cigpIEJVVCBwYXNzIGNvcnJlY3QgbGVu
Z3RoCj4gdG8gaXQuIENhbGN1bGF0ZSBpdCBieSBzdWJ0cmFjdGluZyBoZWFkZXIgbGVuZ3RoIGZy
b20gYmxvYiBsZW5ndGguCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZh
bEBtaWxlY2tpLnBsPgo+IC0tLQo+ICBibG9ibXNnLmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Jsb2Jt
c2cuYyBiL2Jsb2Jtc2cuYwo+IGluZGV4IDU5MDQ1ZTEuLjIyOTVhYWEgMTAwNjQ0Cj4gLS0tIGEv
YmxvYm1zZy5jCj4gKysrIGIvYmxvYm1zZy5jCj4gQEAgLTE0Miw3ICsxNDIsOCBAQCBpbnQgYmxv
Ym1zZ19jaGVja19hcnJheV9sZW4oY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgaW50IHR5
cGUsCj4gIAkJcmV0dXJuIC0xOwo+ICAJfQo+ICAKPiAtCWJsb2Jtc2dfZm9yX2VhY2hfYXR0cihj
dXIsIGF0dHIsIHJlbSkgewo+ICsJcmVtID0gYmxvYl9sZW4gLSAoKHVpbnQ4X3QgKilibG9ibXNn
X2RhdGEoYXR0cikgLSAodWludDhfdCAqKWJsb2JfZGF0YShhdHRyKSk7Cgpsb29rcyBsaWtlIGJs
b2Jtc2dfZGF0YV9sZW4oKT8KCj4gKwlfX2Jsb2Jtc2dfZm9yX2VhY2hfYXR0cihjdXIsIGF0dHIs
IHJlbSkgewo+ICAJCWlmICh0eXBlICE9IEJMT0JNU0dfVFlQRV9VTlNQRUMgJiYgYmxvYm1zZ190
eXBlKGN1cikgIT0gdHlwZSkKPiAgCQkJcmV0dXJuIC0xOwoKLS0geW5lenoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
