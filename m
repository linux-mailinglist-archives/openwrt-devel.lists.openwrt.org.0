Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C57FED40
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 16:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Olsgj3rDFDcNupeOdsnQh+vSovzsq0b9Q9NNiiFqEFQ=; b=a20R7zRREBfFLRi+J1xyGkY8V
	kOue4BxfnujrUj8oalpw8ZNQCVfaLBVsJIMZgpfaxnL56RJAPI/EtEQ3p3L4jplBE1d4NgBT3PctC
	SV312+IjA/VxwbvP25R8SdNcjHyqSEBqYnkEtC1j7Cs1qNKWbaPJqpSGL9pFdaLIHdKFy0wMlSH/s
	H6S5zhyjPin4OQ2Aa4bL0BWesvcraxURDnLV0ierFNPPotqphKBT1/Mh1+IY5lMXQc4P0jBhLKtsR
	GjaT0R1+Vu3IC1OUXVbuOjDRXvcJbgfnqdKdjT+JLo7p/O2vYYrnWvbLhyKhcuiIF/egrglGlnI/k
	KHi7mXxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0Fe-0008St-J6; Sat, 16 Nov 2019 15:44:42 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0FT-0008Rn-7l
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 15:44:32 +0000
Received: by mail-lj1-x231.google.com with SMTP id 139so13911467ljf.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 07:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=2N1uLqUMSCD65OS97ZE3eznvDeT+vPUYNPFSEdkwMzU=;
 b=PLM04CnYSVKcXRuRFH410EX7rIf4ZObPMq13E8KdPWZFpPB8Yf0o/JhzNEo/ifBqSd
 ACkGfr2NJPjd/OHN5FlTFYhQj9b63qjCubCP8Pd9EWn9GFzHHJvWmMmPz1twhP96oD2r
 ORzIfuZlnK42rvD1UI+iEztQyOO1kMOZxPoQa0B0P6NOhooTt/cQ+RzUvDztKdIJihiS
 wIybrGLLddjEGwUXPTVto7h6feneBv0/UvN7FRjYSEDUPfNjhC9UXaINA9nK1ANSlU0J
 +aKl4Bgc7YXGo1daI7BaAoKpXhcKDOwp0wWO74COH3vbqe6of45WxtKA+iqfnECdYAS/
 bu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2N1uLqUMSCD65OS97ZE3eznvDeT+vPUYNPFSEdkwMzU=;
 b=b8M4zu9EU0E85ywgGDWv/uEhe+qZ4sOPnuXZ9vIbJ41smUmmCoUmiNyr/lKbC12K+e
 6bHL5e3sLwXcZKaqSItgtPOGpZHJRuYeLgzVoAXkATMF1Qd7w6ILMlj6AgHcGibIiC14
 XDqdL50sPnSvNF1X2HHIES/5VD+LCKxNohFketfT8FGfzNQf/6eaa0PXpr9xNcgjwrt5
 89UtjixFHR8UufLuZcPJqpQGdu4klnwmYnpWi2V/dO1BqwYJjJxwgFK5KgiCT50339DZ
 rFFI4sRWRh806kWg36gSLzgjHccUFJSxA6P6js7WuvpLZpg0sIM0PPTbPLpKLjBUo2nF
 7SMg==
X-Gm-Message-State: APjAAAXV6+q1CpUt2L5ngrUTDNc9TaGh1O9rY0nvJpSGygf1QXvkxGXt
 v1Z4DtbIsPUggvKDll4jybfyGUfg
X-Google-Smtp-Source: APXvYqzyc5o+q32THl4dl7wQHHqy9EFICdp/N2IpImQl4MmYUVCOp/IkZgFhT5aiKGqBorS2y+bLDw==
X-Received: by 2002:a2e:89c2:: with SMTP id c2mr14958703ljk.161.1573919069085; 
 Sat, 16 Nov 2019 07:44:29 -0800 (PST)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id x16sm5689758ljd.69.2019.11.16.07.44.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Nov 2019 07:44:28 -0800 (PST)
To: Micke Prag <micke.prag@telldus.se>, openwrt-devel@lists.openwrt.org
References: <94e65ceb-1d84-f28d-a423-676c4aeca605@telldus.se>
 <d0d9d565-bd3c-48c3-0794-6f9ebdbafd94@gmail.com>
 <d2e8225f-b090-c568-5c86-599d0792fe2b@telldus.se>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <6993a1eb-b6b5-f09e-e61b-ea9c09f20a18@gmail.com>
Date: Sat, 16 Nov 2019 16:44:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d2e8225f-b090-c568-5c86-599d0792fe2b@telldus.se>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_074431_321323_D09D2000 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Micke,

On 08.11.2019 13:30, Micke Prag wrote:
> Den 11/8/19 kl. 11:01 AM, skrev Piotr Dymacz:
>> Hi Micke,
>>
>> On 08.11.2019 08:36, Micke Prag wrote:
>>> In commit 00ea16557d [1] the way usb is initiated was changed. Instead
>>> of initiate both ehci-platform and ci_hdrc the bootstrap status register
>>> is checked and used to determine which platform to initiate.
>>
>> There were other changes later, see for example 57c641ba6e.
> Yes, I was looking at the code after this commit when making my
> conclusions above. But 00ea16557d is the commit that breaks the board
> initially.
>>
>>> Unfortunately this break my board since the gpio used to determine this
>>> is used for other purposes.
>>
>> This means your board has a wrong bootstrap configuration and you
>> should make sure GPIO for host/device mode has correct initialization
>> value.
> 
> Yes, it is correct the bootstrap is not correct at hardware level. But
> there is 30 k+ boards out in the world so fixing this now is a bit
> late... ;)
> 
>>
>>> dev-usb.h only exposes one function:
>>> void ath79_register_usb(void);
>>> so there is not much to alter the way usb is initiated.
>>>
>>> I tried to write to the bootstrap register but unfortunately this did
>>> not seem to work:
>>>
>>> u32 t;
>>> t = ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP);
>>> pr_warn("ath79: Register before %X", t);
>>> t |= AR933X_BOOTSTRAP_USB_MODE_HOST;
>>> ath79_reset_wr(AR933X_RESET_REG_BOOTSTRAP, t);
>>> pr_warn("ath79: Register after %X",
>>> ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP));
>>>
>>> Gives the following output:
>>>
>>> ath79: Register before 42202
>>> ath79: Register after 42202
>> USB mode in AR9331 is selected at power on, based on GPIO13 value and
>> I'm not aware of any other/software ways to change it. AFAIK, only
>> QCA9563 allows to switch between host and device modes 'on the fly'.
> 
> Is was working before 00ea16557d so simply initialize ehci-platform
> instead ci_hdrc will fix it. Unfortunately I cannot find a way to tell
> ath79_register_usb to force it into host mode in my board file instead
> of reading the bootstrap register.

Do you want to tell me that a board with wrong bootstrap configuration 
and USB switched to device mode was able to use the bus in host mode?

IIRC, during my tests I found that this bootstrap option makes the D+ 
line to gets pulled-up to VBUS and there was no way to change it back.
I would need to make some more tests to confirm that, though.

-- 
Cheers,
Piotr

> 
> Writing to the bootstrap register was a workaround I tried. In the
> datasheet this register should be read/write. I don't know if my code
> for writing the register is wrong or it is simply not possible to write
> into this register.
> 
>>
>>> How can I solve this?
>>
>> Only in hardware I suppose (setup correct initial value on GPIO13).
>>
> It could also be solved by telling the module to force it into host mode
> and not reading the bootstrap register. I am not sure the best approach
> for this that would be accepted upstream.
> 
> Adding a parameter to ath79_register_usb() could be one option?
> 
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
