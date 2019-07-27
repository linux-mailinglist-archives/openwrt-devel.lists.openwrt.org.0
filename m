Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D674277AF4
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Jul 2019 20:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xctyhL2D8X8U3mb0J3oUw5wwZrQ68VQqFUa0jU/RoP8=; b=a57UtOhFvO+YuGZZuP6BoiTYu
	A7yK/Ww83c74PGaC3RxMSppq7pluUKV0jYbzEWR6BshKyXthQIZC/vXokrl2XRnIgV6CGzCMNN3PS
	4f/letLu+CtCFQT31g5l9yPzUd+hva9zbexaplmO3in3l9LlGHE4bl1jPLJZwy14uEGVHsCR6Q/VO
	jICR7/SZD/PNQPNdPiTDh+ZzXR5cOlZ0+T+dRUsuq/SsIVmA/TCGZkw1NYDB8ClGEyTzRH0RKz12P
	7irj/gDumBhtbVTAqZAyuS+L496L4Z9E4TgnzU4KwvRx0WWGqOf+SzkutvNP1cdOrfNPP5sogo+yT
	hK5bi6Nng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrR4O-0001Dz-MJ; Sat, 27 Jul 2019 18:05:24 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hrR4D-0001Dd-W3
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 18:05:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id D8A0CC042F
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Jul 2019 19:59:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWX0Ncyi_yXQ for <openwrt-devel@lists.openwrt.org>;
 Sat, 27 Jul 2019 19:59:23 +0200 (CEST)
Received: from [192.168.182.2] (ip-62-143-18-135.hsi01.unitymediagroup.de
 [62.143.18.135])
 by mail.softart-ge.com (Postfix) with ESMTPA id 3477BC0256
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Jul 2019 19:59:23 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
From: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <c13fa157-eb6a-f18f-7e7e-1f6b774e1f6d@softart-ge.com>
Date: Sat, 27 Jul 2019 19:59:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_110514_181440_BA183C25 
X-CRM114-Status: UNSURE (   5.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Compilation error switch to pyhon 3
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am 27.07.2019 um 19:46 schrieb Ansuel Smith:
> I can't currently compile my image and i have this error
> 
> make[3]: Leaving directory '/home/ansuel/openwrt/tools/libtool'
> time: tools/libtool/compile#0.05#0.00#0.10
> Traceback (most recent call last):
>    File "/home/ansuel/openwrt/build_dir/host/scons-3.0.5/setup.py",
> line 26, in <module>
>      import distutils.command.build_scripts
> ModuleNotFoundError: No module named 'distutils.command'
> make[3]: Entering directory '/home/ansuel/openwrt/tools/mkimage'
> make[3]: *** [Makefile:35:
> /home/ansuel/openwrt/staging_dir/host/stamp/.scons_installed] Error 1
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

+1; confirmed. Having same issue, switched back to older version, which worked for me in the past: r10508-1b937cb141


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
