Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F267F8B72
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 10:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NvDm0yqV3LwSbRLLDMd9bXIl8reCLi/7YR4qMRu7pQA=; b=dLSgs7spDvBIE3hh+H8AjRPwZz
	xRj8da/Yrh5mmKwj8YOsVv3Yb5i/HFpTH3mEEq5Im/Hs9gioTeYrtM095iO+9mxhZI6LQE5K2nJwo
	AkR+QTg15GIHxDEq91nHmOv2/qM3ILa+DijZtvHx7Zvv+bxDQ+eWUFE6bQswgY6+sKEO0DJie/8Vz
	6lCtzZhQCeg274Hk9nfB+v4qsuUG5wVrDwrOyX3aObbpBrecUo7nWjGXgdULRJPveV4OCvQCh79xR
	Yyv+lKw+xvf4OLDZrCB+KFOIxEGQaB+n5vy9dcAkOnl1WaN8rlcWwf1Ehuz6lLJ7ZzJN/UvLa2yYu
	CpSRyY0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUSEA-00049K-JG; Tue, 12 Nov 2019 09:12:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSE4-00048u-AF
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 09:12:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BA1E8426E;
 Tue, 12 Nov 2019 10:12:37 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fb2d2f09;
 Tue, 12 Nov 2019 10:12:27 +0100 (CET)
Date: Tue, 12 Nov 2019 10:12:27 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191112091227.GB71646@meh.true.cz>
References: <20191112081625.27695-1-ynezz@true.cz>
 <CAECwjAjN3938FFjc3KJ2pQ=KP66EKD3s4RiWzW50LLZ+RiDrBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAjN3938FFjc3KJ2pQ=KP66EKD3s4RiWzW50LLZ+RiDrBQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_011240_507464_DF319DFD 
X-CRM114-Status: GOOD (  10.07  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] build: make GCC version 6+ minimal host
 build requirement
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yousong Zhou <yszhou4tech@gmail.com> [2019-11-12 16:26:14]:

Hi,

> Not quite sure how much benefit enforcing -Wextra can bring to the
> whole code base.

I'm adding -Wextra for some time already to any C project I touch, nobody has
objected against it so far. I'm adding it because I think, that the latest
compilers are producing usable warnings, less false positives and that it
should be one of the standard hardening options for any network facing
project. I see -Wextra just as another pair of review eyes for me, even if
it's provided by the machine.

It's just older GCC versions making -Wextra PITA, so if we decide to keep
support for gcc-4.8+, then it would probably make sense to enable -Wextra for
gcc6+.

> Excluding support for vanilla CentOS7 will certainly cause inconvenience for
> large numbers of users. 

Well, I don't see anything bad about sunsetting of old tools. This is master,
so next OpenWrt release somewhere in the 2020, so probably not a big deal,
right? They're going to install python3 anyway as well.

> That is probably more so to serious industrial users.

If I'm able to install gcc-4.8 on my latest stable Debian, then I assume, that
it should be relatively straight forward to install some decent GCC version on
<your-stable-distro> as well.

If we decide to keep gcc-4.8 support, wouldn't it make sense to use gcc-4.8 on
buildbots as well? You know, in order to catch similar issues during QA
process.

I can certainly add gcc-4.8, gcc-4.9, gcc-5 to the CI compiler mix (currently
has gcc-7, gcc-8, gcc-9 and clang-9 compilers), but this is going to result in
the 6 additional compile/run tests (3 * release/debug), so it makes me wonder
if it's really worth the resources/efforts.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
