Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62943EC5C3
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 16:42:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FYUEJN2r9qZzjwSAtEqN+T6zL6Q95MQXMwIEbSt19pQ=; b=pnKSugFZhNJW7asDjsf80Ry8i
	vjuJYWXnj2MrifMWsvxhoJ+ytUKxdp7TOLasybeZoFbUs3rf3x8lFsiuEVJwqaEo+ixk9Z6LTJF4z
	Mh7UpwH2bw+190w/aW4JkC+pLuVHytMMOkAB1W0I92+LM2voM1RUd1Xv5ZQtF6IHZqfapZrT2F4b7
	dzbd5pLemO8mosPbgNK2+P2va8gAqgzdLOTm2FESwBMiP7riFjgRgIkUYWljlL+illLmqKZNOzlxR
	mtG7FlbA0+a1Khviyj6VFlWM04WPNgYpnl22jsKRxczUZza8iv+YObCPknGlr5nH7w0qNixKZejOF
	ubmBK1yXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ4V-0000QM-33; Fri, 01 Nov 2019 15:42:43 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ4O-0000PI-33
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 15:42:37 +0000
Received: from JKLETSKY-MBP15.guidewire.com (unknown [199.91.43.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id BD2E53B412;
 Fri,  1 Nov 2019 08:42:34 -0700 (PDT)
To: Andre Valentin <avalentin@marcant.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
 <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
 <20191030221611.5ac4b262@mir>
 <5f0481be-07fd-b88b-ba46-129649d3f33a@marcant.net>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <f468d6d5-e0d5-4a9c-9d27-565812feed30@allycomm.com>
Date: Fri, 1 Nov 2019 08:42:34 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5f0481be-07fd-b88b-ba46-129649d3f33a@marcant.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_084236_132867_A1363F4D 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel / ipq806x
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
Cc: Stefan Lippers-Hollmann <s.l-h@gmx.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 11/1/19 2:12 AM, Andre Valentin wrote:
> Hello,
>
> I also did several tests on the 4.19 ipq806x (NBG6817). I noticed that VPN throuput (IPsec Performance) dropped to 30% with exactly the same config (kernel and openwrt), kernel crypto and arm crypto
> stuff tested.
> Also the whole system feels a bit slowier. Timers (clock, ddr) in dts have been compared, also checked in the running system. I'm a fan of 419, but this needs be solved before and I have no clue where
> to look. Any ideas?
>
There has been some discussion on the forum around IPSec performance
and kmod-crypto-ctr for the similar ipq40xx. It may provide insight.

https://forum.openwrt.org/t/ipsec-differences-between-devices-is-kmod-crypto-ctr-the-problem/44461?u=jeff

https://github.com/openwrt/openwrt/pull/2518

I haven't been following it very closely, but as I was surprised that
the IPQ4019-based EA8300's OpenVPN throughput was only about 50%
better than that of a QCA9558 or QCA9563, I put catching up on the
topic on my list.


Jeff




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
