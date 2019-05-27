Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B852B5E7
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 15:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MsqV2JjGM8lHv7jiNA3wcjjrfMVvDxtS/QAzcq1RqZk=; b=dBfMNk8X4jiux+KXAb2QFEvVZO
	MFHE6YMZcI6hBh7MKG+hGClvnJi5hJO1eF87K00Y7BT4bjVcd/xk//013Ia5jBE3BN+DkbI3uLYzu
	aiAgMh+OEPqAEXE+Grd8H6bvz+dFxfyHT45qZJW6Nb/7Wu7znp563D9jJCqLSyI1DYv46u7SZpMHd
	PeJOWGb0Zmh5noCnCid9s/VU3l0+oKCkTVIaxbCt0KgmvtAIS0ut5Tjc17JH7uThOwjrRzrHNYqcZ
	jnM+fnPdrg9Itk9b3/Pvb9mNJNvvOz85eI3ZsvwxVg7L8x9RIbjInDVHLIr8Yz17xT0Ay84tl6FL+
	eKmKk/zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFEw-0001xc-JV; Mon, 27 May 2019 13:00:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFEp-0001wv-2r
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 13:00:28 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id ACB754049;
 Mon, 27 May 2019 15:00:24 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b856625d;
 Mon, 27 May 2019 15:00:23 +0200 (CEST)
Date: Mon, 27 May 2019 15:00:23 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Etienne Champetier <champetier.etienne@gmail.com>
Message-ID: <20190527130023.GI50588@meh.true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <CAOdf3goqqUUXc7pM8wMR=edshXdJAfqEzUi5_wGSnSyJk-P7sg@mail.gmail.com>
 <20190521145502.GB4606@meh.true.cz>
 <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_060027_282983_60C4308F 
X-CRM114-Status: UNSURE (   6.23  )
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
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Cc: Stephan Mueller <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Etienne Champetier <champetier.etienne@gmail.com> [2019-05-25 12:43:25]:

> Just to be clear i'm 100% in favor of your effort to have random pool init
> done fast on all devices, and your solution, based on Stephan awsome work,
> seems really good I just want to be sure we don't make some devices worse /
> are not missing something

FYI, I've just added more devices to the testing before submitting the next
round of patches, and got following on the MT7620A based device:

 root@OpenWrt:/# cat /proc/cpuinfo
 system type             : MediaTek MT7620A ver:2 eco:6
 machine                 : BDCOM WAP2100-SK
 processor               : 0
 cpu model               : MIPS 24KEc V5.0

 root@OpenWrt:/# cat /sys/devices/system/clocksource/clocksource0/available_clocksource
 systick MIPS

 root@OpenWrt:/# /sbin/urngd 
 jent-rng init failed, err: 2

Where that error 2 is ECOARSETIME. It makes me wonder if there's something
which could be tweaked on kernel side in order to provide better environment
for jent-rng on this quite still popular SoC.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
