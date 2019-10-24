Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F6EE303A
	for <lists+openwrt-devel@lfdr.de>; Thu, 24 Oct 2019 13:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KguBixC1dg8uMTJ3B1DZy2u9pdiMat+EuZrjCpqgbCI=; b=crPUKIz1QnUvvX
	AnPmNLRjZnI6nNz2CTPKimlgZ/uJSew0ojJdDU1xqEPhI4bOJPkmtPsIiJUXvkImlnwpDetQ5PvGC
	P7TuXT2kqShBF2Ib88wQ3l5OHGIJJCZ9IslJ5/poIR57zLOrbjfAHOtD2SJhSzouFUjbRUnY69MRU
	ZkmioMM1qrMrHWZm3+Af0hTR5Ryj/9CDWn03IbFFOtp73mioOtVR4qfRWCY6j+BU/PlcdN6UiJrtl
	U8B3DCkWINLCfAi8vVGutbo06hfQJA2hYe1+G5Txv3MnNE3pDlBizVHT1KfIkM9dO+2jcBvoRYBzj
	HnZ2hCwS7Dx6tSMQUYDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbBz-0007Mt-PJ; Thu, 24 Oct 2019 11:22:11 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbBm-0007M9-AE
 for openwrt-devel@lists.openwrt.org; Thu, 24 Oct 2019 11:21:59 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 1E15D5335C; Thu, 24 Oct 2019 13:21:57 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id DB20F5335A
 for <openwrt-devel@lists.openwrt.org>; Thu, 24 Oct 2019 13:21:56 +0200 (CEST)
Received: (qmail 34052 invoked from network); 24 Oct 2019 13:21:56 +0200
Received: from unknown (HELO ?10.42.0.249?) (jo%wwsnet.net@24.134.185.161)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 24 Oct 2019 13:21:56 +0200
To: openwrt-devel@lists.openwrt.org
References: <b247e681-6f9a-5e3d-2744-ee5bdb460d1d@rapiduswireless.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5b5d8f6a-49e9-909a-4663-9ae2555a281a@mein.io>
Date: Thu, 24 Oct 2019 13:21:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b247e681-6f9a-5e3d-2744-ee5bdb460d1d@rapiduswireless.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_042158_660682_F074E09F 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] How to trigger wifi reload from wifi.lua
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> On the Luci GUI, the current behaviour of Save&Apply of changes to the
> items in wifi.lua and wireless_modefreq.htm is to invoke a network
> restart. I would like to to change this behavior to invoke wifi restart
> directly from wifi.lua.

This is not supported and will confuse the netifd wireless state
tracking. You should instead extend the netifd wireless handlers to
properly deal with updated values.


~ Jo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
