Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8F410A731
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 00:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uK7r6pjFFOufhIC9ySiKO5r7Ex3cd6+dEF07o1S5yS8=; b=Sq1zw7triD2aw5
	2omrizGma2jAzXhKfnzaBDclcor+ijMwxqVT3N815zCoEt5txl+1tXT03D8OwEXT+4C/WKcCz/Fjm
	bBbr6tt8SQDJ4QJKG0D885m6Uhwi7qct+bFETWNi/y8HxarRUlN/NzTpytnwaEGVsVT6D+9VIcf58
	6xj0N6A3vGHObE8iPgv9ahYLGynh3zM606D7xxUAIfoiVCG8RY94IRCMU58m9eNztgOBTewa+9K4j
	cex8tcnFmO6SKzjng7i/N7PI2qt3vHBz5aSRnYEz+R7HU1BwlDEVJ4n1BUOUycGEOhljNavXUjQvx
	S3aeUP4YY+Gs9mctrcUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZkUH-0007pU-U9; Tue, 26 Nov 2019 23:43:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZkU9-0007p2-O5
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 23:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RhJC69URJKkzb2oUOSuJuUdKFyRRh7EO8UYn6Hekb2w=; b=zt35bSi+p8jBSBBTMKy6iegJG
 v4ifU0NonLWoiyBj3O5J7tX6TklUOiQ7qqMDwrQUagMgyXjrwmxiNT7u3KsgLUNoaAmsSrtKxWL5X
 F202Z6Ys57IDQ2ZAdy41PTXY4Yq/4dWSWTvHGtMEiNzd8GWEtRZBDlVLAZ2mz2cp2/pz1M22nkCPl
 eEChBvJGnAGiqOVi5jyd3DsllyGnHKEbJ18MwuK30LNa/VGCgQLUgAqbhnJBTCQXXU6cZTjWXdr6y
 JglxoMte5H0zsbPn7eI0ZZDfILkNGcQLP5f0uu8Qofcs1LTjNkySc5+GaCwnP9Vq5g/1Km+1+Jl7k
 gsPW0fmzg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45062)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZkU3-0008MC-F4; Tue, 26 Nov 2019 23:43:03 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZkU2-000884-LC; Tue, 26 Nov 2019 23:43:02 +0000
Date: Tue, 26 Nov 2019 23:43:02 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Etienne Champetier <champetier.etienne@gmail.com>
Message-ID: <20191126234302.GR1344@shell.armlinux.org.uk>
References: <E1iZHVc-0001Jn-Nd@rmk-PC.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191126225009.GQ1344@shell.armlinux.org.uk>
 <CAOdf3gqrAoKe=0utX9ZwtzrAxY75tCzwh6byujUxJJ978wcBgQ@mail.gmail.com>
 <20191126232708.GB25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126232708.GB25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_154309_787709_C1BB1B17 
X-CRM114-Status: GOOD (  20.45  )
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

On Tue, Nov 26, 2019 at 11:27:08PM +0000, Russell King - ARM Linux admin wr=
ote:
> On Tue, Nov 26, 2019 at 03:11:55PM -0800, Etienne Champetier wrote:
> > Hello Russell,
> > =

> > Le mar. 26 nov. 2019 =E0 14:50, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> a =E9crit :
> > >
> > > On Tue, Nov 26, 2019 at 12:07:43AM +0000, Russell King - ARM Linux ad=
min wrote:
> > > > Ren=E9,
> > > >
> > > > I can see your reply in the OpenWrt archives, but I never received
> > > > it, so I can't reply to it...  (I'm not subscribed to openwrt-devel=
.)
> > > >
> > > > Yes, it could be made generic I suppose, if you understand the
> > > > OpenWrt build system and where stuff needs to be placed.  Any
> > > > suggestions where these should go?
> > > >
> > > > Sorry, but I've already spent many hours trying to get the OpenWrt
> > > > build system to a state that I was able to build just a kernel and
> > > > associated kmod packages that I don't have the patience to try and
> > > > delve into the amazingly complex makefiles that someone's dreamt up=
...
> > > > My impression is that the build system is designed to keep people o=
ut!
> > > >
> > > > Russell.
> > >
> > > All,
> > >
> > > Some guidance would be most helpful.  Silence on the other hand
> > > will result in nothing changing.
> > =

> > For faster response try IRC #openwrt-devel
> > =

> > > It's been suggested privately by Telus that they go in
> > > target/linux/generic/backport-4.19.  What about numbering, how
> > > do the patch numbers get allocated?  Do I just pick something at
> > > random?
> > >
> > > Some clues would be really useful.
> > =

> > This page might have some answers
> > https://openwrt.org/docs/guide-developer/build-system/use-patches-with-=
buildsystem#naming_patches
> =

> Great, exactly what I'm looking for!  Thanks.

So, I guess:

1) as these are touching phy code, using 7xx numbers would be
   reasonable  Or maybe 0xx for at least some?

2) there are no 7xx numbers in target/linux/generic/backport-4.19, so
   numbering them 700 through to 742 for the first patches would be
   okay?  These are all queued in mainline net-next.  Maybe 0xx, but
   do I just work around the numbering of the existing patches, starting
   from the first available number?  Or maybe 1xx as it hasn't yet been
   pushed into mainline?

3) patch 3 aren't queued yet, but are published in my git tree, and will
   be sent for the next merge window.  Does this still qualify as
   suitable for backport-4.19, or should they go elsewhere? 7xx or 1xx?
   They won't be pushed from OpenWrt upstream, but by me as mainline
   kernel SFP maintainer.

4) patch 4, the uDPU patches stay in target/linux/mvebu/patches-4.19?
   3xx or some other number?

5) the final patch, which isn't in mainline, and probably needs further
   work - should that go in target/linux/generic/hack-4.19 ?  What about
   the numbering of the existing 7xx patches there - do I just pick the
   first available 7xx number, i.o.w. 701 ?

Any help gratefully received.  Thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
