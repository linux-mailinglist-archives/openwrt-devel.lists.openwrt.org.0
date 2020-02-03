Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCC0150F44
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 19:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pqxz0KOdUQAi07k9v0GXPPCLsxnXC1+6X7aDz63OSoc=; b=DvsSP9IegeMU2t/5Tsn0yWEtw
	XjROe8cNnRgF+Z2UbpQWJkBLkiSFfh5W3a6vgfFhP7CQ2zNiCgAA5kuq/f6P0ffHaMxpsHr5K8Rd8
	R2DYr6UWhTU5BAiGwKIzzGk7DhYbOJGDeNg9UtOnqURi9BVO02kL02Goj7JB5KbGIW+bNWv3AfOp2
	aMAon6FeK5TKcmWuc8oT7VQ557ZnGPhK6nPA7BOYd5+SsyOtzJ3eH1Vffe//U2rVgSrhGngRtgVLj
	PgvDrnEjVzQdJkRoXki6QMRk8FIWlBPcemfnx4ebc1Ags7VvHoA2xP3iOFoSERZtn+Zj9v0OHyJMZ
	qnjxzMYwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iygLf-0006IB-Ra; Mon, 03 Feb 2020 18:21:27 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iygLZ-0006Hd-3O
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 18:21:22 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so15720912ljh.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Feb 2020 10:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=h6DSdfF6e6sChMUZQFYpx5YHTN6tL+z+77vI/Wg3Gz4=;
 b=DO5fTqH20TqFD0swTOBp8LYXGTZcKTKR9fL1edStucC7c2pLcYmzwWaMm3ss19Oh9F
 OVJ5WRoBtNNSdwpBzVn7JhCkvmrbEeaBd/URqkn+eeAg9affMDPwCLE5bOOG6TFQByKg
 jOI6LZlhyNhMyLRjyTno11ErwE4eVEQyBzuvvGXXfG8qYQairlZwnKEvgXq10vE1BOGv
 bdoKL5xSVUssCWDzAeD7sViJCMKI704kShIMvbbYgSmx9+493TKNnE8dNZow+dbnMjCV
 uM7tI4NxECOULj3VicJG11FJHJXrfNgq+vPl3y60o4IcpFeulFz9Da6oBVy5G5UPZerk
 sAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h6DSdfF6e6sChMUZQFYpx5YHTN6tL+z+77vI/Wg3Gz4=;
 b=Odsp+VomkHCnD6j4zVBBLXMh5IWs9CUA2q+re3eZg+MBrZIE+nRMYIQ0wwbOq+00PG
 vdXwgj0fb6rSIrJUN4eVEd/caWMiwRHMWFdmjbGtZmE8gnFy8JNhUj3tgJ7R1QjP6jUL
 h/MWBaH/9ssO8xjm9sNVRJ9P/sUcvBqbpA3UJAJM1XXexQV8smBlSIq6oKhDg63eWH6y
 FfmWGXL8I/4shynIiPZLHAQeqYs+rYjNyQ9J/2dcWc3Iq423jLpf2Vo5NAeVbwevdtsF
 HlW8/5goLoxeXda0pTxMtpcK+1c/8WHFX27JwVMXZGDPAy+W3eDxzr0e0mnmq1PQ2v41
 dkxQ==
X-Gm-Message-State: APjAAAUJ1J4GA/6k9agZK4YOMefHc25XKynJ2id7JxKY+ZFNMjegXcVB
 IGo4t4+lvAo+SN2f6bHG9t/6k3mg
X-Google-Smtp-Source: APXvYqzA4ynR3yv61qcUisJsy1imKyw/nLF/5Yski7hhZfdEM1p2b4SqeUa8VuXhEybzHE7lcVvprA==
X-Received: by 2002:a2e:b530:: with SMTP id z16mr14022599ljm.216.1580754078456; 
 Mon, 03 Feb 2020 10:21:18 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id s17sm11975248ljo.18.2020.02.03.10.21.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Feb 2020 10:21:17 -0800 (PST)
To: Daniel Golle <daniel@makrotopia.org>, openwrt-devel@lists.openwrt.org
References: <20200202163128.GA9861@makrotopia.org>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <3d850a0c-deb5-a310-9378-849a4409edb4@gmail.com>
Date: Mon, 3 Feb 2020 19:21:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200202163128.GA9861@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_102121_142858_0FF96AF6 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ath79: enable i2c-gpio and spi-gpio
 in generic subtarget
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

Hi Daniel,

On 02.02.2020 17:40, Daniel Golle wrote:
> For devices having LEDs or buttons connected via I2C or SPI connected
> GPIO chips it is desireable to access these busses early during boot
> in order to signal progress and failsafe-mode. Hence have support for
> i2c-gpio and spi-gpio built-into the kernel on generic (ie. non-tiny)
> systems.

For I2C two other configs should be also auto-selected:
+CONFIG_I2C=y
+CONFIG_I2C_ALGOBIT=y
+CONFIG_I2C_BOARDINFO=y
+CONFIG_I2C_GPIO=y

And in case of CONFIG_SPI_GPIO, it's already selected in top-level 
target config:
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/config-4.19#L216
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/config-4.14#L223

'make kernel_menuconfig CONFIG_TARGET=subtarget' will solve that.

> Signed-off-by: Daniel Golle <daniel@makrotopia.org>

Acked-by: Piotr Dymacz <pepe2k@gmail.com>

-- 
Cheers,
Piotr

> ---
>   target/linux/ath79/generic/config-default | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/target/linux/ath79/generic/config-default b/target/linux/ath79/generic/config-default
> index 2d8f7f20c2..8c3ed13fb5 100644
> --- a/target/linux/ath79/generic/config-default
> +++ b/target/linux/ath79/generic/config-default
> @@ -1,6 +1,8 @@
>   CONFIG_AT803X_PHY=y
>   CONFIG_GPIO_WATCHDOG=y
>   CONFIG_GPIO_WATCHDOG_ARCH_INITCALL=y
> +CONFIG_I2C=y
> +CONFIG_I2C_GPIO=y
>   CONFIG_INTEL_XWAY_PHY=y
>   CONFIG_IP17XX_PHY=y
>   CONFIG_LEDS_RESET=y
> @@ -18,5 +20,6 @@ CONFIG_RTL8366RB_PHY=y
>   CONFIG_RTL8366S_PHY=y
>   CONFIG_RTL8366_SMI=y
>   CONFIG_RTL8367_PHY=y
> +CONFIG_SPI_GPIO=y
>   CONFIG_VITESSE_PHY=y
>   CONFIG_WATCHDOG_CORE=y
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
