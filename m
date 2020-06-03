Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421FC1ECCDB
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 11:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rlLmCg9iGwmOgx7R7XT7BoFMmbR/ngZbX9xG81jshvA=; b=P/dmaDIqQ66mnqoFYYQ4yQfKKD
	wiOXQ0kqImkjsYjhdifw0aHwUV+IkP1SVXZmpuFemC7hUC0hEGC8Dv7X8GUtn31rFINMXm11K/jQe
	mepvRAn3rAS65oNGAK1IrpSDic2LFWciO82Y93YvSnacDp+N99w55AKNitRmY5PPzFTtuBgiMcZXY
	EJ/ruKc7C/n12wQqLVcCkBoYZFuvD+F2EOFf9As/HQtoo/HY1GQqDkautq0lqUiLREWpPA3a4qDAb
	ocYFkiFqptWh3ymoI4rbaOE+LLhi3e6pAKK7xTs9LdD+FfrFqWukphSw2xWA+8UIAaEs/Qj32U97Y
	C+y27vMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPwX-0001qQ-EU; Wed, 03 Jun 2020 09:44:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPwQ-0001pE-6s
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 09:44:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8DB353DDA;
 Wed,  3 Jun 2020 11:44:07 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b7f0421e;
 Wed, 3 Jun 2020 11:43:51 +0200 (CEST)
Date: Wed, 3 Jun 2020 11:43:51 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Message-ID: <20200603094351.GB36571@meh.true.cz>
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_024410_396228_5B5662B9 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

R. Diez via openwrt-devel <openwrt-devel@lists.openwrt.org> [2020-04-12 17:37:13]:

> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
> 
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.

> Date: Sun, 12 Apr 2020 17:37:13 +0200
> From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
> To: openwrt-devel@lists.openwrt.org
> Subject: [PATCH] Do not hard-code IS_TTY in script scripts/feeds
> User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
>  Thunderbird/68.4.1
> X-Mailer: WebService/1.1.15620 hermes Apache-HttpAsyncClient/4.1.4
>  (Java/11.0.6)
> Message-ID: <bc270db4-005d-36b9-c726-c044ef719624@yahoo.com>
> 
> Hi all:
> 
> Please find attached a patch in order to avoid hard-coding IS_TTY in script scripts/feeds .
> 
> For related information, see here:
> 
> https://bugs.openwrt.org/index.php?do=details&task_id=2086
> 
> Best regards,
>   rdiez

Hi, please resend it as a proper patch, for details see
https://openwrt.org/submitting-patches, thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
