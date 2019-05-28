Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356A82C196
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 10:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KS955KmUUEedxWs1TExrjbOB2kJNJnG5eUz/Ohk1zC0=; b=ZDc7LR53WIxqhLxyfgGaLGeFXZ
	Eij8nfN03OzCXa8uJ896CmaIvuBkLp9GnUk+iR9eS+9VLBOi66MGUVa+QdBqfShDi0bpXPWgwOxd3
	YkQljXSumqu6jwFmrJQIa+e9X+ADVB2Njb767rwXvRAe09Kx9KjZXg/Fj7lmFoNhIHfmp6i78qxGt
	iQ9LZUHzKk7d71+bOkHTvt/KQqyRwK6/N0w1Kfn1cR0yZ5Lpdq0S+9ZFXCrjpi/RKE0FdHHJoSFFL
	IvOWfVWScVN2xSTDxL8JtocjuXkAgZIk4+RA3SXAvjlNpk8hFwf31496eQxpGzxacmDQ6cZaRKPzN
	41EW6S0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXkO-0006Rl-Vs; Tue, 28 May 2019 08:46:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXkG-0006RB-Ev
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 08:46:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4B6024885;
 Tue, 28 May 2019 10:46:06 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 89164a97;
 Tue, 28 May 2019 10:46:05 +0200 (CEST)
Date: Tue, 28 May 2019 10:46:05 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stephan Mueller <smueller@chronox.de>
Message-ID: <20190528084605.GA13432@meh.true.cz>
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <1558992584-11997-4-git-send-email-ynezz@true.cz>
 <15593483.ERmGyQBebA@tauon.chronox.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15593483.ERmGyQBebA@tauon.chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_014608_644938_0DC8F302 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] base-files: move urandom seed bits
 into separate package
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Stephan Mueller <smueller@chronox.de> [2019-05-28 08:34:08]:

Hi,

[...]

> > +start_service() {
> > +    procd_open_instance "urandom_seed"
> > +    procd_set_param command "/sbin/urandom_seed"
> > +    procd_set_param stdout 1
> > +    procd_set_param stderr 1
> > +    procd_close_instance
> 
> Just as a recommendation: what about the script is invoked, say, once every 
> hour or so?

unfortunately this is not an option, as currently most of the supported
devices use SPI NOR flash for the persistent storage and those flash devices
impose certain technological limits, like for example maximum number of erase
cycles for each sector of flash memory which could be around 100000 erase
cycles under certain conditions, so it might be less. That's the reason why we
don't even try to update this seed file during every boot.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
