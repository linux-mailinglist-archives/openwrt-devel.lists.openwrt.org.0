Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23252207D6
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 15:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oexpZYMhbg7FGWe8nT9D8t4HcO7IyCKqnLOWl2eP35Q=; b=agZKB+dw0A81ruGjNy7sVmQVUM
	piOLSy5p0I9rlGmrp1+SvL96eUAgYiDK04kyroynF1h1ggUudm+uNAZWnzHhXoK/5Hob5XQWOkmQq
	/xSVjjPdhJ+9uOpAj+p53lZaqAmbmFrYk7jjS9NuXHEyprdEJ+hs3Ho3QYeLPovuiuhZkWVzaVUYx
	p5Otd4/ET6D1MJDL2bI1nfPhajMQhDLYGL70Zvq7SYb90g1e4I0kITwPUQ8/6u2qfd6Nb0iSQQ/G6
	sG/vycKRux3gcTuTLE3BlosVgGOpvyWJfouwZWK9Pjtti21Rkt3bOsMuwvo9I0q5A4iakhrRLIgxI
	KzknUJ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGGi-00045o-6N; Thu, 16 May 2019 13:17:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGGa-00045N-OP
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 13:17:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 21C894BE4;
 Thu, 16 May 2019 15:17:46 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 78bc7434;
 Thu, 16 May 2019 15:17:44 +0200 (CEST)
Date: Thu, 16 May 2019 15:17:44 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190516131744.GF63920@meh.true.cz>
References: <20190516130231.31513-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516130231.31513-1-kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_061749_011951_D9F89538 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for ZBT WE826-E
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-05-16 15:02:31]:

Hi,

> The router ships with an older version of OpenWRT, but with a broken web
> user interface. In order to install the image, you need to SSH into the
> router and run sysupgrade. The default address of the router is
> 192.168.1.1, user is root and password admin. Once you are in, run the
> following command:
> 
> sysupgrade -n -F
> openwrt-ramips-mt7620-zbtlink_zbt-we826-e-squashfs-sysupgrade.bin
> 
> Recovery:
> 
> The router ships with a web-based recovery system. If you need to
> recover the router, keep the reset button pressed during boot and access
> 192.168.1.1 in your browser when your machine obtains an IP address.
> Upload the firmware to start the recovery process.

it's not mandatory, so you're not obliged to do so, but it makes me wonder if
it would be possible to generate factory image which could be flashed with the
same recovery mechanism, thus avoiding the -F in the sysupgrade above
(considered dangerous).

> +++ b/target/linux/ramips/dts/ZBT-WE826-E.dts
> @@ -0,0 +1,83 @@
> +/dts-v1/;

Please can you consider adding `SPDX-License-Identifier: GPL-2.0-or-later OR
MIT` ?

Otherwise LGTM.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
