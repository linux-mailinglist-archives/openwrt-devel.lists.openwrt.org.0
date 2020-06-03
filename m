Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240891ED227
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 16:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TfDignVYabzaYKN/eX78QG4j91jEnyp8n2tURWhZW9E=; b=l+zLZkCzEnjecU7YLvTfVXMw5+
	sq0t5GkYWeeDNBGPU5VOvBEtrb6E96ObjLTsta7wmCk3rsI1ebF971zNadzPnchxYNqSWH4Br+6Gv
	123MPSJKj81p0x1ovpdUjMFhjADa2O7/SJW/NOgoVNsqWN/7V7BuCEqN9nGzIbVslg3Ll6GSuQUHR
	Qew+gwBYkeExv5Qq5GFEuZvFojDkFDoGzFN/3QScu7krvuU1KN7lNsJ3EwswPWF6v+JwvAFBsh8MX
	R7TWc7ZcHQCSQy+Y/3rFEr5IVxaQdUGQG2li7U6Xov2GJej0xIAbrOaJNZKpq0qijkRLs48LafIa4
	M+JZjuRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgUTd-0000my-If; Wed, 03 Jun 2020 14:34:45 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgUTX-0000mC-9p
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 14:34:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B63204EA7;
 Wed,  3 Jun 2020 16:34:33 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7f98aa5d;
 Wed, 3 Jun 2020 16:34:18 +0200 (CEST)
Date: Wed, 3 Jun 2020 16:34:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Josef Schlehofer <josef.schlehofer@nic.cz>
Message-ID: <20200603143417.GE36571@meh.true.cz>
References: <20200520123305.30994-1-pali@kernel.org>
 <20200603113001.GA9798@meh.true.cz>
 <20200603124823.5zgu4nncgzmeembn@pali>
 <20200603125314.GD36571@meh.true.cz>
 <bce37cac-cfa1-ee8f-fe00-f7cb0d8fa21a@nic.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bce37cac-cfa1-ee8f-fe00-f7cb0d8fa21a@nic.cz>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_073439_490270_A26C36A2 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH iwinfo] iwinfo: add device id for
 Marvell 88W8997 SDIO wifi card
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

Josef Schlehofer <josef.schlehofer@nic.cz> [2020-06-03 15:50:59]:

Hi,

> Other guys who have commit access it seems that they are not doing that and
> merging it

fine with me, it's their decision.

> I think that your policy should be applied to all not just someone and
> should be followed by everyone.

it's not mine policy, it's a good habbit, best practice and I can go on for
next dozen lines or more.

Anyway, I'm just trying to be consistent so I do the same and demand the same.
If in doubt, read project's Patch checklist[1].

1. https://openwrt.org/submitting-patches#patch_checklist

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
