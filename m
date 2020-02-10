Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4318C1570F2
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 09:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bEUG/AA1eJZz5l6LVcP8W3I8iy4Mlu8vrZsNAC1hDPA=; b=umfhHWAOEoKTJJj7u5BGD7KQC9
	tn+mWGjgPUG/obWvNRtaZddhglwnRGKMLwgG1n4v50Ulxz5O1MDfDr/b7zIOpVfp6wC0JBGKvFRBk
	9x8LnkJWe6W1DCFRDvjvzNHw/5bYgWCaz8w0tpefPfwHUJTdF9VoDKGfW1LW42F/ktzlmo1kHN828
	sMKyDhWQfb0ZkSaheVD1uB8iYOtQ9eyO6Y34beqNZvlwMFY4be/6LgTZUOqMzI4gKy0GTdhDioAff
	eHLmguZsbFbE/eHN33k637IuQ7BhEDIy0jtDj1kqzFNkGUCpUoiIcqX8yq4Pumq7ZKBxVjGcFFpX9
	Rj9jnzjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14dp-00040Y-5A; Mon, 10 Feb 2020 08:42:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14dh-0003zi-5h
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 08:41:59 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 45E0D4740;
 Mon, 10 Feb 2020 09:41:49 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e022c9e8;
 Mon, 10 Feb 2020 09:41:37 +0100 (CET)
Date: Mon, 10 Feb 2020 09:41:37 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Russell Senior <russell@personaltelco.net>
Message-ID: <20200210084137.GB38853@meh.true.cz>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
 <871rr45ndq.fsf@husum.klickitat.com>
 <006301d5df55$6d371bc0$47a55340$@adrianschmutzler.de>
 <87ftfi3n56.fsf@husum.klickitat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftfi3n56.fsf@husum.klickitat.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_004157_364493_30DAB618 
X-CRM114-Status: UNSURE (   4.54  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to bcm47xx
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
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Russell Senior <russell@personaltelco.net> [2020-02-09 23:41:09]:

Hi,

> If I 'git mv target/linux/brcm47xx target/linux/bcm47xx', and then do
> something like 'git log target/linux/bcm47xx' brcm47xx history.  That seems
> like a loss to me.

it's one of a known Git drawbacks^Wfeatures, as it has no clue about
directories (just blob, tree and commit objects[1]), so try following on file
instead:

 git log --follow target/linux/bcm47xx/modules.mk

1. https://git-scm.com/book/en/v2/Git-Internals-Git-Objects

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
