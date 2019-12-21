Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCB1128AB6
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Dec 2019 19:04:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qp4KAcmUjpAzQKkDc8SnyQCTRAiqMimKmjmvXRFcvCw=; b=gPZ/DN3O4zc98T
	qWo2W0zVP33guM/d/GUX6cDqK0/bTIKP1scVN1rw2STcJWAdegSRwHsEtnPwapSF/B4nTwB0lnz4J
	A0pfTunHt07htTkEwvLapFF88Nv1vJeN0thIAYBN4cLyEf9Dedi5p02C+kuMwkFvSZidxUXnlHfgD
	Hlw1n+amd4LxbedvKq4+IpL9y5nfyuIWOMzCrfEieM5vd2OLcUgKOR7ZE0W+GDiW96W0eSZT+OJwe
	hBqLcOvm7LdqJQPhGhCF0wGAokcw1ohrgCCN+2CutMRDmuxee9eUt6Uxy33CZtXTcs2IoDo3/8In+
	7r9VD3gCz3xzrnA4LY3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iij76-0003nt-Ea; Sat, 21 Dec 2019 18:04:28 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iij6x-0003md-6y
 for openwrt-devel@lists.openwrt.org; Sat, 21 Dec 2019 18:04:21 +0000
Received: (wp-smtpd smtp.wp.pl 6083 invoked from network);
 21 Dec 2019 19:04:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1576951453; bh=8GOZQZjmd+VDpOi1O24IHVBiNbkTxOm8vKUM32gOr+g=;
 h=From:To:Cc:Subject;
 b=jpn+edFW5F1McRvo2WQ24wwzImPQYyBKFmq9+UZ8Gc1IY9Z84RfwyPeaExqydOGbo
 U9Rr6atjp9lDgdkbCjx9HMFttu6CRZeDRx//+1WFtBJl1inPdxNBaMVzwTqWM3NFyD
 PfiiUPELUs1ElOQF1hhuPYgoJt4GdE09oYPjz/fw=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 21 Dec 2019 19:04:13 +0100
Date: Sat, 21 Dec 2019 19:04:12 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20191221190412.30bfcde7@kosmio.komorska>
In-Reply-To: <6c29edd3-88d9-ae74-cd29-d50eafde3ec9@david-bauer.net>
References: <20191221145041.3e272a8b@kosmio.komorska>
 <20191221145331.18ed2dad@kosmio.komorska>
 <6c29edd3-88d9-ae74-cd29-d50eafde3ec9@david-bauer.net>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 9de39e66771f628f40698009c4faec29
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [8TNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_100419_785489_1734457F 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.12 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: add support for Netgear
 WNDR4300 v2
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

Hello David!

> 
> Do you know if there is a hard limit to the kernel size? OpenWrt does
> not support relocation of UBI as doing so would interfere with wear
> leveling. This means the kernel size is more or less fixed if we want
> to be able to use sysupgrade.
> 

AFAIK there is no problem with increasing kernel size here.
Unfortunately I couldn't find proper u-boot source for this router, so
my claim is not based on actual code analysis. However there was
a similar question for WNDR4300(v1) and u-boot definitely allowed
kernels > 2 MiB then.

>
> I personally would prefer to allocate 4 (or even 8) megabytes to the
> kernel partition. This would give us a lot more flexibility (ath79
> kernel is already at ~1.8MB the last time I've checked.
>

That's reasonable, it's better to reserve space for future developments
than issue a patch every time kernel size grows over a certain
boundary. So in v2 I will assign 4 MiBs here - and prepare similar patch
for WNDR4300(v1) to keep them compatible.
 
> 
> The firmware node can be dropped, as kernel and UBI partitions are
> fixed.
> 

OK then, I just wasn't sure if "netgear,uimage" compatibility string is
not used somwehere in the install/config/sysupgrade process. If not,
then indeed it's redundant.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
