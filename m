Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4631835D7
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 17:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/HZ5Y3Kc6+gfypcwMV6/eN834YNbU6lBUPBVWF2JUQ=; b=Fi6L8snJxV9Qhv
	DUKiHNCUwbBT+M5KfUJwVwmXtxqyyabMmvgXTZunN2gEPDkXRIti1Y1FIHaq2uCleHI1D5zt2sxsX
	iBA2CRFc2/X6U+Wim97jMBlbYdAd6ZD2KpH3UgYgynzfcxxFXDX2ob4HvUuxF92B7ueaRrdK2Da/I
	9CPShRWbMZYWanMtpw7iV78Rckh5JJWwVl/eTPfN657D0wsZyRh8vB7JzsMCf0FXbAtBRAJYudNCf
	AVLrU0WI9T+Lydu2PIIYOECx0KiTRKYESmtJXE1zue9YxeesT6aoJESknQbX3sbtWPRz/jxafCsAs
	shrJeU5iHP2BIJt/DCaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQMr-0001dq-J5; Thu, 12 Mar 2020 16:07:29 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQMj-0001dA-Oj
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 16:07:24 +0000
Received: from windsurf (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr
 [90.89.41.158]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A928320000B;
 Thu, 12 Mar 2020 16:07:16 +0000 (UTC)
Date: Thu, 12 Mar 2020 17:07:15 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200312170715.36fc9b82@windsurf>
In-Reply-To: <20191220150432.22e33185@windsurf>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
 <20191220150432.22e33185@windsurf>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_090721_937625_127FA9C6 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2 00/12] dm-verity support
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

I have received absolutely no feedback on this v2.

Would it be possible to get these patches reviewed or merged ?

Thanks a lot,

Thomas Petazzoni

On Fri, 20 Dec 2019 15:04:32 +0100
Thomas Petazzoni <thomas.petazzoni@bootlin.com> wrote:

> Hello,
> 
> On Thu, 21 Nov 2019 17:23:10 +0100
> Thomas Petazzoni <thomas.petazzoni@bootlin.com> wrote:
> 
> > This is the second iteration of my patch series adding support for
> > dm-verity in OpenWRT. See below for some introduction about the
> > purpose of this series.  
> 
> Unless I missed it, I don't think I have received any feedback on the
> v2 of this patch series. Is there any chance of getting it merged, or
> at least parts of it ?
> 
> Thanks!
> 
> Thomas Petazzoni



-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
