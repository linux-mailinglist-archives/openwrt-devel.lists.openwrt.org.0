Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E8BDDB37
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 23:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Rb1Sfm+G38L4dPzrKkfUBWABPSyIrnc12Mrc2jTtTLw=; b=IS94vsGCG39/DoSt78UnYDdiar
	Ac20IPGZec1EBmlzuPzdrpoztw0Xm+Iht35cn8T7TS1WeBQU7aLoewzind5jetSYpqGo05cG+GVjq
	5GgdV8/ABTK4/V5QB+QUSboHIn4Ycd99HAbzV87TTzhfis/v37ZjqXccckdyvRoWU5Gxav1Qjlmjn
	kijsZ+3r7VysGTeNBIkyqibR/n8HClhsiDyJSxxZhN/cDmXTGOjs+Gp5FjjDvHDvPrmak+CUE13FP
	g/QhzMXZiT3i7GHuIb8TWgXM72I4U8MI0O/E45HbrJxGBXnbp1kBMfpScFyeqxwyI16dbPZbm48rU
	VEQ/o0pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLwOo-0002OX-Ef; Sat, 19 Oct 2019 21:36:34 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLwOb-0002O5-Qx
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 21:36:23 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1iLwOH-000167-PX
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 23:36:02 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.89)
 (envelope-from <devel-sven@geroedel.de>) id 1iLwOH-0008Tj-5e
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 23:36:01 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 19 Oct 2019 23:36:00 +0200
Message-ID: <9948084.gCf4CgTSrW@strike>
In-Reply-To: <20191019144540.GC30614@lud.localdomain>
References: <20190929215515.GB1681@lud.localdomain>
 <20190930081512.GC72052@mi.fu-berlin.de>
 <20191019144540.GC30614@lud.localdomain>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Samstag, 19. Oktober 2019, 16:45:40 CEST schrieb Baptiste
 Jonglez: > Thanks Philipp, I didn't know Freifunk Berlin had its own firmware
 > generation utility! Looking at it, it seems a bit heavyweig [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_143622_021480_CDF7D50F 
X-CRM114-Status: UNSURE (   0.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [Battlemesh] ImageBuilder frontend projects,
 or how to generate custom OpenWrt images
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am Samstag, 19. Oktober 2019, 16:45:40 CEST schrieb Baptiste Jonglez:
> Thanks Philipp, I didn't know Freifunk Berlin had its own firmware
> generation utility!  Looking at it, it seems a bit heavyweight (it builds
> OpenWrt from scratch instead of using the ImageBuilder) but it's probably
> necessary if you want to patch some packages.

Baptiste,

Thanks for the nice collection.
But I just updated the Freifunk Berlin section, as we create an Imagebuilder 
as 1st step and then building the final images (from this Imagebuilder or any 
other).


Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
