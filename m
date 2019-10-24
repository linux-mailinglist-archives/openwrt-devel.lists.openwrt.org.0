Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E2DE321D
	for <lists+openwrt-devel@lfdr.de>; Thu, 24 Oct 2019 14:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+erMrZEToI137g+m5WTekgUw0sHyK+t7pcfx5zXsYo=; b=gdlImpcbbMVex1
	1ZKRRxSOmFMLfRWhDRTvASFHGzQyEtR7xYtUxpbvJ/pNfYGhUAH0P8NmpBg5TdnanvaBDktANNtY5
	s6MNyKQhz5+JeQqmyM1hsXb1Rupzdr8suSGdLyaRbb+7nuYNizrWPc0UaBdv7u/SnCh7bauboJQeW
	FhvIRzV68BDC05oJks8oXfJI3OtLNxFDgJBBAf86YcMyWvSpLxG5D6zWfXZyV+O/iKMnFvzI3RMzg
	/u/zG6a72PFUgwRjUh24Feqk6jhXxJuuuukvhc87mY9RnxQ7xkDxz/tjFIhZqKs14ciorMGTBOX0X
	BxQUQlWdfj94lcwmHAIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNc50-00076q-5W; Thu, 24 Oct 2019 12:19:02 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNc4s-00076B-3d
 for openwrt-devel@lists.openwrt.org; Thu, 24 Oct 2019 12:18:55 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iNc4j-0005Yu-5V; Thu, 24 Oct 2019 14:18:47 +0200
Date: Thu, 24 Oct 2019 14:18:31 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Jo-Philipp Wich <jo@mein.io>
Message-ID: <20191024121831.GC1252@makrotopia.org>
References: <b247e681-6f9a-5e3d-2744-ee5bdb460d1d@rapiduswireless.com>
 <5b5d8f6a-49e9-909a-4663-9ae2555a281a@mein.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b5d8f6a-49e9-909a-4663-9ae2555a281a@mein.io>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_051854_152126_7A8B97F6 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] How to trigger wifi reload from wifi.lua
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
Cc: Nick Dennis <ndennis@rapiduswireless.com>, openwrt-devel@lists.openwrt.org,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Oct 24, 2019 at 01:21:56PM +0200, Jo-Philipp Wich wrote:
> Hi,
> 
> > On the Luci GUI, the current behaviour of Save&Apply of changes to the
> > items in wifi.lua and wireless_modefreq.htm is to invoke a network
> > restart. I would like to to change this behavior to invoke wifi restart
> > directly from wifi.lua.
> 
> This is not supported and will confuse the netifd wireless state
> tracking. You should instead extend the netifd wireless handlers to
> properly deal with updated values.

John and me have been working on this in the past months, I'm now doing
a final round of rebasing and testing right now.
Take a look at my staging tree here:
https://git.openwrt.org/?p=openwrt/staging/dangole.git;a=summary

What is new here is that hostapd and wpa_supplicant are running
permanently and offering a ubus interface to add, remove and modify
wifi interfaces. netifd and the scripts previously wrapping around
hostapd/wpa_supplicant have been modified to make use of that.
You can easily test it by modifying the wireless configuration and
calling 'wifi reconf', changes should take effect immediatly without
affecting unmodified networks.

Currently, there is still one instance of each service for each
wiphy, however, once things have been tested a bit more, we can
reduce this and use the same service to manage interfaces accross
radios -- this should already be supported in hostapd/wpa_supplicant
right now, however, we intend to change things one by one to make
debugging easier.

I'd highly appreciate all reviewing and testing of our changes, I'm
planning to merge them into master at the end of next week after
posting a comprehensive series on the mailing list tomorrow or monday.


Cheers


Daniel




> 
> 
> ~ Jo
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
