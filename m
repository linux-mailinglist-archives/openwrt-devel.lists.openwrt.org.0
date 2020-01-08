Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F12133BAB
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 07:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sazgbuiJZ2FdfgQHQ2Ec+M8VnrdRssIan8T9AbT9ulY=; b=R7ylVBx/LbfLsV7Nf2k1FdW7xn
	bhno6Nxmj2pE+8uMQiZSzQaY2obMwNWsSgqccaGriK3ZNu/FE+mOjLGYzYpL4rv7pYv5qvT2RfUM4
	Qn/B7TjXObNfp+hJJtwUDKhM9LfwYru1q8ofDaMdf8rNo4s3cvv6Uw0vDLe8LGS0SgZG4cv4a9Xde
	tK40Wr3BfjElISSuI7zxxYMBRmWbjyOkCTvP/d9ia4DOl/bz7peAt4gqSvQrIQWFwRMlP4iQjxNN7
	m4KrkR/hLxzwTgHPxv+QcqHUK5BpsgejCiOH2zuDFB8+Z1cPkdVe3q5UblJQWl8YsEyNN69hIWFpz
	9Hhm68nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip4mI-0002KE-41; Wed, 08 Jan 2020 06:25:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip4m6-0001mA-2X
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 06:25:03 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 05FAD3E7A;
 Wed,  8 Jan 2020 07:24:51 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 85b5ba6f;
 Wed, 8 Jan 2020 07:24:40 +0100 (CET)
Date: Wed, 8 Jan 2020 07:24:40 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20200108062440.GB86978@meh.true.cz>
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <94437c48-7467-97e0-d47c-2c825ac73742@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <94437c48-7467-97e0-d47c-2c825ac73742@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_222502_279268_87986260 
X-CRM114-Status: UNSURE (   8.70  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] buildsystem: Activate PIE ASLR for
 some packages
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
Cc: daniel.engberg.lists@pyret.net, lynxis@fe80.eu, dave@taht.net,
 Rosen Penev <rosenp@gmail.com>, openwrt-devel@lists.openwrt.org, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2020-01-07 23:21:19]:

Hi,

thanks for your work.

> > Hauke Mehrtens (6):
> >   buildsystem: Make PIE ASLR option tristate
> >   dnsmasq: Activate PIE by default
> >   dropbear: Activate PIE by default
> >   hostapd: Activate PIE by default
> >   uhttpd: Activate PIE by default
> >   lantiq: Allow PKG_ASLR_PIE for DSL and voice drivers

just wondering, if there is any particular reason for leaving odhcp6c and
odhcpd out as this are network exposed services and running in default
install.

Thinking about it now, we should probably consider ubus, procd, rpcd and
cgi-io (perhaps missed something) which might possibly process malicious
inputs as well.

BTW I'm wondering how does this work with the shared libraries, like musl
libc, openssl, libubox? Don't they need PKG_ASLR_PIE_REGULAR enabled as well
in order to get `TARGET_LDFLAGS += $(FPIC)
-specs=$(INCLUDE_DIR)/hardened-ld-pie.specs` ?

> I would like to apply these patches to master?

I don't know if you've something newer in your tree, just looked at your aslr
branch in your staging tree:

 + default PKG_ASLR_PIE_NONE if ((SMALL_FLASH || LOW_MEMORY_FOOTPRINT) && !SDK)

Nice, that you've enabled this for !SMALL_FLASH devices. BTW what is the
reason for !SDK? That way binary/library.

> Are there any objections to this? I already activated LTO to reduce the
> size for all these components and the lantiq patch is already applied.

I don't have any objections, I welcome this additional hardening. Which branch
can I use for runtime testing? I plan to test it and give you my Acked-by.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
