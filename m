Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F14EBD3BA
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 22:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tost/qaXRRwZXOBCXFHVcw9IL52WSkqWGY6CfUKvV0g=; b=MV4ftInG1XBOyqLF8DbLUxoyEu
	aNBFsi+/5Peh2kTKXHNlfDkr3MZpMQZQivZj3espMxthkVwVQD9zXXxQd+GB3X2HrxtBIWIv3cSHU
	LbhzL4fCTUm/KZqqoXYsDk2AFG2FRsUGXvCEtZj1pZzxjpZ3PUoA+rryHYdVae+Z5YRMk7Q6EAgVc
	JJ6wTxwyMQTVgVzEKgX4J+ZvsZuej9R1jl5UkPsQldVmuBN67o1ZQFGfLDn4xP8MK8vvAdG4AfsH2
	0R4IBOuKaHp9KxUcsRXhH8VljL8QDsbc4JrfwxHRWnqFii+IcxqIDJujkYQZcus4OehHrVhdIpZUK
	3IAxuY7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCrdW-0002Em-Ry; Tue, 24 Sep 2019 20:42:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCrdL-0002ER-Rq
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 20:42:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 085C6490E;
 Tue, 24 Sep 2019 22:41:59 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id bf14df8c;
 Tue, 24 Sep 2019 22:41:51 +0200 (CEST)
Date: Tue, 24 Sep 2019 22:41:51 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Eneas Queiroz <cotequeiroz@gmail.com>
Message-ID: <20190924204151.GE40628@meh.true.cz>
References: <20190923073539.7493-1-ynezz@true.cz>
 <20190923073937.7890-1-ynezz@true.cz>
 <CAPxccB3ZF_E5UXgoha6hqnMcktWqY6N4uS6J7x714CPvC_XW0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPxccB3ZF_E5UXgoha6hqnMcktWqY6N4uS6J7x714CPvC_XW0g@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_134204_053031_F74395C3 
X-CRM114-Status: UNSURE (   8.63  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: fix make kernel_menuconfig
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
 Thomas Albers <thomas.gameiro@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Eneas Queiroz <cotequeiroz@gmail.com> [2019-09-24 17:06:28]:

Hi,

> The problem is that when scripts/config/lxdialog/check-lxdialog.sh is run,
> it will still use the staging_dir/host/bin/pkg-config script without
> STAGING_PREFIX set.

it doesn't work like that here, I've just added following into check-lxdialog.sh:

  echo "$(command -v pkg-config)" > $TOPDIR/meh.log

and meh.log contains /usr/bin/pkg-config after kernel_menuconfig run.

> > +DISTRO_PKG_CONFIG:=$(shell which -a pkg-config | grep -E '\/usr' | head -n 1)
> If we export this, then we can check its existence in
> tools/pkg-config/files/pkg-config, and decide which pkg-config we want
> to run.

if I understand it correctly this global exports are not welcome.

> Then, we can use the variable in our pkg-config script to decide what
> to run, using just pkg-config.real as a fallback if nothing is defined
> (alternatively, we can fail instead):

similar approach was already suggested[1] by Thomas originally and was considered
brittle (and I agreed with that), so I've reworked it to current version.

1. https://patchwork.ozlabs.org/patch/1163120/

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
