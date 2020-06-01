Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFEC1EA1C0
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 12:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4cq/HQ9CbPSGuJha0ld9xZ4K11vecqlxho05YRqHCns=; b=SJgmoM2QHhrSKSZQ2WZuZ6xyXm
	38BmU8wJNqsUXBjn/zuD7EpOcSwThmW8pn0rGO63pqI0oKKt0HtO2Jfh9h7/0b4s7wt7076HBmE2L
	Uzul54iJOPbPfVYPVk3CYtOBZBjCV8c5vmXy7bjM432hzdt/q3ocRmV0bAL3FMnsVQv87pUhEF708
	ngkAlFKReBSJp7FAKn6xzXSIyZQBdpBMLAGtkR/eonCGRdSl7pGK6Im0GP/5zz/CzMk/F/7+MkFG9
	DyYoXoM1n7YIYXIEtnbnEVvGZvtVj1C1l5GKdmjajMSZEsXN2LqkvGPhTYp+QPwj5JiMSWSowh95S
	NviQEj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhZq-0000Tm-Mx; Mon, 01 Jun 2020 10:21:54 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhZg-0000TF-2R
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 10:21:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 34CAF3EB0;
 Mon,  1 Jun 2020 12:21:37 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b45a506d;
 Mon, 1 Jun 2020 12:21:21 +0200 (CEST)
Date: Mon, 1 Jun 2020 12:21:21 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Message-ID: <20200601102121.GE58206@meh.true.cz>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
 <79845b43-f39d-c215-e968-41b93eb00b65@universe-factory.net>
 <0890d3e5-a989-5b8d-f29a-54e62707715b@universe-factory.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0890d3e5-a989-5b8d-f29a-54e62707715b@universe-factory.net>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_032144_262935_C34AF51D 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/4] build: use zstd for SDK and
 ImageBuilder tarballs
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Matthias Schiffer <mschiffer@universe-factory.net> [2020-05-31 11:08:47]:

Hi,

> For patch 4, I'd like to have an ACK from someone familiar with the buildbot
> setup.

Disclaimer: I'm Buildbot setup noob, just helping occasionally with the
maintenance burden, but from my limited understanding it's not just about ACK,
some additional work is needed:

 1. Someone has to provide patches against Buildbot[1] repo with the zstd
    naming changes
 2. Someone has to build and publish updated Docker images for buildbot master/slave
 3. Someone has to deploy this on machines under our control (having root
    access), we need to notify owners of the buildslave machines to upgrade their
    buildslaves to the updated Docker images built/published in step 2. 

I can probably help with 2. and 3., I would ideally done this with Buildbot
version bump which is in the works[1], so we don't bother people with
buildslaves upgrades that often.

1. https://git.openwrt.org/?p=buildbot.git
2. https://git.openwrt.org/?p=buildbot.git;a=shortlog;h=refs/heads/buildbot-2.4.1

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
