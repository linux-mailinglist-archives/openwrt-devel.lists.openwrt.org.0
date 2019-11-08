Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12322F4B93
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 13:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPHNfhSnCIeMIldPO+HtRQQPq35td5SKx4HkNEycpIQ=; b=uOkv9KrUyDEZjS
	v7K9qv/SEYo9hGcVc2TcwqNfOnZ35Xvo1bs2KRY/AfL+zXyZkQpmuMX67A1jtD75DOG1XzjPtKpTb
	56Tqz+KdB/zY25aT/cCpMkmAvNSMImce2cmc63YpW2voXC3HKROz0XG/ycDPt0Y6OueoVTtk9R7wl
	RvG6RjFu9PTQOJbO3jcA8pLDmlIvhl8fhtrULORIGFnnV3eWPbLXSXxsvI3Tx82+01yxo+Voiw72J
	PaRu3LIARhpedswH2TDYx950qPz37weYSYd6/WqHyo78WZLfLJWBOD98s4T9hChs31DXuE2yUq08u
	j4XYG3anP1nyQBNXsGnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3PR-0001hU-At; Fri, 08 Nov 2019 12:30:37 +0000
Received: from smtpout-33.fbg1.glesys.net ([2a02:751:100:1::33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3PK-0001gm-61
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 12:30:32 +0000
Received: from [192.168.0.49] (unknown [37.123.165.95])
 by mail-halon-01.fbg1.glesys.net (Halon) with ESMTPSA
 id 87f1a1e5-0223-11ea-93f6-038963ac7fbd;
 Fri, 08 Nov 2019 13:30:23 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
References: <94e65ceb-1d84-f28d-a423-676c4aeca605@telldus.se>
 <d0d9d565-bd3c-48c3-0794-6f9ebdbafd94@gmail.com>
From: Micke Prag <micke.prag@telldus.se>
Openpgp: preference=signencrypt
Autocrypt: addr=micke.prag@telldus.se; prefer-encrypt=mutual; keydata=
 mQGiBEdTEc4RBACxgkIJHHBMsH182b0B35Hb9oAksm0dtBvB866l038ivY5dLRnblqK3REiY
 TtxykDcilXV0UmjyDQP4YhUIf0Bch79K4VHksiAFIjN8Ci6AYBDLd8rXuqfykO+YprOoGDrU
 j1sOCHw5zNKbTDfHUtVTOrUyBtbOhJVrCjch38E9iwCgqE3psviH+k992BQxMifLZfHupOkD
 /2QBEUvClZirB1NAL/Tgb5Q1j7CwUSud9F1KPUHzrgVBnLuTYlin/Egk0LTeEID3FYEbbyCi
 wKsISCduVfrC3fncjyek1/5ENdaGV7W8ShmTW5oxEDRMhUeQIrQeAPCYgHmjy2G/3/QlzMYb
 LdWi2x5YSydGnLMI6WCud+HW+FSzA/9cjbv1jGBXL9fJT3oxw8G4CdPHgM/HtPXTPPpzRATW
 U/CpU7v06WRWRNTjC7iUrtn6ylLV+skwPbb/ri2PMXOHq0h/Zdsd3JEFNSGNvC3UhKms48Mq
 svixshI3pVw20Qbp8JjJkF8DRRTqSUVVcxP9AIKNt94gdNLiD1SoVuPazrQiTWlja2UgUHJh
 ZyA8bWlja2UucHJhZ0B0ZWxsZHVzLnNlPohfBBMRAgAfBQJHUxHOAhsjBgsJCAcDAgQVAggD
 AxYCAQIeAQIXgAAKCRAma/zcU1YkGKkTAJ9Ba/04C2kvLlys+RMc3P6S5hGXhACfZL2j7CGM
 ZYKupjfcwEb7hBB4OHu5AQ0ER1MRzhAEAKPSM7TDyxkDZY+F+2wevuFG5mJKWRSe8gu0yrx2
 7s/zxdyZK98+UJO7JiwmzOOEQKFrR95tSD3PbU3U9vt0OW+PSiKDNJZ2U4EuXs7JlgkZcr+K
 lQNQ/wNBEgPostKusMJeucZSsXobP/8ucR2THv0ADTXARXv0FRduPlT4CeybAAMFA/9WcTf3
 RzDdsfnuOMhV7jtV2GdRsdqKvVsMBT8k6hVXgTFsQ3p1/yjpri4X6Y3uEl9j0N8Oi9uAKI06
 72uHIu0QxadJc7LsmaL1MbNNDMBr5RHT/dV1pLoeZ/7ePm9AayzuskJ31lY5Dnd8M5wN0S7r
 biuID/sMr8cZAkapmUFqOIhJBBgRAgAJBQJHUxHOAhsMAAoJECZr/NxTViQYOD0AoJKjZDX4
 BChcNomPd82IkfvSJHmCAKCFBzuGSF9JhjZI6FE0GsLPDGyrSg==
Message-ID: <d2e8225f-b090-c568-5c86-599d0792fe2b@telldus.se>
Date: Fri, 8 Nov 2019 13:30:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d0d9d565-bd3c-48c3-0794-6f9ebdbafd94@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_043030_383345_85090B66 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] ath79: Force usb host mode for ar9331
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
Cc: pepe2k@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Den 11/8/19 kl. 11:01 AM, skrev Piotr Dymacz:
> Hi Micke,
>
> On 08.11.2019 08:36, Micke Prag wrote:
>> In commit 00ea16557d [1] the way usb is initiated was changed. Instead
>> of initiate both ehci-platform and ci_hdrc the bootstrap status register
>> is checked and used to determine which platform to initiate.
>
> There were other changes later, see for example 57c641ba6e.
Yes, I was looking at the code after this commit when making my
conclusions above. But 00ea16557d is the commit that breaks the board
initially.
>
>> Unfortunately this break my board since the gpio used to determine this
>> is used for other purposes.
>
> This means your board has a wrong bootstrap configuration and you
> should make sure GPIO for host/device mode has correct initialization
> value.

Yes, it is correct the bootstrap is not correct at hardware level. But
there is 30 k+ boards out in the world so fixing this now is a bit
late... ;)

>
>> dev-usb.h only exposes one function:
>> void ath79_register_usb(void);
>> so there is not much to alter the way usb is initiated.
>>
>> I tried to write to the bootstrap register but unfortunately this did
>> not seem to work:
>>
>> u32 t;
>> t = ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP);
>> pr_warn("ath79: Register before %X", t);
>> t |= AR933X_BOOTSTRAP_USB_MODE_HOST;
>> ath79_reset_wr(AR933X_RESET_REG_BOOTSTRAP, t);
>> pr_warn("ath79: Register after %X",
>> ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP));
>>
>> Gives the following output:
>>
>> ath79: Register before 42202
>> ath79: Register after 42202
> USB mode in AR9331 is selected at power on, based on GPIO13 value and
> I'm not aware of any other/software ways to change it. AFAIK, only
> QCA9563 allows to switch between host and device modes 'on the fly'.

Is was working before 00ea16557d so simply initialize ehci-platform
instead ci_hdrc will fix it. Unfortunately I cannot find a way to tell
ath79_register_usb to force it into host mode in my board file instead
of reading the bootstrap register.

Writing to the bootstrap register was a workaround I tried. In the
datasheet this register should be read/write. I don't know if my code
for writing the register is wrong or it is simply not possible to write
into this register.

>
>> How can I solve this?
>
> Only in hardware I suppose (setup correct initial value on GPIO13).
>
It could also be solved by telling the module to force it into host mode
and not reading the bootstrap register. I am not sure the best approach
for this that would be accepted upstream.

Adding a parameter to ath79_register_usb() could be one option?



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
