Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972DB1C46BB
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 21:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RerUjxVe24fyBK3f6Lx4OW9vfgOLmQLS886yMFkuOJg=; b=T1Ff+5QSlD4xqn
	fHSZ81t7xpbOq6KW/Je8w14l3u+WY3h37+5wgVrpZE2M6e4sY2ERT2U81CqzMp8Z+PxRv8YTtMVyD
	n5YFnGqJ1HN3csme6MOsTMC9/Ey1nw58nRYSBEalyoP9dO+WvWvv0ym49RST09XWS7sooFL/fkY0U
	+1obv7aaAc67WS5ALeaCvw6VUPNFjI4IX15441/BWibpcuKJSg5i4Z/qqlO2I5LBPpQ1640TgeKl0
	MLcktcMzUDODxJ9O7/gHhuzrFi5ahr41BYnNOhjRc3t5xht7YfUM1PxUQHy9DerR8pXyF/W5OOwBg
	T2egTRIR0afb5751sBvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgQA-0003jj-3r; Mon, 04 May 2020 19:06:30 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgQ1-0003j8-Pp
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 19:06:23 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jVgPs-0003u3-LA; Mon, 04 May 2020 21:06:14 +0200
Date: Mon, 4 May 2020 20:06:03 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20200504190603.GB1835@makrotopia.org>
References: <20200504174855.24934-1-tomek_n@o2.pl>
 <002c01d62242$322f12a0$968d37e0$@adrianschmutzler.de>
 <71b372ef-74a5-be8b-1f78-21a4dc65947a@o2.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71b372ef-74a5-be8b-1f78-21a4dc65947a@o2.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_120621_842562_04757DCA 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for Sitecom
 WLR-7100
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
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, May 04, 2020 at 08:44:40PM +0200, Tomasz Maciej Nowak wrote:
> W dniu 04.05.2020 o=A020:31, mail@adrianschmutzler.de pisze:
> > Hi,
> > =

> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> >> On Behalf Of Tomasz Maciej Nowak
> >> Sent: Montag, 4. Mai 2020 19:49
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for Sitecom
> >> WLR-7100
> >>
> >> Backported from: 1bc921f419df508c57dc07cd3e43cdf0408c17dd
> > =

> > Device support is typically not backported to stable branches, unless y=
ou have a very good reason for it.
> =

> I see bunch of devices added during rc phase and after stable release, so
> what's the truth here?

To clarify what we have been doing until now and what is hence being
perceived as a general rule (though I'm not sure it has ever been
formalized):
Adding support for new devices to stable branches is ok and should
even be encouraged if and only if
 * it's been in master for a week or so and didn't break the build
 * no changes on kernel or tools are needed
 * all features can be supported just as well as similar boards already
   supported in that branch

Cheers

Daniel

> =

> > =

> > Best
> > =

> > Adrian
> > =

> =

> -- =

> TMN
> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
