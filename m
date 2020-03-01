Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07633174D88
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 14:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DbUFu9+/gIrJTecP77gqbl8ooUrLj8HC9L+/SylTG9Q=; b=LXWsdIF4M9oglf1eMj6oWLpP50
	Q4eBsaoJERIfLDw7BJUu7yDCQCtP3+Ld48gdLtKZJmYIi1BvZp28ObxVxZz436c+io696RPTSldqf
	OS0JPegh/aez43g9wz8hpwf2269/mBP9bqQ74ZvusK7TgCuUFkrmH4NPLsW3NikMMXAjzMo5/eV9w
	C9dnzBNeLN+3zF+w9ThP0Fd6HpONZ0MW7TveuxLQWSDJ/kAZoXq4iQGG2oRSDab7qvrxG1RQKcdDF
	1bvMDkFSVCbVO3q4wd0rh6j0SX14cxUe3RIxmI+UmpNjKuW8AydBrFrCJxsBivkI1meyptQ3HJpqY
	1JgQBv1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Owo-0001Vu-He; Sun, 01 Mar 2020 13:47:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Owd-0001VN-Px
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 13:47:49 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9646A32A0;
 Sun,  1 Mar 2020 14:47:44 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1efa0a3f;
 Sun, 1 Mar 2020 14:47:31 +0100 (CET)
Date: Sun, 1 Mar 2020 14:47:31 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Message-ID: <20200301134731.GC70913@meh.true.cz>
References: <20200127181946.11978-1-rsalvaterra@gmail.com>
 <20200301130625.GB70913@meh.true.cz>
 <CALjTZvZSLEH-P3Ht8-HFtbgK7YN1-gBGY1wzMtUH2hYK_BC2Mw@mail.gmail.com>
 <CALjTZvbNs0k9i-Rkdh-F9Kqxr1Xu2tRcz6RdBpR801FE4y7-vA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALjTZvbNs0k9i-Rkdh-F9Kqxr1Xu2tRcz6RdBpR801FE4y7-vA@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_054747_989566_842AC00A 
X-CRM114-Status: UNSURE (   4.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath9k: enable hardware random
 number generator.
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

Rui Salvaterra <rsalvaterra@gmail.com> [2020-03-01 13:39:37]:

> Ah, silly me, you're absolutely right. This is just half the patch, and
> it's perfectly fine the way it is, so I'm not enabling anything new, just
> exposing the existing kconfig. Please ignore my previous email.

Well, I've re-read it again.

Your commit description forget to mention, that you're actually removing ADC
based RNG feeding for ar5k, which is missing in that upstream rng.c.

So commit subject and commit description needs some work. You should consider
as well Felix's remark and if I were your, I would simply handle this via
upstream, once upstreamed, simply backported it to OpenWrt.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
