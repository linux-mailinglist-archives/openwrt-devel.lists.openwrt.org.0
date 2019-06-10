Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479303AF33
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 08:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T7EYGMV1IffKDnwGCyoRIDSzjFrQR+DAT42LfVPL9S8=; b=jYQvFDCxahKutEceT2v/NckTzb
	sbRQwxMBjdOGYTV2tHLRcl0KRBTq9AKOtzxDjtjoA+MfNyrZRQq2Zy6IdI3mTQCKCvJEB6hVtHcZU
	21jc5wAPYfLCXwogkl/KFuw8zW8Dckwy7Fv9GUrMY/yBUzNLHOvqjpIo2qd2PTUv+eAo3i+GMy0X7
	bcRv+9m86s0ef7WLPBv6uW7vSvbPmQTd9HnhMEQxsO1G+tm64IE+oVY1WjIJJrzjKUg/J1t854eiv
	zfthr2a1mAKCHYkiKeK+qBE1XaT8TnCx60OlMXXFbVG3CnaO7wLxJPNBGmVqy2BIN2KQ2mMsc3KQ/
	0KSFuGPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haEAo-0006Xv-2H; Mon, 10 Jun 2019 06:52:54 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haEAU-0006X9-IJ
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 06:52:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 174763E28;
 Mon, 10 Jun 2019 08:52:30 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6eb449b7;
 Mon, 10 Jun 2019 08:52:28 +0200 (CEST)
Date: Mon, 10 Jun 2019 08:52:28 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristupas Savickas <savickas.kristupas@gmail.com>
Message-ID: <20190610065228.GC39806@meh.true.cz>
References: <CAKjzzGMjFpe3dVo=hDr+nfmtsgX3od3Us7TDji=31NBzdbtmmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKjzzGMjFpe3dVo=hDr+nfmtsgX3od3Us7TDji=31NBzdbtmmw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_235234_752799_937766E5 
X-CRM114-Status: UNSURE (   7.57  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] libubox: add format string checking
 to ulog()
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

Kristupas Savickas <savickas.kristupas@gmail.com> [2019-06-06 21:43:23]:

Hi,

> From b659ea5fc6511f9f58f04ca4eb58698aa8386f11 Mon Sep 17 00:00:00 2001
> From: Kristupas Savickas <savickas.kristupas@gmail.com>
> Date: Thu, 6 Jun 2019 21:28:32 +0300
> Subject: [PATCH 1/1] libubox: add format string checking to ulog()
> To: openwrt-devel@lists.openwrt.org
> 
> This offers an increased level of security, as the arguments will be
> checked for validity against the format string at compile time. The
> format attribute is supported by both GCC and Clang, so there shouldn't
> be any portability issues.

Applying: libubox: add format string checking to ulog()
fatal: corrupt patch at line 14
Patch failed at 0001 libubox: add format string checking to ulog()

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
