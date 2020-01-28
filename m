Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813AB14BD62
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 16:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymQlKJQgt/jgL1+0pPO9zO9KGdCX1g11J6eYq8GOSvc=; b=mQ7E52gLfVCSD4
	ARFh4WBsm9WH7N8VO3efrvSF5YLJZ7yIVYv9j+3oNoOtFWmmUEnegaIMyaplpqSkjA04PSu1TCnx7
	n0HeIqhJnYngw3OKkZnH7/YzU9s08iXhLoezMm/UWtjzKIiZhz2hTTFqp8GzIFre7xXUwsmpJAdYi
	3BEXmtDD4AdTQeguvE4SCWC4a2/SAXtJWR6BCf+lPHLOvCj7smmuu11ZIe9rSxTLgImO5PknKJiVF
	EqFCGavT+oKOjQKe/+Y3HDosF92PJggPzZcybjLgO8R7oqCRh81BkEEGX8TbTgNvBurIuhCagvvdf
	JEwgpBVW6uB/9nRSYByg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTHC-0006UJ-QW; Tue, 28 Jan 2020 15:59:42 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTH4-0006Tm-Kd
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 15:59:36 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N1xdf-1jh2Tb0BBJ-012KWH; Tue, 28
 Jan 2020 16:59:30 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<gch981213@gmail.com>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
In-Reply-To: <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
Date: Tue, 28 Jan 2020 16:59:29 +0100
Message-ID: <00c201d5d5f3$ec9b5630$c5d20290$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGe0uH3YMoujDnAXodp5C7FQpVSGgH5MCOhAdXATn4CkcEaigGcwTU9ArqxLZCoGH4m4A==
Content-Language: de
X-Provags-ID: V03:K1:niTsQcrfP37K24riy3E4hMKOdvRFQ3/2oQHyzwblg202odMgOvz
 2SCWkXlY8uHvSIQ1Mvpxi0y+cuIrmEFMeW9801VMJTCv+s7EvLp61409Hkv5WIM550+U58u
 UxaBYoRcciVqd/EXUBCovOr4rMSwncsoEBNsPdErijTIZlvfzizrSATimumJ4jGJ1Avct+K
 EjSdCFbobrgnShwC8jP5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pIRWSem1XiI=:KFFaaj0uAEMghOqkwddPvR
 yld2MqTiRpaH0JWIgjP9kn9hVhEvZ893j2DSrK55sMk4nhE/jtGlAkpsUhjbQRIvmqoAf2Mgu
 GEYOoZ8zZyyyEMmNsU9EuhpWwvhA8eqnVrftsHgXVspSKjD9YQcYZ4d7TmceEPI7unX4WTIOR
 PbkhDJ3akusGAHCDuRkc7hFKYgROzT7/VrWqdYHNA7zI4neqOYoILLrJqOMF4pMaocz0ZxN+0
 XP2XmiYxmhqWt0okJVbI/TjOMci+e2RTMLc/DMs54jiOxd8+Gryzs/gidEvSQX1QolRtLkxIm
 HyLlABVO9ZH+/xHACwxABAl8d6QsNVSJHTi8BGEijXMmlRbAYPU4SolCJ0nBpjNKDKTqQPCUO
 yTFMZx6NAptP5Fbc16fnTib6Wncz3ijQod+oiar7h2o+X9SclHCz0bTtNeIQoyD3BL0Bos6H0
 ZSb8gtactE8BxoqyAkUIyYV/1J9CUzj8VfK+6zAOleEW5ju3+5NUgbp36GFG1j0OFKIVv1E82
 YK8VpJ100/F7nzDkXbiE2ug4F++zwbMWoc1ki+Gtm2/gsLSFzhO2BbzZ8xGYEzZSJL4niTjJL
 xthAR7pyjWdl96CAkRiBY7IM9psY17wXSU0F/ohC5JTf53aq9QSc8b94kjhepSCHNwpn9yFzA
 8uCquxoIQGidYYYdGnXjIEj9o+84mY5NoG3dGAYNXF4Qy3BelxRCR5YFbT5aveV3YZuK7tg1r
 U0rqBtiYF77neXNyUX2S+ff90qHubi9UKiezu80qL54lGFbeVaTs6shDajLr0he7BlaCr3oKU
 gB/sHBwInsKnzVUG1kQZHS8tuc+8gBeAOOjhArvK+h5y9i2095rTvoGpS+H/Bk+KQwBJicz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_075934_973743_A04934D6 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org, ansuelsmth@gmail.com,
 'David Bauer' <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> There is easy way to check GMACx <> ethX assignment order in mach-*.c
> files. Just check order of ath79_register_eth() calls:
> 
> ath79_register_eth(0);
> ath79_register_eth(1);
> 
> Will register GMAC0 as eth0, GMAC1 as eth1
> 
> ath79_register_eth(1);
> ath79_register_eth(0);
> 
> Will register GMAC1 as eth0, GMAC0 as eth1 (current ath79 "order")

I thought that once as well, but then found several cases where I couldn't rely
on it for eth0/eth1 order on running device. (But it's too long ago for me to be
more specific.)

Despite, from what I understand our current problem is the driver implementation
in ath79, which needs to skip/delay initialization in certain cases.
So, it's not so much about finding out the situation on ar71xx, but
understanding the situation in ath79 as well. All-in-all, I think this will come
down to having to check each device manually.

> 
> >> I have a feeling that the idea with migration script got abandoned
> >> (Adrian?), so I was wondering if there is any other way we could
> >> preserve ar71xx LAN/WAN <> ethX assignment in ath79?
> >
> > See above, yes, I effectively abandoned that.
> 
> Got it, so alternative solution is required.
> 
> >> For example, I have a QCA9531 based device with PHY4 (connected directly
> >> to GMAC0) labeled as LAN (and registered as eth0 in kernel) and PHY3
> >> (connected to GMAC1 over internal switch) labeled as WAN. On ath79, due
> >> to change introduced in 8dde11d521, LAN and WAN order gets swapped (as
> >> expected) but partially reverting above change (adding back "simple-mfd"
> >> to eth1 in device's DTS, see below) brings back the "old" order of
> >> interfaces.
> >>
> >> &eth1 {
> >> 	compatible = "qca,ar9330-eth", "syscon", "simple-mfd";
> >> 	mtd-mac-address = <&art 0x6>;
> >> };
> >>
> >> But it doesn't seem as a proper fix to me (maybe I'm wrong?) thus the
> >> question about any other, better approach?
> >
> > That's how I feel. For me, this always looked like a hack to me (based on my
> shallow level of understanding, though).
> > There might be special cases where this is necessary (e.g. force a device to
be
> eth0 due to failsafe), but I still do not like it.
> 
> I was considering also aliases in DTSes.

One could use that for failsafe (actually quite an interesting idea) and for
specifying the corresponding ethX in ar71xx. However, this still won't help us
with the migration script itself.

Best

Adrian 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
