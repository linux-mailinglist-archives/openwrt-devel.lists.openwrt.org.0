Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01FE156FFE
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 08:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RypO3La0awKmVkP9ex7PjrfkotRhUjAqxV9q0F6w+uw=; b=ENv9gdeR7AaPwe
	cHeNWKrLmV+feGDNcfpiCRj7cSkxKF1U8KUvdf4KFnqJ/gwrMl7fpEt8WjuyCVnKe740IxcDIhg9r
	nSZhLvHmql1bJ8diwzL2SgHRN0pAl1B7AcSoCotACvDsrMwoY3T+SOmkpZLZuBEOAT+KGVg/QcYx1
	X8bieJgjVZ7AlEwhwNFN2nw6aRZwAHiUx8mDwhotCEUFLxNpuUNzAoXnMaVAf/+OrjIa/d/PmfnAq
	gic059OrX02OzbC8K2nlmSEPc2p2skh3aCPkD8oYZwQgmlA+iwRXle/tbgmZVIKnljKv1++CXiewz
	9T2pekntj6BaRnRIWNYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j13h1-0006p5-WD; Mon, 10 Feb 2020 07:41:20 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j13gw-0006oj-4s
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 07:41:15 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 29861A6114C; Sun,  9 Feb 2020 23:41:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 82325A61122;
 Sun,  9 Feb 2020 23:41:09 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: <mail@adrianschmutzler.de>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
 <871rr45ndq.fsf@husum.klickitat.com>
 <006301d5df55$6d371bc0$47a55340$@adrianschmutzler.de>
Date: Sun, 09 Feb 2020 23:41:09 -0800
In-Reply-To: <006301d5df55$6d371bc0$47a55340$@adrianschmutzler.de>
 (mail@adrianschmutzler.de's message of "Sun, 9 Feb 2020 15:30:05
 +0100")
Message-ID: <87ftfi3n56.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_234114_225977_48539726 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to bcm47xx
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

>>>>>   <mail@adrianschmutzler.de> writes:

>> >>>>> "Adrian" == Adrian Schmutzler <freifunk@adrianschmutzler.de>
>> writes:
>> 
Adrian> This change makes the names of Broadcom targets consistent by
Adrian> using the common notation based on SoC/CPU ID (which is used
Adrian> internally anyway), bcmXXXX instead of brcmXXXX.  This is even
Adrian> used for target TITLE in make menuconfig already, only the short
Adrian> target name used brcm so far.
>> 
>> This seems like an aesthetic change, but it will have more
>> consequential effects in tracing history and searching. I question
>> whether the tradeoff is worth it.

> Yes, it's purely cosmetical. However, I also don't see any big
> drawbacks.  The renames will be managed by git automatically, [...]

If I 'git mv target/linux/brcm47xx target/linux/bcm47xx', and then do
something like 'git log target/linux/bcm47xx', I don't see any of the
brcm47xx history.  That seems like a loss to me.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
