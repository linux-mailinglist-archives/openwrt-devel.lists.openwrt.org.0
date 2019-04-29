Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B694ECDA
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 00:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/A5TeOnQqLFNrK1Cyp21/8+TEUBmJGbz+RH/RgE1qcI=; b=Id6K3k9ggWRfBm
	jMh+8czkOjZy4WyqqEhm50TUHaJVx17xTsGkGMVWrHGblLWuG2JKcSVWMuNSAgptkfg8YsYl/l+Eu
	H542xgu8JVw/+lvYNq7D5OlPWj7RbGKyzEbmPLMXmYssPd4LW20NiGKiE+st9Z/E36J38PhvVKDvI
	RZx9lVOcac4itIwRfZyi9e23MEOXQKRTVI+SBAq/4BWfbcYcM3Slh2ldZ9pqLiVoM9HrADSwxMDIh
	Gi/w9hSHqaOWbKlTYBgcjk6nb+DbzUah42S89atL7RVqkVlUFqi8iqkqs0iBsdmB+0M2xZgOKAk4/
	QFGBfEXhjb/JI9IC07hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEvo-0000yv-IS; Mon, 29 Apr 2019 22:39:28 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEvf-0000y2-2l
 for openwrt-devel@lists.openwrt.org; Mon, 29 Apr 2019 22:39:20 +0000
Received: (qmail 4855 invoked from network); 29 Apr 2019 22:39:08 -0000
Received: from localhost (HELO ?IPv6:2a02:790:ff:921:e6f8:9cff:feb4:b5e0?)
 (127.0.0.1)
 by achernar.uberspace.de with SMTP; 29 Apr 2019 22:39:08 -0000
To: Matthias May <matthias.may@neratec.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <f0cd6229-71b1-fecc-3876-97a68ef743a6@ironai.com>
 <cd20ab81-8400-0e34-dc7c-ff885aa5d1ef@neratec.com>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Message-ID: <2a85ab45-d350-c2d0-175c-1e23f79ceb8c@ironai.com>
Date: Tue, 30 Apr 2019 00:39:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <cd20ab81-8400-0e34-dc7c-ff885aa5d1ef@neratec.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_153919_409351_D92B66C5 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Fix TX power handling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Matthias,

thank you for the hint. That's funny, because someone from the German Federal Network Agency
said that when radios have multiple antennas, the aggregated EIRP of the antenna array must not exceed the
EIRP limits of a single antenna, but I've assumed this is done in hardware and not in software.

Can you hint me to the source for this lookup table?

Regards,

Vincent Wiemann


On 29.04.2019 08:50, Matthias May wrote:
> On 25/04/2019 17:54, Vincent Wiemann wrote:
>> First EIRP is by definition ERP + antenna gain - cable loss.
> 
> Hi
> Small detail: Don't forget the antenna array gain.
> 
> So EIRP as:
> Antenna Port Power
> + Antenna Gain
> + Antenna Array Gain
> - Cable Loss
> 
> The Array Gain as a simple lookup table:
> 1 Antenna: 0
> 2 Antennas: 3
> 3 Antennas: 5
> 4 Antennas: 6
> 
> BR
> Matthias
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
