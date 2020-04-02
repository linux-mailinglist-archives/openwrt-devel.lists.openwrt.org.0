Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F16619C9AB
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 21:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=apEsbPFXtTUt1oP0CMfr2DLNBWFddhqlH/SC+0MVFKg=; b=mZlD8IxJY0oU8s
	+TCKFkXLiIA/gCI3Ekl7YODhHiHN3trcP4G4zQLt9u6FoR8zXR4atayellZLp3vMe47aRsXUZkwN1
	Do1wrMrWqeJHYNehEIx46qA21+f/KP7mCMMpfKy8eHOy99C5ap+jH8XnYUGNu0wpPTUJnOuiTOhnC
	F89cRD8cgHHGlNL1FUzYu2p6GYQlIUq6C3ght9uy2o+o2DZTDAZBmf6oUIO2QkG+tBdULu5J/b/I6
	FRbDcLP7hlyzB7UPw+MDfyk0BOCIhOeRoS+cds5RHrNpCbJ3ixFE05bhMuUbljMjzYhqNZQnlFNDp
	i3VhMDhbGvOMHzQs3ahw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5JC-0001iI-8O; Thu, 02 Apr 2020 19:15:22 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5J5-0001cP-CX
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 19:15:17 +0000
Received: from localhost (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 8B0F320000D;
 Thu,  2 Apr 2020 19:15:03 +0000 (UTC)
In-Reply-To: <024101d60825$d1a03d00$74e0b700$@adrianschmutzler.de>
Date: Thu, 02 Apr 2020 09:11:25 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: <mail@adrianschmutzler.de>, "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>,
 "'Piotr Dymacz'" <pepe2k@gmail.com>, "'Tomasz Maciej Nowak'"
 <tmn505@gmail.com>, <openwrt-devel@lists.openwrt.org>
Message-Id: <C1QYKH8WJX0N.1HXLGRPA40HVF@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_121515_561941_014D5FAE 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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
Cc: 'Daniel Golle' <daniel@makrotopia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed Apr 1, 2020 at 5:02 AM PST,  wrote:
> Hi,
>
> > > How about patching device's DTSes and include 'manufacturer,model'
> > there instead (in front of the existing ones)? Scripts in 'basic-files' would also
> > need to be fixed but this way we save this (in my opinion) misuse of
> > 'DEVICE_ALT*'.
> > 
> > Yes, that would be the easiest solution, not introducing cryptic image file
> > names.
> > 
> > >
> > > I'm also not sure how many devices are affected here, only Linksys?
> > >
> > 
> > Only Linksys and rather unpopular MACCHIATObin (I don't mention Marvell's
> > dev boards as these are scarce).
> > Don't know about other targets.
>
> I'd also prefer that for consistency, at least for the Linksys ones.

I like that path as well, if nobodies is displeased I'd create another
patch.
>
> However, since those are partially in the kernel, we should at least try
> there as well.

Can you please elaborate on this? Do you mean DTS files which use the
code name? And would it decrease the likelihood to get the DTS files to
upstream if we add another name to `compatible`?

>
> Best
>
> Adrian
>
> > 
> > --
> > TMN
> > 
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
