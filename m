Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEDD1092DA
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 18:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OA/SfXIxgL7r20R/zRyLEyEyJ8b7/zbVO1BMQQczPfA=; b=N4vdNOEVZtgEGM
	yfXCrxljUfznVABaG3zzhcr4CiT3Rf63JkfWOUyU05+SnezJbvl+sYKInun7YvSjksN0PHqaMiN7c
	jtmEfjDhF9ead3xvkuGqb4p2qF9sgGp28mOv/JpVITVsMa+MaA0VRs+TkyJaOLf3l9RLDb+AAFo5H
	mGpQJoWmESE3CmJLdgpNdwTzq8Sx4c5QxvBqSyTrnyjYC7GKNXetLpUJuiiZ6Wcx9kgJWjFiYYtHZ
	8piJKy6VL3NY68SDPY/RlQU2m1XQzG+Bi9RxdntTYHD1lQW+oaT7zJOSdJaEhgCu8InlsdnuU193t
	jd6lT0R2Ow9gjgssz/tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZICv-0006Md-Rm; Mon, 25 Nov 2019 17:31:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZICm-000534-Hf
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 17:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4BnzhzARax9SR4W7y8qOQBZmlbLZbb4UoEHHYbrbKuw=; b=tQBG+NpptM3swZltQIFjBmCfm
 Li8xdeOeZGSD4WIPcKmvzK6na8+RrKFyNJWWMkDHdfYygsOICj9bAAsjz0xKlQWNF0OA5uq7n7bIo
 AdAxDNIVvIwopa4INWWF/aTxtIw1sFH7gUE23T6GV910LWg3MN1nc8aMKqC8XVO92I53SqVbBHuSQ
 0h+2x1xQ63Bb28JLvtoBVDyxn3iN9lL76RtznCio/uAm6T1wl/tEk3s38E/8HC/KJOi2AN0WVNah0
 4oeDpi49t2Z4begnsjAtJoomgrlJ2RKSbEy65w6g8qi+Xh4ZBjwx/YR9UKLbn7uH4PqUmICeImOtV
 EtQ+QMxZw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40368)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZIAh-0000cu-ET; Mon, 25 Nov 2019 17:29:11 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZIAf-0006rT-NQ; Mon, 25 Nov 2019 17:29:09 +0000
Date: Mon, 25 Nov 2019 17:29:09 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jonas Gorski <jonas.gorski@gmail.com>
Message-ID: <20191125172909.GU25745@shell.armlinux.org.uk>
References: <E1iZHVW-0001Ji-VK@rmk-PC.armlinux.org.uk>
 <CAOiHx=kE_sLtz3O5-RsmGNFb4zmUd2aKfcQxkDomrfnVtjTiyA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOiHx=kE_sLtz3O5-RsmGNFb4zmUd2aKfcQxkDomrfnVtjTiyA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_093121_481827_C1E25769 
X-CRM114-Status: GOOD (  16.12  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] kernel: remove obsolete phylink/SFP
 patches
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Nov 25, 2019 at 06:10:18PM +0100, Jonas Gorski wrote:
> On Mon, 25 Nov 2019 at 17:49, Russell King <linux@armlinux.org.uk> wrote:
> >
> > Remove the old phylink/SFP patches from the OpenWRT build; these will
> > be updated with a new set in subsequent.
> >
> > 450-reprobe_sfp_phy is also removed for several reasons:
> > 1) it is not in mainline.
> > 2) it breaks copper modules that do not have a PHY.
> > 3) it makes backporting the current patch set harder.
> >
> > Discussion is ongoing with the patch author for a mainline Linux kernel
> > patch for this.
> 
> You can also just put me in Cc ;P
> 
> Is using this patchset enough for the tests you asked, or are there
> some additional changes in your branch?

Hi,

Yes, for the test I've asked for.  The series basically brings OpenWRT
4.19 kernel to parity on SFP stuff with the current state of play.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
