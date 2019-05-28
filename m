Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571962C35D
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 11:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eTq4AZDNFAfQLVCCRdkQBiTELTa/ALEDky0C/mI4dxM=; b=mYN5nejwZe2y1DkMq/wJDuf9nb
	hU0BIasd1QXARjBvoGPi5VKhnWJAIZpyNzLjz1atM7524RTM9XvPHNpE0BxTFeLc1fZ6V1w4+1Hfp
	HE9ckWx5YxcFwjMCtJ7f5K8eygGYynW8I41Thj222GDZEp7wy5xsKSkOHxbMuobC58OXLKcK0tbMO
	BsJ8anrVGsWxIsQLdk8BlBzONn668KfPjLSX697a+NwxUqgTQE7eXBjhm5OCTmgZcXIKpthtw++cZ
	YA8CzjShVoxz6rzM8aD46R1q5b2KIZXhavqduYW0uPOWRV5eo7iDRLQH0DlLciUgOak5mFSZeV0Yz
	FQqFRMyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYYS-0003Jy-SK; Tue, 28 May 2019 09:38:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYYL-0003JR-6t
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 09:37:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 322E74C02;
 Tue, 28 May 2019 11:37:50 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4514f3ef;
 Tue, 28 May 2019 11:37:48 +0200 (CEST)
Date: Tue, 28 May 2019 11:37:48 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190528093748.GB13432@meh.true.cz>
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <CAKxU2N-XswSwUZHCLEAnoJ2Y_tkae2_KkZWzkC8ZP1G3k2fSmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N-XswSwUZHCLEAnoJ2Y_tkae2_KkZWzkC8ZP1G3k2fSmQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_023753_402866_52E2F170 
X-CRM114-Status: UNSURE (   6.99  )
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
Subject: Re: [OpenWrt-Devel] 
 =?utf-8?q?=5BPATCH_0/4=5D_add_=CE=BCrngd=3A_true?=
 =?utf-8?q?_RNG_based_on_timing_jitter?=
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
Cc: Stephan =?utf-8?Q?M=C3=BCller?= <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-05-27 19:19:53]:

Hi,

> Tested this on both mt7621 and Turris Omnia. Works pretty well. Init
> gets done fast.

thanks a lot for testing, can you please reply with your Tested-by next time
so the patchwork could add this tag automatically to this patch?

> The Turris people might want something like this or they need to fix haveged
> to run earlier.

I've been recommended haveged many times (by someone from nic.cz as well), so
my initial idea was to simply give it a go and create uhaveged, but I quickly
came to the conclusion, that it won't work for OpenWrt for many reasons, which
I've already forget, but I think it wasn't truly multiplatform solution due to
some compiler/assembly magic.

Then I've simply found out, that haveged is no longer considered good
enough[1] by the security community:

 Also the use of `haveged` is recommended, which is a bad idea as this daemon
 can create blocking situations during key generation effectively creating a
 deadlock and thus security problems. haveged's design is from 2002, it has
 never been audited, there're only papers by the original authors available.

Even Andre Seznec, one of the main HAVEGE authors stated following[2]:

 He also pointed out a security warning: with some VMs, the hardware cycles
 counter is emulated and deterministic, and thus predictible[3]. He therefore
 does not recommend using HAVEGE on those systems.

so I started looking at other options and luckily enough, I've found out about
this KISS jitter RNG.

1. https://lists.cert.at/pipermail/ach/2017-May/002251.html
2. https://github.com/BetterCrypto/Applied-Crypto-Hardening/commit/cf7cef7a870c1b77089b1bd6209ded6525b5a4e0#commitcomment-23006392
3. https://tls.mbed.org/tech-updates/security-advisories/polarssl-security-advisory-2011-02

-- ynezz 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
