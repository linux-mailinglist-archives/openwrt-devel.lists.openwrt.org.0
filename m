Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A8F15A8FB
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 13:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odRYPmd6qQIayn7xMzzSA8+CVNiMblEcvgeCHExGW84=; b=FyZGD2s+zjfuy/
	99MfnNwkzKEpjf5G/kJF1MDTUcwtUXD+NeglE5uuVvXuBcuW0Wd3U47g1Gg+s0GM72U50hfhE93Yx
	JcF047IixzN8q/B2IfkCHWWSsILbffp1w4v9gG4n2T3tzfrenC4cus7Kzuii0x/0DDp4MS/mIrn5N
	wwE7fxW1lBs5S+jw60Y2R870mv2VQYU96E0jtF8oKqbdgxQDpvWk2UcQ3a5fdwZpdw31VSSguq5ee
	FzKeWEhcEJy7pGmaI0yXxWBO+MTepWjPqZRzO7iA31JvZquPt7FrnAgx7BVp/RyIY/dKKoiFJ5EQ6
	tgKasIKDJm5QgSYo+o5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1r0i-0001ms-Ah; Wed, 12 Feb 2020 12:20:56 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1r0V-0001lU-Pu
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 12:20:45 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MbjBo-1jdeX514Ig-00dDFM; Wed, 12
 Feb 2020 13:20:37 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Alexander 'lynxis' Couzens'" <lynxis@fe80.eu>,
	<dwmw2@infradead.org>
References: <20200212130136.1d350582@lazus.yip>
In-Reply-To: <20200212130136.1d350582@lazus.yip>
Date: Wed, 12 Feb 2020 13:20:35 +0100
Message-ID: <00a101d5e19e$d50a92e0$7f1fb8a0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIuAwLeHx5DpbqYoYq/fpTZ4oXFk6dnNmlQ
X-Provags-ID: V03:K1:w9Fr/KT32QXusu3GDKA9gA3nwhu6s3nei/4b6zoAeVGda5K0vUI
 98orMU3paio6z/EJqFuWBqAtZl3YzOv0CTZMLIaYW9TEwr8NsvuIKJXSGDBROt0/yq+5YT9
 UVSbyq4FMl2MShbEU2NVmJurUEftJNNm8AXJdFhf+KOXn2QC/JJsvz/stc8eAot8i3JP+Lg
 6qZytwJY3LDwHPAuPWc6Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xeDwh7IqgLk=:tI6eF3cS0LS7NsKFu9PTcZ
 JSdc4bvJlx/Bs8p55rcUBKG+ICs2YcTcs2VMpTUbN/GomCey6b7eyXVY1rTZlazsz0ILFTASu
 lu+Rb1ie+/JqGnS2dY/Rw/UwJvEV60CrirS10Sqr9n5R3MyxWyyM8TC2evCFoNos+MmL/z2UJ
 MoJpIUJ3qVZSvnZNo9HQVe4ZIQwd8g+7JGpRyxsZSC3vj/xb1MxVhyN1i0lOik1qWbBndw3LB
 mt5Op4hld88F7Y65PWPXGgZv6nROqhV6YM1nMt0yRGE2oKzYeALuJW0JgglJbMa+oXXuNOng8
 myI6gUDqb1Uj9jeVPOXnSHBLy5tvP4ghK8plA776EuBo4IU5Vof8QH+fgDXg/sks8ECqkZuW7
 LkRy4kNVsl1LQvN4pZpfsPK8w9E/5VO/lGFom4UJ4UzhxvDp7eM6aWIZNQDabIzDKEQU3IZH0
 xqRw/BGGrvkGxTr0w9VBMgCXslq8OPugNBmZyWqPbK60EnnhBB+5uqs9pnxf9S7GCAj75UNKv
 dxxRwaJmkr4uSA4kGkMVxWDfgfva5aggIOaOMm8F6Y28bcMmw6yK31+2orP76ZDU+CKts4ihh
 cIil8r/QzqueVolpF48zagSHLuyF4KqKKX0GOx/ByooIs263CAZtEhwDEEgf9giE/u6mGiUJc
 7KymlcVCK+LIkSF1bXE2Zhl6Bm70DJcWM/7O3frnXLrlQFeft4K/ed/9oGLUqKadvbnOvy15H
 /otWGQzAMBj81BSVvPzwRbJbWk/85XaAWfzTRh5F4eb6+ixOkNM9Yo8+af7e/4lQwdb2gPqrF
 Pn4q8koeQEfRkqnE7zu9hsdEtA4clvU464b+K2Zfb7gJcc4BzKfaFxe7ZBSxH6PHtYCaU97
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_042044_135795_228679F1 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] jffs2 runs into read-only on low memory systems
 (5 eblocks)
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Alexander 'lynxis' Couzens
> Sent: Mittwoch, 12. Februar 2020 13:02
> To: dwmw2@infradead.org
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: [OpenWrt-Devel] jffs2 runs into read-only on low memory systems (5
> eblocks)
> 
> Hi David,
> 
> I'm currently working with low flash system (4MB flash / jffs2: 320 kb,
> 5 erase blocks).
> 
> Some of the systems seems to run into read-only mode, while most
> work fine. I've around ~50 devices which is less than 5 %. My devices
> runs 4.14 and ar71xx devices.

I'm used to that with OpenWrt-derived Freifunk firmware (non-Gluon), based on
4.9/ar71xx and 4.14/ar71xx.
Same low probability, though I have no numbers.

I have once tried to find a system in when the read-only occurs and when it
doesn't, but I failed.

Best

Adrian


> 
> I would guess the garbage collector triggers to late, when the last free
> block has been allocated and moves itself into this situation.
> 
> Are there any tools to debug this? Are there any tests tools available?
> I've dumps of the broken flash.
> 
> Any thoughts how to debug it further?
> 
> Best,
> lynxis
> 
> --
> Alexander Couzens
> 
> mail: lynxis@fe80.eu
> jabber: lynxis@fe80.eu
> gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
