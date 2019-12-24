Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E3412A437
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 22:51:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jlpl6DjcEA8SM8OKW3LSfd3rnTV2SfVsdodba1NwCSA=; b=tJwNBUFvUFJB8chXiJNhswkJeZ
	wUi19USRv+TLFv6hY8YafxgbE/+DfrznCqywTiKLsHS2xHQHMAszI/UoPmQMCWqofaWKGl8Wpd2sJ
	tR87TTqFjcoOeI6xLhFjBGoi6C6Qo92QqJLsPLVtiWsMiZUartgnvq/pXPK8xL5dPcUcAVqwewcDQ
	pK0wAKqEpHNmcXiKENrkdhg2rfAyVJaL2BfoqAxa2rrJ7UtX367lcei+JkHCLXG6FFYY2YePrJX85
	THCh2sRwx4MJBgIN4TU9QF3WKAKyg9PaNqegISj0bvoBtgYq/vbvdpgrWvvqvTFUTVhD7X5HZjcO8
	AmYTEUHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijs5A-0006Qn-4D; Tue, 24 Dec 2019 21:51:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijs53-0006QI-PS
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 21:51:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C22923B90;
 Tue, 24 Dec 2019 22:51:01 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fc5b0687;
 Tue, 24 Dec 2019 22:50:51 +0100 (CET)
Date: Tue, 24 Dec 2019 22:50:51 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20191224215051.GF70645@meh.true.cz>
References: <20191224180213.3542623-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224180213.3542623-1-raj.khem@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_135105_978582_FAF44433 
X-CRM114-Status: UNSURE (   5.09  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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

Khem Raj <raj.khem@gmail.com> [2019-12-24 10:02:13]:

Hi,

use "PATCH libubox" subject prefix, because there is no blobmsg.c file in the
main tree.

> Fixes error: '__builtin_strcpy' offset 6 from the object at 'attr' is out of
> the bounds of referenced subobject 'name' with type 'uint8_t[0]' {aka
> 'unsigned char[0]'} at offset 6 [-Werror=array-bounds]

out of curiosity, which target/compiler is that? I'm not able to reproduce
it on any of the pre-selected CI targets[1].

1. https://gitlab.com/ynezz/openwrt-libubox/pipelines/105374045/builds

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
