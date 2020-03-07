Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F025917CDAA
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 11:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gqwJ2Q5h189iPOnB1os4ShhwxZMv+F194u36YL5qGZs=; b=ObdAJlD9e3eVOKQqOTOx2vt/Jl
	INFOnprjW/im9Jx4kLeVQVX9MVnzP9D8th8tqwjPbhQa+At7ihSCAyTlrvUbCuG7svhSczdbOM3Nb
	mcyVEoWIbtVrw6JaLym5CcHy4iJdMwbV3QaKHo5eJafObq1ehzK+kkE4rf1y0pGrkiR/65FfZnook
	TB1iXlTLB4BXxP85LJEM2RKCClcB3jeF0ngxyQ0jsn89f0S2qlwwHVf8MTVYfP5p8KgD0ak+IlpkU
	aYCo7fRPbP9/bOSpENYX723z5Jl8jO+4q610PIzMfTRTsgslta/cNqqz8d8dcSfvDGCkppE3NtiYf
	+63VZObQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAWne-0006GK-Gg; Sat, 07 Mar 2020 10:35:18 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAWnQ-000633-Bq
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 10:35:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id ECA664F46;
 Sat,  7 Mar 2020 11:35:01 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1a64400a;
 Sat, 7 Mar 2020 11:34:48 +0100 (CET)
Date: Sat, 7 Mar 2020 11:34:48 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200307103448.GH86312@meh.true.cz>
References: <20200305222603.3732133-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305222603.3732133-1-mail@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_023504_554708_BA63C7F2 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v4] build: refactor JSON info files to
 `profiles.json`
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

Paul Spooren <mail@aparcar.org> [2020-03-05 12:26:03]:

Hi,

> +json_overview_image_info: FORCE
> +	WORK_DIR=$(BUILD_DIR)/json_info_files \
> +		TARGET_DIR=$(BIN_DIR) \
> +		$(SCRIPT_DIR)/json_overview_image_info.py

it was suggested on IRC to not confuse Make by populating the rule/target in
Python, something like this was suggested, it applies here as well.

	$(SCRIPT_DIR)/json_overview_image_info.py $$@

IIRC `foo.py > $$@` wasn't recommended due to the need of 0 byte length file
handling.

>    $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
> -	cp $$^ $$@
> -	$(if $(CONFIG_JSON_ADD_IMAGE_INFO), \
> +	[ -f $$^ ] && cp $$^ $$@ || true

This was explained in the previous review step.

> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO), \

You got already same hint from me via email and from Jo on IRC, this should be
turned into separate Make rule.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
