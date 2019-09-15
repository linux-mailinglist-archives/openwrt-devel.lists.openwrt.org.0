Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97549B2E96
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 08:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kLXl7CzkU76kB8p8CcUTsuwSUQaiRHZ/ib66I0oj7d0=; b=tucRtL1tfN8+ruGVYT9CM9SGDo
	T3SWMrxB6Su3shpYP/QlizVCs0nJqT+eXiMN53fmIdJ7awHvb741r94gyePYAv+vCslcL995FrnlO
	SQ8DVwcQrYKhuhD2dfCKYrsOtXhRwzTolm0wzz0v+7HRaakfhIZa5a8ajguQMij5OdH8ESw0M104A
	BiBfjzfEeBnIXu7BvNUKoa5rvBmtzprhZktDNf5eoIzNFFbwFaWtFW9LZYByEfiqNq0EfPQJM0OKz
	e4l382RWHKFLRpg+/zcUvgDyVTEIFTg6yfBuY6USu2HivytPzoOWZbO5a5lEzQp3ByLIxuZ/19+Ji
	viKY479g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9NnK-0000E6-HT; Sun, 15 Sep 2019 06:13:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Nn2-0000D5-R5
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 06:13:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C9A3C3B94;
 Sun, 15 Sep 2019 08:13:32 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ff32a9de;
 Sun, 15 Sep 2019 08:13:24 +0200 (CEST)
Date: Sun, 15 Sep 2019 08:13:24 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190915061324.GA70171@meh.true.cz>
References: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
 <20190727225308.GD74752@meh.true.cz>
 <06952a91-cb03-3818-33ef-449ccad8a95e@allycomm.com>
 <CAKxU2N9DJrBMn_FMnU2F566XyTya2szBvThVFRBO86D60nQsuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N9DJrBMn_FMnU2F566XyTya2szBvThVFRBO86D60nQsuQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_231341_029999_18BAD96F 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Compilation error switch to pyhon 3
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jeff Kletsky <lede@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-09-14 14:37:50]:

Hi,

> > >>    File "/home/ansuel/openwrt/build_dir/host/scons-3.0.5/setup.py",
> > >> line 26, in <module>
> > >>      import distutils.command.build_scripts
> > >> ModuleNotFoundError: No module named 'distutils.command'
> > >
> > Fresh install of Debian 10 ("Buster") on AMD64 after my usual
> >
> > apt install build-essential git gitk libncurses5-dev gawk unzip wget
> > curl ccache rsync zlib1g-dev
>
> Got this as well. Any way to test for distutils in prereq.mk?

that's a wrong place, proper place is scons Makefile, but please don't try to
send any patches against scons in the master tree, but rather finally merge
that PR which moves scons into the packages feed and improve the scons UX in
there as you wish.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
