Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B641ED3AD
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 17:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ivBeFsWY8gqpP5KtJ+WSfqDNh7yHXX6+C1eDilmOJ+g=; b=BO+MDCYngU+WMXz3VA1JUV8v82
	Hx20M3fCehhPU7LuR1bUvSmVB1iVnmjS4JdFMA/nbyOz4YEJeeNy+V/eSQUsu8Q8YJWsjf2IGmNpG
	2Jh69v0rzZ2DHuVIRvfwJmjfvRqci1fAMKq4g3suuUQaOdj/Hb/cjaqpq5ksJEyaXzhPcWHBUc8sT
	VC80cr2DTzi7r6ENUDvAzmRzgLYJJEF7NQ3+V9fRuJspNikhN+Nzdng4J5FaRWUggEqmN1SfW2WIy
	o4tjaObIdss3uJm0cfxMrZWD8VM3XccntWp9cJB26FtxYenKnVB2wGM+ez7sC7v//K4dc6nXA6tht
	aYQ/FcJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVa5-0000NS-EH; Wed, 03 Jun 2020 15:45:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVZx-0000Mk-KF
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 15:45:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CBC32323C;
 Wed,  3 Jun 2020 17:45:12 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 574de193;
 Wed, 3 Jun 2020 17:44:56 +0200 (CEST)
Date: Wed, 3 Jun 2020 17:44:56 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tim Harvey <tharvey@gateworks.com>
Message-ID: <20200603154456.GF36571@meh.true.cz>
References: <1590674204-26618-1-git-send-email-tharvey@gateworks.com>
 <20200603122419.GA13801@meh.true.cz>
 <CAJ+vNU1jgdyRxS_a-=isLz76Q4F2Kf4_0-HsEg+eBMi+cHXgjw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ+vNU1jgdyRxS_a-=isLz76Q4F2Kf4_0-HsEg+eBMi+cHXgjw@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_084521_818010_9A124FC4 
X-CRM114-Status: UNSURE (   6.30  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add I2C retries for ventana i2c1
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tim Harvey <tharvey@gateworks.com> [2020-06-03 08:25:54]:

Hi,

> are you simply saying it's not upstream and therefore not accepted?

yes, that's my view/decision.

BTW I didn't rejected the patch, just changed the status from "Under review"
to "Needs review/ACK", but I'm not going to merge it as it means additional
workload and it can be fixed properly as you've hinted anyway :-)

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
