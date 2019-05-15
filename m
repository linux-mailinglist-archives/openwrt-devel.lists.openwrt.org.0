Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74581FA43
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 20:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EC5oT6c0o+MKS+pV8qPGmptn3t1NWb6eFxtqqV+LyYA=; b=cpSpplG4ojI7CbO4fsWjIpHnHd
	dSk1LNQ22TYflChcqTNLac6aUR2TcrIc9YPTPCAGJlCWBlvO08iAW/kdvx7KBCTEGZRjp5qIhWfSW
	HOHDs+m5CitCSD0nD75YoQBLYLKeeo1nt4WOvZHhOALpfUhuPasN2jabnOt9uzdqljhQxC8cAfTRt
	iojUdtLsQcOKzt2lF/X80GBcD/kw0OyDuoNe0P2zDA2hUcs0Zz7uAa1zFeOeWpVSQo31KOIuPgxio
	3kjlnBMCNf6DqT3X1GUVsaIYTCmw+SwTygNJc6mPMONWnb9UDrxdo43Yh0r1YvLG3wHLSiPsoHdL5
	gZ8sBlYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQz4E-0005Ys-Hr; Wed, 15 May 2019 18:55:54 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQz46-0005Nd-V4
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 18:55:48 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FItfLh051730
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 20:55:41 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 44FA53AA0;
 Wed, 15 May 2019 20:55:39 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4eb90117;
 Wed, 15 May 2019 20:55:38 +0200 (CEST)
Date: Wed, 15 May 2019 20:55:38 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Message-ID: <20190515185538.GB63920@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-4-be.dissent@gmail.com>
 <20190515160152.GC4938@meh.true.cz>
 <CAEdN=pFgpHN6zjMqEjs-3p-SgDneFG18B4=-Tyk4fnR_zofuXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEdN=pFgpHN6zjMqEjs-3p-SgDneFG18B4=-Tyk4fnR_zofuXA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_115547_316321_E3CCCEAB 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] ipq40xx: add support for secondary
 cores bringup
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Cc: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0J/QsNCy0LXQuyA8YmUuZGlzc2VudEBnbWFpbC5jb20+IFsyMDE5LTA1LTE1IDIwOjM1OjM4XToK
Cj4gVGhpcyBwYXRjaHNldCBjb25zaXN0cyBvZiAyIHBhdGNoZXMgd2l0aCBkaWZmZXJlbnQgYXV0
aG9ycyB0aGF0IEkgaGF2ZQo+IHNxdWFzaGVkIGludG8gMS4gSG93IHNob3VsZCBJIHByZXNlcnZl
IGF1dGhvcnNoaXAgaW4gdGhpcyBjYXNlPwoKSnVzdCBhZGQgdGhlbSBhcyBzZXBhcmF0ZSBwYXRj
aGVzLCBleGFjdGx5IGFzIHByb2R1Y2VkIGJ5IGBnaXQgZm9ybWF0LXBhdGNoYApjb21tYW5kLCBk
b24ndCBzcXVhc2ggdGhlbS4KCj4gSSdtIG5vdCB0aGUgYXV0aG9yIG9mIHRoaXMgY29kZSB0byB1
cHN0cmVhbSBpdC4KCllvdSBkb24ndCBuZWVkIHRvIGJlIGF1dGhvciBpbiBvcmRlciB0byB1cHN0
cmVhbSBpdC4gSXQncyBxdWl0ZSBjb21tb24gdG8gcG9zdApwYXRjaGVzIGZvciByZXZpZXcgb24g
YmVoYWxmIG9mIG90aGVyIGRldmVsb3BlcnMsIHlvdSBqdXN0IG5lZWQgdG8ga2VlcCBwcm9wZXIK
YXV0aG9yc2hpcC4gTXkgcmVjZW50IChyZWplY3RlZCkgYXR0ZW1wdCBmb3IgZXhhbXBsZVsxXS4K
CjEuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA4NjYyOC8KCi0tIHluZXp6
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
