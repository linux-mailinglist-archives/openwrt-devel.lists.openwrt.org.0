Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AAD1EC0D
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 12:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RsoAbQeLy6giPsHTna6ARcWguEEs6Mbcdy0k1Jg9v9E=; b=ActJoCV3IDkjw6m/QEhEu371T/
	i8Q6/4wDHFV/CkE0dhIHksn1f7TFf4nq7KudC6loRfCg91u6LjuXL2IghNR/kVpI0g1gyMCKM7Pgu
	oK5gxmmGmYY1TsN7Ajk0OWr59KDQNS87RczC+E8XQAQ9azNG2iU8FEe4HEcjofE4WD3VHbe+F1NEp
	UfhO4+vyrtKPTmetHT8f+QeVrwz0lT+RZlr5Yrp7x90EgLDzMx+YF8DXa09SO8D6eBp3t+SOm+cCO
	bqmBgGRKzIedI5Zu6Qbmkml6W+ecCT0YnL2820Ak+yVkURLOiMfqdEk5bJBLaA6ViAaEL3jW8NiBx
	Xf+qQx1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQr5K-0002Po-VB; Wed, 15 May 2019 10:24:30 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQr5D-0002PK-4T
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 10:24:24 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FAOIEo023542
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 12:24:18 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 79EBB469B;
 Wed, 15 May 2019 12:24:15 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fe1d76d6;
 Wed, 15 May 2019 12:24:14 +0200 (CEST)
Date: Wed, 15 May 2019 12:24:14 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190515102414.GM93050@meh.true.cz>
References: <20190510162622.22068-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510162622.22068-1-kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_032423_489311_C72D6320 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: Add support for Head Weblink
 HDRM200
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-05-10 18:26:22]:

I've one more comment for you to address

> +			firmware: partition@50000 {
> +				compatible = "denx,uimage";
> +				label = "firmware";
> +				reg = <0x50000 0xfb0000>;
> +			};

...

> +define Device/head-weblink_hdrm200
> +  DTS := HDRM200
> +  IMAGE_SIZE := $(ralink_default_fw_size_16M)

ralink_default_fw_size_16M = 16121856 = 0xf60000 which doesn't correspond with
your 0xfb0000.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
