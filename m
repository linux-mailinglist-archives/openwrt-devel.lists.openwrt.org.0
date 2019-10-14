Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839E6D656F
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 16:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bO+oqXRrJsXhFUlPH1t548kXmKOXDxHmpMnXseUFkiE=; b=gJlQH/yCuAr9pd
	cGq52emX6TZVw5hvAvN+s6Bgz0+WtDC4Lu2r7GQYMNaPfupwrK9+51rwu0SLkq+90hMIZCxIQTKvU
	p8vg84mDOKZscluBRP3mWaUM8cb1stc6NprQEMW6Yv2eSasuMTapaRUqYFx9t89R1hsUvHMh3pbBL
	Eb9EKXikKriOabHx4WJprqoLnOSrYN74SFtdLPALs0gYUQXDmKx0bX9eJ4vG99GX9PuZU05zOAkp7
	LtyuRfuWgKejXt8IV22VagCISEMJOrysc8h6ose/XL4UqEnH+DK1r0rxveHiSG6C6dyc2FtlvKWJ6
	fAyOVaWug/dGhauPfTnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1ZY-0005Hi-Qx; Mon, 14 Oct 2019 14:43:44 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1ZL-0005Gb-J5
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 14:43:35 +0000
Received: (wp-smtpd smtp.wp.pl 6238 invoked from network);
 14 Oct 2019 16:43:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571064205; bh=PKQQWQxVkwErs/OnrB5ysmsiwJln15VzK5JwGrhg4Ws=;
 h=From:To:Cc:Subject;
 b=A7cJZxe+Nxh4wLWyCd6hxGDXItDzcN4u65T8/450QkD57eDPVAF2hfRlh1atpUPMw
 zcLLa7Dk6Jyb8k8jHrvGvAgJzQWpMdXF7mJ0FjUWSX83H6cAY5zHYAtE317DcVr1Zg
 o25Z3lTBvf4DTsyHqWKG/c4OzFqFxk8BOqcce4bY=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 14 Oct 2019 16:43:25 +0200
Date: Mon, 14 Oct 2019 16:43:23 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20191014164323.29f04775@kosmio.komorska>
In-Reply-To: <f60426df-e3cb-80b6-7ce3-e4b5a18765f4@david-bauer.net>
References: <20191011105011.05efbcda@kosmio.komorska>
 <501cff5b-efac-8bcf-b895-ce6d8c9b219c@david-bauer.net>
 <20191014002200.1265b24b@kosmio.komorska>
 <f60426df-e3cb-80b6-7ce3-e4b5a18765f4@david-bauer.net>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 41285e1dd5346b1192c467c2f51289a1
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [kYNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_074333_865028_DD779F27 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add AR934x NAND Flash Controller
 driver
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 14 Oct 2019 12:57:29 +0200
David Bauer <mail@david-bauer.net> wrote:

> Hello Michal
> 
> On 10/14/19 12:22 AM, Michal Cieslakiewicz wrote:
> > Hello David,
> > 
> > Yes, please update my commit.
> > 
> > Thank you for your feedback, review and tests. Indeed I (wrongly)
> > assumed minimalistic approach and delegated ar71xx reset procedure
> > to a simple DT property. I have only WNDR4300 to test the driver -
> > this router interestingly has no problems whatsoever (I've booted
> > it tens of times). ar934x-nand is my first DT driver port ever, and
> > I thanks to your patch now I know more about implementing reset
> > features :-)   
> 
> No Problem (and thanks for taking care of that). I've started work on
> the NAND driver some months ago, but quickly lost interested as more
> fun stuff was around. Glad to see this coming true.
> 
> The ar71xx implementation also triggered resets for the ethernet
> switch analog. I'm a bit lost here grasping the correlation. I will
> try to get my hands on GPL source from the Atheros implementation,
> seeing I can make out the reason for this reset.
> 
> Best wishes
> David
> 

Hello David,

Yes, this 'analog switch reset' puzzles me also, there are no clues how
it affects NAND chip in official AR9344 datasheet. Also in Netgear's
u-boot sources there is a reset sequence in ath_nand_hw_init() function
(board/ar7240/common/ath_nand.c file), but it does not even touch
ethernet switch.
For now I've found a place for it in WNDR4300 dts file in
'&builtin_switch' section where it's added to generic ethernet switch
reset. No problems so far on my WNDR4300, neither with NAND nor with
network.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
