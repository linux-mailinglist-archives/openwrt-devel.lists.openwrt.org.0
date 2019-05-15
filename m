Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5921EB17
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 11:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qKnX3SqwLQ17OuJpCJGEv/pi3fwuhMROtZJMTIUfrDk=; b=Npg0JmDG6lImkQGcqoFW4cs8dc
	R3uo15JfDvw1QNeYx5d8QDjT45AwZlKB1iXsVcMUYgjDHKBe+mtMYcCyN/phDgpUvXbzvJlZZYVqD
	qv+8ypMPrbLWV5/zdY8AChw7+tJlUD3J24bF8JnID4KMoJtiovAJeFryRqbOirOLXbtxP8KPDF8u+
	og6WiJEJnUusUbPYHuaoG5pdgYtwKG+Gik65OzKUt1QCwFtWFpexV2r9pKE/gMuDzFuq8ekA6j58S
	xi/7LFQLgBaYUiI7wiU6HYpJyd3uu+hOC0HZLleowr5pJ8agHWx/rQBaosEkEnmwvoBzDSK+FwmvY
	mFtOszDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqM1-0006Sn-88; Wed, 15 May 2019 09:37:41 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqLM-0005iL-4q
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 09:37:07 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4F9abTW018998
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 11:36:37 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 21B0040F1;
 Wed, 15 May 2019 11:36:34 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4ec6631f;
 Wed, 15 May 2019 11:36:32 +0200 (CEST)
Date: Wed, 15 May 2019 11:36:32 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190515093632.GJ93050@meh.true.cz>
References: <6358e0b2-f60f-a820-68e4-21513abeefa5@aparcar.org>
 <20190514144959.GC93050@meh.true.cz>
 <cf208d00-811e-24d0-c46f-e562faded42e@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf208d00-811e-24d0-c46f-e562faded42e@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_023701_135747_D2BA5E5E 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] RFC: add metadata to buildroot
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
Cc: Alberto Bursi <alberto.bursi@outlook.it>,
 Moritz Warning <moritzwarning@web.de>, Daniel Golle <daniel@makrotopia.org>,
 Jo-Philipp Wich <jow@openwrt.org>, openwrt-devel@lists.openwrt.org,
 Thomas Endt <tmo26@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Spooren <mail@aparcar.org> [2019-05-14 17:32:20]:

> Glad you like it, my main goal would be to motivate device porters to
> deliver a uniform yaml file when requesting to add a new device. Do you see
> this as a possibility once a reasonable yaml template is created?

Well, I see no problem to merge it once it's in acceptable state and nobody
has explicitly NACKed it. We could simply start with opt-in (bonus points if
you include such YAML file along with the support for a new device) and once
the dust settles we could start talking about it as somehow more or less
mandatory requirement.

If by a template you mean some kind of schema, then yes. I think, that some
kind of schema is needed in order to have some tools which would help with
writing of properly formatted YAML files, validation during review etc.

It would be nice if we could possibly avoid reinventing the wheel and could
somehow (re)use ongoing DT dt-schema[1] effort:

"Devicetree bindings are written using json-schema vocabulary. Schema files are
 written in a JSON compatible subset of YAML. YAML is used instead of JSON as
 it considered more human readable and has some advantages such as allowing
 comments (Prefixed with '#')."[2]

1. https://github.com/devicetree-org/dt-schema
2. https://github.com/torvalds/linux/blob/master/Documentation/devicetree/writing-schema.md

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
