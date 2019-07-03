Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E195E4CB
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 15:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3DgjBdS9ZSOUz92J+UDJMxZA2D2Ju5uLqMVrefvHhIw=; b=msLjIjFjFlGKMLB/HoanG59Jp
	VX1+31w2BfmUxcvuOyyQigZLn8vPEXcSjLPQ/6+MRmlbl3ic1SDYcAr2YsjDAeYZQr9dSvSBIKwtC
	4AT8j78ht7UUk8zaoUf/zwBVZbww0eES58VFbPofZyPSulDW0KrBR/LRzVQ6SxLWno/lirJTid3zR
	LxQtaLn3lvzYtISqyDqfl5W2+sNkMPZ0Vnu2tezzw+UV3UX+T7ZXXwsMKtNo1+kDvgLaFfgnqgPqx
	O6/CbTPLtTpgN65DJQVf6yQ4Q02SPDCDA8bErwQ2SjIEmwMWdSagsEoXvV0U/4Nx24TvXc69kcbn+
	CxWWlMmSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiewZ-0007uW-DS; Wed, 03 Jul 2019 13:05:04 +0000
Received: from monkeh.net ([88.97.98.50] helo=mail.monkeh.net)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiewM-0007sK-Nn
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 13:04:52 +0000
Received: from [172.16.0.11] (unknown [172.16.0.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: monkeh@monkeh.net)
 by mail.monkeh.net (Postfix) with ESMTPSA id 8FE5532AC0C;
 Wed,  3 Jul 2019 13:04:45 +0000 (UTC)
To: Kristian Evensen <kristian.evensen@gmail.com>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
From: Alex Maclean <monkeh@monkeh.net>
Message-ID: <29ca64de-646b-8861-8a79-febec027e5f7@monkeh.net>
Date: Wed, 3 Jul 2019 14:04:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190623092448.27880-2-kristian.evensen@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_060450_922287_ED58AC52 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 23/06/2019 10:24, Kristian Evensen wrote:
> This commit makes the following changes to the WE1026 DTS-files:
> 
> * The parts that are unique to the -5G-version (LED and 5GHz wifi)
> are moved to a separate file, so that WE1026.dtsi can be referenced also
> by the DTS for the -H version.
> * Changed button from polled to interrupt.
> * Use the generic "flash"-name for the spi-nor node.
> 
> All changes have been tested on the WE1026-5G-16M and work fine. I.e.,
> the device works as before the DTS-changes.
> 
> Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>

License change is okay with me.

Acked-by: Alex Maclean <monkeh@monkeh.net>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
