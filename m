Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C163917436F
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 00:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JIsVHBmqQPJ4u9rBweQwOdFjPlog/9e3wUjOM4c1EjM=; b=ZtRyDMFJqcie/CdqbQVLZZ/of0
	KAg0dJODxtDEAW5yDCiH8h4CLpkC2HagUoDUMIckOCzissdFfzOC0Kpj7E8MCEvbUHzcfKCPUEsOA
	tfiPYQ9y88qn7hVu24FeE5BaJHJ4K7fbcs5TAYW0MPCMCbK82wCD7ty1CTO4fUA5dBfY+w7/BHu2y
	Kh64yFWbJGrMjtcjYcY9+8cnh9XEU/M+HKl0aC9driHTAfxCiO0UlLb9BVD5S1ae5+TsF3jfBcmkp
	siuQ9eO7TAlC+p0QaUkqVAVLy8kS5XymqQo21CstzdpP+dU4opfgMXVDK1GsJ90TQzPgQbq9JHh3m
	F1dBWD4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7pG9-0005JE-9P; Fri, 28 Feb 2020 23:41:33 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7pG2-0005IW-Kl
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 23:41:28 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2EB0B4F2C;
 Sat, 29 Feb 2020 00:41:24 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a8df57d5;
 Sat, 29 Feb 2020 00:41:11 +0100 (CET)
Date: Sat, 29 Feb 2020 00:41:11 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200228234111.GA33354@meh.true.cz>
References: <20200215232702.2778489-1-mail@aparcar.org>
 <20200228214818.GE2524@meh.true.cz>
 <ebc8c13f-169b-ad5d-0a30-0df6ab9b4b1e@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebc8c13f-169b-ad5d-0a30-0df6ab9b4b1e@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_154126_833338_C3BD7634 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] build: refactor JSON info files
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

Paul Spooren <mail@aparcar.org> [2020-02-28 13:09:46]:

> > > To archive the previous behaviour the option JSON_INDIVIDUAL_JSON_INFO
> > > can be set.
> > Why do we need to preserve that previous behaviour?
> 
> Two reasons:
> 
> * We have to create those files anyway before a merge because image creation
> happens in parallel, so no single overview can be added to. If this is a
> wrong assumption please step in

Ok, but we don't need two different config options for that. One for single
file JSON output and another one for amalgamated JSON.

> * For ImageBuilders it is convenient to have a per profile file.

I don't follow here.

> I'd be in favor of keeping it if you wouldn't mind. It would be disabled for
> buildbots and users per default.

I don't like an idea of having *two* different options for *one* functionality
for no reason. Initial idea was JSON for online builders, so thats *one* config
option to me.

> I'm looking into this issue but haven't figured it out yet. Either the JSON
> generation or file writing is broken. The odd thing about it is that it also
> happens if a file is opened only once (as in only a single image is
> created), so it is unlikely an issue with parallel writing into a file... If
> anyone has ideas, please share.

What about some graceful error handling, outputing the broken JSON file? Maybe
it's another Docker filesystem related hiccup?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
