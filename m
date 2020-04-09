Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E281A32EB
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 13:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVxllpep79vysvPvvZ5Ih2PMOkaH30/jnv5ayhT8qmA=; b=rUfflprcgfUVEM
	sViWUBjC/VQU9ZDjD0ZLuIx5XbCPr3pjbiWVxpbMigIoAhJzdCiGNZnlwqAlodvP0hjHupZjfPYvr
	Olhbk5+6/dIHzxomerW7QgwBL6fBNAQcRiuTLVRrviS5tBIQjibMtX3dyRZMc/XHshzAvsWheHrP7
	B/jAWhUXm71I4UnEgwcwkuwzNvI62KAs74japFRQy0dfRDLwXLr+vIWWUxIkxk1gItUUah7SqrykZ
	DpkE3+C1Jw8Cdx9sUKccOJcv1rnyxOq6idPCbA9c2q4CLR5ogKCKgbIrMHFEa89Q5HunBlfp5PHD4
	bQVRIZXqvgmfE/VFSDnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMV2Y-0004On-If; Thu, 09 Apr 2020 11:08:10 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMV2R-0004ON-27
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 11:08:04 +0000
Received: by mail-oi1-x244.google.com with SMTP id k18so2902053oib.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Apr 2020 04:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j/tDzyLO5tzXtDiPz3MsLfdqYTKRWBGLwZJHezM50Sc=;
 b=SSaFLDeLtafEQXKxUnNNzlD/zdfd8VWxQiAfz4IBU4GisxrszVtOKOYrMDLShwSxoA
 iPA8sch5TKPzTOnSvm6sGg/OGL8iVZQEX7OBl6gfwJq/XMT7J0LbA5eik4q36VG1qY+U
 BTiXepV6AtC3MLpYOS7ffqD4ijF27HJ6vWoDP3rh2rx1t/QxeI5OX2GtkP6myzCfoGl/
 AOtPSVBa6kUypcfW8gJ9iyNppLrnqo4P6yN2XO4dtq0E7CZl2ufl/+LAtR7+6IMQGJxy
 Jx2VfnFcdzaUcSCu01Kf282rh8+CoEARLnvr/tSeSef1OEJshR/rvxtR+Tlq87B79mv4
 1qOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j/tDzyLO5tzXtDiPz3MsLfdqYTKRWBGLwZJHezM50Sc=;
 b=aL8RjElkqALQYX1bfjj3sECP332iuwyUta105uZHrW0Xy6k/bVUvQHNgyOQ6AG3+W3
 k3RqUsJSMDqcFgT0zlrym6uaEypR0tVMI7/L2Y9tKVl8jaWALqp/binrpKLtzgbmoW5L
 RGSSF8/hRU5R95MWAoocc5WKnC/VxFhjdfkNIq1M89s5NbWVTf6M4OCgIl4H2lA/Ym8i
 yBC1czd8mTfUt1HSkaEPtwUINvr3zt9yQUz/4ECjGHPql6kBg4M+ymttg7Pray8TMDV0
 s+oiNH/NaXW5qjkvYDlTaGrqxEwgV7HbNHLj1ZcQAhgeTOm35YPh4ObCBS/fOC+grb2g
 MW7w==
X-Gm-Message-State: AGi0PuZhUImwuAIbJHtuBftmgoD/F5I7QakLqZ+4u4CmdhIgJH9KfJsX
 yk9CEhJl8k8lPXfVYRkKMNoZzEkHPM+ZdcW+RBm0vSkE
X-Google-Smtp-Source: APiQypLC7RCb+cZ8OoXz3eC0HExBsHUyCx3S7LOMqXjO354ZPRRiYFyEKeHFzsNtIO3H8d7n+BdkkR7zBsl5vWbm9zE=
X-Received: by 2002:aca:3196:: with SMTP id x144mr5892546oix.77.1586430482056; 
 Thu, 09 Apr 2020 04:08:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200408173210.3904236-1-t.schramm@manjaro.org>
 <20200408173210.3904236-2-t.schramm@manjaro.org>
In-Reply-To: <20200408173210.3904236-2-t.schramm@manjaro.org>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 9 Apr 2020 19:07:51 +0800
Message-ID: <CAJsYDVK22K2hG01BHX9HZtwbO+u-EKME8_jt59tdM9t2wv_eSg@mail.gmail.com>
To: Tobias Schramm <t.schramm@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_040803_132630_ACA858C0 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] ramips: mt7621: use higher SPI
 clock speed on Mikrotik rbm11g and rbm33g
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

On Thu, Apr 9, 2020 at 1:32 AM Tobias Schramm <t.schramm@manjaro.org> wrote:
>
> Previously the dts were using a value determined by empirical testing,
> because of a spi driver/clock bug. The bug was fixed quite some time
> ago. 33 MHz is the default clock frequency used by RouterBOOT and thus
> safe.
>
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 4 ++--
>  target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts | 7 ++++---
>  2 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> index aae899c9a6..b0a31602e3 100644
> --- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> +++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> @@ -83,8 +83,8 @@
>         w25q128@0 {
>                 compatible = "jedec,spi-nor";
>                 reg = <0>;
> -               // XXX empiric value to obtain actual 10MHz SCK at the chip
> -               spi-max-frequency = <3125000>;
> +               m25p,fast-read;
> +               spi-max-frequency = <33000000>;

m25p,fast-read isn't needed until spi frequency is higher than 50MHz
and it affects performance a bit.
It can be removed here and below.

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
