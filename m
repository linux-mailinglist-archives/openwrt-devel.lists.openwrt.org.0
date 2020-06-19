Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818F0200592
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 11:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6ebp5vDWCJ1ZlG+qzaO+VrrzechO8dDkb7ph6UiawnE=; b=UTnRZ09nyd1QLiTFpLD+UA6wy9
	CBoCSRAvVBdBiKgGJsONxvgbBV1GzNLgYQJkmiw3DhIWJO49SlgKwROwutgVWNkGc7DyE96tmYnZn
	YLNnjncUIYEurLSnr4O3+Ybke/W/JAcIWR+zQUVnhiMnBWEVd1IhejdOwoCeERaQJIIpoPmsslSX8
	ythanB9TuoD9y3QAX0GCY1dTaUgqcd61cb/r9XfFJpCkvXejweddOxl9GuG5VzlVKH+puiQ4hlXhD
	S1aYzFehdp4gyih6E04CBMTWTKaOR0ARsHbJStoIyszjWdEkGN0SKFqtXC3UqDJVzU1nrcYBH6ZQD
	hTV1jzZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDY2-0005gs-0e; Fri, 19 Jun 2020 09:42:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDXv-0005g5-Gh
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 09:42:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BC94818878;
 Fri, 19 Jun 2020 11:42:48 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id bd2c42e8;
 Fri, 19 Jun 2020 11:42:32 +0200 (CEST)
Date: Fri, 19 Jun 2020 11:42:32 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: mail@adrianschmutzler.de
Message-ID: <20200619094232.GB79323@meh.true.cz>
References: <20200619093215.28273-1-ynezz@true.cz>
 <008901d6461d$256e4d70$704ae850$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <008901d6461d$256e4d70$704ae850$@adrianschmutzler.de>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_024251_700390_EF9FD742 
X-CRM114-Status: UNSURE (   4.54  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: image: fix initramfs for
 safeloader devices
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

mail@adrianschmutzler.de <mail@adrianschmutzler.de> [2020-06-19 11:36:44]:

Hi,

> So, I wonder whether that's specific to the C7 v5 then or whether it would
> apply to the other tplink-safeloader-uimage devices as well?

nope, archer-c7-v5 is just a device I've found it on. It applies to all
safeloader devices which inherit from tplink-v1 and define custom kernel image
commands.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
