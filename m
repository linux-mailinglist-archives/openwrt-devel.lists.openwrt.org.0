Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098011A2924
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 21:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4BLU6AbFmwPrZGbQFoVPl6qWoaJX6TAcbCUQGdORuk0=; b=Zv1NzUKEknEh5+HuOEosBzbFOT
	UGDXbmrnCsYtEJKCNSjgR2O9CSMyoKY4Ea9BKmn7XDUz1cVQGVQYnnC9JfRNWckP1YhOkMSJnYv0y
	GHNtMEtnIRTdfWoOU9uz8C22C+lM9xb8MZzqHfwT6byHqJl4jxmiDEbBT0cHM9Cf8TiCWsB020VDo
	kkH+1lZjQRt28ByF+4goz6pSiV4V01CVdEigkqTWySlwz6BjMAxdYc54vIj75pveANL1+SDu8hMt7
	szNR6EyFUke9D101GFjrwWI85mkon90lIdMkFQWhpSCZZ63N1mN8J82KBTWnVKxwEgIC9vHCq6o/B
	wHBHK+pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMG5V-0007ul-He; Wed, 08 Apr 2020 19:10:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMG5C-0007u0-GH
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 19:09:56 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AB7E45D0C;
 Wed,  8 Apr 2020 21:09:50 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f9f52550;
 Wed, 8 Apr 2020 21:09:36 +0200 (CEST)
Date: Wed, 8 Apr 2020 21:09:36 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: 20200405015929.736414-1-mail@aparcar.org
Message-ID: <20200408190936.GA32039@meh.true.cz>
References: <20200408185713.6931-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408185713.6931-1-mail@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_120954_689105_052051BC 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] phase1: Add JSON merging step
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

Paul Spooren <mail@aparcar.org> [2020-04-08 08:57:13]:

> v2:
>   * Removed the `haltOnFailure` options as this may break the current
>     builds if the merge script show any unexpected errors in the buildbot
>     environment. This option should be added again once the script proofs
>     working.

Crash early, crash often. We've spent additional time to make the pipeline
fail at every single step, now you're going to disable it? Why? Did you
witnessed some breakage?

From my point of view it doesnt make sense and its waste of time.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
