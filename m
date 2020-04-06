Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BA919FEAD
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 22:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1idspSDUv/HN88W00lkyG41PbOShYLlCxlssR1fSrA4=; b=PwW4SMmTSWHr9ZAd8L2jvBElE
	B39PMbpuaTo2+cam8w3YJ9CjRcWTZ3q6J2XvN29PwyeWahZcNouhWUNMf1mwu4TlWbTZUJhiGtBn2
	x3XzV/crXF8IppzY1WgzqkdVRbRUi+5Q4pCulrQoQtNrRtQWxAcvgqvuPvrfAuTOB+qSJlPyi4Kmc
	yX1RnoLjqux7GqA35laOZXp+Nsu71AO7bU4hTX4doLTwQdm4uQ2i+SxP3SnGGMjM/+SYJ350H+TM2
	xl8+XKdgYKYLgDW6F8eKA52BvTz6/dRr7gLV+YB9Au1D/oq6945fhAysSM2BStvAGiPjY17jHkZXA
	pxpQOFDjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLXyO-0006Yn-6X; Mon, 06 Apr 2020 20:03:56 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLXyG-0006Xx-U7
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 20:03:50 +0000
Received: by mail-lj1-x22e.google.com with SMTP id t17so1060987ljc.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 13:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fwoO3t9hRu4SnfwLA1IV36N7wU8TuncIawnSB9TMroI=;
 b=BI843enjpHscOklxUiHrdxJXO+4bvkJLHuerYs1KKyhOnaP4F0MqqCpd+M95pa8/b7
 wd4BBO5CUyjBglIqhzVp01jJZq/v4Lvrob1wJ8e9Z2b1plYR82VDhElYExUpmQjTU/AT
 dO+pCkhRhmm8ThibaIi+STvSlZTX/bBSVsMZyoTIEglH8YhEyYXzHUfkgKAuwviWXtLW
 1eWFiDZqrcr+5Rn7bb5dHBkjCOc4eeZBhfvdfJSVMhJUqbKMvD2k3A7IyrswpXqVlhax
 6XAwUQA7VnvgUPT6K4yEBAwHHDL22D5gb3m0ozGrtl8SOgxkniGf81AbwK2C8RZhZJ1D
 a+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fwoO3t9hRu4SnfwLA1IV36N7wU8TuncIawnSB9TMroI=;
 b=Vy+VJ2+6uzTjV47tuzQBg5CMyQRd5q0R1dthyh2tUFP5tycCgEDdB7B0a0CcYUl5E/
 lR4bTrz2UrdP9IzHKfyUCSljeNhHgKp2Bpyb1O1Kl7c83Hsp1MLZKYIdQt6cMRZeW6IY
 PCEsHHkgLWgj1WoaOGKsGqYz0Bqfh7nYKBNODLk2607vS4t+32pSJo86FopHPZuF2h5V
 5F/p2L/0YgiD6Xm2+qHxO1pi6J6WeI//GvlHHxiW3CClWhTlU+QTcwmWNIw57nus92mR
 P26Ta0cFr4+q9p03mG6UQ9gQ3hLP1jDJvSXStA3G5FzO3i1qWh5j5yI1b/O6fI4tE3WK
 lpxw==
X-Gm-Message-State: AGi0PuZw7R+M1Mz9ThxIpcn7jAoZECnZnCiH896rSkUsoFrnZwfKvBI3
 O2d9iGpgebe6RYw3cDdZj2Y=
X-Google-Smtp-Source: APiQypI1rgQrOF0OnJN8sEzUPXseI1WMGh41wucknx1y9oKWZPitZMEOcBCcMzRjVr2CI/N5qOpfkw==
X-Received: by 2002:a2e:888e:: with SMTP id k14mr614048lji.4.1586203426650;
 Mon, 06 Apr 2020 13:03:46 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id e2sm10531954ljl.83.2020.04.06.13.03.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 13:03:46 -0700 (PDT)
To: mail@adrianschmutzler.de, 'Dan Haab' <riproute@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <20200406182013.86147-1-dan.haab@luxul.com>
 <02a601d60c40$e233bc90$a69b35b0$@adrianschmutzler.de>
 <c0d8fd9b-3755-369d-ab58-889664fb4228@gmail.com>
 <03a001d60c4b$14a18ae0$3de4a0a0$@adrianschmutzler.de>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <21cf4fc7-3425-0c53-781c-f42de75488a8@gmail.com>
Date: Mon, 6 Apr 2020 22:03:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <03a001d60c4b$14a18ae0$3de4a0a0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_130348_972854_066A4B8B 
X-CRM114-Status: GOOD (  23.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul FullMAC
 WiFi devices
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
Cc: 'Dan Haab' <dan.haab@legrand.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 06.04.2020 21:39, mail@adrianschmutzler.de wrote:
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Rafal Milecki
>> Sent: Montag, 6. April 2020 21:26
>> To: mail@adrianschmutzler.de; 'Dan Haab' <riproute@gmail.com>; openwrt-
>> devel@lists.openwrt.org
>> Cc: 'Dan Haab' <dan.haab@legrand.com>
>> Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul
>> FullMAC WiFi devices
>>
>> On 06.04.2020 20:26, mail@adrianschmutzler.de wrote:
>>>> -----Original Message-----
>>>> From: openwrt-devel [mailto:openwrt-devel-
>> bounces@lists.openwrt.org]
>>>> On Behalf Of Dan Haab
>>>> Sent: Montag, 6. April 2020 20:20
>>>> To: openwrt-devel@lists.openwrt.org
>>>> Cc: Dan Haab <dan.haab@legrand.com>
>>>> Subject: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul
>>>> FullMAC WiFi devices
>>>>
>>>> From: Dan Haab <dan.haab@legrand.com>
>>>>
>>>> This prepares support for models XAP-1610 and XWR-3150. Flashing
>>>> requires using Luxul firmware version:
>>>> 1) 8.1.0 or newer for XAP-1610
>>>> 2) 6.4.0 or newer for XWR-3150
>>>> and uploading firmware using "Firmware Update" web UI page.
>>>>
>>>> Signed-off-by: Dan Haab <dan.haab@legrand.com>
>>>> ---
>>>>    .../bcm53xx/base-files/etc/board.d/02_network | 22
>>>> ++++++++++++++++++-
>>>>    target/linux/bcm53xx/image/Makefile           | 18 +++++++++++++++
>>>>    2 files changed, 39 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network
>>>> b/target/linux/bcm53xx/base-files/etc/board.d/02_network
>>>> index f86f12407f..9256cbdc54 100755
>>>> --- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
>>>> +++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
>>>> @@ -36,6 +36,15 @@ bcm53xx_setup_interfaces()
>>>>    		ucidef_add_switch "switch0" \
>>>>    			"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
>>>> "5@eth0"
>>>>    		;;
>>>> +	luxul,xap-1610-v1)
>>>> +		ucidef_add_switch "switch0" \
>>>> +			"0:lan" "1:lan" "5@eth0"
>>>> +		ucidef_set_interface_lan "eth0.1" "dhcp"
>>>> +		;;
>>>> +	luxul,xwr-3150-v1)
>>>> +		ucidef_add_switch "switch0" \
>>>> +			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan"
>>>> "5@eth0"
>>>> +		;;
>>>>    	phicomm,k3)
>>>>    		ucidef_add_switch "switch0" \
>>>>    			"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
>>>> @@ -100,7 +109,18 @@ bcm53xx_setup_macs()
>>>>    	esac
>>>>
>>>>    	# If WAN MAC isn't explicitly set, calculate it using base MAC as
>>>> reference.
>>>> -	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] &&
>>>> wan_macaddr=$(macaddr_add "$etXmacaddr" 1)
>>>> +	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && {
>>>> +		local offset=1
>>>> +
>>>> +		case "$board" in
>>>> +		luxul,xwr-3100v1 | \
>>>> +		luxul,xwr-3150-v1)
>>>> +			offset=5
>>>> +			;;
>>>> +		esac
>>>> +
>>>> +		wan_macaddr=$(macaddr_add "$etXmacaddr" $offset)
>>>> +	}
>>>
>>> This adds another level of nesting. I'd prefer if you just added your
>>> devices to the case directly above and just use
>>>
>>> [ -n "$wan_macaddr" ] || wan_macaddr=$(macaddr_add "$etXmacaddr"
>> 5)
>>>
>>> for them there.
>>
>> We cannot do that, because the lower
>> [ -z "$wan_macaddr" -a -n "$etXmacaddr" ] &&
>> wan_macaddr=$(macaddr_add "$etXmacaddr" 1) will overwrite what Luxul-
>> specific one did.
> 
> No, it won't, because wan_macaddr won't be empty then (checked by -z)?

Right, I missed that!

So the only thing I slightly dislike about having:
[ -n "$wan_macaddr" ] || wan_macaddr=$(macaddr_add "$etXmacaddr" 5)
and
[ -n "$wan_macaddr" ] || wan_macaddr=$(macaddr_add "$etXmacaddr" 1)

is code duplication. I see it screaming: "use variable" ;)


>> What about having offset set by device specific code? Like:
>>
>>
>> etXmacaddr=$(nvram get et0macaddr)
>> offset=1
>> case "$board" in
>> asus,rt-ac87u)
>> 	etXmacaddr=$(nvram get et1macaddr)
>> 	;;
>> dlink,dir-885l | \
>> netgear,r7900 | \
>> netgear,r8000 | \
>> netgear,r8500)
>> 	etXmacaddr=$(nvram get et2macaddr)
>> 	;;
>> luxul,foo)
>> 	offset=5
>> 	;;
>> esac
> 
> That's a matter of taste. I personally don't like the multi-step assignment at all, and would like to just set the wan_macaddr for every case directly as it's done in ath79/ramips. For my taste, there are too many similar variables flying around here, and I would reduce that to lan_macaddr and wan_macaddr somehow.

I was trying to avoid repeating
offset=1
or
wan_macaddr=$(macaddr_add "$etXmacaddr" 1)
in 99% of switch cases. I guess that's why I have some extra variables
in the first place - to avoid some code duplication.


> However, if I understood your earlier comment on the tidy-up patch correctly, the et.macaddr variables are a concept somehow specific to bcm53xx, and thus my version would not be logic/desirable here.
> 
> Thus, I leave the decision to you, as I'm not familiar with this target and mainly doing drive-by comments here.
> Still, you solution here looks tidier than the additional nesting introduced in the initial patch.

Sure & thanks for comments, it's always nice to someone's opinion.
I like bcm53xx code much more after adding bcm53xx_setup_interfaces() &
bcm53xx_setup_macs() - thanks!


>>>>    	[ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan"
>>>> "$wan_macaddr"
>>>>    }
>>>> diff --git a/target/linux/bcm53xx/image/Makefile
>>>> b/target/linux/bcm53xx/image/Makefile
>>>> index 610af03abe..b3ec1e99a2 100644
>>>> --- a/target/linux/bcm53xx/image/Makefile
>>>> +++ b/target/linux/bcm53xx/image/Makefile
>>>> @@ -291,6 +291,15 @@ define Device/luxul-abr-4500  endef
>>>> TARGET_DEVICES += luxul-abr-4500
>>>>
>>>> +define Device/luxul-xap-1610
>>>> +  $(Device/luxul)
>>>> +  DEVICE_MODEL := XAP-1610
>>>> +  DEVICE_PACKAGES := $(BRCMFMAC_4366C0)
>>>> +  IMAGE/lxl := append-rootfs | trx-serial | luxul-lxl
>>>> +  LUXUL_BOARD := XAP-1610
>>>> +endef
>>>> +TARGET_DEVICES += luxul-xap-1610
>>>> +
>>>>    define Device/luxul-xbr-4500
>>>>      $(Device/luxul)
>>>>      DEVICE_MODEL := XBR-4500
>>>> @@ -299,6 +308,15 @@ define Device/luxul-xbr-4500  endef
>>>> TARGET_DEVICES += luxul-xbr-4500
>>>>
>>>> +define Device/luxul-xwr-3150
>>>
>>> Could you add a -v1 here as well?
>>
>> I see DTS file has "v1" in its name but does v2 exist at all?
>>
>> If there is not v2 and it's not planned right now I'm OK with filename witohut
>> "v1".
> 
> If the rest of the patch is correct, the compatible has a -v1 as well (I haven't checked).
> 
> I'm generally looking for consistency here, but on the other hand the other luxul-x... devices don't have a version suffix.
> Though, again, this is not my playing ground, so feel free to ignore my comments from the side.

It's always a problem to predict how many versions given device is
going to have ;)

We have "linksys-ea6300-v1" even though v2 was never developed /
released.

On ther other have netgear-r8000 has no v1 but later v2 has appeared.

Dan: if Luxul is planning XWR-3150 v2, then plase use v1 in this patch.
Otherwise I'm OK with skipping v1.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
