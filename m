Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A36B150E4C
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 18:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JDo4Ayn7rEBYBsqxiYYu10+MZDoA8dqPdFc2IJHDcE=; b=ZZBnjbXENXbPVq
	Gyku3UnhMo8BwuZON4xBkZKmtTpxAwXuwZVSgs6XKqdgiwnjLKzFUxRPgRZuGSo0xfjQ2gVH7BqRo
	QjKRQAfI1NbxMx8u1vnJgG/A/BYLqO9aLAcGaa6B74g1qqVkKk5HU3HozYoy+J4SVLGTV9xHig07K
	1Cx9hYv1mmSQ2DS45JjUmAbIZSdrchB5Q2TItu8opKvRzhz8w+kXcEsbJwUiGuHA7avb3hUy/rZJe
	wWFW4l4DSv9Lc2BIoZNrRGpafuOkSEHrolSNoYZcOYKtFdY3VwqAyx5FTJkks9WLpBoHr143mU91N
	KFXgtKKe6suXwvzPeRuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyf8o-000588-OH; Mon, 03 Feb 2020 17:04:06 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyf8i-00057o-7P
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 17:04:02 +0000
Received: (wp-smtpd smtp.wp.pl 38209 invoked from network);
 3 Feb 2020 18:03:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1580749434; bh=ZlGK3+AKP/Zbr7N/Ak2aC8GglSLDqecYJFIkn4xiuLQ=;
 h=From:To:Cc:Subject;
 b=i+SW1Y0VVBEu5Kipy4t1b0Mz6Lxh92EVBmDawdbdzU4Yihky8HfoeW0kI3PUV/tIs
 N3C2kL2OTYV+Y2DMLwdYbz2+R9RLaqOYNOfwbUeclsBTXtBxDAFc1JEIAVWs2BxH3N
 k1Pht3Q1zg8rweem1nMGUXxvsHlrqXNONPOK8Igo=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 3 Feb 2020 18:03:54 +0100
Date: Mon, 3 Feb 2020 18:03:49 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20200203180349.498b6cbf@kosmio.komorska>
In-Reply-To: <01d001d5da7d$53a61c60$faf25520$@adrianschmutzler.de>
References: <20200120211811.22199957@kosmio.komorska>
 <20200120212009.32569366@kosmio.komorska>
 <01d001d5da7d$53a61c60$faf25520$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 7e2f91334efc02ac9f9bdd2d83d6c245
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [caPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_090400_619656_CA78D2D9 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ath79: uboot-envtools: add
 Netgear WNDR3700v2
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

On Mon, 3 Feb 2020 11:33:08 +0100
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

> Hi,
> 
> I've just merged 1/2, but when looking at this patch I found that
> u-boot-env partition is read-only for both v1/v2?
> 
> Best
> 
> Adrian
> 

Hi Adrian,

Thanks for spotting that,  didn't noticed that env is marked as
read-only it dts.
But maybe it will be better to issue a separate patch to make uboot-env
for both 3700v1 and v2 writable? 3700v1 is write-protected despite
being already recognized by uboot-envtools...

Regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
