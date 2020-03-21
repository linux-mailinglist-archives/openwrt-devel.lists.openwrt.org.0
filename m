Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB9818DFA5
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 11:51:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lbmj41rISN7Vr8+d6JqzNy06dJxtC+0tg6gCdAZKYs=; b=dWfH3f6uZbz1FO
	+/LJSpTgzA4qMHXe1uIdJb54VLC2ekEcGAEtZIecUSMPWJf7bqXkdkhVA9S40MNN2ko1CkKZKu6qG
	TUf0SapEYq7IuLD+aFDYFbw8xE1G2N82Vj9c+JKs+AEinNXF+9ZMyUEcNKsig+7J8e9OCmFxnKoqG
	uASxyl2a0W1wY06kVF89oIL3RJWcssZABcF3NqtrpxXn0cbuyKlXbxXOnAJJPYdw+MzkKKmy3h7Xg
	HcjBeqg2aqOFpn8Vc61e6dD3TaN53Uowmk2NwoS6S9FmMOMhx4gjrea5pN/jOrIfa1RmhWxTVG0FF
	hcMFbngGUrxdE/VaCZjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFbiI-0000FH-HY; Sat, 21 Mar 2020 10:50:46 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFbi9-0000Em-DI
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 10:50:39 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1jFbi2-0004qG-OV; Sat, 21 Mar 2020 11:50:31 +0100
Date: Sat, 21 Mar 2020 10:50:15 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Nick Bowler <nbowler@draconx.ca>
Message-ID: <20200321105015.GB1408@makrotopia.org>
References: <20200319032712.31676-1-nbowler@draconx.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319032712.31676-1-nbowler@draconx.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_035037_449606_58C3C7E4 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] Add kernel support for Fintek
 Super-IO chips
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Mar 18, 2020 at 11:27:09PM -0400, Nick Bowler wrote:
> This series enables packaging of the Linux hwmon, watchdog and gpio
> drivers that support multiple Fintek Super-IO chips.  In particular,
> the Fintek F71869A is used on the Jetway NF99FL board and the stock
> OpenWRT kernels appear to completely lack drivers for this chip.

The driver looks ACPI/x86-specific, please add target dependency or
move the package definition to target/linux/x86/modules.mk.

Cheers

Daniel


> 
> Nick Bowler (3):
>   kernel: package f71882fg hwmon driver
>   kernel: package f71808e-wdt driver
>   kernel: package gpio-f7188x driver
> 
>  package/kernel/linux/modules/hwmon.mk | 15 +++++++++++++
>  package/kernel/linux/modules/other.mk | 31 +++++++++++++++++++++++++++
>  2 files changed, 46 insertions(+)
> 
> -- 
> 2.24.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
