Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734D4FEC6E
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 14:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5f54T8TrPFB5Wc/BgfAJGA2gkFJYF/7zYl3sHn0A/YQ=; b=rari6HwPGP8pMPtPLUQjXE82Pj
	hnekRlHA9wVD4MKiibhGnognrlLethV2JIxtM7eSV9f4BULlDW0c2i8cmjfQt1sYNP3FSLlLHscWC
	du4nbfYUuuGcDNiOaP414v5e8I5O53OP6iYhhNn6TUDV5ESE+abEQxYOfbk92OBbd8OGkSy7uFfrv
	HySf9tzz4kagkvZXyfRs60aAOAlzLzTidVoXsf0c6/nRXO/AZjDPbVs/OR7Jyfk477nVE0z+HUMWs
	Aje7+Ca86rIcaW5Smc08NPxohp0abfBWZVsqupcmqp+CtQRYKd2jnftamK29W9dg+vXW14X4SP14o
	fsLVezPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVy29-0002XJ-R5; Sat, 16 Nov 2019 13:22:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVy1y-0002Sa-PJ
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 13:22:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 84F564EB1;
 Sat, 16 Nov 2019 14:22:23 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d2799e30;
 Sat, 16 Nov 2019 14:22:13 +0100 (CET)
Date: Sat, 16 Nov 2019 14:22:13 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Message-ID: <20191116132213.GA52387@meh.true.cz>
References: <20191113151241.752720-1-thomas.petazzoni@bootlin.com>
 <20191115052949.GC13337@meh.true.cz>
 <20191115091632.1aeb1269@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115091632.1aeb1269@windsurf>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_052226_972348_04562869 
X-CRM114-Status: GOOD (  12.58  )
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
Subject: Re: [OpenWrt-Devel] [PATCH procd] initd/init: add minimal SELinux
 policy loading support
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

Thomas Petazzoni <thomas.petazzoni@bootlin.com> [2019-11-15 09:16:32]:

(nitpick, it's OpenWrt, not OpenWRT)

> No, this patch is not RFC, it should be ready for merging, I'm already
> using it in some devices.

Ok, this patch is good enough for your limited use case, but in order to
include SELinux support in OpenWrt, then the first patch series should be more
comprehensive, minimal yet complete.

> The thing is that the SELinux support in OpenWRT needs this improvement
> in procd, otherwise it won't work at runtime as nothing will be loading
> the SELinux policy.

Where is that policy? What about kernel part? What about userspace part? What
about filesystem image? And so on.

> Regarding the flash space, RAM and CPU overhead, I'm not sure it's that
> relevant: the SELinux packaging I've done makes it completely optional,
> so you only have an impact of flash space, RAM and CPU if you enable
> SELinux support.

Once its merged, we basically say, that its more or less supported, even if
it's optional.

It's pretty much crystal clear, that some additional hardening layer would be
very welcome. I think, that OpenWrt should aim for something, which could be
usable on most of modern devices today and enabled by default. Security
shouldn't be an option, it should be default.

SELinux is just one of the LSMs in Linux.  Is SELinux the right one for
OpenWrt project? Are we going to support all of them? I doubt that, so
decision needs to be made.

> Do you have more details about entering failsafe mode ? How do you do that ?

It's usually triggered by the button during the boot process[1], but it should
be possible to force it from procd as well.

1. https://openwrt.org/docs/guide-user/troubleshooting/failsafe_and_factory_reset

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
