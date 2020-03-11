Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B2E181657
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 11:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72n4tPNcTxinXYK2Zxqx4MxGOXnqXXl/WG6d77zOtZA=; b=Obqu3TM8ic0TSB
	Jo++mzvNZ2GAOUsJmv8OM75VQh2JPO47ieKBeJ6G3eArOuznjzs7FzzbMpLGiPWiUSTDxx29/HJ9S
	GhQ3hIgGRUOSqd9uB7PjlopcxKJlveiparHLIZLBxkUbvBRLJDVbEJLO0FB70GV6p3SZ4ekUca4sf
	8w4IjRZOv3XAwH48Ni5DzAy36CnPIhgmJaPCi13SZbFvprwr7A6uUTOyHVbjYRmm7JBHnqmVDXOtJ
	6Q/w9A4qio34IJdWzXg/7ke6l87L0EEOakV1jGp9WzsM/eF9az1IYGZOzedVAB6eDVasPvhBhBqEX
	uZsKRKE9eCd98lmz9tsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBz1D-0001rC-4a; Wed, 11 Mar 2020 10:55:19 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBz0o-0001gy-Lr
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 10:54:57 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MOAr1-1iwoZG1Ver-00OXPU; Wed, 11
 Mar 2020 11:54:51 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <cc@80211.de>,
	<openwrt-devel@lists.openwrt.org>
References: <20200311091000.22103-1-cc@80211.de>
In-Reply-To: <20200311091000.22103-1-cc@80211.de>
Date: Wed, 11 Mar 2020 11:54:50 +0100
Message-ID: <007c01d5f793$7d6a2860$783e7920$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIx5hFtRpihHOMh7UvBYoX0byp8CaeLWoQw
X-Provags-ID: V03:K1:u/we6rrr7dvXYzvOxjQP0IA6qGoXDOX+R+508iwBBba95TctetB
 7efJJZYLlsMUfHGyB48FmhBgR0RFTnsodS8xluB+QqgrgU/LnT2oNwrQ+B2JNgc/idhHrY2
 b39MNJbfLN8r2fhptGyT4TyyWIdikcBkFHCmYbbQt7XdF6tQfE8qjLY/04GgL2+0sE9bZE3
 Gcem+/xE0JpTRfMgvNNYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tUQe/yrh/qQ=:uvXHrYK5dpP69ChEU5xjps
 EqIdNuXasCmKIYHkV3JvuKhbiq/Uh/cNk3TCql8PN9ppRsCZ7pMoEoY2poE+ldNCnT4NDdkDl
 vSLNmZhd4YcHfsmn2mJ6eXfdHhLKsGBbAeYOUTrKoFQiG9IWd8DchahFbYne5YHf0DtEP5XdQ
 HNxsLf/TpxEKE6oVGDzYB0rZGfXZFkGiZepPgKcPfafL2gSU5uWgXtPuffE3ng7DsXsxslC70
 XSDnB+lKpCvcaPFBJlQbVbDauACKaBVZam7PY+Lf0wd86rmmPIGk9mYi7XPuYCCScOT5LSMIz
 BAAwM9AXwdtjJsMmt4PWmL4c5Uq6Y+PNVB11EKNV1iOnxa7a0RzJg397vTGHLDlqfCsvIIGH+
 rhRvalpzs5iYv4m7RSmMx7zFI3A/NuuvVU+Tkj9V8sO9jfDDbfA1ewJPH9CAPKXsHwqxXXS2V
 F4oMdAOGFc9ObHbWJRO0uQfQfvoWnbW1+Jg9UCH00gVGIu5UzgVbNiM4QzvgMk4O57MIPpk2c
 3k02gHpEM/vJvtrgtwqPG8pSkrAPTDFiEm4TaQVSXD9jLHzveFaohQ9qn/Swtsn4CBmRvhfdj
 eCRJIa94M1H7qNV8B3cHVIUaL39WUZczosZxM3CJDVjcjT5gEqHENpYPFtLVJUvRr11ALpR5C
 s3pHFKwBLPQjc5jcON4+lvNmHvBpUgsB5Q0bqqX53C58Dphk1RWPv7aG4IZc+P37pvjjH1MNX
 GPI0ASX3tISAaw/+DhQKAAZVEiKS+5dzWerkk0NVSPA150YZTfVaSZXCBVlwsCY4Oxacy8q/C
 P4dG3i2ONKUy04UZDnUxsLM3CVmpwu7sQOwxAlwqpgYXiXj3k5ETLV1exGjyaIB9PumXxCB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035455_064368_80C566F9 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx & ath79: ew-dorin,
 fix the trigger level for WPS button
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

please split this into separate commits for ar71xx and ath79.

Best

adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of cc@80211.de
> Sent: Mittwoch, 11. M=E4rz 2020 10:10
> To: openwrt-devel@lists.openwrt.org
> Cc: Catrinel Catrinescu <cc@80211.de>
> Subject: [OpenWrt-Devel] [PATCH] ar71xx & ath79: ew-dorin, fix the trigger
level
> for WPS button
> =

> From: Catrinel Catrinescu <cc@80211.de>
> =

> Because the WPS button had the wrong trigger level,
> the failsafe mode was triggered quite often,
> after this commit:
> https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D27f3f493de
> =

> =

> Signed-off-by: Catrinel Catrinescu <cc@80211.de>
> ---
>  target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c | 2 +-
>  target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c
> b/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c
> index 575a976aec..5544596f91 100644
> --- a/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c
> +++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c
> @@ -47,7 +47,7 @@ static struct gpio_keys_button dorin_gpio_keys[] __init=
data
> =3D {
>  		.code		=3D KEY_WPS_BUTTON,
>  		.debounce_interval =3D DORIN_KEYS_DEBOUNCE_INTERVAL,
>  		.gpio		=3D DORIN_GPIO_BTN_JUMPSTART,
> -		.active_low	=3D 1,
> +		.active_low	=3D 0,
>  	},
>  	{
>  		.desc		=3D "reset button",
> diff --git a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> index d0e0169f1b..88b48faf89 100644
> --- a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> +++ b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> @@ -34,7 +34,7 @@
>  		wps {
>  			label =3D "wps";
>  			linux,code =3D <KEY_WPS_BUTTON>;
> -			gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
> +			gpios =3D <&gpio 11 GPIO_ACTIVE_HIGH>;
>  		};
> =

>  		reset {
> --
> 2.17.1
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
