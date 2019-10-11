Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3897D3FF3
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 14:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76DucHMVFe/Jd2d2+WJJEO/UA6lrFxp6AKbR0BF+sDo=; b=aS8v+VYTGJKT3Q
	yVOavpY4ZR/sFpYeiIXMKw0nlxPAhqEiWhs8YqRFnDfDmTVNe3wZuu/S7XIzBUeD1+C9+rJlQbYkN
	OQ1r836DQQXYZK8JzY+9hlFxB4lydA42kpgiE9/Nk3Dix3p2jQOaXj+trmsj5YE+Q/fEnG9gVnKb2
	1mCEEvgBiSRTuZfWGpMXDIN/MYuS/1w/sh2tGjgTpVtPFgNWnq6FHFfRnXoKObvuqmEsgJdH0p2XT
	zsGZx2nuWfm0XbxtXXl/qdSFaigLZeUbBaYESwj8GelTxfeuglWtY7tJw4tWPi/puzLjESl8ZOQuU
	jjsoZoFeoUB8UU0K/bsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuPE-00024D-3Q; Fri, 11 Oct 2019 12:52:28 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuOk-0001eZ-1I
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 12:52:03 +0000
Received: (wp-smtpd smtp.wp.pl 15424 invoked from network);
 11 Oct 2019 14:51:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570798313; bh=Lw+hso29qbetEsmOes2TAWnsFyZiol6MfM2cjeEWvXw=;
 h=From:To:Cc:Subject;
 b=WzypxY+tgyIsnHjmfW4EGNvaGVULB7B3bSQDdugnIMRON3PbP/agmEHTdCGw0dmiQ
 z1qPVqpPO4/p2FLfVK4c3WTkgl05mA5IM02qzFdHVi1sGTg7HMUNZWr8ioMOC/OvwT
 NP1kJYTYNRbyLVwE6b44kqaQ32FtEW69j8q09HIo=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 11 Oct 2019 14:51:53 +0200
Date: Fri, 11 Oct 2019 14:51:50 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20191011145141.7a5848e6@kosmio.komorska>
In-Reply-To: <001e01d5801d$73318610$59949230$@adrianschmutzler.de>
References: <20191011111446.77a86e7b@kosmio.komorska>
 <20191011111709.344d3667@kosmio.komorska>
 <001e01d5801d$73318610$59949230$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: fd1ac493a1ef6489808b8ec954621795
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [wTMk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055158_661276_73441580 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear
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

On Fri, 11 Oct 2019 12:20:04 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

Hello Adrian,

> Hi,
> 
> just some MAC related comments below:
> 
> > @@ -403,6 +404,10 @@ ath79_setup_macs()
> >  	netgear,wndr3800)
> >  		lan_mac=$(macaddr_setbit_la "$(mtd_get_mac_binary
> > art 0x0)") ;;
> > +	netgear,wndr4300)
> > +		lan_mac=$(mtd_get_mac_binary caldata 0x0)
> > +		wan_mac=$(mtd_get_mac_binary caldata 0x6)
> > +		;;  
> 
> lan_mac should be removed here. You already set mtd-mac-address in
> dts.
> 
Thanks, I'll fix it.

> > +&wmac {
> > +	status = "okay";
> > +
> > +	mtd-mac-address = <&art 0x0>;
> > +	qca,no-eeprom;
> > +};
> > +
> > +&pcie {
> > +	status = "okay";
> > +
> > +	ath9k: wifi@0,0 {
> > +		compatible = "pci168c,0033";
> > +		reg = <0x0000 0 0 0 0>;
> > +		mtd-mac-address = <&art 0xc>;  
> 
> This order of addresses looks a litte uncommon. Have you verified it
> against stock firmware?
> 
> lan art 0x0
> wan art 0x6
> 2.4 GHz art 0x0
> 5 GHz art 0xc
> 
I can confirm this layout is identical to both stock firmware and
ar71xx version.

> Have you checked that there are no usable addresses in 0x1002 and
> 0x5006?
> 
Yes, there are wireless addresses inside calibration data at offsets you
provided, and they are both equal to LAN MAC.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
