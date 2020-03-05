Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C6417A73F
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 15:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AT8g4YN+CaQJ8v/UYOZ+cEfEyqIPAADxCsmIlOtLzj0=; b=I+LPmPbv7EhgO9EDBx+Z5PlT0/
	k9qU5AqAUS4r2vQ6q9cio0aYsYmIvEp99KolatbV4uiSmEgn8huTHynyBfmEOIu1r2zWEyERdsjYr
	VvPCOcpFhHoohdbnHdiFUdrnvuqKy84o/Wrf8xLn+Yf8JwXMbSpFy5sFJ5BFeWQyZ6E8xql2yzyLF
	gHb7m6L3qVz/05ZawRejaJgwVb95vPIHKhKI/NG9m8tkLf+fwHT+WdHPZqWcJ4+NS2tD2Jggbdqsg
	ghzY0LYNC85FXtyGJU6JQrkKD8RbwtOzdKtF+OiSBvvQ3P1kEMjsb6v5MHPlVfP6VEGx4Xr1kpKew
	coGT1Dvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rL0-0003rZ-Qa; Thu, 05 Mar 2020 14:18:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rKt-0003pz-D8
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 14:18:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 744B54602;
 Thu,  5 Mar 2020 15:18:46 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ce9c5d00;
 Thu, 5 Mar 2020 15:18:33 +0100 (CET)
Date: Thu, 5 Mar 2020 15:18:33 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
Message-ID: <20200305141833.GD86312@meh.true.cz>
References: <20200305114754.42078-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305114754.42078-1-Evgeniy.Didin@synopsys.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_061851_588776_54C359DF 
X-CRM114-Status: UNSURE (   9.60  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] archs38: add support for Linux 5.4
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
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Evgeniy Didin <Evgeniy.Didin@synopsys.com> [2020-03-05 14:47:54]:

Hi,

> From: Evgeniy Didin <didin@synopsys.com>
> 
> It is necessary to use GCC9 for building Linux 5.4.x version for
> archs38, in GCC8 the critical fixes are missing and ICE appears
> during building.

could you split this one big commit into smaller bits, take a look at the
malta 5.4[1] for example.

While at it, try to build test this locally with the same configuration as
buildbot[2], it would fail[3]:

 Package kmod-hwmon-sch5627 is missing dependencies for the following
 libraries:
  
   watchdog.ko

To fix it, you probably need to add `CONFIG_WATCHDOG_CORE=y` kernel config
symbol, see malta fix[4].

1. https://patchwork.ozlabs.org/project/openwrt/list/?series=162327
2. http://downloads.openwrt.org/snapshots/targets/archs38/generic/config.buildinfo
3. https://gitlab.com/ynezz/openwrt/-/jobs/460760655
4. https://patchwork.ozlabs.org/patch/1249520/

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
