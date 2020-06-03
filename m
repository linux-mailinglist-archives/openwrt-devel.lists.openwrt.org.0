Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4171ECE3C
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 13:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ziA7jZpWszUwfjDA4CNyt8tQAzt9ONnqne0xVvpgfLQ=; b=m2lJka2eoXdh/mx/dDbgrtWTrP
	bRmFrMtaZjw+NFmE6fvN3PXdKwrfgAGhLzkSCumceu//mUKjwdISdWAhP7i4C+dNSkGO3Hg5Ljgf+
	1avyKpxlu50oEYIPYCYBFAcwsOaqzOWh0BU1JQrXE6ENYQCQLauY+UNUphZd99FTC4beNvkvOlc3z
	WVA7JSzX1s1/38OzRgB1WZwOEVy76fIIK4P7NniuP/MFgUET3AX4CE6YUc/oN4/8AxiwLEr7VX+Tn
	GmktQlITtRWYitq0Vki4jM5vTvU8sxhYGBec6InGoy2AmCWcMRvMDca8OJJbbnfJKJXnIhzjvKNgC
	jhC+u3sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRVg-00088Q-Eq; Wed, 03 Jun 2020 11:24:40 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRVa-00087o-Bq
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 11:24:35 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2C4CD4428;
 Wed,  3 Jun 2020 13:24:31 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a9902018;
 Wed, 3 Jun 2020 13:24:15 +0200 (CEST)
Date: Wed, 3 Jun 2020 13:24:15 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Johann Neuhauser <johann@it-neuhauser.de>
Message-ID: <20200603112415.GC36571@meh.true.cz>
References: <mailman.1406.1586210362.2542.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.1406.1586210362.2542.openwrt-devel@lists.openwrt.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_042434_553576_ED49EE35 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] iwinfo: add device id for Mikrotik
 R11e-5HacD miniPCIe card
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi, please next time don't forget to add commit description as it's mandatory. Thanks.

Johann Neuhauser via openwrt-devel <openwrt-devel@lists.openwrt.org> [2020-04-06 23:58:43]:

 From: Johann Neuhauser <johann@it-neuhauser.de>
> To: openwrt-devel@lists.openwrt.org
> Cc: Johann Neuhauser <johann@it-neuhauser.de>
> Subject: [PATCH] iwinfo: add device id for Mikrotik R11e-5HacD miniPCIe card
> Message-Id: <20200406215843.24125-1-johann@it-neuhauser.de>
> 
> Signed-off-by: Johann Neuhauser <johann@it-neuhauser.de>
> ---
>  hardware.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/hardware.txt b/hardware.txt
> index 07f61b7..c511395 100644
> --- a/hardware.txt
> +++ b/hardware.txt
> @@ -159,6 +159,7 @@
>  0x168c 0x003c 0x168c 0x3223    0      0  "Qualcomm Atheros" "QCA9880"
>  0x168c 0x003c 0x1a56 0x1420    0      0  "Qualcomm Atheros" "QCA9862"
>  0x168c 0x003c 0x19b6 0xd03c    0      0  "Mikrotik" "R11e-5HacT"
> +0x168c 0x003c 0x19b6 0xd075    0      0  "Mikrotik" "R11e-5HacD"
>  0x168c 0x0040 0x168c 0x0002    0      0  "Qualcomm Atheros" "QCA9990"
>  0x168c 0x0046 0x168c 0xcafe    0      0  "Qualcomm Atheros" "QCA9984"
>  0x168c 0x0050 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9887"
> -- 
> 2.20.1
> 
> 

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


-- 
ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
