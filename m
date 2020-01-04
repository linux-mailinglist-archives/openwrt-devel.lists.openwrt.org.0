Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABC113027B
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 14:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbvN3XWBKrtSdH60kRGjQSig5c/4tzWiohFzlp7kOZ0=; b=SfG3rFzLfWaHn+
	kNb9v1c1QFH9yHuGrXaon+hE2t2CkzG9vCTWrZA/Em7t8rMkezIxBVuRfy0kxHvBlUqpFbyaK3X+H
	FRazYnX51fConrKvfK9c9TqAhwuPb1ngZaZsBa1Ur5ZdFOqYtoxYy8wzLM8WFx3WPIDbo1V6NNLkz
	Yfib9T4Vmtg9wzNErGVWJUNo3ZvXrvgAq/gwaCLc5tI0CwMtswd843u+Vcra57HyZjozLaSE9ZRZW
	E5fZy9N6Y2XGNDpobS9BSemJh5nbEgKwNTgAab5IANv4Hun81aCJzCr4LrhpAnZUVleHj2wtNFj59
	8cHMTTbclX8UTHeYuGPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1injHY-0001lC-Va; Sat, 04 Jan 2020 13:15:56 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1injHR-0001kS-7N
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 13:15:51 +0000
Received: from windsurf (unknown [88.124.194.176])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 002E6100006;
 Sat,  4 Jan 2020 13:15:39 +0000 (UTC)
Date: Sat, 4 Jan 2020 14:15:38 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20200104141538.4074552a@windsurf>
In-Reply-To: <20200104130638.GD1301@makrotopia.org>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
 <20191122095541.688125-2-thomas.petazzoni@bootlin.com>
 <20200104130638.GD1301@makrotopia.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_051549_404553_1C6DB970 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/7] package/utils/busybox: add optional
 selinux support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On Sat, 4 Jan 2020 15:06:38 +0200
Daniel Golle <daniel@makrotopia.org> wrote:

> > @@ -76,6 +76,9 @@ LDLIBS += $(call BUSYBOX_IF_ENABLED,PAM,pam pam_misc pthread)
> >  ifeq ($(CONFIG_USE_GLIBC),y)
> >    LDLIBS += $(call BUSYBOX_IF_ENABLED,NSLOOKUP_OPENWRT,resolv)
> >  endif
> > +ifeq ($(CONFIG_BUSYBOX_CONFIG_SELINUX),y)
> > +  LDLIBS += selinux sepol
> > +endif  
> 
> also here, it would be better to have a build-variant of busybox with
> has selinux enabled instead of a buildroot compile option.

Thanks for your feedback. Could you give some initial hints on what you
mean by "build-variant", or at least point at some existing examples ?

Thanks a lot,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
