Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8F117CDAB
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 11:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=61Om2+ka43fai3v/aUA9xN23EM3lbpcUmDwfNtu57xk=; b=kGOt3HI5yvWnGeI2nryVzMTGGO
	MJlssVNXcczFcbYKQav7etx4mHt4bFN0wj/hD0MWtbdwzzJXD9UeWULmZRAaIajzN+CFnTXKyiD6T
	2kMkRvL4kOyspNA8hXMNkWpD7vOw42VkEHijSQcc6Kg+UtLmBuEiqiQFLF8IR0UOgl9GhetgA+l96
	eFjMIl18i2mE6/4SQ15lqvWDfAahC+9eIaf+43al2KaxAOOyTpiw4yvq1+mToDsuyXN4UG3wanTO/
	L8/24q/XWUhbjH6d77ZcT0maM2uu3+enjYobDCWPDFkRkE+AS0cnHSiTzl0pYh7FTddQsc3rmaVht
	7tiBDQ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAWqb-0007r7-OV; Sat, 07 Mar 2020 10:38:21 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAWqS-0007qm-Oj
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 10:38:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 587004F53;
 Sat,  7 Mar 2020 11:38:11 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f06a217b;
 Sat, 7 Mar 2020 11:37:58 +0100 (CET)
Date: Sat, 7 Mar 2020 11:37:58 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tim Harvey <tharvey@gateworks.com>
Message-ID: <20200307103758.GI86312@meh.true.cz>
References: <1583532605-30146-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583532605-30146-1-git-send-email-tharvey@gateworks.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_023812_954980_52430F33 
X-CRM114-Status: UNSURE (   5.17  )
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
Subject: Re: [OpenWrt-Devel] [OpenWrt-devel][PATCH] kernel: iio: fix
 iio-st_sensors-spi missing dependency
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
Cc: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tim Harvey <tharvey@gateworks.com> [2020-03-06 14:10:05]:

> Fixes following build error on octeontx:
> 
> Package kmod-iio-st_sensors-spi is missing dependencies for the following libraries:
> regmap-spi.ko

Fixed already in ee92838dd2a777c94d70bb08a4cc983214367b18

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
