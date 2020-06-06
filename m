Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA321F0505
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 06:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TSXDi02syeFhU4oaVlO8Atlq913NNKGwp3dbxk49uVA=; b=is+K/eLk0P1mrf7iYubdK6px1w
	YLdyAum9SNUSlG1YNRvnl4D/CNzUUO5qvccxD6rD6MFBIr3g/5GzVUo660cQs0co7vnWnCE2yKwtP
	B/2qJy4RndxTd1d0jFNLkt3njA0mJf2zKm0oeduWvSq88Y6TLa0woEutycAgRo2FxSmQRJGwW/dg6
	WBHHGbtPmhn/lnwFf2Lrsqa/Yh815mYe+c1OoBbyr+QcFlVyUDVkONiw8cocMovCikiamyyPvIq36
	Ryt93sQ7in7z/DLYjaCe5wGa44ABDC7SDcA/zMIWovKEcd8kG0UNtChzrB9pjqn7bRZ/0glN7usim
	0MAUy8Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhQuR-0003yD-Jk; Sat, 06 Jun 2020 04:58:19 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhQuJ-0003nC-Nf
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 04:58:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2EB641852A;
 Sat,  6 Jun 2020 06:58:07 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 400689df;
 Sat, 6 Jun 2020 06:57:51 +0200 (CEST)
Date: Sat, 6 Jun 2020 06:57:51 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Message-ID: <20200606045751.GC32043@meh.true.cz>
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
 <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_215811_918612_7AC598EB 
X-CRM114-Status: GOOD (  10.70  )
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

R. Diez via openwrt-devel <openwrt-devel@lists.openwrt.org> [2020-06-04 14:55:30]:

Hi,

> I do not know what you did not like in the patch, so I am hoping it is just
> the formatting of the subject line and perhaps that some extra explanation
> is needed. Please find enclosed the new patch version.

https://openwrt.org/submitting-patches#no_mime_no_links_no_compression_no_attachments_just_plain_text

> This is actually a trivial patch, please feel free to modify it any way you want.

Please send a patch in proper format, so it can be handled with maintainer
scripts and shows at Patchwork[1] we use for patch handling. Otherwise it is
going to be lost.

> For related information, see here:
> https://bugs.openwrt.org/index.php?do=details&task_id=2086

Good, that's important information and should be added into the commit
description, right above your Signed-off-by:

 Ref: FS#2086

or

 Fixes: FS#2086

> Subject: [PATCH] build: do not hard-code IS_TTY in script scripts/feeds
> 
> The script was previously assuming that stdin is always a TTY.

It should be obvious from your commit description what is wrong currently, so
why is this fix needed. Nobody wants to read commit logs AND bug reports,
which are not even linked/referenced in the commit description.

Quotting from [2]:

 "it will be committed to the source changelog, so it should explain to a
  competent reader why you made this commit.  Include symptoms of the failure
  you are fixing (log messages, error messages, etc.), it will be useful for
  people searching the commit logs looking for a fix for their issue.  If a
  patch fixes a compile failure, include only the most relevant part of the
  failure log"

> Fixes: FS#2086
> Signed-off-by: R. Diez <rdiezmail-openwrt@yahoo.com>

1. https://patchwork.ozlabs.org/project/openwrt/list/
2. https://openwrt.org/submitting-patches

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
