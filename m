Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA103E9D83
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 15:28:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr7Q8OyEqgzBrawlzF5BnYaLDZFL3o3/zqpEi4I2h3M=; b=ZGEbWxcf/gKBnQ
	Gv/6w6hdQmsIzmms0sgQmvyYByZ31E/do6+aQTQKryQfEell/7MCKe0Pp57IHK3nzM2zyBwJqgicS
	QalWpMg/36mFpH+XRGEIeV3lX3H9ffF/pPbhJgCudpCbyJyciNKu1f3Y/ObGPUjML6Wpd2SLklawf
	zA5Rf4HLWmtzpDxiUcuiKnRlVNQ03RtWvgxh0IMxOG6VHCGyYFP4HkFh0QZwkbGgmYQrE6i81okku
	7mrKmHakhcMweCTTqvKZ4bAklr8wNPmmZ0n6FEcw72dFYVdphAgjHz0HzOuMTnLte8VzTAeSpjBGK
	xawEJHx2VyI3Ltq3g/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPox4-0004MU-HD; Wed, 30 Oct 2019 14:27:58 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPowt-0004Ln-N9
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 14:27:49 +0000
Received: (wp-smtpd smtp.wp.pl 14692 invoked from network);
 30 Oct 2019 15:27:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572445660; bh=yMM7YW/2ffI4iVSRWKY1HfM2wIZjQjw6/kHR1J+4xKc=;
 h=From:To:Cc:Subject;
 b=g8WEX0sBK9wr78HR9c7x0ah0OED4UKMOmdLOS3wzAZqRoWkPwTOcnphzUAw+DaGdI
 5ytXoMfYeFNQo+LyUPyK+/pRc79PSMKvVgSuMBC1EoqMDomRW59QCiHJK/+i2d+nlt
 0A01OsV2Wg0eCC68ALPep5GUV8XmxgZdeANtKLqA=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 30 Oct 2019 15:27:40 +0100
Date: Wed, 30 Oct 2019 15:27:38 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20191030152532.5b67428c@kosmio.komorska>
In-Reply-To: <004f01d58f20$8e12cd60$aa386820$@adrianschmutzler.de>
References: <20191030123221.7a0af3ea@kosmio.komorska>
 <004f01d58f20$8e12cd60$aa386820$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: a7f2ce9eba57c41343d755297df16f7e
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [MWM0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_072748_268364_DFFAAFCF 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


Hello Adrian,

Thanks for your feedback!

> Hi,
> 
> Same question I asked on zyxel support: Do you expect several further
> netgear devices to be added to nand target?
> 
> Up to let's say three/four devices, I'd prefer to merge stuff into
> nand.mk, otherwise I'd say a separate file is justified, so we do get
> a .mk file for every vendor.
> 

Yes, I'm planning to take on WNDR4300v2 (which, as usual, is quite
different from v1 but still QCA-based -> ath79) after this one gets to
mainline. I didn't investigated that router yet (it looks like a SPI
NAND device) but I expect it to require the same image tools.
Anyway, it is your call, I just didn't wanted to put Netgear-specific
stuff into main nand Makefile.

> 
> I there a real need to deviate from the sysupgrade.bin/factory.img
> naming scheme here? I didn't find that naming scheme anywhere else in
> ath79 or ramips.
> 

ar71xx replaces 'squashfs' with 'ubi' in factory image name, for ath79 I
couldn't find matching rename function in mk files, so I decided to
append 'ubi' in that very simple way. Again, I do not want to create
mess, I just wanted to preserve information that ar71xx provides.

> 
> I hesitated when reviewing the DTS section of your patch, but since
> this can be merged with zyxel here, I'd recommend to change the
> partition label to "art", which is frequently used for that very
> reason.
> 

It is for compatibility with vendor naming 'scheme' (which I agree is
inconsistent by itself), there is also 'caldata_backup' partition that
is a copy of 'caldata'.

Cheers
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
