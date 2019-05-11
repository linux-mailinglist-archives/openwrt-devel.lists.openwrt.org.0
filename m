Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717AE1A808
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 15:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O14W5TKhKfSgkV8Ck1Nf4n9J5SsOjuf3HQaJRYZMYh0=; b=n9Z2m1JYnBNkNDmlvplcRg82O
	iVGbHMti45Yw4+doxV4ufnig2F5HzVJlNKSEvRc7NYpu1kD56DRlyVYWQcHyqlVswEtXdfaB6+Cxw
	acKHEcMhe9SfhwOGiG04tEBpKH9MldjsdF5SLxt1zCDUp5UtHrF26L0vwJIXXjaQbOjY1IUGgafTk
	drhB8HJa7DHw1kjoa+SPVotrG1IzLWdqTbR8UOQkZMcgakNIwQzXa0g5HNP0JgxJv7MV+zP7UIW4U
	12kwb669bDGMLxDyUOv4UfssyhucBJeozKExaZ32STgjEter3lkjmQD8BE4mxa9QnYybgSLdi28v5
	oeTkhfBmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPSMe-0005Ai-Un; Sat, 11 May 2019 13:48:36 +0000
Received: from tunnel231050-pt.tunnel.tserv1.bud1.ipv6.he.net
 ([2001:470:1f1a:93::2] helo=trabant.uid0.hu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPSMR-0004xk-31
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 13:48:30 +0000
Received: from [127.0.0.1] (port=55090 helo=localhost)
 by trabant.uid0.hu with esmtps (Exim 4.89 #1 (Debian))
 id 1hPSMK-0000dk-VW
 from <wigyori@uid0.hu>; Sat, 11 May 2019 15:48:16 +0200
Date: Sat, 11 May 2019 15:48:16 +0200 (CEST)
From: Zoltan HERPAI <wigyori@uid0.hu>
X-X-Sender: wigyori@trabant.deployis.eu
To: Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <20190511114918.12033-1-hauke@hauke-m.de>
Message-ID: <alpine.DEB.2.11.1905111544090.28001@trabant.deployis.eu>
References: <20190511114918.12033-1-hauke@hauke-m.de>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_064823_532298_8FECEFAC 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] ixp4xx: Update kernel to version
 4.14
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
Cc: kaloz@openwrt.org, thess@kitschensync.net, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Hauke,

On Sat, 11 May 2019, Hauke Mehrtens wrote:

> The next OpenWrt release will only contain support for kernel 4.14, to
> still support the ixp4xx target update it to kernel 4.14.
>
> This was only build tested, I do not have this device, could someone
> please run test it on some device and report the results back.
>
> The patches are also available in this branch:
> https://git.openwrt.org/?p=openwrt/staging/hauke.git;a=shortlog;h=refs/heads/kernel-4.14
>
> Hauke Mehrtens (2):
>  ixp4xx: Refresh kernel configuration
>  ixp4xx: Update kernel to version 4.14

I'll test this, but when I gave a similar shot for ixp4xx on 4.14 and 
4.19, the build completed fine, boards booted fine if there were no PCI 
devices, but with any cards added the kernel crashed around 
pcibios_map_irq. Will get back to you on this.

Regards,
Zoltan H


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
