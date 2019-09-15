Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E28DB2F9B
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 12:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sjXdDumCYNsOlz/1liojhLfPQ54dG7V6yD9dIa/3SVI=; b=kaQHL2rfiQsWCQqhbTexsfmp9
	159/YrTRrBgYgbx0PXqQtqaHtjQ375IQu30c96TADH0tKPtdlLPhfb2ixp/hk1nobKlKaso+NQflb
	vVcUacYTHYgDbW0QjhlUUAKBr97uJu1j1cqpQLLHODHKV+icrm05SWDN8PNSye1bIJUr05t7D3Dzy
	Ga0HBCrCKfKGHvpkXijijqq8KNKfIVfL7wvP+MjBEEbtDKptQ6PXawckDrz+D0IdkTaPzz2qjAPEt
	NO7z+4uz3RIJ7yUL1IANJD6GwMP9TsBbn+Pr7z9LiF1jl2R74i5A9sCaAOx059ep15zP/dYCOorIQ
	pGWRjx3OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9S6g-00065a-SI; Sun, 15 Sep 2019 10:50:14 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9S6Z-0004lv-K9
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 10:50:10 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id EEF7AC0005;
 Sun, 15 Sep 2019 10:49:34 +0000 (UTC)
To: mail@adrianschmutzler.de, 'Jonas Gorski' <jonas.gorski@gmail.com>
References: <20190823090237.9471-1-mail@aparcar.org>
 <CAOiHx=mT7i73+=B-_OXQD4SUHpd3goAsGJoaFncOKcFFqKgrbw@mail.gmail.com>
 <006601d56bb2$09c12020$1d436060$@adrianschmutzler.de>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <a1f113cb-2c53-d49a-a4f6-0780678851ed@aparcar.org>
Date: Sun, 15 Sep 2019 00:49:32 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <006601d56bb2$09c12020$1d436060$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_035007_814446_F7C607B0 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: add Generic subtarget if
 missing
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
Cc: 'Sergey Ryazanov' <ryazanov.s.a@gmail.com>,
 'Tomasz Maciej Nowak' <tomek_n@o2.pl>, 'Roman Yeryomin' <roman@advem.lv>,
 'Tim Harvey' <tharvey@gateworks.com>, 'Luka Perkov' <luka@openwrt.org>,
 'Jason Wu' <jason.wu.misc@gmail.com>, 'Alexander Couzens' <lynxis@fe80.eu>,
 'John Crispin' <john@phrozen.org>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Felix Fietkau' <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> What you suggest is about what we have right now. This kind of creates a misleading situation where for some targets subtargets are present, while for others paths and image names are "fixed" in several places to include a "generic". The reason for Paul's patch was to get rid of the fixes at individual places (which was/is applied somewhat inconsistently) by just making all targets apply to the same logic (i.e. that there is at least one subtarget).
> So, the empty files are introduced to make the process of building and creating images afterwards simpler (to follow/understand).
>
> I was suffering from the same problem when I dealt with OpenWrt-derived firmware, where I suddenly encountered a target without subtargets and had to implement extra code to work around that.
>
> However, I also wondered whether one couldn't code around the necessity of the empty file, and just add the SUBTARGET/SUBTARGETS variables here...

Thanks for commenting, that's very much my point!

Maybe the easiest solution is to add `SUBTARGET ?= generic` to 
include/image.mk instead of introducing empty files. Will try that tomorrow.

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
