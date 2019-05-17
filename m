Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0BA21A22
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 16:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIa+vSrOzmy7hNmZCCH3SxeiMsszcJqfcTZaFpjuXYI=; b=jIN9TPALI/mLuu
	ERIwmNmWJj8UKzvKrUEWjAHJaKSi1p5Bi8Ux8hzwpWGR6VLpoCZhKUoooTpDBqYjheHRC8tRiE7dP
	0DcMbgaeHFJMpb368z6OrHr6KXod1ZzwX094iFSyFx1cTsKQXnb47M5wx6nFLkr2CTfQENFnrqvxt
	NsaVZk1K0NcFzYPQm61MSG9W5o63m8urHQr7nl7e1PpMF7qpTCZyxtWNdzFFo3/Cmu7ll0p6iUEZV
	rtIw+gQIn0KVfS/hhMRqH1rrIo9Adw/3W3sP+8zYC5pDnYgm2dGUFskV007cFvfzqCq0c5JSndZvI
	KGYNLel2VUOZ65gQ5k/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReJG-0001vi-Ns; Fri, 17 May 2019 14:58:10 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReJ8-0001vL-Lj
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 14:58:04 +0000
Received: from localhost (unknown [172.20.6.135])
 by mail.nic.cz (Postfix) with ESMTPS id 214E9628B9;
 Fri, 17 May 2019 16:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1558105080; bh=UofY+6xheFKUgGqOuofaNyJY7TqGRfOZvD/CQSMAjfk=;
 h=Date:From:To;
 b=RWwTw2QnN2S4iwEIAqgc2YGP1m96Rv/kmflMWuR/OVTWwpbQrzpER1jcdv+H9jWOg
 5RSqZmvOeA58na/HVLya3FmE5IBM8upjYlVYRo5k0spSfC+m3n+pVx/BFAE56/XgLC
 Iz3BIQPf9yuOg4nJ/cNzUmQCATz5S9YnDC93Njho=
Date: Fri, 17 May 2019 16:57:59 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190517165759.1dcac626@nic.cz>
In-Reply-To: <d24f7039-d62d-f42c-8889-25b514ed932a@o2.pl>
References: <20190516183828.15647-1-marek.behun@nic.cz>
 <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl>
 <20190516234157.68c7a78f@nic.cz>
 <d24f7039-d62d-f42c-8889-25b514ed932a@o2.pl>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_075803_006697_8FA115CF 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Add support for kernel 4.19
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Jeremiah McConnell <miah@miah.com>,
 openwrt-devel@lists.openwrt.org, Marko Ratkaj <marko.ratkaj@sartura.hr>,
 Michael Gray <michael.gray@lantisproject.com>,
 DUPONCHEEL =?UTF-8?B?U8OpYmFzdGllbg==?= <sebastien.duponcheel@corp.ovh.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Ryan Mounce <ryan@mounce.com.au>, Russell King <rmk+kernel@armlinux.org.uk>,
 Rosen Penev <rosenp@gmail.com>, Stijn Segers <foss@volatilesystems.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, Imre Kaloz <kaloz@openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 17 May 2019 16:08:25 +0200
Tomasz Maciej Nowak <tomek_n@o2.pl> wrote:

> Thanks for the explanation, might give a clue where to poke at if setting gen1 will
> not work anymore, and for pointing to Miquel Raynal patches (should have subscribed
> vger), will test them after they'll appear in next or earlier if time allows.

They already were on next, but were put away because they depend on
some clk patches which were not yet accepted :(

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
