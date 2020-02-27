Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4848D1715E1
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 12:26:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oo9Kd2UYbA34zr0EJ1BOcrCJ/2+IO70CSvmkphlmj7E=; b=oF2LSebeQJUBCs
	7nJJa51L9eYQRyQLoFlMA+SEzflNLr1Gqa05gFfTaokDw7r0iMB82xie8RDZEAs2DP8B8m5KGwJkv
	WDNFPNrrvXr6sV3wa9z7Rex/VUq+JkBUi1YiTOSj+Vbea0dSYHINJycXPYjTgn9PMm1yMzMvK16FY
	a1elgdBcOrcO2tWQrMLRt2MlPkSMqmbNY5jlZ8P6NT0t+Iu+pd77TGOzMwq4x5nzB+5KQ/Vn+nxQ8
	GPHXgKdO/RVr2jgtf57245HavJTyO7kUh0mcdJBZAUa/Born/4ioi2WEB+KYrdWbyhmwLlrmVzu9p
	JasWoQi0k2bietiGAxFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HIq-00039p-QE; Thu, 27 Feb 2020 11:26:04 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HIi-000399-8A
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 11:25:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MDhth-1jE6uo3jR1-00AjUD; Thu, 27
 Feb 2020 12:25:49 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Raylynn Knight'" <rayknight@me.com>
References: <20200224120605.152672-1-mans0n@gorani.run>
 <020001d5eb15$97c9e810$c75db830$@adrianschmutzler.de>
 <BF9B5E3E-E8A4-4798-B85A-1078A871F6A2@me.com>
 <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
 <37009CB8-2488-459D-8EB3-B31281FD2AD8@me.com>
In-Reply-To: <37009CB8-2488-459D-8EB3-B31281FD2AD8@me.com>
Date: Thu, 27 Feb 2020 12:25:49 +0100
Message-ID: <009801d5ed60$a9d29050$fd77b0f0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFlGfI+W1BrMj99DOKuPZ134QlKhQGfAnWHAWZ2Cu8CR6a+pQLAvtkIqNAdqBA=
X-Provags-ID: V03:K1:ozcXEiH5mxfAWp+OuzJrun3eNbdWzEXVQ6kP26rHZk6DW0LAA8J
 2QagemWqHWO/lsOVRbMek5a+ZcMWKjD6w1oWLp2+F+YWtPwQYq9u8oeNahVCbWDbv5XwOsT
 4gzSGJ7UiqOy4BRuXtP++toH3fO9bvKQasyXJTw5SsbNJQQ1Zn3k5OOG3SbZYLzcYBt1+fi
 FUFDAzv9iel9S5VFk0oFQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aktYqdABcQw=:T2w0IRaONGfncPiqa7CEcj
 LCe+lv3T4zOD2MMZRqzEUem7XVdhp9kxdXVioVBdsupbLO5MQ8bzV8gabjDYPUlg3xV7qNSDH
 1tJX92oy9AGv3Icqb23geu23ISojxToTakCtj0QPSGic0zv3HNQDLPaj5BVF08OeFk8Gcmv9p
 PVQazS7Y4BJ9Ka5wLWCkoB05u4xFHTDNlMVBxqLsIkf6MQlpH8l+Z9rVV9LWPUS2fIsZxy7xY
 0StLEuTfjbWYUPWZumDR5Gu8b9orr90hcexlapO6Blj7neulPmnjGRAxaEsIAlWhqdK//bWw4
 UhIb0H0lQ7AC9YJZ33HARKZWd3OS/V05poHEhnr8TSN0bbMV6vn2kDz2G6hSGwmhb+p+skjJo
 q6yDh6XcTQ+klt42XHetSB2SQR/WEJUZ23nty+5wRE/Eg3P2oz820LiCDoqI5x/G81vYhA+wu
 iouo+9TA/+prPscubZ9s6rkR8j7EE7ctx1s9zmUekj3EvgN6hO5MHk58/szjHgK0SlXKOzbf3
 9dhB+9VUzOS2X8ZS4TiAs0BqmRQ+2XIHPzEUCpvV51QeZ6LQYPuP0hiAVYQosMEHQupPqUgZp
 ks2dcl/4w2n8CocTWquooa7Dl2eOCHHIwIgJIvQbHEFkOu/IVNqVqPr/3JFSNZ6moFrhmTpn9
 b4Wc/5hmbW0a1GngoW9rGiTMGXV1OCkF5Km5fe6NfgN8YT2TA94Wuyx851P68XZcBTruT5Tc8
 RWm2HDaO0/5rm2cKh8LbgUZzp+FfN+T7RbMk03pMOPc+/4/YbWZz6aUqsmjHXQKFgge5j/g7H
 3CDKszlVXnh//XX2oEORqOikvHnQx2iV72po0kJDXe6yrW+AtJSmNNbW2pA2ZM16GwNbQiU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_032556_588331_3A795DD0 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into
 plain DTS files
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
Cc: 'openWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: Raylynn Knight [mailto:rayknight@me.com]
> Sent: Donnerstag, 27. Februar 2020 06:16
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into plain
> DTS files
> 
> Sorry, I did intend the email for the list.
> 
> I actually have an example of all of the devices affected by this patch except
the
> nsa310b.  Would there be any issue with me trying to get the OpenWrt patches
> upstreamed?

You are welcome. I'd consider trying to contact the initial authors of the
patches beforehand for they maybe can provide help or additional insights.

I will merge this patch soon anyway, and will do a quick (partial) cosmetic
fixup on top as well. Maybe you wait for this so we get the "nicer" version into
kernel?

Best

Adrian

> 
> Ray
> 
> 
> > On Feb 25, 2020, at 5:55 AM, Adrian Schmutzler <mail@adrianschmutzler.de>
> wrote:
> >
> > Hi Ray,
> >
> > was this a private message by intention?
> >
> > This patch only reorganizes the existing files in OpenWrt's kirkwood. While
I've
> > been involved in cleaning up the kirkwood target recently, this not even my
> > patch.
> >
> > I personally don't think that upstreaming DTS files for devices I've never
even
> > touched is a good idea. For that, I think the best way would be to contact
the
> > original authors of device support or at least find somebody who really has
the
> > device.
> >
> > So, while I would welcome to upstream the code in general, I do not see that
> > this would be Sungbo Eo's or my job right now.
> >
> > In contrast, it might be a good idea to mention this in the currently
pending
> > device support PRs for Kirkwood if you think it would be worth it.
> >
> > Best
> >
> > Adrian
> >
> >> -----Original Message-----
> >> From: Raylynn Knight [mailto:rayknight@me.com]
> >> Sent: Dienstag, 25. Februar 2020 04:39
> >> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> >> Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into
> plain
> >> DTS files
> >>
> >> What is the reason that these DTS files are not submitted upstream to the
> >> kernel?
> >>
> >> Ray
> >>
> >>
> >>> On Feb 24, 2020, at 8:23 AM, Adrian Schmutzler <mail@adrianschmutzler.de>
> >> wrote:
> >>>
> >>> Hi,
> >>>
> >>>> -----Original Message-----
> >>>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On
> >>>> Behalf Of Sungbo Eo
> >>>> Sent: Montag, 24. Februar 2020 13:06
> >>>> To: openwrt-devel@lists.openwrt.org
> >>>> Cc: Sungbo Eo <mans0n@gorani.run>
> >>>> Subject: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into
> plain
> >> DTS
> >>>> files
> >>>>
> >>>> Move DTS files newly created by patch files to files directory. This will
> > make
> >>>> these files much more maintainable.
> >>>>
> >>>> Patching the kernel Makefile is unnecessary, as the DTS files specified
in
> >>>> DEVICE_DTS will be compiled by OpenWrt buildroot anyway.
> >>>
> >>> I personally see it the same way, though I'm aware this in handled
> > differently
> >>> for different targets.
> >>> This change will just remove one layer of complexity.
> >>>
> >>> Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> >>>
> >>> Best
> >>>
> >>> Adrian
> >>>
> >>>
> >>> _______________________________________________
> >>> openwrt-devel mailing list
> >>> openwrt-devel@lists.openwrt.org
> >>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
> >



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
