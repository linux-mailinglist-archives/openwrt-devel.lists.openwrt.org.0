Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E41A138610
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 12:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bM0c+DjOYo9Wlyak6zj7GsXEZGo3gfgHqZuFLvLvgrs=; b=evpfMZE26QkoB9kicrkG1t2FAH
	cePMY5oVgVqOtv1D8sToJ/EOQBMCVeivHkqsXKrRfm3eICFT63g8By0wUByHydH8Yb2lH5NZJtsPh
	JQwFc4aSGg9l6UeL9kJkuA4/6qwl1tKiSOUoi5g7kzQBNh8aygywcsGEEC2rRXBwfSWKKrmsdcTjm
	8WB8Cj0FlH6PXydMZ1QMOVgLGH6xd7r0+4uhCa8h6zrrXfd5nJ1Klo7ZDpoc/lSW4TalZyVnfQV1h
	HB2q//p1wmfhxxCTUVDLC4MXedYXOWQ/c2Q4R0fGBo58DpIHrgQGuvpelLlcjolEjxh3zX+vNBdU8
	W+SMY5gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqbeT-0005c8-6c; Sun, 12 Jan 2020 11:43:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqbeL-0005bo-Be
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 11:43:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1BEF14C73;
 Sun, 12 Jan 2020 12:43:18 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 71dd600a;
 Sun, 12 Jan 2020 12:43:07 +0100 (CET)
Date: Sun, 12 Jan 2020 12:43:07 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: juraj.vijtiuk@sartura.hr
Message-ID: <20200112114307.GE86978@meh.true.cz>
References: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_034321_550483_64ADF4D1 
X-CRM114-Status: UNSURE (   7.73  )
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
Subject: Re: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: openwrt-devel@lists.openwrt.org, Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

juraj.vijtiuk@sartura.hr <juraj.vijtiuk@sartura.hr> [2020-01-12 12:26:18]:

Hi,

thanks for the fix.

> Fix out of bounds read in blobmsg_parse and blobmsg_check_name. The
> out of bounds read happens because blob_attr and blobmsg_hdr have
> flexible array members, whose size is 0 in the corresponding sizeofs.
> For example the __blob_for_each_attr macro checks whether rem >=
> sizeof(struct blob_attr). However, what LibFuzzer discovered was,
> if the input data was only 4 bytes, the data would be casted to blob_attr,
> and later on blob_data(attr) would be called even though attr->data was empty.
> The same issue could appear with data larger than 4 bytes, where data
> wasn't empty, but contained only the start of the blobmsg_hdr struct,
> and blobmsg_hdr name was empty. The bugs were discovered by fuzzing
> blobmsg_parse and blobmsg_array_parse with LibFuzzer.

I don't know if you're aware, but there is already some LibFuzzer based
fuzzing in tests/fuzz/test-fuzz.c and the corpus is in tests/fuzz/corpus.
Those checks are run now automatically by CI after each Git push.

It would be nice, if you could share the fuzz input (and mods to test-fuzz.c
if any) leading to this OOB reads, so we can guard against future regression.

BTW this is not mandatory, it's optional, but I'm going to do this anyway as
I'm wondering why current fuzzing didn't catched this issue, so you're going
to save me some time :-)

Thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
