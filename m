Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50B2526D2
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 10:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xbT7YrP3UvIiGziAv1imWXtNoUAcBE0scsaFies3FCI=; b=Ndb1AHhxfV07/X3f95J8jxM1ir
	6ptkL7wNqy8iqQVjl0Y4+CeMiE9Iw1/Mf8fkP50OZGqwT65gg34RS+U1h2MlUEjp2yg20h2YOYWx+
	qOgv0duvkwnCW96CzLHGOwlEHtBvGh7wxJLMXXJhkvXwFUbKmaQrYLZmyRJUyuzKR9Lmmo1cNK2Th
	92CyKxxa6wd1ANWFITytV123q//YVljqd96xoHvle6jN0Paj5U53+pPfqJ8E05dvDImDx1Wc8ipJj
	u66RNdsQbuduiIDf7gZ3NeS29YcCQoOw2WrpeB/Xe2DWJac6Dzgy5co6+tj8ZFwZllTRctKxPD/Jo
	UxAYiybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgz9-0000nU-8J; Tue, 25 Jun 2019 08:39:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgyy-0000mF-45
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 08:39:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D0B823290;
 Tue, 25 Jun 2019 10:39:12 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0ecfbcec;
 Tue, 25 Jun 2019 10:39:10 +0200 (CEST)
Date: Tue, 25 Jun 2019 10:39:10 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Danzberger <daniel@dd-wrt.com>
Message-ID: <20190625083910.GH95426@meh.true.cz>
References: <20190624161320.7316-1-daniel@dd-wrt.com>
 <3007342.El8puCmMqZ@debian64>
 <41cdb404-d377-92f3-22d7-5edb07d2d34e@dd-wrt.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41cdb404-d377-92f3-22d7-5edb07d2d34e@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_013916_318793_F5D82C59 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Danzberger <daniel@dd-wrt.com> [2019-06-25 10:34:47]:

> >> +	model = "AP7621-001";
> > 
> > Oh boy, this is tricky.
> > 
> > <https://github.com/devicetree-org/devicetree-specification/blob/4b1dac80eaca45b4babf5299452a951008a5d864/source/devicenodes.rst>
> > 'The recommended format ' (for the root node!) ' is "manufacturer,model-number".'
> > 
> > BUT. Thing is, this string here gets printed on the LuCI system
> > page and from past experience "Manugacturer Model" works best.
> >
> I am not sure if using a blank instead of ',' is a good idea, because of
> sysupgrade and the device tree board detection.
> All other DTS files use ',' in DTS and '_' in their Makefile.
> 
> Are you sure about this one ?

Yes, Christian is talking about model property, not the compatible property.

 model = "AsiaRF AP7621-001";

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
