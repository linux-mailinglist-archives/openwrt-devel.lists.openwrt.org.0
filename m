Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46331DF6E4
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 22:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uNuoBO1f/dSZRptYoVLV4l8RaxduBGP3WqSHR6K8iEI=; b=T5eqH+QZfPK2iLBFJnIVTJC5m
	4pZC/bQZ0ccghrXcnwkbmx7K/o5MlHcvH9AN1vKGJv5Tw7deoNUn9bnZE+bk5tqMATE1GByfPqFz9
	W5fYTrJnGUU9yDcWYeTuPUMgmLRpDeY+pyAT9lkBCpLsc8u7xTdZhXJ/fENLe/5mWNn9axGAKb4NU
	zqWNmpY2SWaNEgIGkkgwKdzLk5idsJbWbMNW4UZ2AmKrpFALo5PavFDSlLRoctmQA8LfrgJfAmZRl
	1j1JxjmGZM1Q5AyyZKTpwcSgBIKqau+kS+oJV57KDgqe6OVF6ByPOUq7irJ1FFeznsc5ADFUiKfgG
	7pxdtxifg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeVU-0000qu-3v; Mon, 21 Oct 2019 20:42:24 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeVL-0000qZ-O1
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 20:42:17 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMeVJ-00014Z-QQ; Mon, 21 Oct 2019 22:42:13 +0200
To: David Bauer <mail@david-bauer.net>
References: <20191021191308.16311-1-mail@david-bauer.net>
 <d3756443-be9b-d090-03ef-b478e62ed002@phrozen.org>
 <3ee87f2d-68f6-1dc7-f0df-ddc4b225efc2@david-bauer.net>
From: John Crispin <john@phrozen.org>
Message-ID: <4e0a3acf-f266-34ad-600d-bf82e19f263d@phrozen.org>
Date: Mon, 21 Oct 2019 22:42:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3ee87f2d-68f6-1dc7-f0df-ddc4b225efc2@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_134215_944212_B9FF4EEC 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] mac80211: add rtw88 driver
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

On 21/10/2019 21:31, David Bauer wrote:
> Hello John
> 
> On 10/21/19 9:22 PM, John Crispin wrote:
>> On 21/10/2019 21:13, David Bauer wrote:
>>> +config-$(call config_package,rtw88) += RTW88
>>> +config-y += RTW88_CORE RTW88_PCI RTW88_8822BE RTW88_8822CE
>>> +
>>
>> why not put it all behind config-$(call config_package,rtw88) ? of course kbuild will "is not set it" if the prior is not selected but you could be explicit here. its bikeshedding but I was wondering if I am missing the obvious here.
> 
> Good point, i will adjust this here. It's a leftover from when i thought building seperate packages
> for each WiFi card is a good idea (which i don't think still is).
> 
> Best wishes
> David
> 

can you resend a V2 please, i'll mark this one as superseeded in that case
	John


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
