Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF371006E5
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 14:58:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXTMoXdocWwtyuuB2UbUe7T0MiqLDRLXRPzYHxkKMyw=; b=CgW///xofMlGPd
	aRYwX1MWwz3fIo7jlIP0xj4uKfExw6uTIutmioc9IzjTL1+pqp+1wyX6XlB8EAS+j7gvVccRYT8H4
	spafo4CPokc6kaOn5WPyXOu9n8u6eY1tBvoGgPIEQw2t1F7mQpdeHk5fvR9Lys1fZ0vFqQGG0MjuH
	ITQzsGUSbxdvE2MnSN27TlbPvwH+12ZXppXtiB8vIFIb2EIIPs6I1f+6iOS6/J/ot4fRWo5kAF3L8
	hh146SKOJY6HVprawipfazX7cagRY/NfeeWXpWQpkzZMKO79RY+u7NA6en8lihj4S1I55r2zs1Khe
	BTMrXF+gP5LmdARnllhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWhXn-0001bD-KV; Mon, 18 Nov 2019 13:58:19 +0000
Received: from smtpout-49.fbg1.glesys.net ([2a02:751:100:2::49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWhXf-0001aT-K7
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 13:58:13 +0000
Received: from [192.168.0.49] (unknown [37.123.165.95])
 by mail-halon-02.fbg1.glesys.net (Halon) with ESMTPSA
 id 66448784-0a0b-11ea-b6a3-2f60bddcfa2d;
 Mon, 18 Nov 2019 14:58:03 +0100 (CET)
References: <94e65ceb-1d84-f28d-a423-676c4aeca605@telldus.se>
 <d0d9d565-bd3c-48c3-0794-6f9ebdbafd94@gmail.com>
 <d2e8225f-b090-c568-5c86-599d0792fe2b@telldus.se>
 <6993a1eb-b6b5-f09e-e61b-ea9c09f20a18@gmail.com>
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
To: openwrt-devel@lists.openwrt.org
Message-ID: <a7b4abc6-37b8-918b-ceaf-cc57a9accbe6@telldus.se>
Date: Mon, 18 Nov 2019 14:57:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6993a1eb-b6b5-f09e-e61b-ea9c09f20a18@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_055811_822319_2976C235 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Den 11/16/19 kl. 4:44 PM, skrev Piotr Dymacz:
> Hi Micke,
>
> On 08.11.2019 13:30, Micke Prag wrote:
>> Den 11/8/19 kl. 11:01 AM, skrev Piotr Dymacz:
>>> Hi Micke,
>>>
>>> On 08.11.2019 08:36, Micke Prag wrote:
>>>> In commit 00ea16557d [1] the way usb is initiated was changed. Instead
>>>> of initiate both ehci-platform and ci_hdrc the bootstrap status
>>>> register
>>>> is checked and used to determine which platform to initiate.
>>>
>>> There were other changes later, see for example 57c641ba6e.
>> Yes, I was looking at the code after this commit when making my
>> conclusions above. But 00ea16557d is the commit that breaks the board
>> initially.
>>>
>>>> Unfortunately this break my board since the gpio used to determine
>>>> this
>>>> is used for other purposes.
>>>
>>> This means your board has a wrong bootstrap configuration and you
>>> should make sure GPIO for host/device mode has correct initialization
>>> value.
>>
>> Yes, it is correct the bootstrap is not correct at hardware level. But
>> there is 30 k+ boards out in the world so fixing this now is a bit
>> late... ;)
>>
>>>
>>>> dev-usb.h only exposes one function:
>>>> void ath79_register_usb(void);
>>>> so there is not much to alter the way usb is initiated.
>>>>
>>>> I tried to write to the bootstrap register but unfortunately this did
>>>> not seem to work:
>>>>
>>>> u32 t;
>>>> t = ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP);
>>>> pr_warn("ath79: Register before %X", t);
>>>> t |= AR933X_BOOTSTRAP_USB_MODE_HOST;
>>>> ath79_reset_wr(AR933X_RESET_REG_BOOTSTRAP, t);
>>>> pr_warn("ath79: Register after %X",
>>>> ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP));
>>>>
>>>> Gives the following output:
>>>>
>>>> ath79: Register before 42202
>>>> ath79: Register after 42202
>>> USB mode in AR9331 is selected at power on, based on GPIO13 value and
>>> I'm not aware of any other/software ways to change it. AFAIK, only
>>> QCA9563 allows to switch between host and device modes 'on the fly'.
>>
>> Is was working before 00ea16557d so simply initialize ehci-platform
>> instead ci_hdrc will fix it. Unfortunately I cannot find a way to tell
>> ath79_register_usb to force it into host mode in my board file instead
>> of reading the bootstrap register.
>
> Do you want to tell me that a board with wrong bootstrap configuration
> and USB switched to device mode was able to use the bus in host mode?
>
> IIRC, during my tests I found that this bootstrap option makes the D+
> line to gets pulled-up to VBUS and there was no way to change it back.
> I would need to make some more tests to confirm that, though.
>
Yes, I am.

Or, to be correct. This gpio is used as an output so it is connected to
a transistor. It's not "driven" to either high nor low other than what
the base-pin from the transistor is doing.

Regardless the bootstrap register is set incorrect and forcing to host
mode _do_ work.

I can provide more testing if you want me to?



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
