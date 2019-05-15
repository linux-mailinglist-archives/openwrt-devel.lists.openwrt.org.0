Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BE01EC3F
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 12:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aBdyQwS6EciOHTbmCHuN6l28F/TFlywWanUA8wjyDHo=; b=La6aELMde8XgJ03IbX694cXZHk
	ZjjMLwu6lfRjXgwsOjNz7r++zUHqmRyeOMqUe/jGW+y10PWwXQ3S15nG8R4gHQ0DD7Hy1aLG8OMxZ
	p6Xb3uktjLOSmyGIFqRYTIqdaTT6TOm6VEkxAdmcuitjcBRTva2vXJiflke6PWW1GD/vrt4esEn56
	zKHaRVGAv+QC/EanKjnQ3x/tn8/GqcUxjAvY+aCyJjE6VBwUq+wscC8efbx9qVvXT/z05J9K97prd
	8HucX9w6U84FV5z3iN6SW7C6/parchwezkQ8eF+gwEw2TV5EmcKQrVpyw2cnzUgVuUzqqHXprH7jJ
	nyNqNUNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrMW-0001hP-Dg; Wed, 15 May 2019 10:42:16 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrMO-0001h4-Ti
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 10:42:10 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FAg3Wj024528
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 12:42:03 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7BAF74795;
 Wed, 15 May 2019 12:42:00 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d15df393;
 Wed, 15 May 2019 12:41:59 +0200 (CEST)
Date: Wed, 15 May 2019 12:41:59 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190515104159.GA30259@meh.true.cz>
References: <20190510162622.22068-1-kristian.evensen@gmail.com>
 <20190515101732.GA17721@meh.true.cz>
 <CAKfDRXjXNdfSwEcBh_LAKByhcXvdJp6owMgJ3sjwqH6jypvHSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfDRXjXNdfSwEcBh_LAKByhcXvdJp6owMgJ3sjwqH6jypvHSA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_034209_264979_97653F3E 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: Add support for Head Weblink
 HDRM200
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-05-15 12:34:48]:

> > so if I'm counting it right, you should probably remove i2c.
> 
> If I have understood the datasheet correctly, then i2c is required for
> two of the GPIOs exported in 03_gpio_switches (io1/GPIO#1 and
> io2/GPIO#2).

Yes, you're correct, I've missed this userspace GPIOs.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
