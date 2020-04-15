Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066F21A9101
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 04:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Is9lWwoKTsNjeNAeVv1iPvi8SGrISj8bqFpV+r7H4Ow=; b=aLvzMgyhrawIAu
	TlsUitw5zCwCanYQFsf8bjMSZaBTJ7oQagpwQmdY6q0LYSnGHAUBQuYVrBQdSLRNfNam6QBSsLx0R
	mU/0AH0sRMFPgQbAf76S9FOEnZjREBJxwitd8Xz5uIH3r6zQvDh3XpY/jKVX7b0vYoqoV0zsJrQ4q
	nHkU3WbB7+y0VJv4PmFzjQeEwX+0dp80gcRuQHoPeZv2QeUJY6WdoXaQzohVjhpTeq30aDjIArTdv
	hxohno+eUO2TWVDQOhzUpfeG/HThItc9/XRiRRXyXHk1FHOjvQyXlJ5ZhX7+gBwPQbBTW7yJKKYaC
	+WlUbEvwTCwDTbkpAMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOXzb-0007wE-An; Wed, 15 Apr 2020 02:41:35 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOXzU-0007vi-F2
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 02:41:30 +0000
Received: by mail-ot1-x341.google.com with SMTP id x11so1947350otp.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Apr 2020 19:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XazQLTpcIdVX7+5rGrbeMjTM88YMO7HKg5HEHYcJqcs=;
 b=ADmDGyc7aCvW9OEw9wyowHEJbz6n2gQKvReGCk0FlSYdYbayeq13VK6yj9vzFcViqz
 asJ9HtVg/MZpx1/9eaNEHlVIza3TMu9cx/L1JdppCzOwHPpExGWlZoLvWDVtDh1OAE6Q
 Ayk+AuXPP+KOjItEbVwpp5YCgm5bpmnmpCDxh25xWgg+8h/98lJII+caLU2i1unW/KHj
 E6V+Mn6FvtFYc0FzrnWr9vEkobi3zED91AL8+XKgFT9Z4VjdT76f4EZx6cBthxVunoM5
 umLL9XRziy77kFf0N7hGlA1fohfQXAdsT9iuel16gJoJWfrFhr0RVd5pW3aUVAK3zp5c
 rudg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XazQLTpcIdVX7+5rGrbeMjTM88YMO7HKg5HEHYcJqcs=;
 b=XK4T3z6hCjuIY/YrTrtsh8FXzkSphK1GnUHbp3RlRb5hkY+xgCvGp3I0wAUvMrTAtn
 VCBhxOevVgQRiI2z/7Jk+Y0tHPb/YPUNIizA5VSawEMzdQqJbprGq/wu4n7h3U247+58
 h2tlpP72VcipRhINo9i43u3pUtNhEtz4RPtSmuFIYeQ898TieUjSucSe2rVXTZpGElp4
 EXQrfozJjuJ48TQLoDKIkd2kqzQ8qF9tZ75wYI4pFay96LoYLfb0x/uXLeSzBPbxk1yx
 tatf1EBBENJoEy5UprpZyIugOIefgMDcY0qQSwDjmLfHryNRdcfMMvxUKzgdqq+pDuPG
 eHlA==
X-Gm-Message-State: AGi0Pub3uFqCX06qr+dL2cx+Sh4zcTpVvg6ucKNh7Mwy4osW1ijuU2jB
 YgmCu2emEIbXTYakrJnolSQGx5HpVj+zQljyjp8=
X-Google-Smtp-Source: APiQypIvSb7zo9wPS8JpN5x1TCqFATqOrlUKMA/djKa8wm7UIh8eI1qFhs6/X1WRTgjWxLjHtB4CjxGTzn9+sWgi9Dg=
X-Received: by 2002:a4a:c595:: with SMTP id x21mr11294918oop.10.1586918484178; 
 Tue, 14 Apr 2020 19:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200414141248.6014-1-endspiel@disroot.org>
In-Reply-To: <20200414141248.6014-1-endspiel@disroot.org>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 15 Apr 2020 10:41:13 +0800
Message-ID: <CAJsYDVJOKJqwOwLsdmc-cOmrVWRARJJENo8FCE+O9v5QVq6HEA@mail.gmail.com>
To: Ernst Spielmann <endspiel@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_194128_531299_00ACB29B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Asus RT-N10P
 V3 / RT-N11P B1 / RT-N12 VP B1
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

some comments below:
On Tue, Apr 14, 2020 at 10:16 PM Ernst Spielmann <endspiel@disroot.org> wrote:
> [...]
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               led_power: power {
> +                       label = "rt-n11p_b1:green:power";
> +                       gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;

you need to rebase this commit again due to recent kernel bump for
ramips/mt76x8.
Specifically, GPIO references in dts are changed. Previous <&gpioX Y> should be
changed to <&gpio (X*32+Y)>. e.g. the above line should be changed to:
<&gpio 37 GPIO_ACTIVE_LOW>;

> +               };
> +
> +               wlan {
> +                       label = "rt-n11p_b1:green:wlan";
> +                       gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               wan {
> +                       label = "rt-n11p_b1:green:wan";
> +                       gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               lan {
> +                       label = "rt-n11p_b1:green:lan";
> +                       gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       keys {

Could you try interrupt-driven gpio-keys instead?
just change the following line:

> +               compatible = "gpio-keys-polled";

to: compatible = "gpio-keys";

> +               poll-interval = <20>;

and remove this poll-interval line.

> +
> +               reset {
> +                       label = "reset";
> +                       gpios = <&gpio0 5 GPIO_ACTIVE_LOW>;
> +                       linux,code = <KEY_RESTART>;
> +               };
> +       };
> +};
> +
> +&spi0 {
> +       status = "okay";
> +
> +       m25p80@0 {
> +               compatible = "jedec,spi-nor";
> +               reg = <0>;
> +               spi-max-frequency = <10000000>;

Could you try if a higher spi-max-frequency works?
40MHz is usually fine for most devices.

> +
> +               partitions {
> [...]
> diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
> index e2890c98e6..36aa296fb8 100644
> --- a/target/linux/ramips/image/mt76x8.mk
> +++ b/target/linux/ramips/image/mt76x8.mk
> @@ -213,6 +213,30 @@ define Device/rakwireless_rak633
>  endef
>  TARGET_DEVICES += rakwireless_rak633
>
> +define Device/asus_rt-n10p_v3
> +  IMAGE_SIZE := 7872k
> +  DEVICE_VENDOR := Asus
> +  DEVICE_MODEL := RT-N10P V3

There's a dedicated DEVICE_VARIANT field available for device version.
you could split this DEVICE_MODEL and use DEVICE_VARIANT for
version numbers like V3/B1.

> +  SUPPORTED_DEVICES += rt-n10p_v3
> +endef
> +TARGET_DEVICES += asus_rt-n10p_v3
> +
> +define Device/asus_rt-n11p_b1
> +  IMAGE_SIZE := 7872k
> +  DEVICE_VENDOR := Asus
> +  DEVICE_MODEL := RT-N11P B1
> +  SUPPORTED_DEVICES += rt-n11p_b1
> +endef
> +TARGET_DEVICES += asus_rt-n11p_b1
> +
> +define Device/asus_rt-n12_vp_b1
> +  IMAGE_SIZE := 7872k
> +  DEVICE_VENDOR := Asus
> +  DEVICE_MODEL := RT-N12 VP B1
> +  SUPPORTED_DEVICES += rt-n12_vp_b1
> +endef
> +TARGET_DEVICES += asus_rt-n12_vp_b1
> +
>  define Device/skylab_skw92a
>    IMAGE_SIZE := 16064k
>    DEVICE_VENDOR := Skylab
> [...]

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
