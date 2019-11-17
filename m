Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDEFFFBB9
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 22:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xXedSleRUGf1k/S1U3X/elf3NUcNHpD+BplI5fVTsZ8=; b=Y2dNAVWgKoTMgzYer5Ak5T4vNN
	rQnEaalHwx9/NBdWgPSD9s6eJgIhJO54ThHel6n7DNVRR4KA/OwHJ4MHT2RfoaIU2RHQDp/8LYTnh
	OrCa8RjFQY9taCzgT5H9rDv2rwra1E72Xj/IaZUE6V99rN3b+tXfmX01kdRi5vGlXYHFCdft/GmOQ
	5emUrrGT+i2EtS3Yer3CO1SFoskunpCkTHr8acXYwV6NYLbjMxhl2Eo72BB0jR9l0WP0HABoj6d0s
	nBwkP76Z1EzeeO6MmYa13iZ/Dshw5Ekm1L+BaxZWvVwm5eoDpihkuZrwwf3brC5hF3elC1XBofG22
	Z6dhwSWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWRyw-0004Tb-Up; Sun, 17 Nov 2019 21:21:18 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWRyp-0004Sq-8q
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 21:21:13 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BF0204416;
 Sun, 17 Nov 2019 22:21:05 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2b94a943;
 Sun, 17 Nov 2019 22:20:55 +0100 (CET)
Date: Sun, 17 Nov 2019 22:20:55 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20191117212055.GB52387@meh.true.cz>
References: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_132111_461959_1A40D0B9 
X-CRM114-Status: UNSURE (   6.66  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: indicate initial setup
 by uci system config option
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

Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-11-08 13:05:19]:

> This provides a uci system config setting that will be set only
> during initial setup. This can be used by uci-defaults script to
> determine whether they are run during initial setup or after a
> sysupgrade.

I use similar stuff in my config scripts, just differently.

I do `set system.@system[-1].firstboot_done='1'` in order to know, that
the system was already first time booted.

So if the user performs sysupgrade but prefers to keep settings, I don't run
uci-default scripts which performs one time setup stuff, like setting
hostname, generating unique auth token etc. basically it boils down to
`is_firstboot || exit 0` in those one time uci-default scripts.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
