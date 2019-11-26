Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9765B10A6CC
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 23:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfQIMXtY262D5b3kkbyyhU1AyP2vZG27RozrhOtmAX4=; b=aKpR9AFiYTksVy
	uL5/RESJGFNRkN9WMKh+RJ06kljq6tjsJLV8YxY/Q3TA4QE2eIKuEC9XTyFWRoWQZXQWIrEAZXG06
	XujoigVTi2KeuwfbtJ76+UNfnWW8jes/7rB0qmQauVshX8JsSgGBkUrNe1RATW1wCKe/Hn9q74ShP
	YYk+VxDEQuWEe11pMTn+LHOyvpgeTz0olHdJXS8sCBNEFtMBbYvgh70PRGlBn5e4tmn/CUREYxqDE
	SGZhuUlir9UXao+h5hkZHWFfcQDRlIP8HCl08ltMCgfBzch9zWSIiKC45m0Le2gfuvPb5Vqo7sn0l
	/yo86sBAGTZdzwpMh/pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZjfM-0007EP-0W; Tue, 26 Nov 2019 22:50:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZjfD-0007DW-Lv
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 22:50:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7pxFSdK31ooUzBLSc0B+k8YDwNkbziakIReK0BP7M7I=; b=V92gfiKHtWwx52jc3YUolu6zk
 MMyN6pmegy7Wzxlx1EfQ4M+ZxXCMm4t7Spoh3dDD9VMT8uEO2LqT2WeTRBNUrp+yAqOEzjoVQbKH/
 2cmp9zl/RFpdhPuPbG7HloxLwJ8Nuo+juA1+cWGUtb+rJa1VR88axktJtqcocc+hTfB7xCD9MYYE6
 nY+MyARwf3uqrEoxg6XYEKMMW3ALYAXWTHPim5H4AHiGloPZ+Rup/pVoLr4/0onhiBPmJCIl6AXog
 m1xUiVa7YyQZzzcLslpKX9zZKt2Tr+1LOE9pNR0HQXCqNg+f5xyoVFavK7zaOcoF3GwLgFUhyzyxH
 XHrviSXAw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33396)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>) id 1iZjey-00089P-GW
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 22:50:19 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>) id 1iZjer-00085c-Pg
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 22:50:09 +0000
Date: Tue, 26 Nov 2019 22:50:09 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191126225009.GQ1344@shell.armlinux.org.uk>
References: <E1iZHVc-0001Jn-Nd@rmk-PC.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126000743.GV25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_145032_667860_ECD41D33 
X-CRM114-Status: GOOD (  11.02  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Nov 26, 2019 at 12:07:43AM +0000, Russell King - ARM Linux admin wr=
ote:
> Ren=E9,
> =

> I can see your reply in the OpenWrt archives, but I never received
> it, so I can't reply to it...  (I'm not subscribed to openwrt-devel.)
> =

> Yes, it could be made generic I suppose, if you understand the
> OpenWrt build system and where stuff needs to be placed.  Any
> suggestions where these should go?
> =

> Sorry, but I've already spent many hours trying to get the OpenWrt
> build system to a state that I was able to build just a kernel and
> associated kmod packages that I don't have the patience to try and
> delve into the amazingly complex makefiles that someone's dreamt up...
> My impression is that the build system is designed to keep people out!
> =

> Russell.

All,

Some guidance would be most helpful.  Silence on the other hand
will result in nothing changing.

It's been suggested privately by Telus that they go in
target/linux/generic/backport-4.19.  What about numbering, how
do the patch numbers get allocated?  Do I just pick something at
random?

Some clues would be really useful.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
