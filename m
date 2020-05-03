Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0361C2E5D
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 19:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:Content-ID:
	MIME-Version:References:In-Reply-To:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmawcLllLuIkFJC98qH1lOovgir0JbRKa1loid+Ztjw=; b=ImMK83qw5M6mCG
	TU6X8BaLisbc9kA3POu4xpvpzjQjRMSacT5yOyT4bMM6PxjBvWedZJhHwH0wejc8mO/K1COqwSzQM
	btqk+3Nysi7G5+C5qXhiGz+bPDZF+62t5SrB1y2m0R4LjZiVSEQlMxXneffysQPFewPdWyQWggeXM
	oxq2LvnOqEkmN7xiQ86zXqCeWQnMcXTmKKtvWowAKUa8HWAkMvvbtNupdXczuDGXuzpsMziAbVBV5
	OL+xjvD56MLBskRTt4JZl1ZiTJ9rot+O2mrcPu2rvITU/12xmVRvMa33IfJ9vdk5kPYld3x4/94mM
	qgSLuZZdK40B0zSbAZcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVIT1-0002AW-9R; Sun, 03 May 2020 17:31:51 +0000
Received: from tuna.sandelman.ca ([209.87.249.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVISr-00029O-Bq
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 17:31:42 +0000
Received: from sandelman.ca (obiwan.sandelman.ca [209.87.249.21])
 by tuna.sandelman.ca (Postfix) with ESMTP id A6E7E3897B;
 Sun,  3 May 2020 13:29:25 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 6384E201;
 Sun,  3 May 2020 13:31:22 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: Alexandru Ardelean <ardeleanalex@gmail.com>,
 Jeffery To <jeffery.to@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
In-Reply-To: <CA+U=Dsru6ZmGXNGiK+VwReQ1OBMbS+UZ9Qx_mDK0=HKox82EjQ@mail.gmail.com>
References: <27522.1588348994@localhost>
 <CA+U=Dsru6ZmGXNGiK+VwReQ1OBMbS+UZ9Qx_mDK0=HKox82EjQ@mail.gmail.com>
X-Mailer: MH-E 8.6; nmh 1.7+dev; GNU Emacs 25.1.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Content-ID: <13648.1588527082.1@localhost>
Date: Sun, 03 May 2020 13:31:22 -0400
Message-ID: <13650.1588527082@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_103141_483806_976E8994 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [209.87.249.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] building python3 packages outside of
 lang/python3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Alexandru Ardelean <ardeleanalex@gmail.com> wrote:
    > you'll have to settle for some sort of absolute path if you need those
    > files from the packages feed in some other feed if you take a look at
    > https://github.com/openwrt/packages/blob/master/lang/python/README.md
    > there's a suggestion: PYTHON3_PACKAGE_MK:=$(wildcard
    > $(TOPDIR)/feeds/*/lang/python/python3-package.mk) [ similar can be done
    > for pypi.mk ]

I guess the wildcard is because one can't depend upon the name by which each
of the feeds is included in the feeds.conf.

    >> I tried the whole thing, but that didn't work.
    >>
    >> I settled on: include
    >> $(INCLUDE_DIR)/../feeds/packages/lang/python/python3-package.mk
    >>
    >> which I found ugly, but it worked.

    > yes & no; you can choose to do a direct include like [1]

If the Makefile include path were to include all the top
levels of all the feeds (feeds/* ), then:
       include lang/python/python3-package.mk

would work, and it would pick up whichever one was first in the list of
feeds.

--
]               Never tell me the odds!                 | ipv6 mesh networks [
]   Michael Richardson, Sandelman Software Works        |    IoT architect   [
]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails    [


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
