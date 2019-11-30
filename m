Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC4F10DDD8
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 15:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Message-ID:To:From:Date:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Eb+amPABHnWaTB5tVRGsQb0vwvnslPeKvM9SX1VPSaI=; b=rop
	8J+Nsvbpo8yzI/7x/crOjCcnf7mtJm/cHr3X0iDfGtowHzpJ9KFTdTqvUyO4cOGud/7rSI6i0ldEe
	yG7opUjf+sMUppuDz40GdAiOJ1OqHieBa+RfmiuLzBFvIscReCFOUByPwJaL9D7CkAO9/DS+Cekqe
	7lgvR0FBlKAfpj37cDUlltoNYiYOrjaQhL021kprW8UkTGVjMJWh9aq7m6YUF1GUTzcZYB3p6oABO
	i/0vYVFSDHpVtVkvslsaOz+l/iMYdXTunOmzo0OYf0pK5spHBuo0BE4hO8ajgnstx+HimnBRZg42Q
	llRbTRS1tMAGK3d3cdwfvNQ1nL+Hb2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib3N2-0007Fk-S4; Sat, 30 Nov 2019 14:05:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib3Mq-00070S-7C
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 14:05:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F04C648DF;
 Sat, 30 Nov 2019 15:04:50 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 03f97ef4;
 Sat, 30 Nov 2019 15:04:40 +0100 (CET)
Date: Sat, 30 Nov 2019 15:04:40 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191130140440.GG61235@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_060500_410867_A2C4F53A 
X-CRM114-Status: UNSURE (   3.62  )
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
Subject: [OpenWrt-Devel] default compiler hardening options for all C
 projects [Was: Re: [PATCH] uci: Fix Wformat-nonliteral warning]
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

Rosen Penev <rosenp@gmail.com> [2019-11-29 13:07:29]:

Hi,

> A constant expression needs to be passed so that GCC can determine the
> types of the format properly.

indeed, good catch!

> -Werror=format-nonliteral

Wouldn't it make sense to enable following hardening flags (maybe consider
others as well?):

  -Werror=format-security 
  -Werror=format-nonliteral

as default in all C projects in order to proactively prevent similar issues in
the future?

uci has already GitLab CI, so this could be catched automatically after the
push to master in case the maintainer forgets to compile check it himself.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
