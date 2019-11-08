Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3F8F441C
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 11:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JJbUGextTMBTPinARBP8I81+hRhXrq9cKd0g2NVbUtc=; b=t0ODBpUg+lqXerqqvsQFWl3pc
	QyjbHmEjxL3Ly4JYSHLrZRKFxQ2b+UnPcAk8hlHN8WG0CHavFXpxnKMkkxkujyJybClGYyil26FQq
	MdZfpBLNxFWUByblkgLWJF4KC2dpdbzxI0P1zZotOLME3c+ZHW9Ntm6BhODRXxgqKu9sERKiuIyNL
	gTzr5jfWHH0lxNuwkrDb7Edue53NgG/eCZDa0jPmvTfO5bQ90bZvvVzo/vBETHdxzRzcbKQuLDaSE
	Cs5BLX5xOiCHLocOQxqbOeEIHX+VJ5QdzHks8phrH0HXylLut9t4BpjIW2GJxf6U1EcGhlEDa6Gui
	LbAkTKkYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT15I-0007ko-Q4; Fri, 08 Nov 2019 10:01:40 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT15A-0007k2-QT
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 10:01:34 +0000
Received: by mail-lf1-x135.google.com with SMTP id f24so969145lfh.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 02:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=2JDjpeSdJkrYZcJ05noo1LoA1EaALJ4Gtwq0WmURf6U=;
 b=Ex8z1Ag4ZhObpRKGXzB2Ldv2dn93Rlp4whHC/TVzr4dQqzwRFZBb/dDhJYMrhCxywk
 32nGx0nkhCdgVX7k8L1yOm8eSgqwDqVIxPcZmoNVQi9Yp9o2PKRBPkFGIelcYlkPkTF8
 3/Rqhc3NjhW5VCYV2/TYrYTxN+Y/86H0axUXh+urkYrDQZoXO2n4c9/K2z+vpVdh4zVv
 Mx82t4JHQiAvwil59nW/01hCzVdcIRkoTLpHzaawDeptFjbK1mwA6cH8lnTCaQw/oeeQ
 kaPikC16Dsouo5zn4B07XMULdHVsH5+cIJkeeLMgwyLHuRChIjFIGxsj+n0F8E9CvRlZ
 lCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2JDjpeSdJkrYZcJ05noo1LoA1EaALJ4Gtwq0WmURf6U=;
 b=W6KNh+WPXfYYyLuAUFFTAg/L07Ng7znbsbpBxcsP0ekJqQNk+FdhiUDzpxBf5xBZIR
 0iAbtcIlUzd23VmAbrVLDBgSAEHX/RuU4fLGmI4UYH9izCl9EYXkhsXEDuxrRZ8CjxkT
 EW19S4ruxdLMQTQ3svLG5Ugp7FeDR0hEyCF4xyKT7qniK1AuwvnxOAQhAyCx0680ZebM
 XnLlba9TukiaHWeXmVJaWX7MfJk7mZIT3ZIPmknp0Ob+DOHhRt4z4iOQp/G8nKMXUD41
 XKaxmacVPISdxdzKlOM9VsQn8rHgEdX4VNY5IAmd1pMjiWC9KwX/Ky+xoeb/JTP08/gz
 wT0Q==
X-Gm-Message-State: APjAAAXRqXPI3+jTRzxYtrzSl1MYjFVnTwh52j1ykB1Pz6fmrhKHsBRK
 Pykks3PFSTRKeSmZSiqDJvjXX+tD
X-Google-Smtp-Source: APXvYqwewRxfGOOMM4dSCNl4IkqBG3pDiQOhGoi/2o+Jvquf+oXOv38bk4izXosWOXECilkyoSZYgw==
X-Received: by 2002:a05:6512:6c:: with SMTP id
 i12mr6170975lfo.142.1573207289984; 
 Fri, 08 Nov 2019 02:01:29 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id g13sm2388529lfj.91.2019.11.08.02.01.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Nov 2019 02:01:29 -0800 (PST)
To: Micke Prag <micke.prag@telldus.se>, openwrt-devel@lists.openwrt.org
References: <94e65ceb-1d84-f28d-a423-676c4aeca605@telldus.se>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <d0d9d565-bd3c-48c3-0794-6f9ebdbafd94@gmail.com>
Date: Fri, 8 Nov 2019 11:01:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <94e65ceb-1d84-f28d-a423-676c4aeca605@telldus.se>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_020132_887895_DB4C5046 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 08.11.2019 08:36, Micke Prag wrote:
> In commit 00ea16557d [1] the way usb is initiated was changed. Instead
> of initiate both ehci-platform and ci_hdrc the bootstrap status register
> is checked and used to determine which platform to initiate.

There were other changes later, see for example 57c641ba6e.

> Unfortunately this break my board since the gpio used to determine this
> is used for other purposes.

This means your board has a wrong bootstrap configuration and you should 
make sure GPIO for host/device mode has correct initialization value.

> dev-usb.h only exposes one function:
> void ath79_register_usb(void);
> so there is not much to alter the way usb is initiated.
> 
> I tried to write to the bootstrap register but unfortunately this did
> not seem to work:
> 
> u32 t;
> t = ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP);
> pr_warn("ath79: Register before %X", t);
> t |= AR933X_BOOTSTRAP_USB_MODE_HOST;
> ath79_reset_wr(AR933X_RESET_REG_BOOTSTRAP, t);
> pr_warn("ath79: Register after %X",
> ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP));
> 
> Gives the following output:
> 
> ath79: Register before 42202
> ath79: Register after 42202
USB mode in AR9331 is selected at power on, based on GPIO13 value and 
I'm not aware of any other/software ways to change it. AFAIK, only 
QCA9563 allows to switch between host and device modes 'on the fly'.

> How can I solve this?

Only in hardware I suppose (setup correct initial value on GPIO13).

-- 
Cheers,
Piotr

> 
> 
> [1] https://github.com/openwrt/openwrt/commit/00ea16557d
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
