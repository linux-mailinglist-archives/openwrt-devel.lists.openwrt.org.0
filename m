Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F212C1846F4
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 13:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s44tADW+1t+I3G1kXlEIjj3iIRAAcC8+2q6GXWNzvVY=; b=G5gRv+UzPEvMUY7SUf8jQL0tw7
	yUwVyC8gWT/cgwqv0OJLBZUrpoyujYg7vvKpYq++3N27tOEEZHPJ6r/AqXu0w61R/q+eX0ww0hOMn
	S9VVhXHUbsGcy0q1ZRUf0rkILT/opiz5YL8Iyl6mZ3+T9jILKdAJkdLTbFttrDmPt3CBPuZWR7749
	3NVUD33D6LEn7jxMw06kZpUdKhfE2gTpkrybcTv/2LILMo3NV6V0YDWAfEh/LuoF0YHtStloQizLL
	XUa2IyizmCv5TdmSvQLcCSPUijf9rn6zO/lWXcgQJJQ4n3598NwDT4jrawYnxtTAFF8NP4Wj9kK6R
	CACT/bjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjWe-0007Qe-Ut; Fri, 13 Mar 2020 12:34:52 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjWW-0007Pv-NI
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 12:34:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 55A543735;
 Fri, 13 Mar 2020 13:34:43 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3e1b26ff;
 Fri, 13 Mar 2020 13:34:30 +0100 (CET)
Date: Fri, 13 Mar 2020 13:34:30 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20200313123430.GC56199@meh.true.cz>
References: <20200313032313.383555-1-luaraneda@gmail.com>
 <20200313032313.383555-2-luaraneda@gmail.com>
 <006501d5f92f$3a268600$ae739200$@adrianschmutzler.de>
 <20200313121336.GA56199@meh.true.cz>
 <006701d5f931$6532a7f0$2f97f7d0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <006701d5f931$6532a7f0$2f97f7d0$@adrianschmutzler.de>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_053444_911152_B57D7202 
X-CRM114-Status: UNSURE (   4.15  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.19
 to 5.4
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
Cc: openwrt-devel@lists.openwrt.org, 'Luis Araneda' <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2020-03-13 13:17:42]:

> I'm aware of the two-step procedure (1. copy without changes, 2. refresh), I
> just read the message in a way that the config was refreshed _before_ copying
> it?

Yep, Luis did exactly what he described in his commit description, he really
refreshed the 4.19 config first (IIRC two symbols refreshed?) and copied it to
5.4. 

That's probably the pedantic way, fixing first 4.19 config, then refresh it
for 5.4, so the diff for 5.4 contains only symbols related to 5.4, not to 4.19
cleanup/refresh.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
