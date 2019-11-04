Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6A2EDD83
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 12:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyOoiyZZgFZDYG5mJaWaUT0tO7VScg6mUNndd4f5aOI=; b=qG4t0LAC1UOL08
	1QFFi4SSih1DwFK5J+ULxKw0TuoLGM11mrNUbUgCPlko2p84R/AZQwbvS8YgphO+rL0IX8I3rmEgk
	5EYefLTMkazTmZq7w3PKM8eKxtuclToBrCabyzHhEjGR+atjUQtsTUDUsR15YS9R0PKOsbO7J3au6
	5spTCVxSyrKLwsi9ew3Les1GUTWZ/tci2aLYig3Yksl8ROZgOPE2cYyzIWA+fBzD+S+zynlpwOMum
	Kl1N0DTzGe+vxC0Xx1VYKpE0tae7glNkauxyAuvOOIeFsUEDDPHssc4WnOabKqSGIKQnVQcYDmLq2
	224fAllBy2PyyiR9gbWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRaG3-0006DW-Ll; Mon, 04 Nov 2019 11:10:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRaFv-0006CT-TZ
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 11:10:45 +0000
Received: from localhost (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CD6963FAA;
 Mon,  4 Nov 2019 12:10:33 +0100 (CET)
Date: Mon, 04 Nov 2019 11:10:22 +0000
In-Reply-To: <CAECwjAjN=VeqgNMuAzGYzn5ZsXZz-672H9Tpqb27zfgBPjf9Lw@mail.gmail.com>
References: <20191103234617.1972-1-mail@aparcar.org>
 <CAECwjAjN=VeqgNMuAzGYzn5ZsXZz-672H9Tpqb27zfgBPjf9Lw@mail.gmail.com>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org, Yousong Zhou <yszhou4tech@gmail.com>,
 Paul Spooren <mail@aparcar.org>
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <E40260A8-A68D-45CC-8898-04F1109A712E@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_031044_104845_50C62665 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] x86: generate reproducible UUID
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On November 4, 2019 4:02:07 AM UTC, Yousong Zhou <yszhou4tech@gmail.com> wrote:
>On Mon, 4 Nov 2019 at 07:47, Paul Spooren <mail@aparcar.org> wrote:
>>
>> -SIGNATURE:=$(shell perl -e 'printf("%08x", rand(0xFFFFFFFF))')
>> +SIGNATURE:=$(shell echo "$(SOURCE_DATE_EPOCH)" | sha256sum | cut -c
>1-8 -z)
>
>Maybe just unify with other targets should be enough.

Or even better, provide reusable variable in some included makefile and use that instead?

>target/linux/tegra/image/Makefile
>10:SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))
>
>target/linux/x86/image/Makefile
>43:SIGNATURE:=$(shell perl -e 'printf("%08x", rand(0xFFFFFFFF))')
>
>target/linux/mvebu/image/Makefile
>16:SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
