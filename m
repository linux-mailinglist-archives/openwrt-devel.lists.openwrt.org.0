Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691D818496F
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 15:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9/xfUKkA157wIdR6wFgmU9uDI7CDc6iAeGMGNlBLI+A=; b=OKhS/C2UkRDqDbM0hkR67PyOiH
	RpMMXWhP4FzmUTWcYvCH2KDG+R6sGNoax49mg3UpfIKddWw+uRMAXzu3LTL9bfarctDXC88fTu6Ua
	AwV7x5DpfAXeOiNl9vsJIFQl7/J11yHfRJr3FcsQ4lWQzO3+PRir+YfOb30tMOK4L17JR2Zf+ShNN
	F9I5pGz4jkTprgGVlAHe3AoUmaRfEpuQ/msfslpWswMEA8ImprCQdPYr7Vs2tqWI+BtacAmeL9THb
	2220lIuD8t2cxbxWxqyqm0Cid5PJRKwq5kjA8Ie7M9zFeXi9iZgJmmdGf3LBDaLr8Q0VwJAOp3PYu
	NsnemZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClO9-0002kI-UC; Fri, 13 Mar 2020 14:34:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClNf-0002Xw-Uf
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 14:33:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 844FB3C2B;
 Fri, 13 Mar 2020 15:33:41 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1464fe73;
 Fri, 13 Mar 2020 15:33:28 +0100 (CET)
Date: Fri, 13 Mar 2020 15:33:39 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200313143339.GA20674@meh.true.cz>
References: <20191128191933.5421-1-rosenp@gmail.com>
 <20191225111701.GI70645@meh.true.cz>
 <CAKxU2N9rckeK7LL2QvoEzghFLENtzNy3i-zFBW7a6RcH3OMcrw@mail.gmail.com>
 <20200228100254.GB2524@meh.true.cz>
 <CAKxU2N_jazEJgSmmMGOSEaACi6COFT62xZHs9POpT=D6NJ8fGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N_jazEJgSmmMGOSEaACi6COFT62xZHs9POpT=D6NJ8fGQ@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_073344_132047_BA0DFAE8 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] pkgconf issue with kmods and libelf [Was: Re:
 tools/pkg-config: Replace with pkgconf]
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
 Andre Heider <a.heider@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2020-02-28 20:12:45]:

Hi,

> It's more portable and smaller. And as stated, it is still fairly active.

Jo has today brought following issue to my attention:

## pkgconf
 $ PATH=$(pwd)/staging_dir/host/bin:$PATH STAGING_PREFIX=$(pwd)/staging_dir/host PKG_CONFIG_PATH=$(pwd)/staging_dir/host/lib/pkgconfig PKG_CONFIG_LIBDIR=$(pwd)/staging_dir/host/lib/pkgconfig pkg-config libelf --libs
 -lelf

## pkg-config

 $ PATH=$(pwd)/staging_dir/host/bin:$PATH STAGING_PREFIX=$(pwd)/staging_dir/host PKG_CONFIG_PATH=$(pwd)/staging_dir/host/lib/pkgconfig PKG_CONFIG_LIBDIR=$(pwd)/staging_dir/host/lib/pkgconfig pkg-config libelf --libs
 -L/home/jow/devel/lede/staging.git/staging_dir/host/lib -lelf

So it looks like pkgconf is filtering out some library paths, causing for
example following issues:

 make[5]: *** No rule to make target 'tools/objtool/objtool', needed by '/home/jow/devel/lede/staging.git/build_dir/target-x86_64_musl/linux-x86_64/siit-1.2/siit.o'.  Stop.

< jow> the main kernel build will skip building objtool (and forcibly disable CONFIG_STACK_VALIDATION) because it cannot link libelf
< jow> any external kmod will assume CONFIG_STACK_VALIDATION is enabled and kbuild will try to invoke objtool which doesn't exist in the precompiled kernel soure tree

Possibly caused by:

 ## linker flags optimization

 As previously mentioned, pkgconf makes optimizations to the linker flags in
 both the case of static and shared linking in order to avoid overlinking
 binaries and also simplifies the `CFLAGS` and `LIBS` output of the pkgconf
 tool for improved readability.

Ref: https://github.com/openwrt/openwrt/pull/2832

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
