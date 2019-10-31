Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FECEAD49
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 11:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UW5MCnRKz66qjtAKy8aMTDruoP9w2GJstcwvfEDCGOw=; b=AStT/h6JnRUKVx
	HNHH8rtvZmpnQsKRT3z1eY8jkfCuwiS5YjfdM+L3ctVIb/Yfoo/8X73Gr5D0q7IuW0oqnV1jFbSiV
	qRVA716qGTpqMI7YvYcgDra48Vfq+c3s3CpXNnsqEneR53gcQ/385YcQtvJ3QQlIjhO2Kni+BtUOf
	NNXvoE+Y3RrQquo6A2vI2UtE6965ehwnHbk5T6NRhLrlRxwVxtP0bkz680gxYxlFClTfG8pzyGtTt
	Ca+TlmN6fVhyxHc4geiAmyI81D+p/hXqeyJRBBc0HYDVCdRXasP7yQJslheettRtdZUR4IwEAZ/cL
	B7PzdIjTDDFFjTeahJpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7Yo-0007jK-Gi; Thu, 31 Oct 2019 10:20:10 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7YV-0007iG-E3
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 10:19:53 +0000
Received: by mail-qk1-x742.google.com with SMTP id 71so6431995qkl.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 03:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PUKiD9w0DhtZj4fnA/JV0xbPDvUKm7+U6FWMwL9Tdew=;
 b=rZ9FUY7tLYvZLOJ3e95mt4p7zwbDvw5r7PWdGavVoBPhLa4Z2epXY9fSWWx7+kaRqr
 3IAg+bjnPxFvvhTFwCkGf5aJD87kq58aOXs8SfCj4OEgJZszdGiYBx3x/SWV8S2dF42x
 0Z2RGC0ZJmg3l+bKM6qphvAntkcQ9y6v3nLeSL6EpqVCJcw8VauBn7BuRzohjqod9gmd
 GZcdLYbq7mYIQEz4V2AWbncRN1P21PHOt7Tp2k3M00ughhwLwGmVrKtDMND+mq0fTSXd
 9xRnVt6YEr1yo1wmI/oS57yDUHrFk6MTkfFk0OEph0zQkJJ7ESC5/0jNY3ktvjD4JT/c
 2wHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PUKiD9w0DhtZj4fnA/JV0xbPDvUKm7+U6FWMwL9Tdew=;
 b=fiNv2c9Kx2gZ9F5N43D/CAues6xDtEPMAQto9cIwj9TB08C5NpGHvL4I5NpUBPMWCU
 4IDX0Ti9dvrfH/CqLCoYwm08+nNRTtCFPR34O+qr6xYSbDf0iMmATpu+zuRylT6xr/wT
 D+xgHKYnAU7oH0d4YArPbSPniPrJirUUR+KjZvB/a3+4V7oYX/6chkNKYLxrkuWVJo8k
 sYZ4Yr5tKMuYi8Dq/H3U0skgRYKDfqQSIh5E0ddhV2SCGcGprg9BgN4tcns8NmUAm8a7
 SEvnyC2rG4t0nXCxZct86gweW/GYVna+of9Gsl1IvclVP7ukDNKk9StZykDpXL5P6c4o
 dp9A==
X-Gm-Message-State: APjAAAXzE7joE7VjIPQlNPBd7Xf4DjxQSzLX656ogZWqp2ml1x/aRuLi
 6jRiop1Jd1+KjvXVGiA9WzvwRw6lh0W0yatJknZoqw==
X-Google-Smtp-Source: APXvYqwIx19MoB2WilO6KD2rxPstncAmTom1CnqANt65Ng2KeJyfFgvjsoBLzPtiB4s5VQAkirIAMrcAhZcRWxMbt+w=
X-Received: by 2002:a37:497:: with SMTP id 145mr398847qke.136.1572517189870;
 Thu, 31 Oct 2019 03:19:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-4-daniel@dd-wrt.com>
 <53df2442-0106-584c-6fe0-673a75d38edb@allycomm.com>
 <fa5c8547-03a8-59f9-9ff6-5004575e2b77@dd-wrt.com>
In-Reply-To: <fa5c8547-03a8-59f9-9ff6-5004575e2b77@dd-wrt.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 31 Oct 2019 11:19:38 +0100
Message-ID: <CAOX2RU5LyA50Wz0jqATb+1vby5+r=8PTb0qDu7m8Np3p2Sv6pg@mail.gmail.com>
To: Daniel Danzberger <daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_031951_496451_01FEB210 
X-CRM114-Status: GOOD (  27.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ipq40xx: ipq4019: Add new device
 Compex WPJ419
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jeff Kletsky <lede@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 31 Oct 2019 at 11:17, Daniel Danzberger <daniel@dd-wrt.com> wrote:
>
> Using 'compatible = "spi-nand"' worked and the device got detected by the
> driver. However it won't create and "rootfs" partition like it did before.
>
> ---
> [    1.901930] spi-nand spi0.1: GigaDevice SPI NAND was found.
> [    1.905266] spi-nand spi0.1: 128 MiB, block size: 128 KiB, page size: 2048,
> OOB size: 128
> [    1.911015] 1 fixed-partitions partitions found on MTD device spi0.1
> [    1.919010] Creating 1 MTD partitions on "spi0.1":
> [    1.925410] 0x000000000000-0x000008000000 : "ubi"
It creates the partitions like set in DTS, ubi partition contains both
kernel and rootfs.
> ---
>
>
> On 10/30/19 4:51 PM, Jeff Kletsky wrote:
> > On 10/30/19 4:27 AM, Daniel Danzberger wrote:
> >
> >> This device contains 2 flash devices. One NOR (32M) and one NAND (128M).
> >> U-boot and caldata are on the NOR, the firmware on the NAND.
> >>
> >>      SoC:    IPQ4019
> >>      CPU:    4x 710MHz ARMv7
> >>      RAM:    256MB
> >>      FLASH:  NOR:32MB NAND:128MB
> >>
> >> [...]
> >>
> >>
> >
> >  .../arch/arm/boot/dts/qcom-ipq4019-bus.dtsi   | 1142 +++++++++++++++++
> >  .../include/dt-bindings/msm/msm-bus-ids.h     |  869 +++++++++++++
> >
> > The sudden appearance of a need the MSM bus and its IDs worries me.
> >
> > With 25 devices already on the ipq40xx platform without them, it feels
> > like something is missing if they are needed by this one.
> >
> >
> >> diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/config-4.19
> >> index 8948b73ff7..3ee921abed 100644
> >> --- a/target/linux/ipq40xx/config-4.19
> >> +++ b/target/linux/ipq40xx/config-4.19
> >> @@ -303,6 +303,9 @@ CONFIG_MTD_NAND_ECC=y
> >>   CONFIG_MTD_NAND_QCOM=y
> >>   CONFIG_MTD_SPI_NAND=y
> >>   CONFIG_MTD_SPI_NOR=y
> >> +CONFIG_MTD_SPINAND_MT29F=y
> >> +CONFIG_MTD_SPINAND_GIGADEVICE=y
> >> +CONFIG_MTD_SPINAND_ONDIEECC=y
> >
> >
> > The CONFIG_SPINAND_* additions are not required for upstream SPI-NAND
> >
> >
> >>   CONFIG_MTD_SPLIT_FIRMWARE=y
> >>   CONFIG_MTD_SPLIT_FIT_FW=y
> >>   CONFIG_MTD_UBI=y
> >>
> >> [...]
> >>
> >> diff --git
> >> a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
> >> b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
> >> new file mode 100644
> >> index 0000000000..5553bbd166
> >> --- /dev/null
> >> +++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
> >> @@ -0,0 +1,371 @@
> >> +/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
> >> + * Copyright (c) 2019, Nguyen Dinh Phi <phi_nguyen@compex.com.sg>
> >> + *
> >> + * Permission to use, copy, modify, and/or distribute this software for any
> >> + * purpose with or without fee is hereby granted, provided that the above
> >> + * copyright notice and this permission notice appear in all copies.
> >> + *
> >> + * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> >> + * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> >> + * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> >> + * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> >> + * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> >> + * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> >> + * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
> >> + *
> >> + */
> >> +
> >>
> >> [...]
> >>
> >> +
> >> +        spi_0: spi@78b5000 {
> >> +            pinctrl-0 = <&spi_0_pins>;
> >> +            pinctrl-names = "default";
> >> +            status = "okay";
> >> +            cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>, <&tlmm 41 GPIO_ACTIVE_HIGH>;
> >> +            num-cs = <2>;
> >> +
> >> +            m25p80@0 {
> >> +                #address-cells = <1>;
> >> +                #size-cells = <1>;
> >> +                reg = <0>;
> >> +                linux,modalias = "m25p80", "n25q128a11";
> >> +                compatible = "jedec,spi-nor", "n25q128a11";
> >> +                spi-max-frequency = <24000000>;
> >
> >
> > I don't think you need linux,modalias here, nor the chip type in the compatible
> > line.
> > I believe that the following compatible line is sufficient
> >
> >     compatible = "jedec,spi-nor";
> >
> >
> > You might also want to consider "flash@0" or "nor@0" or "nor_flash@0",
> > or the like, rather than a chip-specific name. (I'm not a committer.)
> >
> >
> >> +
> >> +                partitions {
> >> +                    compatible = "fixed-partitions";
> >> +
> >> +                    partition@0 {
> >> +                        label = "0:SBL1";
> >> +                        reg = <0x000000 0x040000>;
> >> +                        read-only;
> >> +                    };
> >> +
> >> +                    partition@40000 {
> >> +                        label = "0:MIBIB";
> >> +                        reg = <0x040000 0x020000>;
> >> +                        read-only;
> >> +                    };
> >> +
> >> +                    partition@60000 {
> >> +                        label = "0:QSEE";
> >> +                        reg = <0x060000 0x060000>;
> >> +                        read-only;
> >> +                    };
> >> +
> >> +                    partition@c0000 {
> >> +                        label = "0:CDT";
> >> +                        reg = <0x0c0000 0x010000>;
> >> +                        read-only;
> >> +                    };
> >
> >
> > Someone may rip on you for capitalization of labels. (I'm not a committer.)
> >
> >
> >> +
> >> +                    partition@d0000 {
> >> +                        label = "0:DDRPARAMS";
> >> +                        reg = <0x0d0000 0x010000>;
> >> +                        read-only;
> >> +                    };
> >> +
> >> +                    partition@e0000 {
> >> +                        label = "u-boot-env";
> >> +                        reg = <0x0e0000 0x010000>;
> >> +                        read-only;
> >> +                    };
> >
> >
> > U-Boot environment may want/need to be writable
> >
> >
> >> +
> >> +                    partition@f0000 {
> >> +                        label = "u-boot";
> >> +                        reg = <0x0f0000 0x080000>;
> >> +                        read-only;
> >> +                    };
> >> +
> >> +                    partition@170000 {
> >> +                        label = "art";
> >> +                        reg = <0x170000 0x010000>;
> >> +                        read-only;
> >> +                    };
> >> +                };
> >> +            };
> >> +
> >> +            mt29f@1 {
> >> +                #address-cells = <1>;
> >> +                #size-cells = <1>;
> >> +                reg = <1>;
> >> +                status = "okay";
> >> +                compatible = "spinand,mt29f";
> >> +                spi-max-frequency = <24000000>;
> >
> >
> > Same comment on "mt29f" vs. something generic and descriptive.
> >
> >
> > Converting to the upstream SPI-NAND driver here should be as simple as
> >
> >     compatible = "spi-nand";
> >
> >
> >
> >> +
> >> +                partitions {
> >> +                    compatible = "fixed-partitions";
> >> +
> >> +                    partition@0 {
> >> +                        label = "ubi";
> >> +                        reg = <0x0000000 0x8000000>;
> >> +                    };
> >> +                };
> >> +            };
> >> +        };
> >> +
> >> [...]
> >
> >
>
> --
> Regards
>
> Daniel Danzberger
> embeDD GmbH, Alter Postplatz 2, CH-6370 Stans
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
