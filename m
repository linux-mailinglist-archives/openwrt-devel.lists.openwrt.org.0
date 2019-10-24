Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6FFE3A57
	for <lists+openwrt-devel@lfdr.de>; Thu, 24 Oct 2019 19:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DmQdzPehmp5ktScbMoIUkNXfCBYa8T79jkBv9o+CBW8=; b=XRmYx+GZbPcCo5OEiBAqXVJQL
	jyn/NWYTVmfdCP01hgd2/RBbpemeP9PGforF8ip7dau4B20IlAQzTS9B0FbFhFAnV/6KNwql4lxFf
	MGwxvrU6j8CnmufWcaRicC6uzMAL7HeA1+5UL8rod6dXpZ5x4XPx7vHabZM08l5p8WLrdyjLOxnph
	1Fnn9kFl/13YI8JGwAk62jjx4Fyu1q6PDSWDP8d1Q7htnLRwryTfKq05GC6mJmYU76rsF9k6FdPWa
	0tvlbdl4f0O8GR6ELSMD0QyzVYcQh2gnRc9ivZsDcTscmc0BdgyGU1fcgymzJY3gxvQ/axCBEJCV0
	jZswKpAiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNhCc-0005Mh-Kc; Thu, 24 Oct 2019 17:47:14 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNhCT-0005Ls-EZ
 for openwrt-devel@lists.openwrt.org; Thu, 24 Oct 2019 17:47:08 +0000
Received: from [2a01:598:8880:98d0:36f3:9aff:fed3:ead7]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iNhCH-0006m7-0X; Thu, 24 Oct 2019 19:46:54 +0200
To: Daniel Golle <daniel@makrotopia.org>, Jo-Philipp Wich <jo@mein.io>
References: <b247e681-6f9a-5e3d-2744-ee5bdb460d1d@rapiduswireless.com>
 <5b5d8f6a-49e9-909a-4663-9ae2555a281a@mein.io>
 <20191024121831.GC1252@makrotopia.org>
From: John Crispin <john@phrozen.org>
Message-ID: <a9b7a3fe-3896-c38d-b203-f1320c354dbd@phrozen.org>
Date: Thu, 24 Oct 2019 19:46:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191024121831.GC1252@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_104705_647645_8EA7D419 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] How to trigger wifi reload from wifi.lua
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
Cc: Nick Dennis <ndennis@rapiduswireless.com>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 24/10/2019 14:18, Daniel Golle wrote:
> On Thu, Oct 24, 2019 at 01:21:56PM +0200, Jo-Philipp Wich wrote:
>> Hi,
>>
>>> On the Luci GUI, the current behaviour of Save&Apply of changes to the
>>> items in wifi.lua and wireless_modefreq.htm is to invoke a network
>>> restart. I would like to to change this behavior to invoke wifi restart
>>> directly from wifi.lua.
>>
>> This is not supported and will confuse the netifd wireless state
>> tracking. You should instead extend the netifd wireless handlers to
>> properly deal with updated values.
> 
> John and me have been working on this in the past months, I'm now doing
> a final round of rebasing and testing right now.
> Take a look at my staging tree here:
> https://git.openwrt.org/?p=openwrt/staging/dangole.git;a=summary

thanks for wrapping this feature up !
	John
> 
> What is new here is that hostapd and wpa_supplicant are running
> permanently and offering a ubus interface to add, remove and modify
> wifi interfaces. netifd and the scripts previously wrapping around
> hostapd/wpa_supplicant have been modified to make use of that.
> You can easily test it by modifying the wireless configuration and
> calling 'wifi reconf', changes should take effect immediatly without
> affecting unmodified networks.
> 
> Currently, there is still one instance of each service for each
> wiphy, however, once things have been tested a bit more, we can
> reduce this and use the same service to manage interfaces accross
> radios -- this should already be supported in hostapd/wpa_supplicant
> right now, however, we intend to change things one by one to make
> debugging easier.
> 
> I'd highly appreciate all reviewing and testing of our changes, I'm
> planning to merge them into master at the end of next week after
> posting a comprehensive series on the mailing list tomorrow or monday.
> 
> 
> Cheers
> 
> 
> Daniel
> 
> 
> 
> 
>>
>>
>> ~ Jo
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
