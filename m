Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4C160703
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 15:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HqeM0IS2/rUZ02E6irEKLnSM3OLW27uMMeEPavJnx4=; b=IzS/r8laSIpQ2x
	iGE99Cys6Okjmn6435ff1nMGCCXVtiWr7Ccn9U3HWJ+NdvDmOK4+QUYKW3RSFzFXmET1HBV2cXuOT
	MLUMWImfyyPOKkIbYZwMm9SOLOy6llsX74gE83dYkxbD/c1m5T+XEpNyo8NFKH1NJWv3l/GFft7Ab
	ApyMn8oB0/dfp12udDBstCPefl3FR3sBmMjpFHdYkLrWhYrN6w3LkvVsEkge+Mym0vo06aixzL88M
	liSyI2ebdzu5Zlyi8MPst8dwxK6SNaNfjSBQoK31cbQNdctGIFizVpRM/ZV2YgOwMzgvARWhrDDY7
	w/90pltpon6vmeNxZqRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOkI-00024Q-JY; Fri, 05 Jul 2019 13:59:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNCz-0007Je-EA
 for openwrt-devel@bombadil.infradead.org; Fri, 05 Jul 2019 12:20:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nt+T1Stzp1Qy7jTvew/qF6RuXYnPq9Thl0Plm3UPvGY=; b=awU9G5j43lQtc2mZbcWu9i+7xP
 UsesKTPYGTMOCCWiRRPDlQbLWngfaAnylanzA8uZOz8XQ1ONLeE0QmKY/EcduZiCEgYT5ZSZo3gcF
 fwy+8FWeE3gFmVBSB6LwwhkLX7IGJN/wEXbVpZ6gDyFBmkTZ1DW28hg0LWzBzHkyzLAvA44pdkexC
 GCZf3ineYgaN6rLlSjDh4xAeufNGLm4bT0FR0dAXDS2G8Mbu0JcO5r+VU9nQewm6yninw5aB+0hHD
 R5LYapXMMgSubA69jZIGvSc3pvoDdxV/liDNWiLN3DrbySWHBXkmp3EYGGh3xxPss+WuDAixJMg9X
 DQmrjlxg==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNCo-0001Hb-Qy
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 12:20:49 +0000
X-Originating-IP: 95.90.181.59
Received: from [192.168.0.207] (ip5f5ab53b.dynamic.kabel-deutschland.de
 [95.90.181.59]) (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8193B2000B
 for <openwrt-devel@lists.openwrt.org>; Fri,  5 Jul 2019 12:20:06 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <1976f014-56cf-3b16-00b0-638165f71f4b@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
Message-ID: <d6f232d3-7d0d-24ba-128b-afed75c33db6@aparcar.org>
Date: Fri, 5 Jul 2019 14:20:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1976f014-56cf-3b16-00b0-638165f71f4b@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_132046_961274_DD5CA04C 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC]split DEVICE_TITLE in multiple variables
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

The PR was accepted, I'd be happy if newly ported devices could follow
this style!

I'll do some work on reorganizing existing targets.

Best,
Paul

> [0]: https://github.com/openwrt/openwrt/pull/2124
> [1]: https://sudhanshu16.github.io/openwrt-firmware-selector/
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
