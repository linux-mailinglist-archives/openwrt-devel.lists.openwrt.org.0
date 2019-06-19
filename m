Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C644B39D
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 10:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vH/JeBG0kFV/AknbY9M+O3l+Z4+yTEfQVMfQsZ/T08M=; b=oTZPAGuimGYbYX7Nk0wUWOdT9j
	svPIAflXNLbvHen5Rf5+0YVzaeG4jtFTTRIkDZ43o07khPSqwozUpXhJkM71S/4iZGRscDHyETQ4p
	0yTw33GlBV4Ti3hGi5vY8hQ67bQreKgbTl9m77ymrqfr5ZCeMfvOBwBGLVEZuVNc3ghNkOefekZkH
	x3vscjSimAdTDvrbk7nuCL35KP7Bnyez2QcEbhuwDii3KqPblKAvSVl0NybtwaHl9/O6ruoD6KVCM
	WJQvmDqdP/xl5j7AVQ2SX/qcsYUt4H5zeIwJfRfCRAl//acseAyBC84K8efw1OVxgWFK6cLDmZnoj
	0PX3Pp7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVdO-0004NY-2H; Wed, 19 Jun 2019 08:07:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVcu-00047N-GA
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 08:07:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 39D174195;
 Wed, 19 Jun 2019 10:07:26 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 74b5cc56;
 Wed, 19 Jun 2019 10:07:24 +0200 (CEST)
Date: Wed, 19 Jun 2019 10:07:24 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Message-ID: <20190619080724.GE95426@meh.true.cz>
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
 <1560802136-4157-6-git-send-email-ynezz@true.cz>
 <VI1PR0401MB22375B608C0DADFC24249471F8E50@VI1PR0401MB2237.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB22375B608C0DADFC24249471F8E50@VI1PR0401MB2237.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_010728_686929_DC0F9317 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 5/6] build: switch to Python 3
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Mathew McBride <matt@traverse.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Y.b. Lu <yangbo.lu@nxp.com> [2019-06-19 03:20:43]:

Hi,

> >  ath79/generic
> >  imx6/generic
> >  ipq40xx/generic
> >  lantiq/xway
> >  layerscape/armv7 (broken)
> >  layerscape/armv8_32b (broken)
> >  layerscape/armv8_64b (broken)

thanks a lot for such quick response and the fix, layerscape builds fine now
with Python 3.

> >  mvebu/cortexa72
> >  ramips/mt7621
> >  ramips/mt7620
> >  sunxi/cortexa7
> >  x86/64
> > 
> > Layerscape targets are unfortunately left broken as their ls-rcw firmware
> > package uses Python 2 and converting it to Python 3 would take more then
> > reasoanble amount of time (I've tried to fix it already) and would be better
> > fixed by someone who can even run test it.
>
> [Y.b. Lu] I created a pull request for ls-rcw to convert to python3. I
> compared the binaries generated with python2 and python3. Looked good.
> Please help to review or cherry-pick if you need.
> https://github.com/openwrt/openwrt/pull/2149

I've cherry-picked it to my wip/python3 branch. Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
