Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8EC17CD9F
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 11:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1jZNyCwTBMqsIbCRh6gcomrPTM/ks2t9n29MULD6Kf4=; b=kisy0obMpSx2xKKtLt8P3OgF8f
	wvf3qtxDPsB/bAOJDWrKH7qE8XqOCVzxfjSJ3y13lypaH2Ncg8+cZxIX+sG38I2Uj/JS892t/RrpG
	yPNzISUMaII1emWWTqFTWxXUkbdXhbgdSRgMuKesz7T56f3Lffh2WOMrX1vQkISrRwbHfxe7k6B49
	l/NMlrV+HrMP2GDsjo4CCApASLDC9CfrOLwNhUSnjnGAulUUF6wP3yvh6MDAGfUDmR7pWrdizsl16
	Zd7L7AO4WTPDPhYEYnX/Tf2AsFfQGBjIi+LdRl+O1Jj+6cdo2rPjXNLikdgUNZ8aS4bN9HscwnI/w
	XWinaCIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAWWG-0000lP-4C; Sat, 07 Mar 2020 10:17:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAWW5-0000ku-OD
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 10:17:11 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EC6414EDC;
 Sat,  7 Mar 2020 11:17:05 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d3d45cac;
 Sat, 7 Mar 2020 11:16:52 +0100 (CET)
Date: Sat, 7 Mar 2020 11:16:52 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tim Harvey <tharvey@gateworks.com>
Message-ID: <20200307101652.GG86312@meh.true.cz>
References: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
 <20200301081813.GC33354@meh.true.cz>
 <20200305110446.GA86312@meh.true.cz>
 <CAJ+vNU1QGaVKWtQJHNxM7RBrYMVrk+GZvYod7sH095QpNWCg-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ+vNU1QGaVKWtQJHNxM7RBrYMVrk+GZvYod7sH095QpNWCg-Q@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_021709_937241_5290E6A3 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add support for Gateworks
 GW5907/GW5910/GW5912/GW5913
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

VGltIEhhcnZleSA8dGhhcnZleUBnYXRld29ya3MuY29tPiBbMjAyMC0wMy0wNiAwNzo0NDoyOV06
Cgo+IE9uIFRodSwgTWFyIDUsIDIwMjAgYXQgMzowNSBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PiB3cm90ZToKPiA+Cj4gPiBHZW50bGUgcGluZy4KPiA+Cj4gCj4gSSBwb3N0ZWQgYSBm
b2xsb3ctdXAgaW4gcGF0Y2h3b3JrIHRoYXQgcmVtb3ZlcyB0aGUgd2lsZGNhcmRzIGZyb20gdGhl
Cj4gYm9hcmQgbmFtZSBtYXRjaGluZy4KPiAKPiBBbnkgY2hhbmdlcyBuZWVkZWQ/CgpTZWUgaHR0
cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9jb21tZW50LzIzNzQwNjUvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
