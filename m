Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755521EB91
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 12:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ImoFRNTTOr4u6Ywkl5JYJ/v6WZnjR5C6cbvqvgf1L5o=; b=qsT2DRqizqt6QqBzbcBbkEpnDu
	oR+Q6SDidiiIDG3dtnpcRjxEdHl5tXb2NRfBED7bdIBRGlJhwgFGdXm8/JX/FwiEw9Uo2zMNjow0w
	3crCayoR+90gXVE5J1gh8CJX4pfPkSc+xAsqHnCW8TTthDM8V/4nQbvJl7tv9EkG262t8xToZ3TCK
	C9tyrHcqKiiZopQiCqcggT8o5vrw0ogqQVkypHfckh+S4GW4WBrdA+OFa9yIIxJtGK6e826UgCJeL
	neXlLKnr7Fcl4PTYUTrmB+AO64nLmNvju+H6qgik1TWyimBOjz0Splof3r/BvOpOZQbXP0PPQrmWv
	RDG9Gq5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqjl-0000lL-0i; Wed, 15 May 2019 10:02:13 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqje-0000kc-8q
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 10:02:07 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FA20Fc022146
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 12:02:00 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 96293448A;
 Wed, 15 May 2019 12:01:57 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ec38b173;
 Wed, 15 May 2019 12:01:56 +0200 (CEST)
Date: Wed, 15 May 2019 12:01:56 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Luis Araneda <luaraneda@gmail.com>
Message-ID: <20190515100156.GL93050@meh.true.cz>
References: <20190428151714.5405-1-luaraneda@gmail.com>
 <20190503122643.GC71477@meh.true.cz>
 <CAHbBuxrbgr8Yzifhh-ZrpTQJ1Z=S7cY7yi-pahskiX_bv0y84Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHbBuxrbgr8Yzifhh-ZrpTQJ1Z=S7cY7yi-pahskiX_bv0y84Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_030206_626988_86AD8D23 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] zynq: add manufactured to device title
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Luis Araneda <luaraneda@gmail.com> [2019-05-06 08:59:27]:

> > why are you removing the development part? I think, that it's useful
> > information so it shouldn't be removed if you don't have a good reason for
> > this. Putting appart the fact, that it's marked as trainer board on the
> > vendor's site[1].
> 
> Having said that, I really care about the manufacturer being added to
> the title, and for consistency reasons, I propose one of these
> options:
> 1: Remove the development part (modify 2 boards, this patch)
> 2: Remove the development board part (modify 4 boards, new patch)
> 3: Add the development/trainer/evaluation part (modify 2 boards, new patch)
> 
> I'm now more inclined to go for option 2 and drop everything that's
> not part of the manufacturer and model, as the "board" part is not
> adding meaningful information from a developer point of view, IMHO.
> 
> I'll wait for your reply before sending a V2.

Ok, lets do option 2.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
