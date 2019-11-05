Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E51F0943
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 23:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uu0M1ePJMG4L0h+uJw77WCqhW0RFUVb2+Jz1ALofzZI=; b=SJ0tLZEOBWN2Ny3qfAAXoKpGU
	VeL6txMToYJ/YkTV+0pOyIYCm2ehC0gwjf5h6ORnSn0SOpVoiJflIUJpKthP0uuWIq/jCOI3HGvXT
	F28+660t29HVGL+BG1a7qkgdXHmOJrEuhVEGCLTEyCqQgGYR2zmHxLxnRytXkaecYtTjt037gFJAy
	jcx+aQ2DrTwauQXxF+yWfbM0dJAlv5pIVliYc27bje+tqqcgJ7Gph5ap5UtCMDPZOAe+R2FUdcDEU
	b6z4ey8qziVdgKIi9kPtlFqDsTTRrVZmkk2fRMNGreF66iLCZ3kUVEqa7lLXWQYaBWYMS4e8T3S1v
	q/xaxsP6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7Fh-0001aS-SL; Tue, 05 Nov 2019 22:24:41 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7FU-0001Lo-Qs
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 22:24:30 +0000
Received: by mail-lf1-x144.google.com with SMTP id j5so16365761lfh.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 Nov 2019 14:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aVVpCo4Rlv2eUTdIiyZFQJbUr+6LCBP8fJCOWd785Uw=;
 b=YFqmdYgGkuVAjlL/L+aP47OHUENaDIdCVaSYGDfvQ7srTPEYlEAhIUq1n3MirFv3OL
 fEzKGVqS14yyRf5dr57Or73Lh3d/+VPuDTck6/p8Q/PEkKQJWNV+Fdg7GNE6069XSG0+
 Fj/9qnoREWagLQ/Dw3DM2Oo3gmvwxxWTrcsNcx0YTsVUjP1XRenaSxmSJrV6Z5pThouK
 diPCWpQ4tuo2GS1FZk4uH6kEYdEWhIFjFZQYQ3spwp88Clb8JvmWuRcmsgHtXtCWu5rG
 +z1UpJt3jP7QpkMYUnePrVLemWTJkKVWn24x90wc/k1MxPOLmIZaoyn8LBnDtwltMza3
 NC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aVVpCo4Rlv2eUTdIiyZFQJbUr+6LCBP8fJCOWd785Uw=;
 b=pqZ9kEuRFjl73GMexBKSM4MECo71vqT1DCat5MOt2DcIG/JzWaThD5EHKJTEHNl13t
 8IrMrjvPNJtGOqv1WN5uqN+l5650STxWGCNc4yLTtQIzxYEEkaQTtCL3R7/IirQHrdDh
 aEnxA/b4FzwoaDl3R++7/JLDYt5lK7Dt/cm3MLvKGOQ+FP0XeE0VIjnUHuaeiy/f7Rkx
 EZmj+od8CA8YHIUzgCQ0cPTVqwqFpVSvyeM/uhbZ5tVmoON3UREwmYGxD/Nl5GUMIx8W
 u6fvXMKkvEzCqJszWUF85tJxz1jx4ciPPb7zGZ2S3d0c1o9DevcFRGICvqdPKObWd8My
 ILxQ==
X-Gm-Message-State: APjAAAXxgrHBfyl8G+fDz8pq2C8nEoP/WhJXtDgI4sgPMSztuI8wXPtd
 6Oi2pfpxJDII7iI2siSG9as=
X-Google-Smtp-Source: APXvYqwp6Wco4IB/zpleUvk0G4rHqQqZlr+9CW60zPS9/Oh9r2ofrCDaRZfCL+ek0Sr/+iEYyFl+Zw==
X-Received: by 2002:ac2:4564:: with SMTP id k4mr22435940lfm.20.1572992666754; 
 Tue, 05 Nov 2019 14:24:26 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id a14sm8875839lff.44.2019.11.05.14.24.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 14:24:26 -0800 (PST)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
Date: Tue, 5 Nov 2019 23:24:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_142428_880792_6E4A0C54 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: bjorn@mork.no, Enrico Mioso <mrkiko.rs@gmail.com>,
 'Birger Koblitz' <mail@birger-koblitz.de>, Mathias Kresin <dev@kresin.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 05.11.2019 22:19, mail@adrianschmutzler.de wrote:
> Hi,
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Adrian Schmutzler
>> Sent: Dienstag, 5. November 2019 16:12
>> To: openwrt-devel@lists.openwrt.org
>> Cc: Birger Koblitz <mail@birger-koblitz.de>
>> Subject: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of gpio-
>> export
>> 
>> From: Birger Koblitz <mail@birger-koblitz.de>
>> 
>> The gpio-export functionality is a hack for missing kernel functionality, which
>> was rejected in upstream kernel long time ago, for details see this email
>> http://lists.infradead.org/pipermail/openwrt-devel/2019-
>> February/015772.html,
>> discussion in PR#1366 or
>> https://github.com/openwrt/openwrt/pull/1814#issuecomment-462942022.
>> 
>> This patch converts all DTS files with settings that normally do not need user
>> interaction, e.g. power for external USB ports, to gpio_hog. The only
>> remaining gpio-export will be in qca9558_openmesh_om5p-ac-v2.dts
>> 
> 
> I've just had a look at the openmesh_om5p-ac-v2, and it seems as if the gpio-exports there are just voltage changes for a power amplifier. To me this looks like those can be dealt with by a gpio-hog, too:

What if someone would like to lower TX power on this board? With 
gpio-hog that wouldn't be possible anymore. I would personally consider 
that change as a user experience limitation or even a regression.

I had this discussion many, many... many times before with Mathias (and 
I believe we still agree to disagree on this topic). Until there is a 
dedicated driver for such features controlled by GPIOs (lets say, SIM 
switching, driving relays, enabling higher power output in ext PA, 
etc.), switching from gpio-export to gpio-hog only limits user control 
on the hardware they own and in fact doesn't get us closer to something 
which could make the gpio-export finally go away (libgpiod).

I'm always on the end user side here. If the hardware is capable of 
switching something with GPIO, user should have a way to make use of 
that. Even if current solution was rejected in upstream.

-- 
Cheers,
Piotr

> 
> 	/* power amplifier high power, 4.2V at RFFM4203/4503 instead of 3.3 */
> 	ath79_gpio_function_enable(QCA955X_GPIO_FUNC_JTAG_DISABLE);
> 	ath79_gpio_output_select(OM5PACV2_GPIO_PA_DCDC, QCA955X_GPIO_OUT_GPIO);
> 	ath79_gpio_output_select(OM5PACV2_GPIO_PA_HIGH, QCA955X_GPIO_OUT_GPIO);
> 	gpio_request_one(OM5PACV2_GPIO_PA_DCDC, GPIOF_OUT_INIT_HIGH,
> 			 "PA DC/DC");
> 	gpio_request_one(OM5PACV2_GPIO_PA_HIGH, GPIOF_OUT_INIT_HIGH, "PA HIGH");
> 
> https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/files/arch/mips/ath79/mach-om5pacv2.c
> 
> Thus, I will also convert that device without an explicit resend of the patch unless there is protest about it.
> 
> Best
> 
> Adrian
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
