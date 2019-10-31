Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B78EB865
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 21:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcSr8AUimJHJoDHdJ7vBkjT9SF1RM6XEwBFqoutadFw=; b=FA7mnlK9SkmO+t
	qokGhZMyMto+06ctKR5t1bTX94CLUdSTl13LYlFkNSOvxrVEi7ASij9fY4OC0r+eTgy+uouId09W8
	caWXE30mH6K2M688dqWGaNW0mrsUdnyyWQgziBF8eK/XI7rBQ2IHQcUoaBYb+Vem+ZzCuMwsqbfgI
	p5GuWadxuIizI+vDL2ZdPgUw7U6WlIK/JbIOt9L4BvKym/q2lNr0aC6M4cavsFuhF75xuI1i95phJ
	SHQGbIyxC9xEObmSfojMaJegtAlzOVkH1DJyC/8HqPRYJNilkqADvEgPVWxMvX0vCltvHbhilBdsz
	MHKnpjrU384WQo+rkOnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQH5H-00064o-Dg; Thu, 31 Oct 2019 20:30:19 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQH57-0005kM-KR
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 20:30:11 +0000
Received: (wp-smtpd smtp.wp.pl 36664 invoked from network);
 31 Oct 2019 21:30:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572553806; bh=uU70CTSKOCu6a48AsBNyMhM44vB+VxL6Wh7V1WHVDrI=;
 h=From:To:Cc:Subject;
 b=gcQPplGSEZHCNsk4KNz2rDhZJO4l5zfoTCUU0jXCmnoOfuY2Ka0vJnDnUCMGMBfy1
 XQfr3Yxoim57UVYSGyxtEBgdtmiU82rgJIfqVOPapThguUHSi+aRoiPqFXwmNTDrAe
 DsdaVMx0hfhT1KOhY1Ik2DsCq+6eujy/KHB/TDvo=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Oct 2019 21:30:06 +0100
Date: Thu, 31 Oct 2019 21:26:34 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191031212634.7334bc37@kosmio.komorska>
In-Reply-To: <20191031211810.3f34f4d9@kosmio.komorska>
References: <20191031211810.3f34f4d9@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 7146db80acaa00b80fe77623563fb511
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [scPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_133010_187739_4DB0EFDF 
X-CRM114-Status: UNSURE (   3.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
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
Subject: Re: [OpenWrt-Devel] [PATCH v3] ath79: add support for Netgear
 WNDR4300
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

Changelog from v2:

* nand-netgear.mk file merged into main nand.mk makefile
* image filenames (factory and sysupgrade) changed to standard ones
  ('ubi-' prefix removed)

IMHO 'caldata' and 'caldata_backup' partitions should retain their names
to match both vendor and ar71xx labels, so this hasn't been changed.

Regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
