Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A2F17A452
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 12:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JuEyUJbowhBLcLANWFzzCrt0Y/ep70+O1C424QVyXUY=; b=fgJdxBTZjHggrWwtm+nqxOezf4
	pK/QY7tEhv7FCS1gR9xW7VuvnNjxKQf3VPr7fkJMUrUpgSF6a2/sxhoIKbS+wZTB7V6VZGMV78BoI
	dNKyNQrdCNKX+ZH0TAvo+FClkzQzdFjDQ2z1DXySyU9CsU8yuIDdtdhcIK0HAVt6/+GcHMUZzDhZC
	nriF1D84ePB0VsqxS30iD0sLY5sTVE4zIQfMKVijjhOIC7kz2pRGAZcEmcog2px5iGF1wq+vxEkQR
	SBp7oeNu+h9GrgyzW44GaqXlBgLmfO0HDY7E5PD4RhaopYJ23Q6rrWZNirkEGmaVSTAJ3fgP9IejX
	JlsTiMfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9onB-0005gr-Lp; Thu, 05 Mar 2020 11:35:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9on0-0005gC-EO
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 11:35:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B10093B86;
 Thu,  5 Mar 2020 12:35:39 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a7826283;
 Thu, 5 Mar 2020 12:35:26 +0100 (CET)
Date: Thu, 5 Mar 2020 12:35:26 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Karl Palsson <karlp@tweak.net.au>
Message-ID: <20200305113526.GB86312@meh.true.cz>
References: <20200305084912.14659-1-ynezz@true.cz>
 <px9v7VGUzQWVsQG8LA985yU7sHqErVFNEMj8VRtq23cb@mailpile>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <px9v7VGUzQWVsQG8LA985yU7sHqErVFNEMj8VRtq23cb@mailpile>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_033542_633029_A174C6C4 
X-CRM114-Status: UNSURE (   7.07  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Jo-Philip Wich <jow@mein.io>,
 Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Karl Palsson <karlp@tweak.net.au> [2020-03-05 11:18:02]:

> > Commit 432ec292ccc8 ("rpcd: add respawn param") has introduced
> > infinite restarting of the service which could be reached over
> > network. 
> 
> Didn't we already decide that this wasn't the case?

< jow> ubus itself has no network transport
< jow> it is reachable via http://.../ubus in case uhttpd-mod-ubus is installed (not the default) or via http://.../cgi-bin/luci/admin/ubus (default)
< jow> the latter emulates uhttpd-mob-ubus in Lua code
< jow> it takes incoming http requests, parses the body json and invokes ubus via libubus

I understand this as Yes, it is available over network.

> Sure, now it's a DoS instead :) It's always a tradeoff, but I
> think you're glossing over the tradeoff here.

Secure by default.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
