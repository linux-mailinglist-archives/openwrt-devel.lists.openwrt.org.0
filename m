Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECAE1F81A
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 18:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=il/z0YjFq0R5V2x8WL+Xt1C1eqLpzX+uOj4zYHyOTAQ=; b=FQitXwdwjeHRXz
	a5qjw9iL9U1KFtJ0WftNK6R9kwYUrxPy4u8fjWi2d3ka/C+oI+2DodntXcgTjUJjEb2gdKhCFP60T
	5fVZzaBcqmMt5I32JiNkUnMaFDfXSFFaPUr9XW9IiHe7Wu4yCgaipEQwZbcfn1imXLck2UYMTi1Sg
	zKqmvfJRSJe0KSVTz6UHlFGPMiBUTG540f1Ru6DMnjRXsLMTBF8ZIPEVYm28kOkXgG1Tr4V8rzE4J
	c4zHODxrV/12x5OjTDrigE3ZY3ZMEO9pMNpv3CB6cJrEIEEmx8PPwkZ2ZMpBgNvMBPj2OtPX5cJ06
	AniZPSNmZfL4Q6mC5ODw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwM5-000117-PW; Wed, 15 May 2019 16:02:09 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwLy-00010l-0G
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 16:02:03 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FG1uku047061
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 18:01:56 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5A07637A6;
 Wed, 15 May 2019 18:01:54 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c265fae9;
 Wed, 15 May 2019 18:01:52 +0200 (CEST)
Date: Wed, 15 May 2019 18:01:52 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Pavel Kubelun <be.dissent@gmail.com>
Message-ID: <20190515160152.GC4938@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-4-be.dissent@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514134220.3626-4-be.dissent@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_090202_360542_2E7537A8 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] ipq40xx: add support for secondary
 cores bringup
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

Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:20]:

> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.14/091-ipq40xx-add-support-for-secondary-cores-bringup.patch
> @@ -0,0 +1,174 @@
> +From 6126701397fa6c884fd78453d995e49df91a566a Mon Sep 17 00:00:00 2001
> +From: Pavel Kubelun <be.dissent@gmail.com>
> +Date: Mon, 13 May 2019 11:25:05 +0300
> +Subject: [PATCH] ipq40xx: Add support for secondary cores bringup
> +
> +Cherry-pick QSDK patches to enable proper ipq40xx
> +secondary cores bringup.
> +
> +https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/commit/?h=eggplant&id=f810b63c356bd72d9b89fb9c0b7e27c250c3540f

Please preserve the authorship of the work and try to upstream this changes
first, then backport it to OpenWrt.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
