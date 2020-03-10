Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA23917F5C1
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 12:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+/G4p0xIG+wVgvVQXBQCnIR2cfJwmmsSCbvPRHl630=; b=DjdHN2yOUQWXGe
	gvFEosLC6yCugcwjY8aItnazpVM4/na3F34YuPfRe6vVluWSidrc6SQC/q2dNNbVX/f9rbBPlryWt
	hxRetlBiGrvTYfJWSErjXhbojIQUbQz+MoA6khuIST9b55cdxXEBlmQCaPx/jPbVkapeYmVrF/y4K
	yjXOvYNNhq2qw0YlLs4ejuKWJ+nLbI/lCrRw+sDwAPfnAz7xz46o29sim+FKXlyqbnENkDbAEgpGR
	XbNVT4eVQzf9zQ3JhhvoCVb9N08B5tTFedD+xVjz9oULn27zLje7i2VtYJJSP9QzJG58p7kXDVKVY
	aptRM9TWn6eLN1HQ7LYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBclZ-0002mM-Fv; Tue, 10 Mar 2020 11:09:41 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBclU-0002ld-1a
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 11:09:37 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 49B5BA6114D; Tue, 10 Mar 2020 04:09:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id B9662A610E2;
 Tue, 10 Mar 2020 04:09:31 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <877e05sk1d.fsf@husum.klickitat.com>
 <87a751r14c.fsf_-_@husum.klickitat.com>
 <043c01d5f614$3bdce9d0$b396bd70$@adrianschmutzler.de>
Date: Tue, 10 Mar 2020 04:09:31 -0700
In-Reply-To: <043c01d5f614$3bdce9d0$b396bd70$@adrianschmutzler.de> (Adrian
 Schmutzler's message of "Mon, 9 Mar 2020 14:11:23 +0100")
Message-ID: <87wo7stqj8.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_040936_128915_0FE070DC 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RFC v3] ath79: add support for the
 ar7240 version of the ubiquiti bullet
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>>>>> "Adrian" == Adrian Schmutzler <mail@adrianschmutzler.de> writes:

Adrian> Ah, and please use git format-patch, your v2/v3 didn't even make
Adrian> it into patchwork.

Fwiw. I did use git format-patch. I have no idea how patchwork functions to
extract and link patches. Perhaps you can provide guidance on that?


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
