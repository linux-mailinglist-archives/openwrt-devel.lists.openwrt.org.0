Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67EFEB21F
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 15:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cz2mr91VMFfKROJdDE9I8n2zup2Z+6DUP4WhCdPByo0=; b=qROuueucA63n/z
	mU2fgegAqJtIuDlC0/ILLWeBBeI8zaK/KKkb4EBs0hQK9xSbfWMbfBn/JSIlc/aYF3gICyqDt6i4o
	1CSOXxojpopyxjLl1oRuKG47M1y8v/QZZz3FqQFg5DmtXmHfFCh2/CU9Zeu0fzXV2Lwy2mMTcRtOW
	XVGidJduMSXLjSRKgLtE2Zs7rG8gAt2pO3plnZesaj+Xa5CdnmNYvJFQooIK+BHyp6GcfGmE4lNys
	8kwmT2H2AJMdjybqW86XcGyQZ588M46hx2w1Mz8QaSsLG/I6Skvfsw6LKP2vUOpgDmVUYYPzLE6nH
	Cn7CT6xKqP3LTNk3kInQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQB6c-0003SJ-As; Thu, 31 Oct 2019 14:07:18 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQB6Q-0003RS-FG
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 14:07:08 +0000
Received: (wp-smtpd smtp.wp.pl 14501 invoked from network);
 31 Oct 2019 15:07:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572530821; bh=LVztN8USmbblyXqTvZiYvMyJXyK41tQmh/V0zXn/xSE=;
 h=From:To:Cc:Subject;
 b=OU5NVcS5hZzbBZSPhh+yUX3DI1oZkLu1y72DoKktqOYBaXfgfMtn/B6DZeA3X2nTZ
 4lLRDDnew2s0Du1pcKJ+pFc+LGE4YU7ws5sm5ykJmquZxCNWuUzzI/mzu06cWX2IA/
 ifF9aE7gkeXc3XZ7KtBsmid/husWYSMRHumgXyho=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <john@phrozen.org>; 31 Oct 2019 15:07:01 +0100
Date: Thu, 31 Oct 2019 15:06:59 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: John Crispin <john@phrozen.org>
Message-ID: <20191031150659.5ee834fe@kosmio.komorska>
In-Reply-To: <6e8a123e-7f11-b260-7581-7f4a853ff6f7@phrozen.org>
References: <20191030100727.45e6a165@kosmio.komorska>
 <6e8a123e-7f11-b260-7581-7f4a853ff6f7@phrozen.org>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 0e74b4ad4255f8c84096f1054f0f05cd
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [sUPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_070707_032900_FA13FE87 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for Netgear
 WNR2200
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> 
> Hi,
> sorry for the foo, patch fails to apply, kindly rebase/resend it
> 	John
> 

Hello John,

That's strange... Anyway, I rebased it again for master (fresh commit
df60a0852caf21de6684d38107f32a4eebc4579b) but it produces exactly the
same patch as v2. Tested and applied without problems on clean clone as
well...

Regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
