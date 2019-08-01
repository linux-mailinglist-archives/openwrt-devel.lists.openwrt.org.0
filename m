Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D627E25D
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 20:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AegndtPTXxkbCaboGfMijsUPyIlG9bdZs6IF3yJfx4E=; b=eW3D+ltCKWm4C+vw/TATxtTQwJ
	9MI/gVJtfJAVD0FW5UuJSpBHCFyEljr5eHeZkb6wzMKT0C0+n4Pq9rW4IDwz9UF9bSJu5g5JWEnfW
	3HFf47RE8NLwSubZZJme/J5GqPd6WVw+gqIkuaM9ql0TjgyGOSykch4A1sm+Xe0L7o/TlkZTr4BPO
	wZlfQiPfwBdyQ9h95Q/24VUT1qURE9ZmWyW7uwYbdyRyo2ayriJz7RZ40qSVaXbOsmpKh1x04k69r
	KgNo0vYPgIGIACCx7ek3NI6q14cjpkqPtpvIreZmPn92VPaCMZYvG6UmqK65/GZYBwEE17PeS5NUm
	IEYpmm2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFzP-00068m-7c; Thu, 01 Aug 2019 18:39:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFzH-0005rE-So
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 18:39:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6578C4346;
 Thu,  1 Aug 2019 20:39:35 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 96edb5de;
 Thu, 1 Aug 2019 20:39:28 +0200 (CEST)
Date: Thu, 1 Aug 2019 20:39:28 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Etienne Champetier <champetier.etienne@gmail.com>
Message-ID: <20190801183928.GM74752@meh.true.cz>
References: <20190727022302.12656-1-champetier.etienne@gmail.com>
 <20190801085107.GK74752@meh.true.cz>
 <CAOdf3gp-oR2B6qy-qSnxAFWdLfQ+W-+zxrjixc+EGc=6swepgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOdf3gp-oR2B6qy-qSnxAFWdLfQ+W-+zxrjixc+EGc=6swepgA@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_113940_084177_2BD34161 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] [RFC] kernel: disable EAP local hack
 when using group_fwd_mask
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
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RXRpZW5uZSBDaGFtcGV0aWVyIDxjaGFtcGV0aWVyLmV0aWVubmVAZ21haWwuY29tPiBbMjAxOS0w
OC0wMSAwNzoyMzoxOF06Cgo+IElmIHRoZSBmaXggd2FzIHRvIHdvcmthcm91bmQgYSBjbGllbnQg
YnVnIHdlIG1pZ2h0IHdhbnQgdG8ga2VlcCBpdCwKCkFjdHVhbGx5IHdlIGRvbid0IGtub3cgaWYg
aXQgd2FzbnQgZml4ZWQgYWxyZWFkeSB1cHN0cmVhbSBhcyBSYWZhxYIgc3VnZ2VzdGVkCmluIGhp
cyBvbGQgcmVtb3ZhbCBwYXRjaC4KCj4gZWxzZSBtYXliZSB3ZSBjb3VsZCByZXdvcmsgaXQgYW5k
IGFkZCBhIHdhcm5fb25jZSBpZiB0aGlzIGhhY2sgcHJldmVudAo+IGEgRUFQIGZyYW1lIGZyb20g
YmVpbmcgZm9yd2FyZGVkCgpUaGlzIHdhcm5fb25jZSB3b3VsZCBoYXZlIHByb2JhYmx5IHNhdmVk
IHNvbWUgdGltZSBhbHJlYWR5LgoKPiAnZGlzYWJsZS1lYXAtbG9jYWwtaGFjaycgdG8gZW5hYmxl
L2Rpc2FibGUgdGhpcyBoYWNrLCB3aGF0IGRvIHlvdQo+IHByZWZlciA/CgpJIHdvdWxkIHByZWZl
ciB0byByZW1vdmUgdGhpcyBwYXRjaCBmb3IgNC4xOSBrZXJuZWwgdG8gZmluZCBvdXQgaWYgaXQn
cyBzdGlsbApuZWVkZWQuIEFuZCBpZiBpdCdzIG5lZWRlZCwgdGhlbiBpdCB3b3VsZCBtYWtlIHNl
bnNlIHRvIGRpc2N1c3MgdGhpcyB1c2UgY2FzZQp3aXRoIHVwc3RyZWFtIGFuZCBtYWtlIGl0IG9m
ZmljaWFsIGZlYXR1cmUuCgpMZXQncyB3YWl0IGZvciBGZWxpeCdzIGlucHV0IGFzIHdlbGwuCgot
LSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
