Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF935AA3
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 12:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Iu5aiv8zXhZHiKfzLm0xiX8PzpWTGjP+3fLZLwXYUbE=; b=fKRLxm62i82ZJRXjXRDNK6xSfA
	BYzPHIHjy3CsShQXJH7t1XIhj52JnUyQwTx6lUagqNEP5qS+jYU+Hy8lHz0hbSE1WHSBBFQJLP+Mt
	10M3dqqA52bX180zjQ1PqDdmB7dtNHOEV8/XiKk7zZPzSKCZ8z1Bw1GKWQ2Br6Ck5hzaGYFLXNdE/
	SWHzE7JHqxc9x9OeUgqAZDHRNnCOL4B1Yt9hKWInfSBRuTpIFlOFOZ6rv/tUL911vGp0EubvZYzU7
	In5bkjL6PDOMsjUVZ7RgF9sGjFInPp5Ts8IxmMbETzSEtVcyxMdpqHV3UItB//tdkE5pENsgAeTOi
	shYid5Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTQe-0007jt-Vi; Wed, 05 Jun 2019 10:46:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTQY-0007jZ-JV
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 10:45:56 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id ED23D4F59;
 Wed,  5 Jun 2019 12:45:51 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 19d9865c;
 Wed, 5 Jun 2019 12:45:49 +0200 (CEST)
Date: Wed, 5 Jun 2019 12:45:49 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: John Crispin <john@phrozen.org>
Message-ID: <20190605104549.GN13432@meh.true.cz>
References: <20190605063409.27769-1-john@phrozen.org>
 <hynK3tKHMk6tAKPpYkaNRSzi2nMrDdpKviIa49aQ2342@mailpile>
 <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_034554_795408_5E98D6EE 
X-CRM114-Status: UNSURE (   8.02  )
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
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

John Crispin <john@phrozen.org> [2019-06-05 12:30:57]:

> On 05/06/2019 12:17, Karl Palsson wrote:
> > It seems like a lot of perl for a narrow usecase.

It seems like a good starting point, but it makes me wonder who is going to
touch this afterwards due to the Perl :-)

> This was brought up as a missing feature by the prpl folks. I considered on
> how to best implement this and find that having proper tooling is much
> better than having to carry around an extra file that is cat. being able to
> build the feeds.conf dynamically like this just seems much cleaner to me and
> will allow downstream users, vendors, odms and integrators to have less need
> to patch their trees to death.

BTW been using following for ages:

 cat scripts/update-feeds.sh 
 #!/bin/bash

 for feed in $(ls -1 feeds | grep -v '\.'); do	
	pushd feeds/$feed > /dev/null

	remote=$(git ls-remote --get-url)
	comment=$(git log -1 --pretty=format:"%h: %s")
	url=$(git log -1 --pretty=format:"src-git $feed ${remote}^%h")

	popd > /dev/null

	echo "# $comment" >> feeds.conf
	echo $url >> feeds.conf
 done

producing following:

 # 21b29f3faf8b: Merge pull request #2513 from musashino205/l10n/base-upd-ja
 src-git luci git://git.openwrt.org/project/luci.git^21b29f3faf8b
 # e4ab7b4fec30: znc: fix patches applying
 src-git packages https://github.com/openwrt/packages.git^e4ab7b4fec30

Planned to convert it into make target one day...

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
