Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2C53A587
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 14:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZGQcEj/UDne14qa6MjMGcEqGVV0kF3jcSEME9Zm1Cog=; b=VovkF/dQrVju9G9tX8q1ldhDD1
	Ouu/GTN/t3ddKT7mfm3nbudwEiLtl66rTxTLatR8MLPPtrY/1QJFIdzUlex72d6cbLUMmdNPgKuzW
	XAjsgrtDdkvF6Nzr1G0Hs3IdwMqwVBVOl6bGZMSuK7GRhwssNRa1DHcPmbIogHNiAj8kjZ4riwBMw
	OyTO1ap0Hn6IWq4pRXEE1pD6SwERiNb8aDC2D8ib1NGW+NYYQz44/qeT/ZQ+5oznlgd7AXb3c0n+u
	fFuZ+AwIFeo+R0iSKCAXvLRilZdar8jUyS5g6mQSe4KAryrATkYZHm+W/w4Nf+mXyP/6xsT6h4Yze
	RO9CpNVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZxHi-00021Z-KW; Sun, 09 Jun 2019 12:50:54 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZxHa-00021C-4Z
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 12:50:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A31E958B6;
 Sun,  9 Jun 2019 14:50:43 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d3424f5e;
 Sun, 9 Jun 2019 14:50:41 +0200 (CEST)
Date: Sun, 9 Jun 2019 14:50:41 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20190609125041.GB39806@meh.true.cz>
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
 <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
 <CAKfDRXj1c32aAw5WVqkC9ULD8Xw8UoSjwamo=R3vanMvhOcPEg@mail.gmail.com>
 <9290831.qgf20FLg21@debian64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9290831.qgf20FLg21@debian64>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_055046_332165_232FEE56 
X-CRM114-Status: UNSURE (   5.80  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Christian Lamparter <chunkeey@gmail.com> [2019-06-09 10:06:33]:

Hi,

> The APM821xx checks out with both as well. While there are spurious
> events on enabling the interrupt (one released event), 
> the /etc/rc.button/ scripts are setup to handle that. So, which patch
> should we take and who gets the merge them? (I've seen that ynezz has
> more patches as well.)

I think, that you're correct and we should stick to the previous behaviour, so
I've taken your version of the patch included in this email and will push it
with my other patches.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
