Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AECBF1ED090
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 15:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CvMakv9avZ+bhQtkckw672RoMqwOurz7SdNF+YFFtkM=; b=XEVDmA/RBe0Ud6
	79/CDptb7QKWCiL4RCX1UKQILaK9hqp/KjRLemFNf3PPZXL5FKQX/jIMAebO7fzCS1ZBCjicMWLkq
	uI3Iv6fDCZ1gPinzurELyVsXH/sxuz8XvTJKRzxJA7dVc8z5cd9jdo1rg8UmSBCJdT2zzh5zRh289
	KAGUc2mYqTVgzyG6ryMKAy24xhuBAM/i9pTXvmVZ88oLl3R+UR6MWXz3qGWbtmUi2avSdGKV62HbA
	4glQU4nI8eIz9lBlhMjozYNUP6YsopF+s4frdjj9+J8ybeDJnoG09HllyMuE/4HIcE0VMblEKZeL7
	LlZ8bNQUUMowpXTUDKYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTAm-0003IS-6x; Wed, 03 Jun 2020 13:11:12 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTAf-0003Hi-Og
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 13:11:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id B8F6D3AC15D0;
 Wed,  3 Jun 2020 15:11:01 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4kILogyQxUYl; Wed,  3 Jun 2020 15:10:59 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Date: Wed,  3 Jun 2020 15:10:39 +0200
Message-Id: <20200603131040.3098579-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_061105_943327_45EE2C20 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3 0/1] Increase SPI speed on Mikrotik
 rbm11g and rbm33g
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
Cc: openwrt-devel@lists.openwrt.org, Tobias Schramm <t.schramm@manjaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch increases the SPI clock speed on the rbm11g and rbm33g to
33 MHz. Initially it was set to a empirically determined value.
The bug necessitating the empirical testing has since been resolved.
33 MHz is the default used by RouterBOOT. It is well within spec of
the SPI flashes used. I've also verified that signal integrity is not
an issue, the clock edges are still pretty good.

v3 is just a rebase on an up-to-date OpenWrt tree due to moved files.

Tobias

Changelog:
 v2:
  - Remove m25p,fast-read from dts
 v3:
  - Rebase for renamed dts files

Tobias Schramm (1):
  ramips: mt7621: use higher SPI clock speed on Mikrotik rbm11g and
    rbm33g

 target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts | 3 +--
 target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts | 5 ++---
 2 files changed, 3 insertions(+), 5 deletions(-)

-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
