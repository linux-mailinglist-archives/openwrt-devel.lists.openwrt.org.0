Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7B215901F
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 14:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G3n5PGj9P/fD+hb6qXxgjPrvBX0c4HAnLR5Zrs6oOcs=; b=b5qyyB2XshA2qfpSagRpjgicmk
	PgCHryOL9YRtrDWrcZql+r9M2NrfYPH+IReTcRmEDWvZ9ExbBWJ93UlizGuUlqxtXo49y9AxAHiN6
	WJoZphc309EQm4haDswPixo43YlXTGNGfACa6ne+CIR+cYt59G2X7ctLwrQMplGSI6JwkFJ5u8N+2
	Vs9XIweZtcYXjQxI4gTIIRC9/qKCDhVR+7z9N2ApdZOhnbmhzHLZrkI4RfPKa6fnoJ9OlwV5hR+WR
	kZvTRFAdHhwDykgOc3AelVSCfTTd/020ledb4gab+82sxBJjukzRVlEPQadytUU0Vr+I9b3kN5sce
	9rbeztjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1VmB-0000gV-2n; Tue, 11 Feb 2020 13:40:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Vm2-0000g8-HK
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 13:40:24 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A11214F7F;
 Tue, 11 Feb 2020 14:40:18 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 088a5802;
 Tue, 11 Feb 2020 14:40:07 +0100 (CET)
Date: Tue, 11 Feb 2020 14:40:17 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
Message-ID: <20200211134017.GA26894@meh.true.cz>
References: <120944314.P3RYrjzPQu@tool>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <120944314.P3RYrjzPQu@tool>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_054022_723156_23453DA3 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] brcm63xx: Add support for the
 Inventel DV4210.
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Gonzalez Cabanelas <dgcbueu@gmail.com> [2019-10-27 14:35:54]:

Hi,

> This is an Inventel Livebox 1 board. The patch supports the board with a CFE bootloader, and
> a RAM mod (64 MB, tested).

So it works on the stock 32M RAM confguration as well?

> The board originally comes with 8 MB flash.  Under this conditions
> this old BCM6348 based board still runs quite fine with current snapshots.

From https://openwrt.org/submitting-patches

 * commit description
   * must have less than 75 characters per line
   * If you add support for new hardware: Include in your commit message a
     short description of the hardware and how to install OpenWrt on it. Have a
     look at the recent additions for some examples.

> +++ b/target/linux/brcm63xx/dts/dv4210.dts
> @@ -0,0 +1,102 @@

From https://openwrt.org/submitting-patches#dts_checklist

Don't forget to add proper license, consider adding SPDX-License-Identifier: GPL-2.0-or-later OR MIT (details)

> +/dts-v1/;
> +
> +#include "bcm6348.dtsi"
> +
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +       model = "Inventel DV4210";
> +       compatible = "inventel,dv4210", "brcm,bcm6348";

You've a lot of common with Livebox1 DTS, so please use a DTSI to share the
common bits.

> +       keys {
> +               compatible = "gpio-keys-polled";
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               poll-interval = <20>;

Drop `#address-cells = <1>;` and `#size-cells = <0>;` properties, it's a
copy&paste probably, needed by child node with reg property.

> +&pflash {
> +       reg = <0x1f400000 0x800000>;
> +       status = "ok";
> +
> +       partitions {
> +               compatible = "fixed-partitions";
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +
> +               cfe@0 {
> +                       reg = <0x000000 0x010000>;
> +                       label = "cfe";

                          read-only; ?

> +  DEVICE_DESCRIPTION = Build firmware images for the Inventel DV4210. Board with CFE bootloader and >32MB RAM

FLASH_MB := 8 ?

> +  DEVICE_DTS := dv4210
> +  CFE_BOARD_ID := DV4210
> +  CFE_CHIP_ID := 6348
> +  DEVICE_PACKAGES := \
> +    $(B43_PACKAGES) $(USB1_PACKAGES)
> +  DEFAULT := y

you can drop this as DEFAULT:=y is default

> +endef
> +TARGET_DEVICES += DV4210
> +
>  ### Netgear ###
>  define Device/CVG834G
>    $(Device/bcm33xx)
> diff --git a/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> new file mode 100644
> index 0000000000..618a214d63
> --- /dev/null
> +++ b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch

If I were you, I would wait some time, how the current 4.19/5.4 situation pans
out and update the patch for the next kernel accordingly. It makes no sense to
add support for kernel 4.14 (and 4.19 as well, but who knows) at this point of
time.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
