Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6B2154240
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 11:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3PB41jG3MyzKujLx9PrsXJlhI6qtZuND2SBrGeqn7Qc=; b=NxMnjEodU3Fqi1QHPTHqRjNU7
	ORM66wkt3droXru7wkZv5bRrVTWVcLLmTuPwe/6sJZO85bKy7ow2RiYBb8IW8z12DsJ4EBr5fwOib
	xQCAEc6AbFibsU/FpvWFbDWDBBB+7qHpL1kpcPl7tZCT7Oev83A5XY6i3vazSB+OMfZLviTcCkXSk
	BGOqXnctnool1Yu2yrRafSWCj5FJIg8MCWR1pL2SxVy3T4njDSwcm+d8CyeFDiTXFPVAv7lg47uds
	koIrTMwO7Qh8a7mh8r04x+dpYdDhpUTqj7niSDAwRxFCfVBFLh6wh0tcJc5wC4tFTUHfPgEfChd4i
	HeQaBem3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izefO-0002Ic-N7; Thu, 06 Feb 2020 10:45:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izefH-0002IG-Di
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 10:45:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id x7so5591991ljc.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 02:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=MtOMhNlsc20si0Ou0vD5LekDL98Y7M2eHszDQVK2dNY=;
 b=qBHCNyGLRp64L4x6chNJfN3kh/GzCtrV8rR+6iGV2SWVPei72j+YEyDElTE036P+Lc
 kJHn13K+fsK+VU3xGaqh/rQESN+BmT1YnCen/a3iDMj2AD0KQ1bEE2koMxb2FMXbEihL
 Avcm0ypxZqb+lH5kLszcacgwUqRWc3ZL6S9L/VEIatSzLsQzeoJYCx/8JKz13PukIm6j
 vN88WDWL4sSt4P+7dpdMWHpexztB2evETgPI9UlMe6M+ub3NtlsnUsJTIAHAerdN6Byj
 vXsT2IR0AIwSxLiQRS3XaRVr61OrmUdPQ1Dbrj4omlFYqTiiPezfksVVtDs5ik9u7vF/
 MfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=MtOMhNlsc20si0Ou0vD5LekDL98Y7M2eHszDQVK2dNY=;
 b=F0BdwfxRvkUpzNwYvT3JLUA9F7B76dOQSXKicE0Xg+hm8PC0D/yHiDnnlYgYbuMwIw
 N5OsWAKTW/sMuEMHP7bNpfUhx1QmguSDHkfZlyYoI9+ulSdS8/HmNH2UfhScACua9Gsq
 YoA8JZCAqEzvegLBdHC7FOMx/NCXF8OfMQPGNaTGviez1Lnyqj6XLvyrUVYYD11haX9+
 OxWIEAN+ILsCPC3rzMZVYFUlISmMk/PgmYo+WmPFnCWOuKsylFdmaImaL8QsRhCwUKLh
 FBn0Yzg8cSK4OlKzhCMyRzHImU5i0dGbQNnOlVqRgPHnYnjr4sJCFH1vi0tGLSHneqOD
 Radg==
X-Gm-Message-State: APjAAAUunOKbU4EhXqwozw5Dmurvxi6C2gGkKgHVFHj+XHfunRTlzSrK
 GpeILBbeDZctEEheRNbljnWPTPv+
X-Google-Smtp-Source: APXvYqwZ/i5zLOxyjH3brBUoN5NOybcKVyM2N/CRNKoZOAEyHo7VLUsTdy2WcIeN7QZyuMWe7A0ieQ==
X-Received: by 2002:a2e:8758:: with SMTP id q24mr1709739ljj.157.1580985940685; 
 Thu, 06 Feb 2020 02:45:40 -0800 (PST)
Received: from [192.168.90.130] (88-119-152-93.static.zebra.lt.
 [88.119.152.93])
 by smtp.gmail.com with ESMTPSA id l12sm1139420lji.52.2020.02.06.02.45.39
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Feb 2020 02:45:39 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <20200205170651.GA879610@makrotopia.org>
 <00d401d5dc49$062096a0$1261c3e0$@adrianschmutzler.de>
 <20200205174959.GB736874@makrotopia.org>
 <004f01d5dcd7$a5485cc0$efd91640$@adrianschmutzler.de>
From: =?UTF-8?Q?Simonas_Tamo=c5=a1aitis?= <simsasss@gmail.com>
Message-ID: <d6d20714-f5c7-60e6-cfbb-394fbbe5d8c7@gmail.com>
Date: Thu, 6 Feb 2020 12:45:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <004f01d5dcd7$a5485cc0$efd91640$@adrianschmutzler.de>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_024543_486226_2BEDB1F0 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [simsasss[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for Teltonika
 RUT955
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

Hello,

On 2/6/20 12:24 PM, Adrian Schmutzler wrote:
> Hi,
>
>>>> +
>>>> +		led_system_green: system_green {
>>>> +			label = "rut955:green:system";
>>>> +			gpios = <&gpio_ext 6 GPIO_ACTIVE_HIGH>;
>>>> +			default-state = "on";
>>>> +			linux,default-trigger = "phy0tpt";
>>> tpt trigger to the system LED? Don't think that would be really helpful,
> maybe
>>> one can use one of the signal leds for that?
>> This is how the vendor firmware handles it as well and there is a
>> Wifi-symbol next to that LED. The signal bars are supposedly intended
>> for the GSM/WCDMA/LTE WWAN signal strength.
>>
> Okay. But the name/label should somehow indicate that, so it doesn't look like a
> mistake.
>
> If there is a WiFi symbol next to the LED, I'd actually consider renaming it to
> "wifi" or "wlan", though.
>
> Best
>
> Adrian
It's not wifi led. Its mobile connection type indicator 2G/3G/4G. RUT955 
do not have leds for wifi.
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
