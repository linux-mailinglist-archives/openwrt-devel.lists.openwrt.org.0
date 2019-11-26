Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5995210A719
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 00:27:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zx4D0/9Z5gsYWsvsQc1fnvXcFzfCZZxOw+QrNBRX74Y=; b=Do1vY3vedfVfV9
	i7yAXeUKuGfkT9WYw3b7lCdnSK5RjbYIdM/L/Vp+Wuw4TNAvt1b7tuOAExIc3/uqY6YYzbGT4Xc20
	2sVKDxk8JogUPZhfvmfDnoNqcIKKmE/PqgF2FCtrX2SJcrCcDJ7gydwqofZXfy87J9Kr3PZUI0PAU
	TcyPSJhJx5byNTuBrYaOQBCB2MvY74M9XhI0VpNle664skR780JD0FzOvFm1O/kmsmT6Tu4q4MQ3w
	hoab5Ox46ZecowFydhJkEXeFPjQ8GOZ9ulrLJc5WZG2UhrKrxKUO42XH61GCjl8CP4BgIsKG0hI7E
	/KnuAEBHwR7ctMjaRd9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZkEu-0002fh-83; Tue, 26 Nov 2019 23:27:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZkEl-0002dq-70
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 23:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1P0stccqfaSVksilEo3DO50PXV/08MjCmJL6zF24plY=; b=G7g+nKJbsKSawwmhhQ0NKte1u
 x8ptur8T6crCdbqeQLk3cHInC48VrSUF1B7w06YAZvP+FsOqidjLSNwsYZS+jmhiZWbPGxAqSewFJ
 51XQpWAr5xZ7/wP0KxBcONSw/Ee6s5zSydJryrIBJDluu6SKHNc64xDUUPQde6CbXTRiqo4qgNUmy
 JIZSIUurnGdxC4MVIg/onF+DBhp9GLu87cn5Qr3ABfDfnR60BWPOEBWmdcdlaKfo1MHtpOtvgb8T8
 /JOOsJshjoCFg6zOlA8hr6Fm1v2KGT+vrelsPsl0prE3IV2ulxpZ6ZwQeXiiWylcXKsndIc55+K00
 XYKeEun8A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33406)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZkEf-0008Il-Bw; Tue, 26 Nov 2019 23:27:09 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZkEe-00086p-Hz; Tue, 26 Nov 2019 23:27:08 +0000
Date: Tue, 26 Nov 2019 23:27:08 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Etienne Champetier <champetier.etienne@gmail.com>
Message-ID: <20191126232708.GB25745@shell.armlinux.org.uk>
References: <E1iZHVc-0001Jn-Nd@rmk-PC.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191126225009.GQ1344@shell.armlinux.org.uk>
 <CAOdf3gqrAoKe=0utX9ZwtzrAxY75tCzwh6byujUxJJ978wcBgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOdf3gqrAoKe=0utX9ZwtzrAxY75tCzwh6byujUxJJ978wcBgQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_152715_254032_BEDAABE3 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Nov 26, 2019 at 03:11:55PM -0800, Etienne Champetier wrote:
> Hello Russell,
> =

> Le mar. 26 nov. 2019 =E0 14:50, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> a =E9crit :
> >
> > On Tue, Nov 26, 2019 at 12:07:43AM +0000, Russell King - ARM Linux admi=
n wrote:
> > > Ren=E9,
> > >
> > > I can see your reply in the OpenWrt archives, but I never received
> > > it, so I can't reply to it...  (I'm not subscribed to openwrt-devel.)
> > >
> > > Yes, it could be made generic I suppose, if you understand the
> > > OpenWrt build system and where stuff needs to be placed.  Any
> > > suggestions where these should go?
> > >
> > > Sorry, but I've already spent many hours trying to get the OpenWrt
> > > build system to a state that I was able to build just a kernel and
> > > associated kmod packages that I don't have the patience to try and
> > > delve into the amazingly complex makefiles that someone's dreamt up...
> > > My impression is that the build system is designed to keep people out!
> > >
> > > Russell.
> >
> > All,
> >
> > Some guidance would be most helpful.  Silence on the other hand
> > will result in nothing changing.
> =

> For faster response try IRC #openwrt-devel
> =

> > It's been suggested privately by Telus that they go in
> > target/linux/generic/backport-4.19.  What about numbering, how
> > do the patch numbers get allocated?  Do I just pick something at
> > random?
> >
> > Some clues would be really useful.
> =

> This page might have some answers
> https://openwrt.org/docs/guide-developer/build-system/use-patches-with-bu=
ildsystem#naming_patches

Great, exactly what I'm looking for!  Thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
