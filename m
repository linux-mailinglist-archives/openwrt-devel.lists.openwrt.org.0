Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8916E9AF8
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 12:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6A3rd+HbgD293NgVE2gK4EVF4uTwqdjPwH5bE95pOM=; b=V6i8WWRUEecmqp
	IAv/62UHMHQ7nMyDhpmjrfKC8Tl+pZR5Ea94BQ1sL0i68KU4zKrvYJ5IrwjinK1lAcbfNIbO3m7sb
	tHfm4vCkbeF4mRkHtaxAjyYywNGWaYIGeuTdMI3Bc7Bla55XfY9DKeREkG/nOaxyQ1/+34mHfJiKe
	E1Mhind6i/A1As6OUbOmxgdFfSdMYIKPUIgnBEADf8eTNmeTBdviDp/sV3S3B0Uq8kqANYaVsXVEH
	o3yn20t1bzkkvBjzCIlxwmPrpwoYfK2D7yBEHF7eaqRjxJlqtEAT5VxI2hQiEykwX6Zs+rRNOpy99
	R1HhfyQ2oZvh7l0bX/JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPmLr-00086D-TZ; Wed, 30 Oct 2019 11:41:23 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPmLL-0007c4-42
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 11:40:52 +0000
Received: (wp-smtpd smtp.wp.pl 10745 invoked from network);
 30 Oct 2019 12:40:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572435648; bh=smCm6A7MJTbaOIEb6vFagSxKmDo7MvgM6DncXljJcgI=;
 h=From:To:Cc:Subject;
 b=W6khgk7W+8Oy6EKrPv9AMPskWiJjHXh56c1XYDKJ80nW9HErm1Wtl5hdXes7aztf+
 6cIdceGBcLVrZY4yaHQStvCKHuS+jKUNWn9NGJQzsvDgD6gEn4WIp5kUxDd3qViyYt
 IxRjViD6q9UBunLjF1hfDM81fLfczAfFnUOU94wM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 30 Oct 2019 12:40:48 +0100
Date: Wed, 30 Oct 2019 10:17:58 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191030101758.1b54cd05@kosmio.komorska>
In-Reply-To: <20191030100727.45e6a165@kosmio.komorska>
References: <20191030100727.45e6a165@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: e379fce6243362677588acb6f4e82903
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [AQO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_044051_345959_BF6865C4 
X-CRM114-Status: UNSURE (   4.32  )
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

This patch supersedes previous version (also listed on patchwork:
https://patchwork.ozlabs.org/patch/1181348/) and implements following
changes:

* scripts have been rebased to apply after base-files split
* router added to uboot-envtools
* device name in image header changed to lowercase to match Netgear
  file, now it can be accepted and flashed using vendor's firmware web
  interface; flashing via uboot/recovery/sysupgrade is not affected

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
