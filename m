Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B372872C
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 21:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=meLeoNNEqjtHRCfN3+xNX8bsyQeUuwheYGvA0PbFMS8=; b=u0bXgSG9sGqcbl2bod3ZsfTB8
	YUOv8qEHjw/nA6AK60X3+lwgp8cav954aid4ydestiEF72m2grYqR50UBC346jt8ykoamXIjGfU7W
	hCU3zY13sYKDYQqq0hh1HT+2J1dax8+RC31NdYScylCIHEEb4AKioRiNhd9xysBe+DW8iLWYOpiJG
	vY01ru4ZOho9F1GOqQwN+ErH5UlWvxzbjZW/a4e2P45GeFRQRNTnNWdgS3fDGmME3TTpMVyA7GB0m
	J6lt6bvfB27EVOp2NFnGCIMh/qBuBbgTNRsVKdPTLXGcdYSPj9yYxB4JGQ6W01LyidyiaNmcy1Qa+
	8ryIRcqBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtKC-0004vX-Lf; Thu, 23 May 2019 19:24:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtK7-0004v5-Pr
 for openwrt-devel@bombadil.infradead.org; Thu, 23 May 2019 19:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=04Wpxm93EnzvFwdAVJ7K42ghxaSttqhsPoZ05arZru4=; b=bK5uObX1q9eiZ1bMZI6eFv8d6h
 Inv4Cpfv10FFMC0XLWxQG4V9NPmN9xFyIYYnQyIgPKH+NRbS6AKxVE8/9M9BITTv5M0ej+HxiMXTY
 apbDwFWma5CwezbO/0a5kMIKmpI7KpLI84gUizPnRBOxPrqQ+TacliABlumIhAP/c6FT5RAIHi1dt
 1iHlK3MJF79I7JHFc72IJlMlvDzWW8i6HDDIqgnzSHNVNKykbYe8ELVIX5FC+fv1vq3VTbPc3HQEr
 7nDrqITobZGYWp2FiEq82rsbcdbqQDYfH2BvbAuxuVFVF9sX9wW9xxpiHFXYTnSRHoUaHFJ8QtkVA
 VPR5CjIQ==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtK4-0006oc-A5
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 19:24:18 +0000
Received: from webmail.gandi.net (webmail23.sd4.0x35.net [10.200.201.23])
 (Authenticated sender: daniel.engberg@pyret.net)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPA id E71261BF206;
 Thu, 23 May 2019 19:23:44 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 23 May 2019 21:23:44 +0200
From: Daniel Engberg <daniel.engberg.lists@pyret.net>
To: Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <d0473583-3d8e-792f-d938-24cc09408932@hauke-m.de>
References: <2c19e9b8e7eb06e7ba90cab488a75829@pyret.net>
 <d0473583-3d8e-792f-d938-24cc09408932@hauke-m.de>
Message-ID: <684d6f44e0285323c84f02b482515456@pyret.net>
X-Sender: daniel.engberg.lists@pyret.net
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_202416_415192_AA2B9801 
X-CRM114-Status: GOOD (  24.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] octeon: Deactivate MIPS O32 and N32
 support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-05-13 23:37, Hauke Mehrtens wrote:
> Hi Daniel,
> 
> On 5/12/19 10:24 PM, Daniel Engberg wrote:
>> Hi,
>> 
>> This patch seems to touch more things that just that... (4.19)
> 
> I did a "make kernel_oldconfig" to refresh the configuration. This was
> either not done when this configuration was added, the generic
> configuration changed or some new Kconfig options were added in the
> stable kernel.
> 
>> +CONFIG_ARCH_HIBERNATION_POSSIBLE=y
>> +CONFIG_ARCH_SUSPEND_POSSIBLE=y
>> Both these are optional and no supported hardware have these
>> capatibilities to my knowledge
> 
> They are automatically set because CONFIG_CAVIUM_OCTEON_SOC selects
> CONFIG_SYS_SUPPORTS_HOTPLUG_CPU if CONFIG_CPU_BIG_ENDIAN is set.
> 
>> +CONFIG_HAVE_DEBUG_KMEMLEAK=y
>> +CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
>> 
>> Why are these needed?
> 
> The architecture supports them, they are automatically selected.
> 
>> +CONFIG_HAVE_IDE=y
>> +CONFIG_HAVE_KVM=y
>> +CONFIG_MIPS_EBPF_JIT=y
>> These seems to be forced by the mips kernel config
>> 
>> +CONFIG_ZLIB_INFLATE=y
>> Where does this come from?
>> 
>> In general I think we need to come up with a better way of handling
>> kernel configs as many doesn't seem to be correct (see GitHub PRs) 
>> even
>> though the kernel compiles and it's very hard to get a good overview 
>> not
>> to mention maintain.
> 
> Yes I agree with you, when I looked at the kernel configuration of the
> at91 target for example there were many problems in there. It is also
> not really documented on how to do it correctly.
> 
> Only defining the options which are really needed and using the
> defconfig for all of the others could also be an option, but I think we
> would miss to much stuff.
> 
> Hauke

Hi,

I see, in the long run I think it might be a better idea to have a 
diff/patch file containing only variables with changed values compared 
to a vanilla platform config and perhaps have the refresh script 
generate a full copy of the kernel config before and after so it's 
easily available if you want look at it in more detail? It would also 
probably be easier to track mainline changes that way.

Also, sorry for the late reply

Best regards,
Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
