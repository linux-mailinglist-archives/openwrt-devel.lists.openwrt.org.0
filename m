Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47382A12A4
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 09:30:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i4dVQ1JbPxtpIIHsW6+9MsDrE7umYkERmR6xtRGhhxQ=; b=c1EoneD81nh9va+es4rJxZEq9
	HMQVOMrVn4yXiD6LHQEL6fLkeR5567/G17WmGcPDom3V8ZUtaguuPysTAJWlh2XEjQWK/gfORHlYH
	DLa2SDGWJPR01dzMuOso0JezDOtOaNqC7WwvVoNZTWEcqtpYcCf8Guqw2RKU1T8AGScJEXLkAGStS
	pnioYUdRQZUsKsgMqx7x2rx5UDTMuPImyWiPZYCMHdYP2LiDi3QOnQ0oq0tmnwWRlpANPt5ekU22m
	zk1tRrJhsgdCDtexfxdeze+aLBttE4e7iOFjOhig12hUq0dHlVgqMJ/g7DRm9LaqblylF4dIMVieD
	Im2r4OQDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Et0-0003nf-IR; Thu, 29 Aug 2019 07:30:26 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Esd-0002vh-1r
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 07:30:04 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 33AC1204C2;
 Thu, 29 Aug 2019 07:29:57 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 29 Aug 2019 09:29:57 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: sami@olmari.fi, nbd@nbd.name
Organization: TDT AG
In-Reply-To: <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
References: <20190704113537.22078-1-ms@dev.tdt.de>
 <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
Message-ID: <3a1da3051d2e1736423f7e4ada4acdfc@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_003003_259319_06222A83 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: Re: [OpenWrt-Devel] [PATCH uqmi] nas: add --get-plmn
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
Cc: openwrt-devel@lists.openwrt.org, bjorn@mork.no
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-08-26 21:12, Sami Olmari wrote:
> I think the ideology behind proto handler there is to "do whatever
> told" despite of what the state is currently,
> maybe there is a reason for such behaviour (searches some stuff from
> network etc).

There exist 2 problems in the qmi proto handler:

1. Setting the plmn to 'auto' will implicitly lead to a (delayed)
network re-registration, which could further lead to some timing
related issues in the qmi proto handler.
Let me explain this in more detail:
After successfully calling the uqmi --set-plmn (auto) command it takes
up to 5 (or maybe even more) seconds until the modem detaches from 
network
and start searching for new registration.

In the meantime the proto handler goes through the next steps ("Waiting 
for
network registration", "Start network $interface" etc.).

I hope you can see were this leads to.

This is really a problem in Roaming scenarios, where to provider maybe 
is
switched after the re-registration.


2. The plmn setting is permanently saved in the wwan modem:
This leads to the problem, that if you switch back from manual plmn 
selection
to auto mode you have to set it explicitly to 'auto'.

- Martin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
