Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C80F314A9D6
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 19:35:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtICXkDaRRa/eGRe4cBlZxHxDbe2I+vqC4+VnSXmPmw=; b=uz/KrWJlDQGnph
	VO5JxgVMZZVo4RodcpXziQ3hulLKzGq9/r3xm7/EG69kipZ7bZiFWPlSk2GOXgeS46gLNVPKqaL3o
	zF/nkSvm2eeh5lVbeSjK4k3Pqn8mnBmk9aqqYHnao+lKX2ih8IINxGw818lCnTSB4WWP4l9nSLJsI
	30zHuTHNOKcjwRjO0HbREIU1ZuY4KMfvYEXp7xScummT9KS8k38OYHljjGK6eeDP7uhScIUmd0dJZ
	OG7UvCWb83WUijYtDiqngHy7Q9shltTrUDJi/DvRT1MU7p6VTeszHYHOZkKSWKWtNj3TUX6ZcyXjX
	p1yCf6Nvs1z0ticsLCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9Eg-0007OX-0N; Mon, 27 Jan 2020 18:35:46 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9EZ-0007O1-Fq
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 18:35:41 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N8XLj-1jiSRx48nJ-014RSL; Mon, 27
 Jan 2020 19:35:33 +0100
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
Date: Mon, 27 Jan 2020 19:35:32 +0100
Message-ID: <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGe0uH3YMoujDnAXodp5C7FQpVSGgH5MCOhAdXATn4CkcEaigGcwTU9ArqxLZCoFxdTUA==
X-Provags-ID: V03:K1:VZIvhhHEypt4qvGWx9JocllA7D6zxIck4rBX9rwB5OyDbCb/gxz
 pzQWDbGQaBdn3nSN7cs9S6I18ZAJLcxQyIG2VN7qx6PUCWwwV9EAFHSwRQmw53qvMAl/8pk
 Au8KqCSne43zLHJIdRpfuJXk+jXvo5SiHPathcumGUPCbKY5x7TAcyAhTTAxD3FHcgEdNP/
 moqaCbgyoMwfhqvW26Axg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dqbmcxRzxZo=:pQQyj0ZRRccaM4bCzlq8+r
 Ek0+/1kMMkm5mcOi79V6DmA0W/S1Whlsqs2UiRM51TEnqc7dowp6+/eFhwALzvKmI1MaX9gdG
 BurcoJ7qXVyAALo1gem8pxISUz18Z719MQ2sTHV9Z3rUn1hkCblXhIUuNoLEcDbPXeE/0ugx8
 yuq1c2w2+bGpr3WGDZYGgbobssJ8Y8RQ09bkOj3jXYlzAKBg6zq1IACiYW2YBYzlNVxKFsTnx
 MhC5WzKD2W6SpPl03c6UCj0dJhj1ab1hEoRTsWSKmNqhJtO8OqTRlQGDd2eHjpDcg0LcCiNzg
 uVtUR2/3UbnTVeUCG06gg490G6SG4BOxC3cdSj19O2+UX0AFCICbVgSfOV8LOz5wCL6to6XWO
 sua+RDWGf7wlXRa/KEeiM9cDvrwLsevUaEwFtHKhx3Qsx0vqVoR0h3CanIIf0KaCf+FzRPIeq
 sxJS8CVLyNfl1YXlgyTtuY47dbunSFyUBBj6xj4GiF46tgPr3KEMN0MHeb0/NMvsUL9+Xiu3v
 zaMsMvm6uBanjPFVj6UA/a+U0nH2rXsRPK9NHO1Vp8aGc2Cjh7tuVluebL1mjWW3MLdp6HzNz
 2GtZUoKuSdbhbE9u/mZm10sT4QEYggCXot77dqbYR6F5Jbhu60xuWq+a774EHU2LHQd3jJxW6
 NtSKkrz4p43KEsRZIHavmxdWoq7r0TcezWTtyB9d8RJUlhoz6OyrQd+7qhN/dJel6xsORh1P5
 OLWQf0/kwg///3XGJ1bZNjW5ankSdehnccs3JkaqLWURtz4QepcC7ZVRa5uuYleHOA0Yt7G4F
 V2BWgPtC7F9dVqyr5pOlg3pX6FHyknI7rdr9QKEUUik6yh+ySZ6qLIeY2BVLxMz85mfPTrz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_103539_819676_CC8CEAAE 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Just a quick one:

> > So, no matter what we do, there is no easy way forward.
> 
> We could remove all ar71xx -> ath79 migration helper scripts, ar71xx
> board names from supported devices lists in ath79 images and make the
> target a brand new, without any concerns about soon-to-be obsolete ar71xx ;)

At the moment, I'm actually mostly inclined towards this solution.

However, for me personally SUPPORTED_DEVICES was always more a "don't brick entirely" flag, so I never expected it to ensure 100 % config compatibility. More like preventing me from flashing ubnt,unifi image onto tplink,wdr-4300-v1. This impression might have been wrong, though.

But as mentioned by Ansuel, there are other incompatible switches to come (and some are already waiting), and unless we want to create new targets or rename devices in these cases, we have to think about different "levels" of compatibility anyway beyond ar71xx->ath79.

Best

Adrian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
