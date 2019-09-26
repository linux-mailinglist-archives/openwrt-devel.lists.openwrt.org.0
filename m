Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E39BF4BB
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 16:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RAaH0PdTmV/KNkXPEtNQmKzjhB/DuBFTsH0TQEKQ37A=; b=Kl0fa9xuBVsjkoY9JZ5aRxAYq
	nH/l3QGThg7vp3uZRpvN6MCKlIoZXBPWPE7yzfj/EUjpc/50Ay7dvNHi1mzsSNpQ2yew8jbBi5han
	3OwZLL0JdXviXioiQ05oO4FBn3cXG+ok6ukVGdeKmKGrT8838OyrpcunDF15QlqAV+Dik9mqkpviZ
	sINKvVV8z0Mb/L/ZRMoeQ0IsdCoQ9p0kNpKt2TDXyDGkdbNneaUYlpz8mPNR3bbMmy/sAEmfZYN2T
	GcJVI4PJVJCpOxKf0nYnx9ustElv5f/X6StftMRGzFIIo/wk7Du5NZ9e3nE5S0YjTKtYZA4aNcVTH
	I15ZGlE1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUT7-00039L-Fj; Thu, 26 Sep 2019 14:10:05 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUSj-0002us-Qt
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 14:09:44 +0000
Received: by mail.pbx.lv (MailSystem, from userid 80)
 id A06001A60AA; Thu, 26 Sep 2019 17:09:35 +0300 (EEST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Date: Thu, 26 Sep 2019 17:09:35 +0300
From: Roman Yeryomin <roman@advem.lv>
In-Reply-To: <20190913222248.30764-1-roman@advem.lv>
References: <20190913222248.30764-1-roman@advem.lv>
Message-ID: <cc5d84db9d273e7d9118fb5f1cfd1969@advem.lv>
X-Sender: roman@advem.lv
User-Agent: Roundcube Webmail/1.0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_070942_107582_0DE4A02D 
X-CRM114-Status: UNSURE (   4.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] libubox,
 jshn: add option to write  output to a file
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

On 2019-09-14 01:22, Roman Yeryomin wrote:
> This would allow board_config_flush to run one command instead
> of two and would be faster and safer than redirecting output
> and moving a file between filesystems.
> 
> Originally discussed here:
> http://lists.openwrt.org/pipermail/openwrt-devel/2017-December/010127.html
> 

Anybody?
I would like to submit a patch to base files which depends on this.

Regards,
Roman

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
