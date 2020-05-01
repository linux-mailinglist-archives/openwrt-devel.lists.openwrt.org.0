Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087F71C0EAA
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 09:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bDJp3W1wPQMVlgInfZaHWloF+5t+Y42Rhe/YcMsCnjE=; b=XAe8Rj/fdyl33uHM/LTshJnv4b
	Gu6vihysNDdhmaS3QZeEts8TehSUTu3qdsJHcE5tBf7ZQMU00aM/C8deQA3ZwyQq3sfYD8KgY2apP
	7ljFctbR7gOdoUVjRI7hlmovZaF+lXLA24aEPCwLGqPuo3v4unoM4G6WJsIaxOwJLw1O2wgxGMEzL
	jY9oUANeJXzFaOJaer0PwCKs+jSvSWNg2iMNJV1+EgPseUhAEEf/lKVK8T785nxbYZcNnzaNxK99u
	yc2pYgkhuHOQP/tBZ1cHoURoN1+drg9FoI4tIpM0Z9VnsvsMV/e7jLY0KP+fnHdTITOHIOEx/MyZP
	twRgI9NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQ0o-0003R2-9G; Fri, 01 May 2020 07:23:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQ0g-0003Pb-Pd
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 07:23:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2D6343C27;
 Fri,  1 May 2020 09:22:50 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id de5487a0;
 Fri, 1 May 2020 09:22:36 +0200 (CEST)
Date: Fri, 1 May 2020 09:22:36 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Karel =?utf-8?B?S2/EjcOt?= <citrisin@gmail.com>
Message-ID: <20200501072236.GA87115@meh.true.cz>
References: <20200429104758.25425-1-karel.koci@nic.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429104758.25425-1-karel.koci@nic.cz>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_002258_979563_EED8ED2F 
X-CRM114-Status: UNSURE (   4.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] tools: add autoconf-archive
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
Cc: openwrt-devel@lists.openwrt.org,
 Karel =?utf-8?B?S2/EjcOt?= <karel.koci@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S2FyZWwgS2/EjcOtIDxjaXRyaXNpbkBnbWFpbC5jb20+IFsyMDIwLTA0LTI5IDEyOjQ3OjU4XToK
CkhpLAoKPiBTb21lIGF1dG90b29scyBiYXNlZCBidWlsZCBzeXN0ZW1zIGFyZSB1c2luZyBhdXRv
Y29uZi1hcmNoaXZlIHNjcmlwdHMKPiBhbmQgYXJlIGV4cGVjdGluZyB0aGVtIHRvIGFsbW9zdCBh
bHdheXMgYmUgYXZhaWxhYmxlLgoKbGlrZSBmb3IgZXhhbXBsZT8gSSBmYWlsIHRvIHNlZSwgd2h5
IHRoaXMgc2hvdWxkIGJlIGluY2x1ZGVkLiBTdGF0aW5nICJzb21lCmJ1aWxkIHN5c3RlbXMiIGlz
IG5vdCBlbm91Z2guCgo+IEluY2x1ZGluZyB0aGlzIGFkZHMgbGl0dGxlIHRvIG5vIG92ZXJoZWFk
IGluIHRlcm1zIG9mIGJ1aWxkIHRpbWUgYXMKPiB0aG9zZSBhcmUganVzdCBtNCBzY3JpcHRzIGNv
cGllZCB0byBhbiBhcHByb3ByaWF0ZSBsb2NhdGlvbi4KCkFueSBuZXcgcGFja2FnZSBhZGRzIG1h
aW50ZW5hbmNlL3N1cHBvcnQgb3ZlcmhlYWQuCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
