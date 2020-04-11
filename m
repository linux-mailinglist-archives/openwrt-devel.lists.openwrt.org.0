Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321AF1A5294
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 17:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y4Swir9Ytg+v5GaxipJV90nJRlmv9sLQgsKALJd4fBw=; b=IvgV/ZaEc7S/pLhmSwq9KlMMg
	goBweJaq1EUB5H5/nbaUvl57m7ihpsKVUD8CP8SqryIbjLLuWahM/A2mLz42NG9XngYaIC7i+UsfT
	eEnQr8CAYl9P4+no2sVisX4BjfxbtH4uYo9nWLtzcV3/KWCOr+liY9L6GftATrPRtkO1xG5KRYw1m
	Fnd3S3vCdADRW5lf+dmlUHzoKPDoJnSBvkpbLcz1p0Pws7GgHU1rxiiznEXB/vVk3vkCa+SIaG0Cf
	aywV1HmWwbBERBa/X6bgWCW7f+ghKIuxSg0sCxXLxBLnoGdN8WdVWYa4OQPP4eZreebvUZJzba6Hz
	AlmQDhw7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNHpZ-0001Gu-6x; Sat, 11 Apr 2020 15:14:01 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNHpP-0001GU-8x
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 15:13:54 +0000
Received: from [IPv6:2003:e5:3f33:2200:d53a:b34f:d5b8:de5e]
 (p200300E53F332200D53AB34FD5B8DE5E.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f33:2200:d53a:b34f:d5b8:de5e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 5C4ED1E053;
 Sat, 11 Apr 2020 17:13:38 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: Paul Blazejowski <paulb@blazebox.homeip.net>
References: <447f8cc7-a544-48d8-bc74-ab07e160c174@blazebox.homeip.net>
Message-ID: <c29a7375-2201-16e9-0a94-00503cfa8c38@david-bauer.net>
Date: Sat, 11 Apr 2020 17:13:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <447f8cc7-a544-48d8-bc74-ab07e160c174@blazebox.homeip.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_081351_468680_E402C155 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Paul,

On 4/3/20 10:58 PM, Paul Blazejowski wrote:
> Hello David,
> 
> It is great to hear to we're switching to 5.4 on ath79 target but i
> wanted to bring to your attention that at least on the NAND subtargets
> (for me wndr3700v4) we need this commit [1] from Kevin to get the router
> to boot otherwise there's an oops in do dsp which prevents my router to
> boot and produces bootloop, Kevin's patch is incomplete as i have also
> alter it locally to apply to 5.4 kernel. With Michal's mtd concat patch
> i have successfully run the kernel/build for a couple of days with no
> issues. Maybe Michal can chaim in to confirm as he uses the same
> hardware in WNDR4300 routers just to be sure?

I've bisected this issue a bit further. Changing the CPU type for the 
whole target doesn't seem right, as boards prior to AR934x are 24kc.

I've isolated the issue we are facing to 308-mips32r2_tune.patch. I'm a 
bit puzzled how to proceed as i suspect other targets using a 74kc arch 
will most likely show the same issue.

I propose to revert the change for ath79 locally using a target patch to 
allow the target to be upgraded to Kernel 5.4.

IMHO 308-mips32r2_tune.patch should be a target specific patch anyhow, 
as optimizing for a single CPU arch for all affected targets might not 
be very efficient. But I'm not all to familiar with this topic.

Best wishes
David

> 
> [1]
> https://git.openwrt.org/?p=openwrt/staging/ldir.git;a=commit;h=a2a8b6bae13a74667da457d7fdc11e6367edd0df
> 
> Best,
> 
> -paul
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
