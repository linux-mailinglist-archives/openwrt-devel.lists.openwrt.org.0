Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CF6DA5D5
	for <lists+openwrt-devel@lfdr.de>; Thu, 17 Oct 2019 08:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQFi1A0qWNduXqsvJGfrHbbaXrjqRFazP6oLmMQvcQg=; b=hNq+SQyoh79dGw
	1MuqNcQyTGAcE/CE9AV4v3Ib99YSggt4jjYqm4eKfQDLP+AhrE3UFmyxh1VrnyyOkTdAbEgtyDqIl
	IbzvUwjnbPZFXMbXADoMM2Dku6hWspeFxyNICJWMgVlT/QB/GXV1QotgKKvXOjzeq+Rgd9joldW5J
	8PzZG9UmW8UJZmqB6bHSE0pd64hPX6/Gdwtk6FUXDksyEcZAYMAq4R3M0LvgPaS7R6tonKJFcN+Ud
	ngpcY6TytuNaBjBv5HE53+lRL5sPcar1wVlcDnC73A4pBJmP7UQXp54dcbTU/x8QOt0/e0ZAVi+f7
	q/IHqB60RHU5hkaVmVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzhq-0003fo-6K; Thu, 17 Oct 2019 06:56:18 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzhi-0003fF-Js
 for openwrt-devel@lists.openwrt.org; Thu, 17 Oct 2019 06:56:12 +0000
Received: (wp-smtpd smtp.wp.pl 7555 invoked from network);
 17 Oct 2019 08:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571295364; bh=Iq0JyTuD+MEzfUG56EjJgHXfoj5oublN2/ZEK2Gp13s=;
 h=From:To:Cc:Subject;
 b=Ej5Cs6cl4HUdRMxKvP0rXczf13mbvzUyqTG6E6IdM4ouC6T0V4jipfHYO1nm4x3C/
 59UAgLJdKP4cL3z8WkciwHQAratwGuKblYQlLXcV+FT/H+LoFrOen1cL9k5CWYCCr0
 dfjJ6CZ3w9+ANsEUPEhN1+PsETugQHCFFNSNCI3c=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 17 Oct 2019 08:56:04 +0200
Date: Thu, 17 Oct 2019 08:56:03 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: <mail@adrianschmutzler.de>
Message-ID: <20191017085556.729041a9@kosmio.komorska>
In-Reply-To: <009001d58466$2dabebb0$8903c310$@adrianschmutzler.de>
References: <20191016123722.70774de1@kosmio.komorska>
 <20191016123951.0ed754a4@kosmio.komorska>
 <009001d58466$2dabebb0$8903c310$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: d65b35edb17bbb62e47febc8073ad695
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [cRP0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_235611_169251_A14466C5 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v5 2/5] ath79: WNR612v2: improve device
 support
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

On Wed, 16 Oct 2019 23:10:45 +0200
<mail@adrianschmutzler.de> wrote:

> Hi,
> 
> >  &pcie {
> > @@ -116,6 +123,8 @@
> >  	ath9k: wifi@0,0 {
> >  		compatible = "pci168c,002b";
> >  		reg = <0x0000 0 0 0 0>;
> > +		mtd-mac-address = <&art 0x0>;
> > +		mtd-mac-address-increment = <1>;  
> 
> Sorry if I ask again, but I do not remember whether I asked this
> already: Is there a valid MAC address in the calibration data (0x1002
> or 0x1006 ...)? I just can't believe that eth0/eth1 are set from art
> but Wifi needs to be calculated.
> 
> Best
> 
> Adrian

Hello Adrian,

Yes, you've raised this topic, albeit without above offsets:
https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg47839.html
Anyway, verified again for 612v2, nothing resembling hw address at
0x1002, 0x1006 or 0x108c.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
