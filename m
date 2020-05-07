Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1A51C81A4
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 07:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z/JHVclYAshw3sMlztcYMRspL0rHsFT5TRpoJ9DUjQM=; b=LTB+xghew0N1etwmxdxRZ/Uq+
	IzeIbdGHN71Vx5xJnlR6TgWjf2W8Nda44TRKrfMVeAf3v8Hv4tcJd5gIIk5Pg6cRuHyt/CBCFWYd8
	iODU7xfNn4EDSimu4gYruEyg1nsLjhKD0r4F3rEItbajCWeGYKllxdX1QmBW59E8PJmy8aIhmSu9h
	tOnP3hpjtn3/l0yUgqkYYEtuPS3FwjN613sIj8SNQplZRhAhWRmvj0ij4SDuIlAsDZf7He71VrFs+
	luI7dBKpvOm2pVs1KUZLt6QH0X3roZI5nQFix4i4fQqBnGo2C2t7oYwhWryNGf/R3gbL+FVjbb+hg
	xJqfOq7gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZFu-0001T2-50; Thu, 07 May 2020 05:39:34 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZFo-0001SH-A7
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 05:39:29 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id D293D20F82;
 Thu,  7 May 2020 05:39:26 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 07:39:26 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: Jo-Philipp Wich <jo@mein.io>
Organization: TDT AG
In-Reply-To: <fafbf36d69f33eb2c5ed323337134753@dev.tdt.de>
References: <fafbf36d69f33eb2c5ed323337134753@dev.tdt.de>
Message-ID: <f1c8852d02d8b622ca96904249a0c504@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_223928_498791_553429BF 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] problems with virtual sub interfaces in
 firewall zones
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
Cc: Openwrt Devel <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-05-07 06:47, Martin Schiller wrote:
> Hi Jo,
> Hi all,
> 
> I've encountered a problem with the change you made with commit
> 64bb88841fbc ("uqmi: inherit firewall zone membership to virtual sub
> interfaces") which was introduced to fix FS#2122.
> 
> This change makes it impossible to move an interface from one zone to
> another without a reconnect of that interface, because the related
> zone is stored during interface setup and fw3 will use this value
> even if the parent interface is already in another zone.
> 
> I have a case here, where the target zone of an (wwan/qmi) interface
> is decided by an iface-hotplug script on an if-up event and i don't
> want / can't reconnect the interface right after it's coming up.
> 
> Is there a possibility to get this working again?

What about storing the information (name) of the parent interface
instead of the zone and let fw3 dynamically take the zone of the
parent interface?

> 
> Regards,
> Martin


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
