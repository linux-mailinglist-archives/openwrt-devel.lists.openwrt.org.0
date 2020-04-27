Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BB91BAB10
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 19:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAbh4RRy/zQwQYQMWLLedNKsUzhiCSj5d5SZvdc1tCc=; b=eeEurnBJwExlS0
	S7RT68VME7T6gTXEd0ifCT3N6ebuIB93DUKIoI9qI83Cg5XvoEs7STpiuKhUFCi/0KXYO8gcPS/1F
	J946zpV09fmg/Tp02HCPcXGzQYPlUZGxipgT2VebscQbPAXw2ZxXwQCkSjbiG17Q4eNoLpNmgfwa6
	CzBGeKIdAdAYK0zEwyiLw0K4l88+xwTQzi7bIFcJf/yuepKOBXmD2/SGfMoqoD1Ad3W83Gsw0bkrM
	NuC43zNHtfkUopiozaQOOkFL2jln8ayLlXl8+dEzPB1OalEpg1khdTXHXhDVPpWLKPPadynxhgaw/
	g5sAlPCa0iRATBqa+MZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Qy-0001Z5-RA; Mon, 27 Apr 2020 17:20:44 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7Qe-0001Pg-63
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 17:20:25 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 29B3DFF805;
 Mon, 27 Apr 2020 17:20:19 +0000 (UTC)
Date: Mon, 27 Apr 2020 19:20:17 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20200427192017.661d2a3d@xps13>
In-Reply-To: <20200419125140.1307309-8-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-8-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_102024_357327_544D6C89 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 7/9] mtd: rawnand: bcm47xx: Simplify the
 init() function
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTdW4sIDE5IEFwcgoyMDIwIDE0OjUxOjM4ICswMjAwOgoKPiBUaGUgcm93IGFu
ZCBjb2x1bW4gc2l6ZXMgYXJlIG5vdyBzZXQgYXMgcGFydCBvZiB0aGUgZXhlY19vcCgpIHByb2Nl
ZHVyZQo+IGFuZCBhZGp1c3RlZCB0byBtYXRjaCB0aGUgcmVxdWVzdGVkIG51bWJlciBvZiBhZGRy
ZXNzIGN5Y2xlcy4gTm8gbmVlZAo+IHRvIHNldCB0aGVtIGluIHRoZSBpbml0KCkgZnVuY3Rpb24g
c2luY2UgdGhvc2UgdmFsdWVzIHdpbGwgYmUKPiBvdmVyd3JpdHRlbiBhbnl3YXkuIEFzIGZvciB0
aGUgb3RoZXIgc2FuaXR5IGNoZWNrIHRoYXQgd2FzIGRvbmUgb24gdGhlCj4gY2hpcCBzaXplLCBJ
IGRvbid0IHRoaW5rIGl0J3MgcmVhbGx5IG5lZWRlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCb3Jp
cyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IC0tLQoKUmV2aWV3
ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CgoKVGhhbmtz
LApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
