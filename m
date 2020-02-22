Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB79168F0C
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 14:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TYKAqZBqTgS/9mQAQFntSjPMjwgJFzHiULku95GJ4RM=; b=LfSwox3tI08Ic1MBUsDq3ZtlNi
	Tn1ufyowdfSwr9JTQt/0Hs6FFO+BQrqxlvS+wjFloc12E+ZTIcg7Hqpjk2SPRbjFdBBmNMMLVc8cb
	XLnULn/9SezVx/Ckw1Q3IKmwowHNcbdHquL4F2ScoyuRN3u2l2kHML2Lm+Axt4vYjUGanxvvMr1CB
	zDeWqFEiyEZnNUVZsQtKJ4hJty6tmssc1Msx8+nOfn7VCwc8u9lkpqDQmZaulY1/8wHvvla1FYwmi
	gsAhVZM5FgsDAG87P9M3p60NDr8NYayZcWKPYnAXc4/8TwSWZ2Eq7UwHvY69AtnPzZ3QoGga2iikm
	QF6t+6yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Ud9-0007u0-JI; Sat, 22 Feb 2020 13:15:39 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Ucv-0007sG-CJ; Sat, 22 Feb 2020 13:15:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F37244554;
 Sat, 22 Feb 2020 14:15:22 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 35ae16ec;
 Sat, 22 Feb 2020 14:15:09 +0100 (CET)
Date: Sat, 22 Feb 2020 14:15:09 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Lech Perczak <lech.perczak@gmail.com>
Message-ID: <20200222131509.GD99033@meh.true.cz>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
 <000301d5e8ce$5cdeccf0$169c66d0$@gmail.com>
 <2be43b92-8c6e-374d-b7af-26a13f667a74@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2be43b92-8c6e-374d-b7af-26a13f667a74@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_051525_580441_4706F168 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] R: Next maintenance releases
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Jo-Philipp Wich' <jo@mein.io>, ansuelsmth@gmail.com,
 'OpenWrt Project Administration' <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Lech Perczak <lech.perczak@gmail.com> [2020-02-22 01:30:53]:

> > https://github.com/openwrt/openwrt/pull/2769
> > Can this be merged?  It fix important performance problem for ipq806x

Done, once it passes the build test, I'm going to push it.

> I'd very much like to see this merged too:
> https://github.com/openwrt/openwrt/pull/2683
> As I stated in PR:
> Tested-By: Lech Perczak <lech.perczak@gmail.com>

Done, once it passes the build test, I'm going to push it.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
