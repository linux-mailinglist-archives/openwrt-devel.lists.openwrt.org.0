Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EE1102549
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 14:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mv4GR4c6sb8P1ykZEjy0oE24UzJRQtAkteqXwtSUPzw=; b=k7iIeM+RE2imefSRzUzOGX8g2
	2c5e4LgOZ1lFAZ5Jq9AaASFu3KMzRvZF2Zm7PTecDudEB6UqYno9M3883Q/t8ZubLERojSz8PWHr6
	9PvV8z3sGqjzpHlb5LgKntsBcBqyYuGRlWewavyrUr5apNuCq/W12seq0EqbLB9Ro5EwjuYH0++Fy
	6b9RLy17M1wKeHXjIRtacul8HABA33abPOlmUuLnT80uamuTbv/NNbr8Lj+U5BT/roSrfayKeVETn
	TvaelWgiX6I1mUxrzYDmFYvBVzt7h0lNmTHJckcYdeYytGI08A/dabmX4Mwi/PRIGVzD0OtqmgVTn
	wV19kelSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3SI-0002Su-Dh; Tue, 19 Nov 2019 13:22:06 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3SA-0002S4-9D
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 13:21:59 +0000
Received: by mail-lf1-x142.google.com with SMTP id f18so4682890lfj.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 05:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O8jmMGI1ntyAKw8+lw99lGSBUtPX6sBQyI0ZSuMrUuk=;
 b=AVwwyvuQ61pWmprGj+sVSEEJ3Cjl2GGYgUVhCmTOGk2SFsqLLZuhMKU58+5q4k9liK
 tEYEsDJ8yz9HoKTdhyx4/y63xWBUwsXbK0Pbo3tU3TjC9YyglpZo6Io7UrEeI22b2eDf
 laRlQyknj38xQHidGzXfZw2gIL9a31i8esatarbU400oL+LRC1AMX/FU9BLCxwytR9cK
 AbcD/Wx8idycW9YNncaS9OaEl8OJttKPuFsK1rEWwWBQQ8hL1iuW0+6iT5owoAg+BFMa
 faiyadkMZ/PQP2Hb/b+KqL/aOx8bmCXbUXDtbHkRSZtfUbKGBRnsdSC9E1O4J0BJcbTO
 ShBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O8jmMGI1ntyAKw8+lw99lGSBUtPX6sBQyI0ZSuMrUuk=;
 b=tPwpp8hmjQzeHsQvEdDVrzr3G3xuc2ddAREAe0qneDNwRxEWbuQT4zTldb1L5H8d4Y
 W9OfWCDwGXOsUhd8M9dCg1GlQNQF10OMyKvkt4OeTV0kVm2iFatkkN9ix9ac+GmRQiYb
 pkkXBWEvK0Qnxd3tEp0ok82YsHKfFp1JAfkpIgaYWQNScbzw/AHjPnpWTROu3gV1ShPz
 cgcpxiMLueBJlXbvPks8xMeTX7Wq8bl8v09k/R5ebcf2X4F3Ln2vh5VIqX858OzSdkFS
 SUozl4NawONzi1ULk/GVPlh6eZMacF2jg8Bxf5GAVwYMa1n4ANUtXnvpAzlnOZgFmvd/
 ab5g==
X-Gm-Message-State: APjAAAUQDhtbpY0UTNRjScW0SunEDZT15pc7rPdloc23RNIXLGQgMv0f
 EtwbJgVdvNMH81+mpRKj5Po=
X-Google-Smtp-Source: APXvYqzmmXeb8L7jDU9iLSodMRR7mV7YCnRX4UpVXY6kyxBh+jrzxIeTD7g8pKjrfNxICWaFOFHapw==
X-Received: by 2002:ac2:4312:: with SMTP id l18mr3939562lfh.38.1574169714925; 
 Tue, 19 Nov 2019 05:21:54 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id z20sm11639238ljj.85.2019.11.19.05.21.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 Nov 2019 05:21:54 -0800 (PST)
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>, openwrt-devel@lists.openwrt.org
References: <20191107115408.13013-1-zefir.kurtisi@neratec.com>
 <745e9302-3688-7f09-1012-14cb5b22ed08@gmail.com>
 <81642625-c521-fe4a-1237-fda66e13d0f2@neratec.com>
 <9f792a39-d563-6ba7-c935-35ddef4b71d6@neratec.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <937daa0a-176c-c08c-f05e-32e7165b8685@gmail.com>
Date: Tue, 19 Nov 2019 14:21:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9f792a39-d563-6ba7-c935-35ddef4b71d6@neratec.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_052158_323674_D68B7384 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] uqmi: add timeout parameter
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
Cc: bjorn@mork.no, malaakso@elisanet.fi
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Zefir,

On 19.11.2019 11:34, Zefir Kurtisi wrote:

[...]

>>>> We don't know whether this is a device FW issue
>>>> (we use the latest EM12GPAR01A15M4G) or whether
>>>> the device enters some undocumented power-save
>>>> mode after idling for some time.
>>>
>>> Could you share this firmware version, is that a generic Quectel or a customized
>>> one? I would like to reproduce and debug the problem but the EM12 I have here has
>>> 'EM12GPAR01A_11_M4G'.
>>>
>>> Also, what platform do you use this modem with?
>>>
>> 
>> Hi Piotr,
>> 
>> we use our own products [1], which are built around a PowerPC (8540) based platform.
>> 
>> The FW we received from Codico [2], Quectel's distributor and support proxy for
>> Switzerland. We get preview versions on request, therefore I am not sure if it can
>> be posted publicly. I'll check for restrictions and provide the FW if able.

[...]

> Hi Piotr,
> 
> Codico/Quectel confirmed that the EM12 FW has no NDA limitations and can be
> provided to developers. The archive is available for the next 5 days from our
> company file-server at [1]. Let me know if you need something else, otherwise
> looking forward whether you can reproduce the observed issue.
> 
> 
> Cheers
> 
> 
> [1] https://transfer.neratec.com/5e7a98bb1a51e/EM12GPAR01A15M4G.zip

Thanks! I also contacted my Quectel contact person about that.
Will get back to you with my results in next days.

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
