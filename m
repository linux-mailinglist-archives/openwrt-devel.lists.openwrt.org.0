Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CC21136B5
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 21:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WU47k18jh/bsilcSNGawnC03aZi3e+VBLXS9oWRU7PE=; b=XdunAaShEZQHSj
	wY1mEatqxz6ra5H+1+UEHeuZR+gPLI4VBhYdIV1gm+XN4E1etBpmqlelcwhegXs+ODs43nAo/MgqQ
	oxIejKUgZhw1ScYTWXXehrHr0ywwqUhhPT/yGIwyYT2eHuJbPw0OM7XsNcZ28Gpx8VzChIZ5ezb0b
	IziamcGkVAAGAE+o+KwxXJ5XWU3RfMo7jA1Riewo1WKlBmZnR+p5/pAUX/MgkTmkyKGB24d8oMEf7
	EeIyyR1EQb519DpPByyH8iIg4WenjvHpxtXsSB3TEIbAu7JwacAhfBOcYXYVefHAwlm9IEA21IjQN
	AyY8mprIy70SOwCjhZ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbYR-0003uy-Mg; Wed, 04 Dec 2019 20:47:23 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbYJ-0003uY-FW
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 20:47:17 +0000
Received: from acer ([188.193.231.72]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M5fdC-1ifKJS41oQ-007DlD; Wed, 04
 Dec 2019 21:47:01 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>,
 "'Tom Psyborg'" <pozega.tomislav@gmail.com>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
 <20191203120930.GC8181@meh.true.cz>
 <010701d5a9d3$92f3c320$b8db4960$@adrianschmutzler.de>
 <20191203123144.GE8181@meh.true.cz>
 <12d89195-b1b7-5f9e-52a8-5411ad142733@linux-ipv6.be>
 <012e01d5a9d6$c03434c0$409c9e40$@adrianschmutzler.de>
 <CAKR_QVJJGjHrwj=vE_UkAi4YkKQYLarJgT250jCJ2zTQTxfRsA@mail.gmail.com>
 <9fe127a2-7707-c352-c669-11570377f496@linux-ipv6.be>
In-Reply-To: <9fe127a2-7707-c352-c669-11570377f496@linux-ipv6.be>
Date: Wed, 4 Dec 2019 21:46:58 +0100
Message-ID: <004f01d5aae3$fa4bafe0$eee30fa0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGTXJoeUjZX+dYvmEdnKnqdj0FkCwKX8CklAfcicwACX0CtAgH8zkFEAh5HiJMCJvYM0QH4GIa3AjR/J3sC6hZk8AKfnTrxp3fZTMA=
X-Provags-ID: V03:K1:QZ8s9G86X9JksgaMiZ1Q2WG4d8n4hu7QdsX8dJobHQLO6Qr7wfx
 A/hicPjOXdubHZLpYJUVRccZp2hEmKigBGcYe3f/bDNojVOeOMunM5Z7gw2Tf/gXYRA2W2N
 Xm1VCQM0f3rrLwwO+PrEEAr5GAyKzJrv3ftcn2aGyV6usSwKUOHgiDQVMozAqUBjBixYkA9
 kraz/Yw0a6rLWziGrCucA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CLmt3eP8ab4=:gI6wA56+pB70JPWiiRUmPW
 Ufa4GbfV8TpBLbDDO/iEEG0+EaWpp2oH6hMAWqA2A207Hy3Nb09HpXilXMIlUNPmzazx9UPRk
 Ure5lgCKwxxT6wRTBu72uPGVT7+Q3QaQBAtd86T543UAOeb2IEO2bSK7+ZRs6Sf4kf/itbWTG
 dLjYsL7TfTT7ICT7Rd+yZomibd6tFHW1hDeYUMGhkC7n9oaYpSD3gur10x0MGZNPjQLVsO5J/
 u7J6xenfWsf2Xt7JrgTsJRQvmVygl3fGn/mRFjfwUkLKYq9uscVCR21kBEkfFY2lGA04lwEm/
 NQfk2HdBY1Qx3ZPUsxhCpI85ZZ5ZsDhuMYoxbWrE91ZC999gcqm1nVq42YLadc2DOFoxTSGWy
 Zw26P/MlIrwCfOoAxnhDiF9ggZeRSeY+VIs5/ZINRpsTkPK+XMGbV6qeP+0MIDbw6PXKFsSuD
 wVCaNhOXk+NZI3fQAqAr3H3Dkrv8LHi/9lnYjjhPc+Hli4epUZyIjKBnzs+tuy1F3bFr4i2Wr
 4uyMwseY6v8kTOsN5LPDWbUkwaAIx+wu7tlx/k1deXhnhlVYM5jb3RXHOaFKoI5cyyQ31SXef
 pWwi4PkxWcg3AOpsTxBDI36yPKvlTnxhyxnlIYPvUmHFKfh+8cdH/orU3XQgPhonYk3nLvvsS
 zo6Y/T0sEkBEEW6o+d9vXFRmabhFzIL8qAZsRd7vS3zlwwCi+36PEDCmOxiOPET8MiD0rECcy
 wgUkozdyYX0KH6BLVhyrBLfAgelH081HfhUJCQgkU4flpHQpwEN9Twg/XOuzTS9gjgLYRnCEr
 yFftpK5MJE2Jut82kUZhXujrq2sA9gpq+O9ec68SQEur5+AvsC9AJmCPYpLKFWvRjPEVIPWOD
 BP8H9MoYH5nzL5dfIW23sqLWSwbdNZbPTPt1q8KvY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_124715_813125_E9F23821 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: =?iso-8859-2?Q?'Petr_=A9tetiar'?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Tintel
> Sent: Mittwoch, 4. Dezember 2019 14:56
> To: Tom Psyborg <pozega.tomislav@gmail.com>; Adrian Schmutzler
> <mail@adrianschmutzler.de>
> Cc: Petr =A9tetiar <ynezz@true.cz>; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
> LiteBeam AC Gen2
> =

> On 4/12/2019 15:37, Tom Psyborg wrote:
> > Current changes from Stijn's branch look fine, I've applied them to
> > the master clone from Dec 2nd, built and flashed; mac addresses are
> > correct, ethernet is working as well as both wifi interfaces.
> >
> Can I get some [Ack|Review|Test]ed-by from you guys?
> =

> Thanks
> Stijn
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
