Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0862FCA77
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 17:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Aprz8NDu9+LqLrKu2gZJ7AMMyB3N2OdDe9OZvewn6hY=; b=bEUEYRmjX5fmEHHKHWZWiEB/Gx
	B8QX2epJ92bwf1CyUp1GSxEmxUQmHn0EtFFnuBZChiDKORuQ0BqL71NjTC1t40LvqVcQwZX2PgX34
	pcZkTjO32/ZxJYrB5HPoSuPgKB5yr5s/xbjbTNA8yXuyeROBJWXVJ9/sVZKt6RceGOHk4X/ebslH8
	K759eYz9808zBWbAIDRElk8bh0kdfJLG+olVGNXautd6M8n4o7OhW9rv9Fuvf4e68KswBwgNmUTXc
	YC/Z4il1S3JZ9O7z6IddEFVEeqTMFSrwUGigNX+ltg44Y/Ry0zjUS9Bo1OMnYF19i0LdkjRK5SygG
	cHHfusxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHam-0006qp-Ie; Thu, 14 Nov 2019 16:03:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHag-0006qS-As
 for openwrt-devel@lists.openwrt.org; Thu, 14 Nov 2019 16:03:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6163A4C79;
 Thu, 14 Nov 2019 17:03:23 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 308ce943;
 Thu, 14 Nov 2019 17:03:13 +0100 (CET)
Date: Thu, 14 Nov 2019 17:03:13 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
Message-ID: <20191114160313.GB13337@meh.true.cz>
References: <20191113200931.106783-1-thomas@t-8ch.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113200931.106783-1-thomas@t-8ch.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_080326_518368_68A346CA 
X-CRM114-Status: UNSURE (   3.13  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] build: support python 3.8
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhvbWFzIFdlacOfc2NodWggPHRob21hc0B0LThjaC5kZT4gWzIwMTktMTEtMTMgMjE6MDk6MzFd
OgoKSGksCgpwbGVhc2UgbmV4dCB0aW1lIGRvbid0IGZvcmdldCB0byBhZGQgY29tbWl0IGRlc2Ny
aXB0aW9uIGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnL2IyOTYwYTk1MmQxYzIwNDcxMjUxOWJhOTE4
MTllMjU3NjRhNzJmZDQKCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
