Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F5D1FAF7D
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 13:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r00RnlIRcDZJ641ITMYy6xjnLxdsk+7qOE+uyxuHjL4=; b=P9k9sGjWWQS0uwVZrXzNya/eV
	G+v6ZT3elQRv9YNDn6Rp3mQi5HOL+0GSf5Fg5vdVmNyS29VlyZv7sgepawoEJ6bOQhxOA1EG2qd+y
	tubW24pRau+tFsliaWNbY9qiRAU0cdKri8T43OaA52o2H+R+MtYT9PMx8QOEVNLD1uoASFxj7AuTC
	/oCDD2f9kyfYFGmfj5rzqgTYcXm7/wkbi4SsvgmfemGb0F4g6ELqV7FyT9nHH2JPG7ZU67Y+RojDl
	8thV0b0etr4q6IJrkgmb8WOk41qXVzSmpIlVA0KgNE1W4gZVbIykDSS+Ace9usWF1o3OTcJu0mKqK
	IRbjl47/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlA4P-0006So-3U; Tue, 16 Jun 2020 11:48:01 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlA4H-0006SI-OE
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jun 2020 11:47:55 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 3F112208E4;
 Tue, 16 Jun 2020 11:47:43 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 16 Jun 2020 13:47:43 +0200
From: Florian Eckert <fe@dev.tdt.de>
To: Openwrt Devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <ef62f1e9dbd3d444557a47d687587bd6@dev.tdt.de>
References: <ef62f1e9dbd3d444557a47d687587bd6@dev.tdt.de>
Message-ID: <85fdf49f58b7c9270144620d9a99dfce@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_044753_940640_9079B5E0 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] Conversion issue in lua ubus binding
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
Cc: "alin.nastac@gmail.com jo@mein.io" <Eckert.Florian@googlemail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> I have recently discovered that there is a conversion problem with the
> ubus lua binding.
> I think it is due to the following commit [1] from the ubus project.
> Can anyone confirm this?

I removed the suspicious commit [1] from my build and did a custom image 
for x86_64.
Now the value is displayed correctly again.
So I can verify myself that the change for 64bit platforms breaks the 
lua ubus binding.

Best regards

Florian

[1] 
https://git.openwrt.org/?p=project/ubus.git;a=commitdiff;h=171469e3138cce191892e20b6fd35b52c9368064

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
