Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F5F12B50D
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 15:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NXAugWFAsqKyHE62BOeNs7pbrgeQ60EGpw5f4hbx1Ko=; b=SJRKgAWBujP1MukpzL8QReZbrT
	gMwSVHGKkR7pe6FOMJ9UP/9b4KIJ0Ky6PQGjENyei8rjvA0znX0BiWZVTsxSWts3hq3Vbhg5uDmbt
	CfZDUJyyHeJ1Sg8/OrEd0Wl3FdXzCCnfT3h/7o1HXTNUElxJmRmzjINqaYxD0/+s89iYwprwaQlWf
	BeBqZ4YIXiGVy0pK1k3VlvNjwXJwuXVNBp30a9mGYmahl0AhabQKW69hLmVkD+cHMwTBzEadgTUaE
	6+IcV2sUEYiVyXAAlbOREIBKIue5iGtTBU4EnQfMGjJ84S+iXsnFxwJoLGOWKSfEoHCgjecxuuPHF
	E5pxq6Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikqE3-0000iz-4u; Fri, 27 Dec 2019 14:04:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikqDt-0000id-94
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 14:04:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 004E538F2;
 Fri, 27 Dec 2019 15:04:10 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a517b8ee;
 Fri, 27 Dec 2019 15:04:00 +0100 (CET)
Date: Fri, 27 Dec 2019 15:04:00 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <20191227140400.GD70184@meh.true.cz>
References: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
 <20191226225936.GB70184@meh.true.cz>
 <fa84e9a6-5b08-c680-b3ed-0ad1b3f00359@iki.fi>
 <20191227122541.GC70184@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191227122541.GC70184@meh.true.cz>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_060413_470357_DCB1A016 
X-CRM114-Status: UNSURE (   4.06  )
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
Subject: Re: [OpenWrt-Devel] ubus and/or libubox upgrades today cause
 problems: some services do not start, logread hangs
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMTItMjcgMTM6MjU6NDFdOgoKPiBI
YW5udSBOeW1hbiA8aGFubnUubnltYW5AaWtpLmZpPiBbMjAxOS0xMi0yNyAxMTozMzo0Nl06Cj4g
Cj4gPiBIb3BlZnVsbHkgeW91L3NvbWVib2R5IHdpbGwgcmV2ZXJ0IHRoZSB1YnVzIGNoYW5nZXMg
aW4gbWFzdGVyIHVudGlsIHRoZW4uCj4gCj4gY2FuIHlvdSBjb25maXJtLCB0aGF0IGZvbGxvd2lu
ZyBmaXhbMV0gYWN0dWFsbHkgZml4ZXMgdGhlIGlzc3VlcyB5b3UncmUKPiBzZWVpbmc/IFRoYW5r
cy4KClRoaXMgc2hvdWxkIGJlIGhvcGVmdWxseSBwcm9wZXIgZml4IGh0dHBzOi8vcGF0Y2h3b3Jr
Lm96bGFicy5vcmcvcGF0Y2gvMTIxNTcxOS8KCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
