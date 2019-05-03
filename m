Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767DF13411
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 21:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t75yhKXlhj9xiJDU7ICl/JFcv6yRisJQfEBko9Cqvlo=; b=RV3/XKqFMCUrtT2/xTLE1i++Cf
	33wjbqjhhKtB3TaGpzgwxlofjvA2Bw4Npe0JeFIrDS2K4Fk+jYEMAgUUgx1OUfSJnjRghg86rLmme
	bs1wD6/og8Hd9Pw8CLSyEDEfxnVJqKriv8q4Mx2zhi6ZbUiiew2Q6l5eJkgieBiox5+wWvdqwP3ei
	om9/80IOHc4t0rvQygSHaHOIPsqh5zyeOxvynudlHn6obijINiQrVd7nD2UG7E4RDSJM1iISNoskZ
	wU80pfXVTFemCDv3ZtxaNJRadi863nGhiqYqpuSwMAcFbcPOgkDCYBTCRISnAYM0V3j/jYLiJJnBl
	FWEe+hmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMe1J-0007He-LQ; Fri, 03 May 2019 19:38:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMe1C-0007HD-8S
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 19:38:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C4BA2328A;
 Fri,  3 May 2019 21:38:47 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e8c0e44f;
 Fri, 3 May 2019 21:38:46 +0200 (CEST)
Date: Fri, 3 May 2019 21:38:46 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Klaus Kudielka <klaus.kudielka@gmail.com>
Message-ID: <20190503193846.GI71477@meh.true.cz>
References: <20190424191439.32298-1-klaus.kudielka@gmail.com>
 <20190424191439.32298-2-klaus.kudielka@gmail.com>
 <20190503170500.GA73395@meh.true.cz>
 <524607f2-518e-7517-97c5-2ea5ae71846d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <524607f2-518e-7517-97c5-2ea5ae71846d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_123850_454018_D2328048 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: improve
 lib/upgrade/common.sh
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
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Klaus Kudielka <klaus.kudielka@gmail.com> [2019-05-03 20:16:39]:

> Let me remind you that the common one *alone* breaks sysupgrade for those
> four targets, as Tomasz already pointed out earlier.

Well, how could I know what was wrong with v1 if you didn't included the
changes between v1 -> v2 in your v2 patch :-)

Anyway, thanks for the explanation, it wasn't that much clear to me from the
commit message, so if you don't mind, I'll include the details there as well
in order to help it better understand to other folks.

Merged into my staging tree https://git.openwrt.org/?p=openwrt/staging/ynezz.git;a=commit;h=195178f88ee7b3815f9bea66a2454ccfdf2135a5

> In more detail:
> 
> The root of the problem is that the *existing* export_bootdevice in
> /lib/upgrade/common.sh behaves differently, if the kernel is booted with
> root=/dev/..., or if it is booted with root=PARTUUID=...
> 
> In the former case, it reports back major/minor of the root partition,
> in the latter case it reports back major/minor of the complete boot disk.
> 
> The targets mentioned above have added workarounds to this behaviour, by
> specifying *negative* increments to the export_partdevice function.
> 
> And then came the mvebu target to use export_bootdevice /
> export_partdevice as well. Now, different subtargets boot differently,
> and the workaround would be even more complex.
> 
> I think now is the time to make export_bootdevice behave consistently,
> and to report major/minor of the boot disk, period.
> 
> Consequently, those targets, which boot with root=/dev/... *and* use
> export_bootdevice / export_partdevice, have to be adapted to use
> positive increments, otherwise they are broken by the change
> to export_bootdevice.
> 
> The targets affected were easy to spot with find & grep.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
