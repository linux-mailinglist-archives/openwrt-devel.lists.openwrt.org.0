Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0527C68
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 14:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2G6Jzgeok9a5TYQE9CFHe3rEf/WDeRiPxkYQLnJgByQ=; b=DvsE445juPnDo0TSB2RPuqzHxW
	/eArlLSZxFFVh6K4vv+rVlOuF0M+zDtbiOAdF9SIQSX27xGis+ovzfUd0OKGokGfw5JVEltZDDjTN
	+V6FEEMXo7D/3zEeBg4c6d8vWCOqGHsldQDGYBmSChkmZr89yC+i0uyMnLZJnlRtgSuESBHAzB0l9
	B/wY2TpSrS18A1ppO+mym7YnlFX2KaPV82igF2IlHnLw3NCowykeH79pN1P6cDJEw/YI4rWemHECs
	yea+6lomKKNqQrc0wzjLriJdLWIDSxnKX2vwKXmSuX3bK2DwjMSDxAgmP4yP6uSijoAfSCCU1WVKm
	62J20r2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmRt-0000jM-BR; Thu, 23 May 2019 12:03:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmRl-0000j0-Jp
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 12:03:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C4C594C95;
 Thu, 23 May 2019 14:03:41 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ab0d49d1;
 Thu, 23 May 2019 14:03:40 +0200 (CEST)
Date: Thu, 23 May 2019 14:03:40 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190523120340.GA50588@meh.true.cz>
References: <20190522172419.20630-1-mail@aparcar.org>
 <20190522172419.20630-2-mail@aparcar.org>
 <20190523084238.GC4606@meh.true.cz>
 <700cd2df-feb9-e5c8-3f03-de803ef2ed48@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <700cd2df-feb9-e5c8-3f03-de803ef2ed48@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_050345_803391_DAD35C74 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] procd: add notification if running
 in container
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

Paul Spooren <mail@aparcar.org> [2019-05-23 13:38:52]:

> >> +++ b/state.c
> >> @@ -101,6 +101,9 @@ static void state_enter(void)
> >>  	switch (state) {
> >>  	case STATE_EARLY:
> >>  		LOG("- early -\n");
> >> +		if (is_container())
> >> +			LOG("This isn't real life. I'm running in a container.\n");
> > your commit message is missing (it's required BTW), so I don't know the reason
> > why do you need this change. 
> I can amend the patch if it's of interest.

Yes, you should include commit message if you want to continue with this in v2.

> > Anyway, I don't see any valid reason to have
> > this in procd.
> 
> My motivation was to log when procd detects a container and therefore
> don't mount stuff. Anyway, if it bloats the log, reject this patch.

Then I think, that your approach is wrong. You should output "not doing foo"
at the place where you're "not doing foo", so this LOG line belongs probably
to initd/early.c (but I'm not saying, that you should do that) where you're
not mounting the stuff in case you detect container.

Please note, that procd is used by all targets, even those tiny ones so it
would make sense to add more logging (increasing the binary size) if it's
really necessary and it provides any valuable clue during the debugging
session.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
