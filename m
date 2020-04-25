Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6DA1B86B5
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 15:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sLxzHidPiha+Bwytqsvu8h5eUs7vLjv9n22Q29szZxs=; b=Pa4ziJcMVv8WeVqHAjT4iYQDDu
	mHwbZhYHU4N3HW8Ec+p76GxbpRkfOJ7YMKwnOtKsv4P9T/ONOW+GKCeZXivgtaCRhorhIbQ8U6uWm
	H+vD5yIVysELhktRSx2M3/bYBR8Pl3D8vUNs9JS/qrkeZGRPxLz4w2i0HYhTND6B8jK0FU36VlsSA
	mQNMgTmKODxoS6Mxh9rB2z/u7Eho/ZwWCNRMHsna6I34mgYVtOvlUbaVX5n2myWSlgcWWXZ2C92XN
	5v9QQwq3RziViwYETGiwfoLXmudJgIajoSAt2Kp1Ebrz+qNNbQE0xoJJLKcsYhWnW6ep9WFDEvmRx
	3yD66x1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSKXB-0007TG-As; Sat, 25 Apr 2020 13:07:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSKX4-0007S4-2d
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 13:07:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B4936469C
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Apr 2020 15:07:44 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 193a4520
 for <openwrt-devel@lists.openwrt.org>;
 Sat, 25 Apr 2020 15:07:31 +0200 (CEST)
Date: Sat, 25 Apr 2020 15:07:31 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200425130731.GD76955@meh.true.cz>
References: <20200425125828.7187-1-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425125828.7187-1-ynezz@true.cz>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_060746_270891_4D269FD6 
X-CRM114-Status: UNSURE (   3.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] wireless-regdb: backport three upstream
 fixes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMjAtMDQtMjUgMTQ6NTg6MjhdOgoKPiBB
bm90aGVyIHJlbGVhc2UgaXMgb3ZlcmR1ZSBmb3IgcXVpdGUgc29tZSB0aW1lLCBzbyBJJ20gYmFj
a3BvcnRpbmcgdGhyZWUKPiBmaXhlcyBmcm9tIHVwc3RyZWFtIHdoaWNoIEkgcGxhbiB0byBiYWNr
cG9ydCBpbnRvIDE5LjA3IGFzIHdlbGwuCj4gCj4gUmVmOiAjMjg4MAoKc29ycnksIHRoaXMgc2hv
dWxkJ3ZlIGJlZW4gRlMjMjg4MAoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
