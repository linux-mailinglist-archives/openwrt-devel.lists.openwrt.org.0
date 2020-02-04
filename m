Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF37151B53
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Feb 2020 14:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yRornIJpdi9HTUX9MmdmEzJX9y5R8SEVHqLMzZKOTHs=; b=hpN/M5DQR7lSgOcqm1K0ej9wD
	gwHsZKRa5HSGFYvzB/fYnM4upDdyPLaFv59uxZQ+boeFZttu2IMtdXtnrvTmDaX1ylC21Na9vLEQ/
	CmVlQeonTpsYNToilv1NYiyVRNILkjkdlALnJs8uGhCgA/OWKYMuRfn51Y/rFjTvvXE+O7tfWLPUp
	Z0MIeNnFmUrPoEhYIFoWbiSmkMfdt89C9gYxGys/f6zjjLyLnxMoqIswt1TlKYTcPe4llpZDxMz1l
	vAZ0sm4dtU6i80o1spIOIGXpB86jXjYDct/uhE6JLQmYrYZlOiXGNnlt6JWxkaifiBDG+WuLlIWUg
	/kRVbmwbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyJU-0001k7-De; Tue, 04 Feb 2020 13:32:24 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyJP-0001jg-Pd
 for openwrt-devel@lists.openwrt.org; Tue, 04 Feb 2020 13:32:21 +0000
Received: by mail-lj1-x243.google.com with SMTP id a13so18584526ljm.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 04 Feb 2020 05:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ZoKRTBz1iu9ALws82pnxEvAzODkN6IQkPvSwD6faZ+E=;
 b=HWDe4x4nspbDbYBxGHJmY6E66c9Eara6ezzHCK6YsZLMayxrkVZK4NVrnxNWIMNbXM
 pOAyWWGxaF4clUNS21BtMvJqLyGNN0Kdh3x73QpmH4xkl1gFnOVy1HECXUz8esC2BtD1
 +dmlEvRI4SZzZLGDowOEDNYynQ6TmdLsPvbDCh6nfN7ljAYqgm0OkkvONhkbn8QSHomg
 OsuTCNt/VG/VSDizB+hw8xSm1H1TWwB8SGRlP1uX/Dl5r7ERT7uL/sg7hdelj+BvmQgs
 BMrnyXKLkdo4EMX1q87jbuCDU699fvF29DO8D9oTIec7vpnfzz44dewJ2/bMMsDdrimG
 DNwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZoKRTBz1iu9ALws82pnxEvAzODkN6IQkPvSwD6faZ+E=;
 b=msjibmmkzsbgPUtOTzeP4SjC/3P61JkV7c9/yBBmG1QHXzCRJhQdYlbyshyudDiYV8
 izYZwHvPW8eEvZccT/1/EGukygqFsjBeHigjZYdyPTqI8mRnVuLWss2zM2CYaCM+U7vE
 PUyE/8M0kj4u55kpd1w3ZUhP9qg2/V3OYQgz1YCHBFuy77rQCUuYnkE1w2dry6gGwMhu
 L4+pStsW/2vukW32hPJTaoTXi2f5c9ts6K/bqTWGUlE/Sf9HMOK9Qj8C2N4v8JRxth61
 7dtogeSBmG/D7bvhmA0Iz05hf6Uw4ddBEnTPAh8gX9dyy93+ZGzaqruNqx6Q6+gNYoco
 rllQ==
X-Gm-Message-State: APjAAAUF17LqP93O6p8wygHQpK0UEJNFbfvy2d3/EBC+zC1JPoPrNEPG
 kEX0x/MV8XtSPTlJB7Bdd7a4kD+y
X-Google-Smtp-Source: APXvYqwZLsqBU3QlcaUfgR0kXpYJDhCqEuH55fUvH0ZfReBSgGJbkAO3u5ZpkGH5P9bHV4GW3WgvQA==
X-Received: by 2002:a2e:9213:: with SMTP id k19mr16149188ljg.141.1580823136664; 
 Tue, 04 Feb 2020 05:32:16 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id z3sm11594354ljh.83.2020.02.04.05.32.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 05:32:15 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200131142254.24953-1-pepe2k@gmail.com>
 <00c301d5db57$2e4ccb00$8ae66100$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <f510a285-3f6b-e442-259e-8a32c4af8747@gmail.com>
Date: Tue, 4 Feb 2020 14:32:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <00c301d5db57$2e4ccb00$8ae66100$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_053219_861161_3FDAE1C5 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: diag: restore default
 trigger for 'boot' LED
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

Hi Adrian,

On 04.02.2020 13:32, Adrian Schmutzler wrote:
> Hi,
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of Piotr Dymacz
>> Sent: Freitag, 31. Januar 2020 15:23
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] [PATCH] base-files: diag: restore default trigger for
>> 'boot' LED
>> 
>> For devices without a dedicated 'diag' LED, we use sometimes one of
>> other LEDs for indicating at least 'boot', 'failsafe' and 'upgrade'
>> stages. In some cases, at the same time these LEDs have defined default
>> triggers in DTS using 'linux,default-trigger' property. Current 'diag'
>> setup removes the trigger and turns off 'boot' LED after bootup.
>> 
>> One of the examples of such device is TP-Link TL-WR841N v14 (ramips)
>> which uses 'wlan' LED with defined 'linux,default-trigger' for 'diag':
>> 
>> aliases {
>> 	led-boot = &led_wlan;
>> 	led-failsafe = &led_wlan;
>> 	led-upgrade = &led_wlan;
>> };
>> 
>> [...]
>> 
>> led_wlan: wlan {
>> 	label = "tl-wr841n-v14:green:wlan";
>> 	gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
>> 	linux,default-trigger = "phy0tpt";
>> };
>> 
>> This patch extends 'diag.sh' and 'leds.sh' scripts to make sure default
>> trigger defined in DTS is restored for 'diag' LED which isn't used for
>> indicating 'running' stage.
> 
> I'm not really a fan of using LEDs for diag in that case at all, and I'd
> actually prefer to have the aliases removed there (unless vendor also used
> multiple purpose LEDs the same way).

Without any LED defined at least for 'boot' and 'failsafe', users might 
have problems entering failsafe and knowing whether device boots at all.

-- 
Cheers,
Piotr

> 
> But since we have these case in our code right now, I think this workaround is
> necessary ATM.
> 
> Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> 
> Best
> 
> Adrian
> 
>> 
>> Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
>> ---
>>  package/base-files/Makefile                   |  2 +-
>>  package/base-files/files/etc/diag.sh          |  2 ++
>>  .../base-files/files/lib/functions/leds.sh    | 27 ++++++++++++++++---
>>  3 files changed, 26 insertions(+), 5 deletions(-)
>> 
>> diff --git a/package/base-files/Makefile b/package/base-files/Makefile
>> index e389148d47..18325564dc 100644
>> --- a/package/base-files/Makefile
>> +++ b/package/base-files/Makefile
>> @@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
>>  include $(INCLUDE_DIR)/feeds.mk
>> 
>>  PKG_NAME:=base-files
>> -PKG_RELEASE:=213
>> +PKG_RELEASE:=214
>>  PKG_FLAGS:=nonshared
>> 
>>  PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-
>> files/
>> diff --git a/package/base-files/files/etc/diag.sh b/package/base-
>> files/files/etc/diag.sh
>> index 8eb36c6feb..37a8ec758e 100644
>> --- a/package/base-files/files/etc/diag.sh
>> +++ b/package/base-files/files/etc/diag.sh
>> @@ -37,6 +37,8 @@ set_led_state() {
>>  		;;
>>  	done)
>>  		status_led_off
>> +		[ "$status_led" != "$running" ] && \
>> +			status_led_restore_trigger "boot"
>>  		[ -n "$running" ] && {
>>  			status_led="$running"
>>  			status_led_on
>> diff --git a/package/base-files/files/lib/functions/leds.sh b/package/base-
>> files/files/lib/functions/leds.sh
>> index 8a1d21caef..43b2fe02ed 100644
>> --- a/package/base-files/files/lib/functions/leds.sh
>> +++ b/package/base-files/files/lib/functions/leds.sh
>> @@ -1,16 +1,24 @@
>>  #!/bin/sh
>>  # Copyright (C) 2013 OpenWrt.org
>> 
>> -get_dt_led() {
>> -	local label
>> +get_dt_led_path() {
>>  	local ledpath
>>  	local basepath="/proc/device-tree"
>>  	local nodepath="$basepath/aliases/led-$1"
>> 
>>  	[ -f "$nodepath" ] && ledpath=$(cat "$nodepath")
>> +	[ -n "$ledpath" ] && ledpath="$basepath$ledpath"
>> +
>> +	echo "$ledpath"
>> +}
>> +
>> +get_dt_led() {
>> +	local label
>> +	local ledpath=$(get_dt_led_path $1)
>> +
>>  	[ -n "$ledpath" ] && \
>> -		label=$(cat "$basepath$ledpath/label" 2>/dev/null) || \
>> -		label=$(cat "$basepath$ledpath/chan-name" 2>/dev/null)
>> +		label=$(cat "$ledpath/label" 2>/dev/null) || \
>> +		label=$(cat "$ledpath/chan-name" 2>/dev/null)
>> 
>>  	echo "$label"
>>  }
>> @@ -35,6 +43,17 @@ led_off() {
>>  	led_set_attr $1 "brightness" 0
>>  }
>> 
>> +status_led_restore_trigger() {
>> +	local trigger
>> +	local ledpath=$(get_dt_led_path $1)
>> +
>> +	[ -n "$ledpath" ] && \
>> +		trigger=$(cat "$ledpath/linux,default-trigger" 2>/dev/null)
>> +
>> +	[ -n "$trigger" ] && \
>> +		led_set_attr "$(get_dt_led $1)" "trigger" "$trigger"
>> +}
>> +
>>  status_led_set_timer() {
>>  	led_timer $status_led "$1" "$2"
>>  	[ -n "$status_led2" ] && led_timer $status_led2 "$1" "$2"
>> --
>> 2.20.1
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
