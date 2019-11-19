Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB0C10298E
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 17:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLxBDLymu+EqSg/c/szUWHbn1EsT4aKDjggpkbCsyyQ=; b=lnqoVjekmvbtry
	UEgdHKDfCjpaMeKWrdzzHhDVwLJVGQ+/rjh1lN9wTpHUljlZyHLQIQbDhrhnFRbl2vuEKBJveL+RD
	UmU7arPMBV0txmab6OPXJGKj4JlOt/klySefBQL/WzijR2mJhPcCSNtEdAZZXq8ntVL1x1+ltWB6T
	rNoOaQ6SQfRBX9r62FOpRx6t+Ig7JmjXhO2xxFho+iMQFbtRtL8GyO/hrAY62bxWUddNWSFmmkv6d
	GXd8tv2JJjtKNzf1fjZEtTDCK5MWUty1rKYOVWPvd6cLBlAksXWDL7FmYXJdZOWwXdzN1BVVLRO+L
	KW1MAorpedaMTIK3ndbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6Xf-0002NM-E4; Tue, 19 Nov 2019 16:39:51 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6XX-0002N4-VN
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 16:39:45 +0000
Received: (wp-smtpd smtp.wp.pl 13969 invoked from network);
 19 Nov 2019 17:39:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1574181581; bh=HOkdsYb7QjwUHe725F/S32BxekIuyEX6MA0h7zSL2FI=;
 h=From:To:Cc:Subject;
 b=aINCHRh/j1wWZslGlWhAFOLP44SQ63G+BqjU6HrGJdKcOn++T2958DQfI1lQmeUxL
 jwZG+f8+j27rBeEKDeXzN/qDf4MLF5L0tjAhi4BhNoQ95GERK9EXm3chxYhq9tU+mf
 Q6Tpur7KAX8+KGsdc8qdKCC2AvNnLikTCyfoP7dM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 19 Nov 2019 17:39:41 +0100
Date: Tue, 19 Nov 2019 17:39:40 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20191119173940.4bc5dcac@kosmio.komorska>
In-Reply-To: <20191119161737.2fa01dc3@kosmio.komorska>
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
 <20191119161737.2fa01dc3@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: cfe5ef7822e7672aa5a48d65af574952
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [cXOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_083944_193813_9C60407C 
X-CRM114-Status: UNSURE (   4.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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

Hello,

Argh, I forgot to add this to my previous email...
ubi volume is successfully resized, but ubi filesystem on top of it is
not - so /overlay does not benefit from extra space. Are there any
methods for UBIFS online resize that complement ubirsvol?

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
