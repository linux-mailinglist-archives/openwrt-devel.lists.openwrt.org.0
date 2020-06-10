Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23141F501B
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 10:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+bRuDpbRBajnSkCgP8l7jAeFm/DCENxV0BQjhfh/H8I=; b=Nr804U+LLxyPo/IJwVi5b/hlx
	JZ2T//VgaZtMHs6jqbqxkDiUAkHQC++FXeZv6Pgf7B6UN7ssjE4G3LkaH6sbZPtPXhOEd2mNA1l3C
	/s0BDnuuvOh/auzDm7WqLiwpe6etkK8nwkGq6OCV+jzOswEIuUTZSoVFOBGL/HgCMnaxr//euc7wW
	wR97HUzl4i2/fxGyDe+xE9XWLBZqRDv1S8wPHsEL2+mLJz+LNQ39SkcX7zMTnRj6jE/Meqw7LFLiK
	gQi5g5EmbDA7kMIebdL10DNWEhhSft6avpmsxTry7R9ojBam+cBvEc4j+38GQRl6W+sh/bvMp8af+
	FZ11QhWnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivrQ-0007D9-7w; Wed, 10 Jun 2020 08:13:24 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivrI-0007Bn-Fg
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 08:13:18 +0000
X-Originating-IP: 72.234.141.215
Received: from [10.137.0.13] (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id BDC78FF810;
 Wed, 10 Jun 2020 08:13:12 +0000 (UTC)
To: Sven Roederer <devel-sven@geroedel.de>, openwrt-devel@lists.openwrt.org
References: <20200414211447.324042-1-mail@aparcar.org>
 <9826759.b33H7hSvdo@strike>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <1cbc1b1f-97f4-9a77-9c20-6d2c315d3a69@aparcar.org>
Date: Wed, 10 Jun 2020 04:13:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <9826759.b33H7hSvdo@strike>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_011316_654106_69437796 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] build,
 imagebuilder: Do not require libncurses-dev
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> Hi Paul,
>
> I gave this today a test on my spare computer, but it still complained about
> the missing libncurses.
> I tested with snapshot imagebuilder (r13519-8a858363b0) with just calling
> "make image"
>
> Any ideas?

It's just a PR and not yet merged. Once merged give it another 24 hours.

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
