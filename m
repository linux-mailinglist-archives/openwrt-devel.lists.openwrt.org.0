Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C045D7F52B
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 12:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+77V+a8f2MiMx+NdZZlC/0GwAYV/BrYDaITdTCmh1oI=; b=fLg7uH/O7HiVaHj1qQwNPrBOnP
	rch9MnxQX+j+9zthjvt2k7gclcbbHP1Mt16FjZkcEuJnZw8Iyum2BCHDol3DGq+CbC0nQlRsCZtZo
	xCANBfy+vHLpGF9ICs309iVtxrmF7K6Fjjh+Ko28abKwLme67SIwebXJVuzfw0JaHed3uYvWsBqhE
	NTtEV13/0tgPvxyJCZTIRdLO5PQbpmmJGHoySpIbahdu7IYLltrAM7cK1EhhqdiYPcjCWQVKEui8V
	AVrtibMHCi+JJVad8d2+yzYzGO6BycaR97F6OFDMnY/fQuLWMeki2jXJnudQfXq2vJUAnwohSl54h
	LkOQc7zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUvv-0004Dj-Qk; Fri, 02 Aug 2019 10:37:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htUvp-0004DI-FE
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 10:37:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E49C64624;
 Fri,  2 Aug 2019 12:37:01 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4229569e;
 Fri, 2 Aug 2019 12:36:54 +0200 (CEST)
Date: Fri, 2 Aug 2019 12:36:54 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Joan Moreau <jom@grosjo.net>
Message-ID: <20190802103653.GP74752@meh.true.cz>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_033705_664907_E8C37236 
X-CRM114-Status: UNSURE (   6.62  )
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
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
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

Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-08-02 07:56:41]:

> Hello,
> 
> I reach the following error while compiling my MT7620/ZBT826-16M on
> master (no error on 18.06) :
> 
> CC [M]
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o
> <command-line>:0:37: error: redeclaration of enumerator
> 'IEEE80211_HW_REPORTS_TX_ACK_STATUS'
> <command-line>:0:37: note: in definition of macro
> 'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'
> In file included from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,
> from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,
> from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.c:7:
> /usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac80211/net/mac80211.h:2293:2:
> note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was
> here
> IEEE80211_HW_REPORTS_TX_ACK_STATUS,
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> make[6]: *** [scripts/Makefile.build:327:
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o]
> Error 1
> make[5]: *** [scripts/Makefile.build:585:
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603]
> Error 2
> make[4]: *** [Makefile:1532:
> _module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45]
> Error 2
> 
> Can you help ?

the problem is probably in this compile check[1], so please do following:

 make package/mt76/{clean,prepare}
 sed -i 's;TMP";TMP" 2> $(TOPDIR)/meh.log;' build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/Makefile 
 make package/mt76/compile
 scripts/diffconfig.sh >> meh.log; gzip meh.log

and send meh.log.gz file as attachment.

1. https://github.com/openwrt/mt76/blob/master/mt7603/Makefile#L7

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
