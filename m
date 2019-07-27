Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47DA77C57
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 00:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kEWq44TBBy2Ja7lKh5caSk7QVPer74M9NtUdgGsez3c=; b=MafI/i0uIRQOJSEdx/Byx4m4lI
	munqncHpRkw9XZWbekAF/mda7iSvysz20U9EJOb/FgGUqVd8Y3NHlob0XeVXwa+UQ3JrnpisiZVF+
	bS2tvjDQqgtRKFIJuM2TQZ7KDUr7bJyVHn1/kQznoYhXfitzbkx5Fu/wpCLDO6d8AiFsK1yB63AZy
	vSxMk+fWZfWWYIDhckkbIZpSlZAd623TE0LQNzX68cXU+6AOVWK/1+wm6yZG88yEetb0jQgJWn6bK
	HZJ0RoAed/btCpgbMrHx6ooYsdtftAZd7YgyZsl/cdTXvhwIRLO0YXSEyr0GAA27e98A5FIsfjaS1
	wUCrSEOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrVZB-0003mC-OM; Sat, 27 Jul 2019 22:53:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrVZ2-0003ls-Fu
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 22:53:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 736594D9B;
 Sun, 28 Jul 2019 00:53:15 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1339c56b;
 Sun, 28 Jul 2019 00:53:08 +0200 (CEST)
Date: Sun, 28 Jul 2019 00:53:08 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Ansuel Smith <ansuelsmth@gmail.com>
Message-ID: <20190727225308.GD74752@meh.true.cz>
References: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_155320_683115_D8DA6FA9 
X-CRM114-Status: UNSURE (   4.70  )
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ansuel Smith <ansuelsmth@gmail.com> [2019-07-27 19:46:35]:

Hi,

> I can't currently compile my image and i have this error
> 
> make[3]: Leaving directory '/home/ansuel/openwrt/tools/libtool'
> time: tools/libtool/compile#0.05#0.00#0.10
> Traceback (most recent call last):
>   File "/home/ansuel/openwrt/build_dir/host/scons-3.0.5/setup.py",
> line 26, in <module>
>     import distutils.command.build_scripts
> ModuleNotFoundError: No module named 'distutils.command'

yep, I've seen that already[1], out of curiosity, what distro is that? I
think, that scons has no place in the master tree as no package in the master
tree depends on it, so I've started move process into packages feed[2].

1. https://github.com/openwrt/openwrt/commit/316c8b5503e54cdb3ee5bd3b5d81a3b7dd139294#commitcomment-34460875
2. https://github.com/openwrt/packages/pull/9584

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
