Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0A12AC3F
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 23:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ona/mRl86OMjQqHmjWZv6ZxeoyI9o8ldmPOaHBhc+s=; b=VfxQCmlR4VTZJ8
	pICEJ5QsDQJUVWcvuGYdrykDWUFKAUhiUt72OBEpTRaxcdF0vfAMuxOOUY8DpO8EMKLUxWHqSY0Cs
	PN2hhPZClpbCTSXcRVo+n5J3x0S18Jy/VyOqh5AGDDTqVlTe2nqF3JX+5n9H4tRh1+M/bCIVmhjA9
	82rJGSSeZ+SXk/rOTOdXUnjuQ9KR+QwjkQzlhBa5mozU0S9DzbPJ1fbtqEgyL4SyFGQD+gPtMh8ya
	mv+7wGKRsxh2g0IM9dKCNRCTMN7S4JOzK0Ri27LKEmTqy3jAx+2ryF3ciX8P6yeXrlLQ9LgV+dS8c
	He6BthOT1UiegFntaAvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV0Nh-0004ej-59; Sun, 26 May 2019 21:08:37 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV0NX-0004e8-IM
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 21:08:30 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 69D664F21B;
 Sun, 26 May 2019 23:08:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id a2ynVnpBa8iR; Sun, 26 May 2019 23:07:58 +0200 (CEST)
To: Peter Lundkvist <peter.lundkvist@gmail.com>
References: <20190504151602.7194-1-hauke@hauke-m.de>
 <20190505065904.23fb1d9a@mir>
 <6577391b-9851-c3a3-2be0-ee5950d894d9@hauke-m.de>
 <2f4633ce-d456-b6ed-c7b6-9250088ad882@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <c98af2d7-0a74-6be5-14e4-64959e8d37ae@hauke-m.de>
Date: Sun, 26 May 2019 23:07:57 +0200
MIME-Version: 1.0
In-Reply-To: <2f4633ce-d456-b6ed-c7b6-9250088ad882@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_140827_915926_E4F543A6 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] hostapd: update to version 2.8
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 5/26/19 1:24 PM, Peter Lundkvist wrote:
> Hi,
> 
> On 2019-05-05 23:43, Hauke Mehrtens wrote:
>> On 5/5/19 6:59 AM, Stefan Lippers-Hollmann wrote:
>>> Hi
>>>
>>> Successfully build-tested on:
>>> - ath79
>>> - ipq806x
>>> - lantiq
>>>
>>> Succeffully runtime tested on:
>>> - ipq806x
>>>
>>> On 2019-05-04, Hauke Mehrtens wrote:
>>>> This also syncs the configuration files with the default configuration
>>>> files, but no extra options are activated or deactivated.
>>>>
>>>> The mesh patches were partially merged into hostapd 2.8, the remaining
>>>> patches were extracted from patchwork and are now applied by OpenWrt.
>>>> The patches still have open questions which are not fixed by the author.
>>>> They were taken from this page:
>>>> https://patchwork.ozlabs.org/project/hostap/list/?series=62725&state=*
>>>>
>>>> Signed-off-by: Hauke Mehrtens <hauke at hauke-m.de>
>>> Tested-by: Stefan Lippers-Hollmann <s.l-h at gmx.de>
>>>
>>> [...]
>>>> --- a/package/network/services/hostapd/Makefile
>>>> +++ b/package/network/services/hostapd/Makefile
>>>> @@ -11,9 +11,9 @@ PKG_RELEASE:=6
>>>>
>>>>  PKG_SOURCE_URL:=http://w1.fi/hostap.git
>>>>  PKG_SOURCE_PROTO:=git
>>>> -PKG_SOURCE_DATE:=2018-12-02
>>> [...]
>>>> +PKG_SOURCE_DATE:=2.8
>>> [...]
>>>
>>> The version number goes backwards here, I'd suggest sticking to the
>>> date here (2019-04-21) otherwise opkg would like to install the older
>>> snapshot again:
>>>
>>> # opkg update
>>> [...]
>>> # opkg list-upgradable
>>> hostapd-utils - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>>> wpad-openssl - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>>> wpa-cli - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>>> hostapd-common - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>>>
>>> You might also want to reset PKG_RELEASE to 1:
>>>
>>> --- a/package/network/services/hostapd/Makefile
>>> +++ b/package/network/services/hostapd/Makefile
>>> @@ -7,11 +7,11 @@
>>>  include $(TOPDIR)/rules.mk
>>>
>>>  PKG_NAME:=hostapd
>>> -PKG_RELEASE:=6
>>> +PKG_RELEASE:=1
>>>
>>>  PKG_SOURCE_URL:=http://w1.fi/hostap.git
>>>  PKG_SOURCE_PROTO:=git
>>> -PKG_SOURCE_DATE:=2.8
>>> +PKG_SOURCE_DATE:=2019-04-21
>>>  PKG_SOURCE_VERSION:=63962824309bb428e5f73d9caae08fcb949fbe36
>>>  PKG_MIRROR_HASH:=c3d789b822428c92bd47b3c85d9dc36cced38f7affe885cc2bb15e54248a4566
>>
>> Ok, I will fix this.
>>
>> Thanks for testing.
>> Did someone test the ieee80211s mesh functionality?
> 
> I did some quick tests with mesh, and I see one regression when trying to set
> up mesh on DFS channels (seems to work ok on non-DFS channels).
> 
> With hostapd-2.8-63962824:
> Sun May 26 10:23:09 2019 daemon.notice wpa_supplicant[18266]: mesh1: interface state COUNTRY_UPDATE->DFS
> Sun May 26 10:23:09 2019 daemon.notice wpa_supplicant[18266]: mesh1: DFS-CAC-START freq=5680 chan=136 sec_chan=-1, width=0, seg0=0, seg1=0, cac_time=60s
> Sun May 26 10:23:10 2019 daemon.notice wpa_supplicant[18266]: mesh1: MESH-GROUP-STARTED ssid="asdd390we12nwxx" id=0
> Sun May 26 10:24:10 2019 daemon.notice wpa_supplicant[18266]: mesh1: DFS-CAC-COMPLETED success=1 freq=5680 ht_enabled=0 chan_offset=0 chan_width=0 cf1=5680 cf2=0
> Sun May 26 10:24:12 2019 daemon.notice wpa_supplicant[18266]: mesh1: Unknown event 54
> 
> With hostapd-2018-12-02-c2c6c01b:
> Sun May 26 10:33:15 2019 daemon.notice wpa_supplicant[18709]: mesh1: interface state COUNTRY_UPDATE->DFS
> Sun May 26 10:33:15 2019 daemon.notice wpa_supplicant[18709]: mesh1: DFS-CAC-START freq=5680 chan=136 sec_chan=-1, width=0, seg0=134, seg1=0, cac_time=60s
> Sun May 26 10:33:15 2019 daemon.notice wpa_supplicant[18709]: mesh1: MESH-GROUP-STARTED ssid="asdd390we12nwxx" id=0
> Sun May 26 10:34:19 2019 daemon.notice wpa_supplicant[18709]: mesh1: DFS-CAC-COMPLETED success=1 freq=5680 ht_enabled=1 chan_offset=-1 chan_width=2 cf1=5670 cf2=0
> Sun May 26 10:34:19 2019 daemon.err wpa_supplicant[18709]: Using interface mesh1 with hwaddr ba:ec:a3:d7:6a:c1 and ssid ""
> Sun May 26 10:34:19 2019 daemon.notice wpa_supplicant[18709]: mesh1: interface state DFS->ENABLED
> Sun May 26 10:34:19 2019 daemon.notice wpa_supplicant[18709]: mesh1: AP-ENABLED
> 
> /Peter
> 

Hi Peter,

Thanks for reporting this.
Event 54 is EVENT_DFS_PRE_CAC_EXPIRED

There are two places which print out "Unknown event", I assume you hit
the version in ./wpa_supplicant/events.c because of the debug level.
In this switch statement EVENT_DFS_PRE_CAC_EXPIRED is not handled, so we
should see this message in case the code receives this event.

I am not familiar with the hostapd code, but I would suggest to handle
the event like it is done in ./src/ap/drv_callbacks.c by calling a local
function and then the existing function hostapd_dfs_pre_cac_expired().

Hauke

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
