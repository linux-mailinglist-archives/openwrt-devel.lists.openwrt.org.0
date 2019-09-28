Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F584C122E
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 23:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXGN/DILTijnYqt3eINl6D2qZlQPLAK5u8FnBcJ3ZPo=; b=o1365svqm2M+dT
	wmJwLoYEELbOSfRdWL6RkrkUFKuth5OdQbVMMUxK52VpU6en5gVpNQPAYAC/qVkX2z6u99LZTYQth
	3vTefngn9vnsMvwWqBMQjG++faUe7AZApxYL8L86ks/7BPPFHL48EhkcLtTsT70Ntc3n4RMm03OzX
	QoD+XoUDJy9yVv5hGwzT5feGC3boh21eDZvsWzXeBvsF4iL1eIyV8gE1IWQMNftusgdWetDGCSVxp
	wW8tNMguvXe4K5c5xpo164DhUOPJZUeC0roAt0Ge4rgOdirVOznhGfGULDQOMncwYFjXUFnYXxKnk
	tEVEtGOyB3YcjkfCRwcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEJu2-00062A-44; Sat, 28 Sep 2019 21:05:18 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEJtu-0005Qq-U3
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 21:05:12 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel@makrotopia.org>)
 id 1iEJto-0007SS-GJ; Sat, 28 Sep 2019 23:05:04 +0200
Date: Sat, 28 Sep 2019 23:04:55 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190928210455.GA6194@makrotopia.org>
References: <20190928204447.19627-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928204447.19627-1-mail@aparcar.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_140510_969898_1483FF1E 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain/gcc: switch to version 8 by
 default
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

Hi Paul,

On Sat, Sep 28, 2019 at 10:44:48AM -1000, Paul Spooren wrote:
> Main motivation for this commit is the introduction of
> `-ffile-prefix-map=` which alows reproducible build path.

Imho definitely a good reason to move forward with the switch to GCC 8.

> 
> Compiling tested without errors on the following targets:
> 
> * ath79
> * brcm2708
> * brcm63xx
> * ixp4xx
> * ramips
> * sunxi
> * x86
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> Please let me know if I should compile more targets.

Maybe try apm821xx and octeon as well to cover powerpc and mips64.
I'll give it a shot tomorrow and run-test on ramips/mt76x8.


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
