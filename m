Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2430598BB1
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 08:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zJ17fNRbv2hYedxPk64bojDBZnVxDJ21G4IOqIZ9JSk=; b=JVQ1ocHg0OE6LgHxUPRAoBvGB
	AyylViH6okjhLZWaGLIerU5P8F5V7Jc68qxFQRTl6XlLKObixMyJmdz59nwlHWT8JwMghC0MMdJ/X
	r6AyUY7Lgh0xTkqn81i5nuRfGHZ+1h/l6hw3ahsD6iTAyXXA24Kdd3hAajObkbrMBPr/HWunZdnAP
	dBOHLOUv1GJ/ZWDowPijfb7hTc1F/oqSAUnKojrukqx7yd2fYAwxYv1f/v3XFyE27QLyLavu4I1iT
	bGLYP0Mb+L9omtAiSsiFtTqMT1qNiQ8OoTUIyk+tr5G0Fp2un5Bsl/Rcw7AI2MH3CQD+fWGBqqTWg
	kTprSow0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gwO-00047Y-7a; Thu, 22 Aug 2019 06:51:24 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gtJ-0001yt-UD
 for openwrt-devel@bombadil.infradead.org; Thu, 22 Aug 2019 06:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qJhUQfSvU69G+JqKyypB2CaYswmg9/PPikX8+w+tdA0=; b=rwkyHAcQBOxwWIsP7VzSJ6cPhg
 EMvnsd6z2c0CYwwHnIOn8epRdJobQjSORNpLcliNxBmqLSkMxOB66Y7RxVcEL41rJY5k9ZzdO6Z/v
 eCovfzVSnmRk9yD57VyYyFnEJ0lWt7i9QVWI2iMhpvg8x7s6dnGL6Th/rb3P5L5aYXZdzXkM3GeMl
 PN9VDNNlZ/LKEN0TxJKyFhDJWnPZAYlGfR0ULfiLkOABHpOdzG7Uk7DNQMppHwQPJmvhStG16NalI
 fF7+MLpiYfi9z42fa6utQo8ssgxMiChnnmpMAXp2aXYwROW+tDdtkDMD7lWUsIhTKn99PE1CK9RtU
 xxgYDdnw==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gtG-0008BG-TM
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 06:48:12 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E14FF1C0004;
 Thu, 22 Aug 2019 06:47:30 +0000 (UTC)
To: John Crispin <john@phrozen.org>, openwrt-devel@lists.openwrt.org
References: <20190822005924.32310-1-mail@aparcar.org>
 <40b56056-3fc8-931f-81d8-97e3b78d6004@phrozen.org>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <1511b4b8-335c-1863-3c45-0c46a3fd3d61@aparcar.org>
Date: Wed, 21 Aug 2019 20:47:27 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <40b56056-3fc8-931f-81d8-97e3b78d6004@phrozen.org>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipqx0xx: add Generic subtarget
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

Hi John,
> This commit adds the Generic subtarget resulting in consistent naming. 

and

> already uses `x/generic/` as subfolder as if the subtarget would exist. 

I'm very much in favor of consistent names[0][1][2] as it reduces the 
hassle when trying automate things, like building images via an API[3].

Is the subtarget causing any harm except for eight additional characters 
per filename?

Paul

[0]: https://github.com/openwrt/openwrt/pull/2330
[1]: https://github.com/openwrt/openwrt/pull/2334
[2]: https://github.com/openwrt/openwrt/pull/2326
[3]: https://github.com/aparcar/attendedsysupgrade-server


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
