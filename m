Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B6761651
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 21:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltUIK/HoGXdDLqCnO8jTkEDTHCq5AIYUTEqb+1Vz/z8=; b=Ig6bOze/Cu/mbt
	9SNl3uOXtrTY4quVyVOpTpqbigbUBuLwR2MAlmwQjdADjotvn6RLNtQc4NFOvndFs9VySV0VNgouH
	1fbe2S/f5BW1cwCWV6l0q0kTFzVA5EQOA6xkaGGSUKc+8ghnt4657j+OOtNLP19lMFuZ1ElJ+dpO3
	EXaEdHu5lnKf1xXp4wiMTHTZ73Odgm05Elsg0TxlwYNh0us3ZMwR614WqtZEV/T6xMQgBeWf0Nu+E
	VmKJoxvSWVacrYDp6tXVKH8nIfbt0tyMCvvC2j5od77ZVuWuSiE16vi4V5Frc/ZBwe2zqyWu5ZY29
	Y7VQt6pfvQyENVf60+pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkCwn-0004vS-5W; Sun, 07 Jul 2019 19:35:41 +0000
Received: from mx1.riseup.net ([198.252.153.129])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkCwe-0004uP-EO
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jul 2019 19:35:33 +0000
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (verified OK))
 by mx1.riseup.net (Postfix) with ESMTPS id 18E121A15C4;
 Sun,  7 Jul 2019 12:35:21 -0700 (PDT)
X-Riseup-User-ID: 3F367FD2373DFC3FF52AC7D39EDF0F710DDB00D698896308E353424B8C1A4F97
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id A649C22257F;
 Sun,  7 Jul 2019 12:35:20 -0700 (PDT)
From: Gio <gio@diveni.re>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 07 Jul 2019 21:35:17 +0200
Message-ID: <4478184.D9vJSDGKBi@lifestock>
In-Reply-To: <dde0fff0-c03a-260f-29a9-4bdabfe301f9@aparcar.org>
References: <dde0fff0-c03a-260f-29a9-4bdabfe301f9@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_123532_505812_1C2D7305 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [198.252.153.129 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [RFC]merge routing repository to packages
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
Cc: jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Splitting openwrt-routing into its own feed was a move to make it easier for 
routing protocol developers to keep theyr packages well maintained without the 
need of giving commit access to the whole openwrt repository.

So either we give commit access to all those people or we fall back in the 
past problematic situation.

Cheers!
Gio  

On Friday, 5 July 2019 14:26:31 CEST Paul Spooren wrote:
> Hi all,
> 
> just as a notification as I don't want to spread the discussion to all
> kinds of platforms:
> 
> I proposed (actually jow in 2017) to merge openwrt-routing/packages into
> openwrt/packages subfolder net.
> 
> Please find the current discussion at GitHub[0].
> 
> This is intended to be a transfer, not a fixup. Fixes of legacy/broken
> Makefiles are welcome in the future!
> 
> Sunshine,
> Paul
> 
> [0]: https://github.com/openwrt/packages/pull/9399
> 
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
