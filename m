Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371361EB07A
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 22:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:Message-ID:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=ACfqOdux52rMseVZlsamLKh0//jq/uHBbZgVYL0dp+o=; b=P9D
	HG8S2fpdXwj/Em2UQG83FT5gDnMnU6irGEyX6EpASuYaHzVrLhaDpUQXUxBN3A911DIH0CgHsxOUN
	lrVPy+kLx9ZkXWCPbYnLNuoaNubMw89hB+/gKhHh5LqWafyrCPll4JAgXQFJBduBZB9OeXf4tjRi4
	O6sF4ybTGR5vAhbz+Uo+NmHJKDESeSYdPCLFve6tF9QQJ1cohKsKLfs5/WRJTuYYSPXiW40nF7opl
	//A5EkDyzKbAwIv98kSl/beoodcX2TpOgcooMFj7nQvoUssWxdrk1JYacGFv4sT1zFtBN6/lsiHLW
	JAbt4T8mEAbQFPkBNVVc78PeI+efzlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrQ2-0000DL-P3; Mon, 01 Jun 2020 20:52:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrPw-0000CI-2P
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 20:52:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 08BB034C4;
 Mon,  1 Jun 2020 22:52:13 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ce463a16;
 Mon, 1 Jun 2020 22:51:57 +0200 (CEST)
Date: Mon, 1 Jun 2020 22:51:57 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Roman Yeryomin <roman@advem.lv>, Michael Jones <mike@meshplusplus.com>
Message-ID: <20200601205157.GG58206@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJQUmm7kmKh-yNdHWWLVRwbVKhc7RXXZQhOo3+9vhWX+1taSdA@mail.gmail.com>
 <20200601153226.15229-1-roman@advem.lv>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_135220_259358_FD0E505A 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Roman Yeryomin <roman@advem.lv> [2020-06-01 18:32:26]:

Hi,

> Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).

this changes location of ccache directory (people would need to move it,
symlink back or override it) and with CCACHE_BASEDIR it probably also
invalidates the current cache/hashes, doesn't it?

BTW you've missed following hardcoded patterns:

 target/toolchain/Makefile:EXCLUDE_DIRS:=*/ccache
 target/sdk/Makefile:EXCLUDE_DIRS:=*/ccache/*

> This allows to do clean and dirclean.

Isn't it desired to remove potentially broken ccache as well with
clean/dirclean? Do I want to remove my config, downloads, feeds etc. in order
to remove ccache?

> +++ b/include/host-build.mk
> +  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_COMPILERCHECK:=%compiler% -dumpmachine; %compiler% -dumpversion)

you've missed to describe this change

>  distclean:
>  	rm -rf bin build_dir .config* dl feeds key-build* logs package/feeds package/openwrt-packages staging_dir tmp
> +	rm -rf $(TOPDIR)/.ccache

Other CCACHE_DIR variable occurencies can be overriden, this is hardcoded
path.

Michael Jones <mike@meshplusplus.com> [2020-06-01 13:34:51]:

> Having build behavior change based on a symlink is undesirable.

`make CCACHE_DIR=/whatever` should work as well

> Additionally, having the ccache directory be a configuration option allows
> it to persist across clones of the git repository, if the .config file is
> stored in git.

BTW .config is .gitignored for a reason.

Anyway, I don't think, that bloating the menu config with every Make variable
from now on is desired. System has sane defaults and is flexible enough to
allow fine tunning if needed.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
