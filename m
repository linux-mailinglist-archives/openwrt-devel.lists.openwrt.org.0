Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F67CB5A7E
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 06:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eEm2PR0cKMIt5Dycy6XITXBUoQqucig0rRX2LlvY//g=; b=tz8ZKMMKmmpv3J85lZKX+LLC8
	47JzXmKdFb5KtnOESkgHilT8NJqOAZPO+yjbzE4ZljLdDO6Af0MpucioFU0sp3MQXtN5VmI7A8iQC
	gMSN1m+0wxOjgY6qKQQ2GCKelN1byPl1PDWCWI6QRC1/DGuyk+GCVvly4mLGfaK31nlShDHYok5DA
	Em46aWkiUm4lnooPfaYycd7FkATksZJdBTfGbCF9YTyTEJLoR8jUZb3u4dTSHncF2MLYQfHzdL2Hq
	sN/kdL9U7H7U4LTGhz+WENBY9O+xKU9fjgFLOepgK8yAUpy+IanUMJ5ALQtSYLkrqdHuBrFH6FN6U
	s+ejmN4oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iARqD-0006WU-Mi; Wed, 18 Sep 2019 04:45:21 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iARpy-0005GR-MS
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 04:45:09 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 7E1D820732;
 Wed, 18 Sep 2019 04:44:50 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 18 Sep 2019 06:44:50 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: Hauke Mehrtens <hauke@hauke-m.de>
Organization: TDT AG
In-Reply-To: <12bbb7d0ba2039812cd9fa154a8080d5@dev.tdt.de>
References: <26a9b03930d8b13ab11d66f654976619@dev.tdt.de>
 <CAFBinCCEveoA3nFyZEqg4XLoe_pzC9Fz=OTfugOyMQoKmqBetQ@mail.gmail.com>
 <d630be45-4151-05bf-970e-049795ff58d6@hauke-m.de>
 <12bbb7d0ba2039812cd9fa154a8080d5@dev.tdt.de>
Message-ID: <0d80e2590d12713f488121f6dde198e0@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_214506_896272_A2B16295 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] Lantiq xrx200: Access to ethernet phy registers
 (MDIO) from userspace
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 openwrt-devel@lists.openwrt.org, john@phrozen.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-09-17 08:51, Martin Schiller wrote:
> Meanwhile I found out that there is a mechanism with swconfig to 
> configure
> the link attributes:
> 
> https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=6219b3deae1c8dfbf405f5a701d3f3b00ebacce1
> 
> I will try to integrate this into the "old" xrx200-net driver.

I've sent a PR where I have added the set_port_link feature to the 
xrx200-net driver:

https://github.com/openwrt/openwrt/pull/2421

Martin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
