Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B224EA4
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 14:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PHfac+7rssxBUBa04NiKqsFqeCp7N88E+K/c3Ps9J/8=; b=GFXzmk7IrRJE9+3XkBFTObkOrN
	V5r5VsG9IYPBz0T4co8WIwg2cd+XV7t1JrynwprXskM61xmV6iiSjL7nu7SCdFCSsZhF/CRyJgFG0
	CO0g/WmfeRZyk85AQVr9g+k3ugA+4M4NVkYM9rXJE332kX3uyXzl2zVec5315+sjvj6Ea1F1tOg//
	69jpRecSmwtWeulHfdF+lRz8Dvq28fLXhojWIvTi/1DR/3Ufj2ddvRgMdxp+AynORSPfr0VzJm1bM
	qBhbvfJWDaI8o9gGnMj643mCUs6Ayy6ig84CSEI8HM5AqZmosuKIGJQKnBGMAMhK1jzzdIQiwhQa6
	vJ4Yd8KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3YN-0006V7-G2; Tue, 21 May 2019 12:07:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3YH-0006UN-FG
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 12:07:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 860503E6D;
 Tue, 21 May 2019 14:07:26 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id aeeb20cc;
 Tue, 21 May 2019 14:07:25 +0200 (CEST)
Date: Tue, 21 May 2019 14:07:25 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190521120725.GA4606@meh.true.cz>
References: <20190520101443.9192-1-bjorn@mork.no>
 <26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com>
 <a8c56e6b-bde5-1191-f980-eb5afafa9d1f@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8c56e6b-bde5-1191-f980-eb5afafa9d1f@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_050729_664102_8964EE63 
X-CRM114-Status: UNSURE (   8.11  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] upgrade: nand: fix board_name assumtions
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Cc: openwrt-devel@lists.openwrt.org, Matti Laakso <matti.laakso@outlook.com>,
 =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeff Kletsky <lede@allycomm.com> [2019-05-20 20:42:16]:

> Having spent quite a bit of time today thinking about the impact of
> board-name changes, I can see use cases where the running system doesn't
> know a priori what the range of acceptable tar-dir values are.

Well it makes me wonder, why you just don't do following:

 platform_check_image() { 
	return 0
 }

As the image is already checked with fwtool_check_image metadata based check
which should be probably good enough in order to lift any other additional
checks. Of course, just in case your platform has enabled metadata checking,
which in case of ath79 is true.

> Take the case where `mfgr,board-name` gets a new, compatible variant,
> `mfgr,board-name-special-purpose`. If you're running `mfgr,board-name`, a
> strict check for `mfgr_board-name` would fail, even though the
> sysupgrade-tar was applicable. This kind of board-compatibility check should
> arguably be done with image metadata, either or both appended or in the
> CONTROL section.

 BOARD_NAME := something
 SUPPORTED_DEVICES += something

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
