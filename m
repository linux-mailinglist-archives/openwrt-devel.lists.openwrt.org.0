Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A532A962
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 13:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnVzqpu0Nr1vUpdx3P/enzR8Ia24NFHplWdSwrTQID4=; b=Ik74R2tzNMuP1u
	0puAjpEGR1eNDRsXnmwVenhFukmj7T6+Un2ty2szhj/KDG0qvu/Xak/0J3ffeqp3UuF8/KJYRngu8
	bUd3GOVxGNFOyas2iowT4LZANdlrvHn2ESdMpzrW4cyQbTqFj2ggFL+5xZrgraB4b9/5GjKqURgdp
	zwUnU16VPdH3WOhLfMNGGcTxDKk1yzs3vxx8uItRu7+3XYVpuqWi+dXQ2nISeSonz/CEJ0zmDvAtF
	ZyH708YYM9zjBcGiDUvbQeq0ABXeC1HQGW7kV66a37/x3UIT51kXPpyIMe9ltKItsZHqcMlcRVPDh
	Hg+PGP7tIxoz3ZW4V88A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUrHC-0000ZB-MT; Sun, 26 May 2019 11:25:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUrH4-0000KZ-VT
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 11:25:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id q62so12258426ljq.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 04:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KLilfc/xotmRVJc8KI6FdiFzgtjBWe67ys3dYA7LzxQ=;
 b=QxbcXc+bTI7d61L+cX0a4vYpnqpBOREa822ySwN4pKdXDPlgRIO0rgoHpYQexNhg8R
 +q2Clswv6Zr8AkZhdvwI3xSqrUkI7zWZPrhuQfduyxIiFt3eciMs/hVjAz3SGJgmDkhp
 67R6SCp0oXHYIbwCe/VFFzDH6rM/AzlEh2h1O2EiHZ8hOaeoAHy8stgd5TF4xWIcGTDp
 06UNU5+hcjH28u3MWDM4ykqjTNAQvDfh216IUmt3vnFXiepndv94cWvFpqwQbWCAhcrl
 otNlvaYNVqK3HAf/Ra8CPhKoavdf1cyc9UkNe2OYdcD6+9zBn8RTnx4rOrEsxDIWzsyf
 qr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KLilfc/xotmRVJc8KI6FdiFzgtjBWe67ys3dYA7LzxQ=;
 b=i5cErklNMaIh+PNqR0eR4E6c3WHT5zQ03Ez1JKtd3LRs/tIipzcYZXkIDT8lxEdo6B
 UpyR5kER7hOzgvRmWD6mLV+8TxL1i813gcN6CE0ATIgl5NfDOOOJICR041c7dwCnMVGi
 g376in/TH/a6mClhqIjbyj34bMaXMIK/NAFTfMt3+ql7lfIAW0/m2jFjhUBIkXygWNYV
 kAXtvw4wihJxsW7u86a7RPOI0iE4FwaXKGCxooXFuFbpnF2BhbmglhdPabvmWN2nZ5LE
 GDc2APSAimETazOR79M1I0LfWVTmOEMhfR9tWv7ZD3ZNXqxPa9ZxfVmwN54YDgflWIdY
 NZ4w==
X-Gm-Message-State: APjAAAVwpo/93AEniNyF+M8H5I7+P9qVr23PuF0CgaqUK8H4Ug5Fc7cM
 UV9m8zuPayRhHjWPvYbL6O7w7Ye9
X-Google-Smtp-Source: APXvYqyqLb4bC+ISOuISSSaA4LWi5/iissivhPtVnyt9quCpgXqg8YftRKjpstd44plnjRUD84P3vw==
X-Received: by 2002:a2e:9b46:: with SMTP id o6mr20912986ljj.76.1558869906739; 
 Sun, 26 May 2019 04:25:06 -0700 (PDT)
Received: from [192.168.22.117] (h-8-196.A357.priv.bahnhof.se. [155.4.8.196])
 by smtp.googlemail.com with ESMTPSA id
 v16sm1598090lji.88.2019.05.26.04.25.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 04:25:06 -0700 (PDT)
To: Hauke Mehrtens <hauke@hauke-m.de>
References: <20190504151602.7194-1-hauke@hauke-m.de>
 <20190505065904.23fb1d9a@mir>
 <6577391b-9851-c3a3-2be0-ee5950d894d9@hauke-m.de>
From: Peter Lundkvist <peter.lundkvist@gmail.com>
Message-ID: <2f4633ce-d456-b6ed-c7b6-9250088ad882@gmail.com>
Date: Sun, 26 May 2019 13:24:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6577391b-9851-c3a3-2be0-ee5950d894d9@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_042511_039483_41822CF6 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peter.lundkvist[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi,

On 2019-05-05 23:43, Hauke Mehrtens wrote:
> On 5/5/19 6:59 AM, Stefan Lippers-Hollmann wrote:
>> Hi
>>
>> Successfully build-tested on:
>> - ath79
>> - ipq806x
>> - lantiq
>>
>> Succeffully runtime tested on:
>> - ipq806x
>>
>> On 2019-05-04, Hauke Mehrtens wrote:
>>> This also syncs the configuration files with the default configuration
>>> files, but no extra options are activated or deactivated.
>>>
>>> The mesh patches were partially merged into hostapd 2.8, the remaining
>>> patches were extracted from patchwork and are now applied by OpenWrt.
>>> The patches still have open questions which are not fixed by the author.
>>> They were taken from this page:
>>> https://patchwork.ozlabs.org/project/hostap/list/?series=62725&state=*
>>>
>>> Signed-off-by: Hauke Mehrtens <hauke at hauke-m.de>
>> Tested-by: Stefan Lippers-Hollmann <s.l-h at gmx.de>
>>
>> [...]
>>> --- a/package/network/services/hostapd/Makefile
>>> +++ b/package/network/services/hostapd/Makefile
>>> @@ -11,9 +11,9 @@ PKG_RELEASE:=6
>>>
>>>  PKG_SOURCE_URL:=http://w1.fi/hostap.git
>>>  PKG_SOURCE_PROTO:=git
>>> -PKG_SOURCE_DATE:=2018-12-02
>> [...]
>>> +PKG_SOURCE_DATE:=2.8
>> [...]
>>
>> The version number goes backwards here, I'd suggest sticking to the
>> date here (2019-04-21) otherwise opkg would like to install the older
>> snapshot again:
>>
>> # opkg update
>> [...]
>> # opkg list-upgradable
>> hostapd-utils - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>> wpad-openssl - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>> wpa-cli - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>> hostapd-common - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
>>
>> You might also want to reset PKG_RELEASE to 1:
>>
>> --- a/package/network/services/hostapd/Makefile
>> +++ b/package/network/services/hostapd/Makefile
>> @@ -7,11 +7,11 @@
>>  include $(TOPDIR)/rules.mk
>>
>>  PKG_NAME:=hostapd
>> -PKG_RELEASE:=6
>> +PKG_RELEASE:=1
>>
>>  PKG_SOURCE_URL:=http://w1.fi/hostap.git
>>  PKG_SOURCE_PROTO:=git
>> -PKG_SOURCE_DATE:=2.8
>> +PKG_SOURCE_DATE:=2019-04-21
>>  PKG_SOURCE_VERSION:=63962824309bb428e5f73d9caae08fcb949fbe36
>>  PKG_MIRROR_HASH:=c3d789b822428c92bd47b3c85d9dc36cced38f7affe885cc2bb15e54248a4566
> 
> Ok, I will fix this.
> 
> Thanks for testing.
> Did someone test the ieee80211s mesh functionality?

I did some quick tests with mesh, and I see one regression when trying to set
up mesh on DFS channels (seems to work ok on non-DFS channels).

With hostapd-2.8-63962824:
Sun May 26 10:23:09 2019 daemon.notice wpa_supplicant[18266]: mesh1: interface state COUNTRY_UPDATE->DFS
Sun May 26 10:23:09 2019 daemon.notice wpa_supplicant[18266]: mesh1: DFS-CAC-START freq=5680 chan=136 sec_chan=-1, width=0, seg0=0, seg1=0, cac_time=60s
Sun May 26 10:23:10 2019 daemon.notice wpa_supplicant[18266]: mesh1: MESH-GROUP-STARTED ssid="asdd390we12nwxx" id=0
Sun May 26 10:24:10 2019 daemon.notice wpa_supplicant[18266]: mesh1: DFS-CAC-COMPLETED success=1 freq=5680 ht_enabled=0 chan_offset=0 chan_width=0 cf1=5680 cf2=0
Sun May 26 10:24:12 2019 daemon.notice wpa_supplicant[18266]: mesh1: Unknown event 54

With hostapd-2018-12-02-c2c6c01b:
Sun May 26 10:33:15 2019 daemon.notice wpa_supplicant[18709]: mesh1: interface state COUNTRY_UPDATE->DFS
Sun May 26 10:33:15 2019 daemon.notice wpa_supplicant[18709]: mesh1: DFS-CAC-START freq=5680 chan=136 sec_chan=-1, width=0, seg0=134, seg1=0, cac_time=60s
Sun May 26 10:33:15 2019 daemon.notice wpa_supplicant[18709]: mesh1: MESH-GROUP-STARTED ssid="asdd390we12nwxx" id=0
Sun May 26 10:34:19 2019 daemon.notice wpa_supplicant[18709]: mesh1: DFS-CAC-COMPLETED success=1 freq=5680 ht_enabled=1 chan_offset=-1 chan_width=2 cf1=5670 cf2=0
Sun May 26 10:34:19 2019 daemon.err wpa_supplicant[18709]: Using interface mesh1 with hwaddr ba:ec:a3:d7:6a:c1 and ssid ""
Sun May 26 10:34:19 2019 daemon.notice wpa_supplicant[18709]: mesh1: interface state DFS->ENABLED
Sun May 26 10:34:19 2019 daemon.notice wpa_supplicant[18709]: mesh1: AP-ENABLED

/Peter

> 
> Hauke
> 
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
