Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B63E1F7FF
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 17:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irvX5p3oKh3592fSvAqWJGt3k6QAP8sSW+X85uj6cFw=; b=sVG38xgN+C1K/m
	BUlDj2raRFgtJpMSdo+pfRWS/HXsC8V8UXTalDL2j3GfefXO4V4pFOFXaOMSHU+pIppdSRLCiZe8U
	a18+JhviwZQTrohY6gp5vkyoLPiMmBd67QvVqwIAQdT9uZW1jDTBTtbtqrKi97PSdT/5I6xskg1eR
	EpJUg9Mjz8BojU/lwksYzwNGBnKzpXAoDhwUvMI6DqyVn0UDLauiAgeIl8wMQ/gI5hOSbQAz52ww/
	apUTMNvaIil19HPTTjoahaZRGzAo0aT6IqdMP0wO3QloS48Ep3FVHtj7wwuWvdWpqfiO80Ydq8YZ7
	KvFC7ERNX/en+zXIa0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwFx-0007Lq-OK; Wed, 15 May 2019 15:55:49 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwFq-0007LR-VF
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 15:55:44 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FFtXAX046803
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 17:55:34 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8E12D3780;
 Wed, 15 May 2019 17:55:31 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 21e699a4;
 Wed, 15 May 2019 17:55:29 +0200 (CEST)
Date: Wed, 15 May 2019 17:55:29 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Pavel Kubelun <be.dissent@gmail.com>
Message-ID: <20190515155529.GA4938@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-2-be.dissent@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514134220.3626-2-be.dissent@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_085543_316992_C52FC528 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ipq40xx: fix sleep clock
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
Cc: openwrt-devel@lists.openwrt.org, chunkeey@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:18]:

Hi,

> It seems like sleep_clk was copied from ipq806x.
> Fix ipq40xx sleep_clk to the value QSDK defines.
> 
> Hope someone with datasheet could clarify the correct
> value.

what problem does this exactly fixes? Is there any particular reason why this
shouldn't be sent upstream and then backported to OpenWrt?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
