Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469C1178FBA
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 12:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qPp75NQe/LOMjQ3jqEe/0lpyQ1VNe9o0+qVjc+7lg8=; b=UnUXBHNPXzzOlw
	sdIdl7kc61Pdm1/N76V8QacAbB4E/pC4q4opVE06+sWPCMKEZykimpiH0wlrGFuVfAk0lngFGLAGf
	VM6iCC+oJOIml9XwC/Uied/+nQOYV/yud1cCPXDo6nGYohaQxUT5cZYzlwYz4I9IEmGaJbdXh4XOD
	FNrBJl4OuqJ7QetnHgEg4Y2bD2oFIkOAfVedF8ia8Z8W5JxvmcAjjgdkgGNZU6GJlZPiYv0t0mqjq
	MFZhDHX2KY0r7kVblblwZuFLvK6xl9cgNQVuLAsJU5J+tUa4HAslMD/ffRNfab2Gt8USrfqmYXxNK
	0XjR61XDgIrLdOPfy+tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9STY-0007DO-3d; Wed, 04 Mar 2020 11:46:08 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9STR-0007Cp-JT
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 11:46:03 +0000
Received: from [127.0.0.1] (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8CBDB4D01;
 Wed,  4 Mar 2020 12:45:57 +0100 (CET)
Date: Wed, 4 Mar 2020 11:45:55 +0000 (UTC)
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
To: Florian Eckert <fe@dev.tdt.de>
Message-ID: <d983ff97-5c1f-4285-b6e5-e7e0f3363f82@localhost>
In-Reply-To: <2e0ca3c649ba7041638b351ca216299f@dev.tdt.de>
References: <158330982516.19674.4885350586434429867@git-01.infra.openwrt.org>
 <mailman.35728.1583309833.2486.lede-commits@lists.infradead.org>
 <20200304092608.GD79862@meh.true.cz>
 <2e0ca3c649ba7041638b351ca216299f@dev.tdt.de>
MIME-Version: 1.0
X-Correlation-ID: <d983ff97-5c1f-4285-b6e5-e7e0f3363f82@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_034601_792425_44CD0427 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Security implications for consideration [Was:
 Re: [openwrt/openwrt] rpcd: add respawn param]
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Mar 4, 2020 12:08:18 Florian Eckert :

> Hi Petr
>
> thanks for your investigation
>
>
> > I simply would like to bring one important aspect for consideration.
> >
> > By respawning any network facing service indefinitely we're giving
> > adversary
> > infinite attempts for figuring out the way in, decreasing the purpose
> > of
> > (expensive) ASLR etc. See "Remotely Compromising an iPhone through
> > iMessage"[1] (48:41) for real world example.
> >
> > I think, that the previous default (max 5 restarts?) was good enough,
> > ideally
> > the timeout should be exponential in between those 5 restarts and I
> > wouldn't
> > mind if the restart count was set to 0 by default.
> >
> >
> > > diff --git a/package/system/rpcd/files/rpcd.init
> > > b/package/system/rpcd/files/rpcd.init
> > > index 77ebcbe6cb..b1061b906c 100755
> > > --- a/package/system/rpcd/files/rpcd.init
> > > +++ b/package/system/rpcd/files/rpcd.init
> > > @@ -12,6 +12,7 @@ start_service() {
> > >
> > > procd_open_instance
> > > procd_set_param command "$PROG" ${socket:+-s "$socket"}
> > > ${timeout:+-t "$timeout"}
> > > + procd_set_param respawn ${respawn_retry:-0}
> > >
> >
> > IMHO this is probably not correct as well, that respawn param is
> > "array" of
> > [threshold, timeout, retry] params, so this probably sets
> > `respawn_threshold` to
> > 0, not `respawn_retry` as intended.
> >
>
> I was not aware of the fact that all parameters must be given!
> Sorry for that my fault!
>
> If so I would suggest to change change the line to:
>
> procd_set_param respawn ${respawn_threshold:-3600} ${respawn_timeout:-5}
> ${respawn_retry:-5}

I barely remember seeing such defaults in
https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=package/system/procd/files/procd.sh;h=e8b1b6ffb7d3bf09725c2451813ca69fb4d74372;hb=HEAD#l395

>
>
> >
> > 1.
> > https://media.ccc.de/v/36c3-10497-messenger_hacking_remotely_compromising_an_iphone_through_imessage
> >
> > -- ynezz
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
