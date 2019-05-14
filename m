Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695C11CA0B
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 16:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CWcB7BfZFD/bm1obEEsfsb4rouGuwZlFSTDMPxtsVDs=; b=M8FXtyDn2ErvnwP8mc6GbMn5YJ
	5sMhesOihoVTWn9uSUE6a4Q4PEaaAtQCCqTUt+xgoigXf7X35iduIC6NfkVnj0Yyb9UOuXvNl+UQx
	aeyezIsP9JVbmPJpjo/TgRU8qILsux6/EvNoQvG99EflS70TOD3l8OR7FRuqWGNYTHqVqkPFJ4FZr
	oPUtvws4ck6htXNCQTMR7gr0htbryuZ04x57FQOnTpLJ6le0HSbqderWw6QJd1MV5NX5HTp2rivdX
	U5e+ucoeTstuTgUkro6P//Wq6YgwJf98WhDu2uLg3CANEVRH51qP0OeNgmuQQMmA0HyZXjFPEwkL5
	JunDzsCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQY6o-00061E-63; Tue, 14 May 2019 14:08:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQY6g-00060u-Rg
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 14:08:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4628244B3;
 Tue, 14 May 2019 16:08:36 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 63c6e7ce;
 Tue, 14 May 2019 16:08:34 +0200 (CEST)
Date: Tue, 14 May 2019 16:08:34 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190514140834.GA93050@meh.true.cz>
References: <20190510153621.30933-1-mail@aparcar.org>
 <20190510153621.30933-2-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510153621.30933-2-mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_070839_048472_933CC730 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] procd: apply official kernel
 clang-format style
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

Paul Spooren <mail@aparcar.org> [2019-05-10 17:36:21]:

Hi,

> Currently some files use a mixture of spaces and tabs within a single
> file, instead of fixing style manually, a tool could do the job.

I find consistent coding style important, but I also know, how hard is it to
achieve it. It's some time already, so I don't remember all the glory details,
but different clang-format versions produce different results, doesn't support
certain options etc., so it's pretty confusing and introducing another
overhead. Then you should enforce it somehow (commit hooks, make target),
otherwise it's going to bitrot after sometime again etc.

> +static struct init_handler handlers[] = { {
> +						  .name = "sysinit",
> +						  .cb = runrc,
> +					  },
> +					  {
> +						  .name = "shutdown",
> +						  .cb = runrc,
> +					  },
> +					  {
> +						  .name = "askfirst",
> +						  .cb = askfirst,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "askconsole",
> +						  .cb = askconsole,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "respawn",
> +						  .cb = rcrespawn,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "askconsolelate",
> +						  .cb = askconsole,
> +						  .multi = 1,
> +					  },
> +					  {
> +						  .name = "respawnlate",
> +						  .cb = rcrespawn,
> +						  .multi = 1,
> +					  } };

it's just me or is this very ugly?

> -	list_for_each_entry(a, &actions, list)
> -		if (!strcmp(a->handler->name, handler)) {
> -			if (a->handler->multi) {
> -				a->handler->cb(a);
> -				continue;
> -			}
> +	list_for_each_entry(a, &actions,
> +			    list) if (!strcmp(a->handler->name, handler))
> +	{
> +		if (a->handler->multi) {

eh? (I've stopped reading the changes any further)

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
