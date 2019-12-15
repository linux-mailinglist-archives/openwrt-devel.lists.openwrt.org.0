Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B290111F98E
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 18:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMlbBODEnEEEdbWqmw9mbTxHEBzWxpLhWg+VUqlVxnY=; b=HlDS0PSwjD4b8x
	Z/6GeiOrpP9DGgQCSuYb6KH64PLo2X+XEJxFzeILMdrKRuyLT0+SGr5m9mzVJzwwW4RJxjfgoEwJH
	GQK4P6me+MsvtymeFrjQjs1lb9XsvPwAyrld6p8kk4E415kmsog0nmazuq9S18gGGFPvvLSuVkWqJ
	mG8ByU3ezHFGocYNiYruZbVEBoyjQ0fVzKf4KBDt40DY+FCk1SlB1Uf2gSA/A1DAfN92h9Okd5TaX
	/rc/7+LkYhV4qo4JXhs9jbEB9hMjGvZQQP/iQiMn2bXb3CqoYvS+ivnxzTpDo0AAeLXirUWur5mjW
	E+79F3IfrPVyOavQlPng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXR5-0005fx-41; Sun, 15 Dec 2019 17:12:03 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXQv-0005e5-Bh
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 17:11:54 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1igXQj-00048p-Sh; Sun, 15 Dec 2019 18:11:44 +0100
Date: Sun, 15 Dec 2019 19:11:05 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: mail@adrianschmutzler.de
Message-ID: <20191215171105.GA2832@makrotopia.org>
References: <008201d5b348$fd4eba30$f7ec2e90$@adrianschmutzler.de>
 <20191215132728.GD4782@makrotopia.org>
 <ecf600e1-e264-44d1-c9e6-61513f2f4da6@hauke-m.de>
 <011f01d5b368$364cc830$a2e65890$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <011f01d5b368$364cc830$a2e65890$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_091153_400022_68451E57 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Lantiq DTS rename
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
Cc: 'Martin Blumenstingl' <martin.blumenstingl@googlemail.com>,
 'Hauke Mehrtens' <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Dec 15, 2019 at 05:53:42PM +0100, mail@adrianschmutzler.de wrote:
> Hi,
> 
> how would you call the SOC variable in image Makefile then? (the equivalent to ATH_SOC and MTK_SOC...)

In a way those variables should be unified into something like 'SOC'...
For now, maybe 'LTQ_SOC' will do until we replace them all by 'SOC' and
that should be it...

Cheers

Daniel

> 
> Best
> 
> Adrian
> 
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Hauke Mehrtens
> > Sent: Sonntag, 15. Dezember 2019 14:49
> > To: Daniel Golle <daniel@makrotopia.org>; mail@adrianschmutzler.de
> > Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>; openwrt-
> > devel@lists.openwrt.org
> > Subject: Re: [OpenWrt-Devel] Lantiq DTS rename
> > 
> > On 12/15/19 2:27 PM, Daniel Golle wrote:
> > > Hi Adrian,
> > >
> > > On Sun, Dec 15, 2019 at 02:10:14PM +0100, mail@adrianschmutzler.de
> > wrote:
> > >> Hi,
> > >>
> > >> I consider doing a DTS rename for lantiq target similar to what it's like on
> > ath79 and what I did for ramips earlier that year.
> > >>
> > >> However, I wonder whether the "soc_vendor_model.dts" scheme is
> > useful there, or whether it wouldn't be better to just use
> > "vendor_model.dts" ...
> > >>
> > >> Any thoughts on this or any NAK in general?
> > >
> > > soc_vendor_model should be appropriate here is well. why not?
> > 
> > Yes please clean this up and use the soc_vendor_model model, I think this is
> > the common format in the Linux kernel.
> > 
> > Be aware that there is a pull request from Martin pending with some changes
> > to the existing files:
> > https://github.com/openwrt/openwrt/pull/2216
> > 
> > Please also move the dts files into the lantiq subfolder at
> > arch/mips/boot/dts/lantiq/
> > 
> > Hauke



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
