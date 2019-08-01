Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5897E443
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 22:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fKEyt9E5qw944Hh0gwgYLOTjjI8fDpGQCEbWh+roxFc=; b=LFofJ/ikk7vBTwr2vQW5pwguI0
	A3/8dEoSD1bR98oDDZr4sqakfSF4AlWfYmCLsqk1HwjulkVKItAowmSMkgtvUS55qwaz01tSo93df
	IQMOo+VvQWJEosUgUDc2dBtPucAbgyFtsxK0X/ADHHIm51Rgb6vRfP9sVezGxN6pvHA27t5JaGa39
	6+T5wOrd96IiLdiDCff5wnCmC8GxFR88hBd8/7w+yWjhAVNqJcQQNSvRwfN6Ms9LLSSRNzXUa8ZI6
	qVyA4HRuSOS5773r+0FtEMwY2xP18wi69quju5lapD0M3Tv8oqEYaM7AkJEIqBpIpqbEc9VvZUNo+
	1k7nUIeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHoa-0006FT-I9; Thu, 01 Aug 2019 20:36:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHoT-0006F2-K6
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 20:36:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8CEE7484A;
 Thu,  1 Aug 2019 22:36:30 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id acf381c4;
 Thu, 1 Aug 2019 22:36:23 +0200 (CEST)
Date: Thu, 1 Aug 2019 22:36:23 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Nick Schaf <nick.schaf@jci.com>
Message-ID: <20190801203623.GO74752@meh.true.cz>
References: <BN6P132MB0098F57D3CA062CE1CBB935C8BDF0@BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6P132MB0098F57D3CA062CE1CBB935C8BDF0@BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_133637_815771_8885E18B 
X-CRM114-Status: GOOD (  14.52  )
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
Subject: Re: [OpenWrt-Devel] Memory leak related to OpenWrt patch of hostapd
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Nick Schaf <nick.schaf@jci.com> [2019-07-31 16:34:36]:

Hi,

> I've noticed the wpa_supplicant process on my mesh interfaces leaking memory
> to the point that the kernel kills the process.  It was discovered in
> 18.06.2, but I've reproduced it with 18.06.4 and with the master branch from
> the GitHub repo.  Since the leak occurs as mesh links are created and
> destroyed, I was able to reproduce it with a simple two-node setup where I
> monitor the wpa_supplicant process VSZ on one node and repeatedly bring wifi
> up and down on the other node.
> 
> I've traced it back to the 18.06.2 release, specifically to lines 34-35 of
> package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch
> +                 (modes = nl80211_get_hw_feature_data(bss, &num_modes,
> &flags, +
> &dfs_domain)) && That code was added in
> a35f24309021c1c0e9cbed0faedf58b941cb4bd3.
> 
> I removed the entire patch file to resolve the memory leak because the
> subsequent call to ieee80211_is_dfs() uses the return value from
> nl80211_get_hw_feature_data().  However, I know the problem is specifically
> related to the nl80211_get_hw_feature_data() call because I stepped-backward
> through commits of the hostapd source until I got back to
> 0f7fc6b98de9c69f511b9b22f2b65553126362eb, where ieee80211_is_dfs() had only
> one argument and didn't rely on the nl80211_get_hw_feature_data() return
> value.  At that point, the memory leak still occurred until I commented-out
> the call to nl80211_get_hw_feature_data().
> 
> I attempted to dive into nl80211_get_hw_feature_data(), but was quickly
> lost, so I defer to those that are more experienced in that code.

you did a nice job here to track it down, so thanks for reporting this, can
you try this patch[1]?

1. https://git.openwrt.org/c818ab2b8649accb3739b9234f2d07e16011fda6

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
