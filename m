Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E36FED12E
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 00:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+bx5sNYqh+brIZXYMok+NMiYT6j5JKZjsdU/wqdNZM=; b=o7BmDDsNIaVXHp
	bFYw4I6Yeo0A86x3oLXsyaaZV30q4HNybkZoGxTp5Xhf3675fHJeEYSWsMn1Ukt5A7ZxJeFt39/Hm
	AweaiRzrFbiRpaaaYuax1tHse5VAfZJwj7oq+PCUtsXegcnk9W/N2yGkuIEwHotb0PuHJPdkCZ2aZ
	PUO3yDuZaY4SUkS2QU1dTn8d/InwHYaIMXRRDzkhQ/KnCo+lmnnqZvFAuXFU5Z364YtboD35tBxNr
	n/KLM8ck9SYCFFKQgsGg6FeUNFi3gXJXDJiVxp1xoaBKSh9v83uga+mkaiZkwL+mWvrpiQQLGSbGs
	+dUTg1oLvjaqyuNZhXQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR3Iu-0007Ec-Ek; Sat, 02 Nov 2019 23:59:36 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR3Im-0007EC-3j
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 23:59:30 +0000
Received: (wp-smtpd smtp.wp.pl 40012 invoked from network);
 3 Nov 2019 00:59:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572739161; bh=1BQbWY/SIz83NLBBuN8yRE4Mw0/5qKOTic6N0uzxVT0=;
 h=From:To:Cc:Subject;
 b=fBFlvZTR46D11v6Nnxqu7Va1hgVlnB3EWUQhJYwRFEVwKHvVA7nCq0E9Si5mkTV/O
 SVXa3hHqAWD9bhppgmyOqjsWNHLrHya2rIieiBaQAcujGeSyoJxPW76DpwSiXrZJjo
 Niijedt+5z0L07b9yoQMLYOoq7MYmpXgPgYg6dos=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <john@phrozen.org>; 3 Nov 2019 00:59:20 +0100
Date: Sun, 3 Nov 2019 00:59:18 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: John Crispin <john@phrozen.org>
Message-ID: <20191103005907.32dbdcab@kosmio.komorska>
In-Reply-To: <00c801d58f30$1fe4d3f0$5fae7bd0$@adrianschmutzler.de>
References: <20191030123221.7a0af3ea@kosmio.komorska>
 <004f01d58f20$8e12cd60$aa386820$@adrianschmutzler.de>
 <20191030152532.5b67428c@kosmio.komorska>
 <00c801d58f30$1fe4d3f0$5fae7bd0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 949acfea7d39d913fb9554203e7ecc02
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [wYO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_165928_666224_F59757BC 
X-CRM114-Status: UNSURE (   3.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ath79: add support for Netgear WNDR4300 - patches
 mixed
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello John,

It looks like WNDR4300 support patches have been duplicated in the
master tree, that is:
commit 9b6f89c37fc9c2e23cc123bd7b5cf9a1f8dc301a - this is proper and
latest v3 patch, that does not create nand-netgear.mk file as Adrian
advised and updates nand.mk instead
then appears:
commit cd87272eb241b1ea7955c1631ad2bb8d38e9fae9 - this is part of
obsolete v2 than creates nand-netgear.mk file and includes it in
Makefile...
...so in effect now there are duplicated makefiles for WNDR4300. My
advice is to revert the latter one.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
