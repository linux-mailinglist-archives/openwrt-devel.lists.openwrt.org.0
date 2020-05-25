Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8131E0B83
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 12:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8JUv0VCuwQK/+Dss5TRcKTNfJVtr/P4qqrnmKgDgoGM=; b=BqL46EYsuT7bRCnJ2nob9oo6L
	nlNAYSYQ3Qyhr4ZPUZHu+rXYoK6U0vhJ6fhfnexu9WCoVISuruo2dYz8l/XINsDxUSKoco/tuRcmh
	IcEBjqoRE3vRqIa58E0971PyD2Zc1lL98YdVg0seqZ05Sw+s3KMwpgl6r8mSqEjBt9DWINQHOhcXd
	TqwScPqD30KqdWJ+KwOd6nZXvRy/jD1J1G1/5Nt2npHQ/SdC18PNHjI9NMcjkwCrfe4sHS9GlH8xW
	zEtl77WqsBWR9Jyo72Xz+cl0kjXjrUQY4BWV6V+sO+AgtOZ1QN5elJ7ws2EOzvlRL+F1q9p9Tzp+W
	TxC6kBiQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdA7O-0005sM-PN; Mon, 25 May 2020 10:14:02 +0000
Received: from packetmixer.de ([2001:4d88:2000:24::c0de]
 helo=simonwunderlich.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdA7H-0005rw-9c
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 10:13:56 +0000
Received: from [IPv6:2003:c5:9713:8800:7e76:35ff:fe14:e6d7]
 (p200300c5971388007e7635fffe14e6d7.dip0.t-ipconnect.de
 [IPv6:2003:c5:9713:8800:7e76:35ff:fe14:e6d7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 5BCB362059;
 Mon, 25 May 2020 12:13:51 +0200 (CEST)
To: mail@adrianschmutzler.de, =?UTF-8?Q?=27Linus_L=c3=bcssing=27?=
 <linus.luessing@c0d3.blue>, openwrt-devel@lists.openwrt.org
References: <20200525074000.2749-1-linus.luessing@c0d3.blue>
 <005701d63276$6bf11620$43d34260$@adrianschmutzler.de>
From: =?UTF-8?Q?Linus_L=c3=bcssing?= <ll@simonwunderlich.de>
Message-ID: <c4c2cdbf-30ff-86e8-30ff-e61f4867c90e@simonwunderlich.de>
Date: Mon, 25 May 2020 12:13:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <005701d63276$6bf11620$43d34260$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_031355_479231_E4CADC2F 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] layerscape: kernel: cma: increase CMA
 buffer size from 16 to 32MB
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
Cc: 'Sven Eckelmann' <sven@narfation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 25/05/2020 11:25, mail@adrianschmutzler.de wrote:
[...]
> Despite, armv7 uses 64 MB ?

Hm, you're right. Not sure, I wouldn't increase the CMA buffer more as 
needed though, as any unused CMA space is basically wasted, it can't be 
used for caches etc right now.

But I can increase it to 64 MB to not divert from armv7 if that's 
preferred. As all layerscape boards usually come with a large amount of 
RAM, I assume?

Regards, Linus

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
