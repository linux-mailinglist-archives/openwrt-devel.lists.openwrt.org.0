Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B17C19FE0E
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 21:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=apAn+L6NVROwUnn+kD7YsiTFVCw7/tmAUG2/1AEgoNI=; b=jvsPvMy3+7f5w+pzv5iHOKE6s
	Ag4Hl6bMyT4BbwNJ9BS4lwSkasXgHuvihVa63pi9DVsVN9ed7ZxqOvxUpC7TXJE5TOJXTbqjZogHZ
	wZKq9V4RjfShb2FDcpMedaXql8VuBWMEiRbX4K6+ovlMrFAqp604Af0JdF4e+MrI264JLDQDFXxvh
	O/H7lL3TMCcWn3y4VZIlEF3q0WOcJhITzby4FpXlazKpgqwOX1gny6jcpm24UrRWwXtqrkLG2goIG
	sooWLH+cYUhV1xA5desSOomJp8wnyxEneA/qcdgN8fKi2F/exVgtEci1oxIV7TXuwpamDyH38Tji1
	e+uu1QcrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLXO5-00023I-5J; Mon, 06 Apr 2020 19:26:25 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLXNx-00022j-Jb
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 19:26:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id x23so450729lfq.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 12:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eNA9iFlLUxi9+MXD3xkEWWBdynq13yoCj0JIiM0ByjA=;
 b=GTjNVs/9hLrChkVvlmW1GOqj4P92XvQUBeyvw5GHd44IYeKj0AjaSJxTGlQo6fNDbx
 Tk9Ma06ZYrJkHekMCsqUPzWihFs2rlODopCy0wpz7QK11HtisMJglIjJhLpG8OJ2u46V
 wTQCGevd54XJS70tuPbxdXugJQmC6Ylf89u6wRzG2CbHTGa2S+yhswO/njsoECXPVhn8
 2+ro3r6htMK9jK/YGU8wFygn+piCzui5UYc/FzJDOEmfUyreO0ZUnIdrEotmQlghI4+z
 a+0Y/0YSbib7qm4MTkukZf9GpONFBTmsy7LVJ1D/C9HwKSImeb1WEfWI/V+FVNJKwNZt
 OCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eNA9iFlLUxi9+MXD3xkEWWBdynq13yoCj0JIiM0ByjA=;
 b=nKWYdLobWmKUJH95TO89ymM8uMKZZkhOri83tJsI56ishzGB22x/Ekv82gLNDgSXvK
 dbbg/2LrNA8UHJ7H5zWFxBKGI5++/EL7/3lCbQQzHcy/trVWcjlcW7CSXIAnKb8UZrD7
 aqMS2zO+kn5D0Co3fXtgzmQvZ+KTpGePiEWMAxFdUM/8yx/RAXtlOxvB0oW8DwJh+kxv
 CgEyLoGYQRd2c6XBjX+1gRD+bBuWI5DPNTQAvfdX7dO4Wnovkm0z3OWas+erq97/VsOS
 4spYA2a2pZfZx/0qxadEM1S1mK3MwgRz9Sqef/fsGo5HBOR9IN69ckJWs8nwiIR8G8Fs
 0z2w==
X-Gm-Message-State: AGi0PuY4NZMQkfoZIXxJA7ZfOAuYGe1laAZwtojH+6EBXfUVZeseGvR7
 wnzxBNG4dICMidIHSdidK+c=
X-Google-Smtp-Source: APiQypJgPdYOTGlt6+hC3p2GSJk4VA3TUHY7UK3aYO2ZRVonRxssdqQzzsguJwbluKj/EVzcGm/KVg==
X-Received: by 2002:a05:6512:695:: with SMTP id
 t21mr14132474lfe.158.1586201173817; 
 Mon, 06 Apr 2020 12:26:13 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id r206sm4973491lff.65.2020.04.06.12.26.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 12:26:13 -0700 (PDT)
To: mail@adrianschmutzler.de, 'Dan Haab' <riproute@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <20200406182013.86147-1-dan.haab@luxul.com>
 <02a601d60c40$e233bc90$a69b35b0$@adrianschmutzler.de>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <c0d8fd9b-3755-369d-ab58-889664fb4228@gmail.com>
Date: Mon, 6 Apr 2020 21:26:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <02a601d60c40$e233bc90$a69b35b0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_122617_647729_662B9E2D 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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

On 06.04.2020 20:26, mail@adrianschmutzler.de wrote:
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Dan Haab
>> Sent: Montag, 6. April 2020 20:20
>> To: openwrt-devel@lists.openwrt.org
>> Cc: Dan Haab <dan.haab@legrand.com>
>> Subject: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul FullMAC
>> WiFi devices
>>
>> From: Dan Haab <dan.haab@legrand.com>
>>
>> This prepares support for models XAP-1610 and XWR-3150. Flashing requires
>> using Luxul firmware version:
>> 1) 8.1.0 or newer for XAP-1610
>> 2) 6.4.0 or newer for XWR-3150
>> and uploading firmware using "Firmware Update" web UI page.
>>
>> Signed-off-by: Dan Haab <dan.haab@legrand.com>
>> ---
>>   .../bcm53xx/base-files/etc/board.d/02_network | 22
>> ++++++++++++++++++-
>>   target/linux/bcm53xx/image/Makefile           | 18 +++++++++++++++
>>   2 files changed, 39 insertions(+), 1 deletion(-)
>>
>> diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network
>> b/target/linux/bcm53xx/base-files/etc/board.d/02_network
>> index f86f12407f..9256cbdc54 100755
>> --- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
>> +++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
>> @@ -36,6 +36,15 @@ bcm53xx_setup_interfaces()
>>   		ucidef_add_switch "switch0" \
>>   			"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
>> "5@eth0"
>>   		;;
>> +	luxul,xap-1610-v1)
>> +		ucidef_add_switch "switch0" \
>> +			"0:lan" "1:lan" "5@eth0"
>> +		ucidef_set_interface_lan "eth0.1" "dhcp"
>> +		;;
>> +	luxul,xwr-3150-v1)
>> +		ucidef_add_switch "switch0" \
>> +			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan"
>> "5@eth0"
>> +		;;
>>   	phicomm,k3)
>>   		ucidef_add_switch "switch0" \
>>   			"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
>> @@ -100,7 +109,18 @@ bcm53xx_setup_macs()
>>   	esac
>>
>>   	# If WAN MAC isn't explicitly set, calculate it using base MAC as
>> reference.
>> -	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] &&
>> wan_macaddr=$(macaddr_add "$etXmacaddr" 1)
>> +	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && {
>> +		local offset=1
>> +
>> +		case "$board" in
>> +		luxul,xwr-3100v1 | \
>> +		luxul,xwr-3150-v1)
>> +			offset=5
>> +			;;
>> +		esac
>> +
>> +		wan_macaddr=$(macaddr_add "$etXmacaddr" $offset)
>> +	}
> 
> This adds another level of nesting. I'd prefer if you just added your devices to the case directly above and just use
> 
> [ -n "$wan_macaddr" ] || wan_macaddr=$(macaddr_add "$etXmacaddr" 5)
> 
> for them there.

We cannot do that, because the lower
[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && wan_macaddr=$(macaddr_add "$etXmacaddr" 1)
will overwrite what Luxul-specific one did.

What about having offset set by device specific code? Like:


etXmacaddr=$(nvram get et0macaddr)
offset=1
case "$board" in
asus,rt-ac87u)
	etXmacaddr=$(nvram get et1macaddr)
	;;
dlink,dir-885l | \
netgear,r7900 | \
netgear,r8000 | \
netgear,r8500)
	etXmacaddr=$(nvram get et2macaddr)
	;;
luxul,foo)
	offset=5
	;;
esac


>>   	[ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan"
>> "$wan_macaddr"
>>   }
>> diff --git a/target/linux/bcm53xx/image/Makefile
>> b/target/linux/bcm53xx/image/Makefile
>> index 610af03abe..b3ec1e99a2 100644
>> --- a/target/linux/bcm53xx/image/Makefile
>> +++ b/target/linux/bcm53xx/image/Makefile
>> @@ -291,6 +291,15 @@ define Device/luxul-abr-4500  endef
>> TARGET_DEVICES += luxul-abr-4500
>>
>> +define Device/luxul-xap-1610
>> +  $(Device/luxul)
>> +  DEVICE_MODEL := XAP-1610
>> +  DEVICE_PACKAGES := $(BRCMFMAC_4366C0)
>> +  IMAGE/lxl := append-rootfs | trx-serial | luxul-lxl
>> +  LUXUL_BOARD := XAP-1610
>> +endef
>> +TARGET_DEVICES += luxul-xap-1610
>> +
>>   define Device/luxul-xbr-4500
>>     $(Device/luxul)
>>     DEVICE_MODEL := XBR-4500
>> @@ -299,6 +308,15 @@ define Device/luxul-xbr-4500  endef
>> TARGET_DEVICES += luxul-xbr-4500
>>
>> +define Device/luxul-xwr-3150
> 
> Could you add a -v1 here as well?

I see DTS file has "v1" in its name but does v2 exist at all?

If there is not v2 and it's not planned right now I'm OK with filename
witohut "v1".

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
