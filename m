Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7CEEAD8F
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 11:35:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liXP91qGiwOYys7CISLaZFuEU5iws04Vcv3rJVCMpS8=; b=eju7mne2VN2Il6
	x1Z0TSKFSBvSGil6JKHoyeU0i9MGq0YUlhUcLnwDTZi08ZyCaYL5Bqsr5MRvBMC6GZTa2vLWX8Bvj
	gjf0NBiApCvzwA8WqCzcB2owOuHZXuFb6iM4IXpagmuZLGQXU8hvWzF8SHxWnQrklYbb2qg1Lo1bb
	AKkMUACDIF9g34Ie35Xbi/Ra2p5ngW1EYTxfZ5m0czGj/e8QxqOloG5NBTTgCzEITvD6WC0AjWF0q
	NsDxPmxnqXL65BVGcu8qhiPfGIhKDSJcGfIWQKuiIll2zhQkudrZ9L3hcMlMFv9QIhT9Vpz0Izmy+
	RSVWab2i0lp/FS2ZmAYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7nr-0000vB-5T; Thu, 31 Oct 2019 10:35:43 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7nh-0000uQ-5l
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 10:35:35 +0000
Received: by mail-qt1-x841.google.com with SMTP id l3so7870396qtp.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 03:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7LpJDg3LfwlzbpEpfuLSb1RSwo3svvaenyjI6VqLk9s=;
 b=oA5eO62YcoxiPqAUhS2wSyBsQYnZ+jJN6X+PrIXfOlCdg6O0azIKVdodpI/Tyj9z8N
 H28QyX98K9ag6dHVHb4CTUIytJMh0epcUfnBjfSz7FDlRlIqhclbs8G7vp+7G4FdGbzF
 k/3OLTGxWB8vBX1EQZpt2Jece6UQ/xjVswF4H5qlzoOael7BXq++kHHVX0apGFAG+iNg
 8g3nwZKrIA6w8fVpd5E2x9FUsIFWV6xBQ2R2+MR6fL9e3kLf0p5qigq0c6fvH11Vp7DX
 EHJdQfHQONjuXSX7lE1hSmH70Z5D1QX838tEJBMJCs4XYeZ/e/renLwbS0zqKyLdplBX
 ItbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7LpJDg3LfwlzbpEpfuLSb1RSwo3svvaenyjI6VqLk9s=;
 b=oQx/u09hAfMr6GGVC1nIhcVPtUHQJSQQS5AxDfZY4aPtT9o9Qy1H1xkyOZPI2L6GD8
 t2dCJyIOBtaAYFjPOTUudOCV+lqg/iDyr5NEICDtyL+IYXhZ9LBRNaA8tfkrYPN2VIu4
 WZ/OOLsxG9zrxSc+Gryvv/pO12ZdgiHP9WVk4UslpsWDAVmLMS2PHKht3Hkx2RLIhxJu
 bV9AVIamlZcDru1mFV4+0B3/rrlWVoY8wH7Uz63JJdxp8Gk3aytomob7ewLaTrfYzzrd
 Nw2WT4BM75KZL7Q7FllhaLBXAtStDLmSrhGo3oRy2FOgu5U6vxXbZDHvccQQLEnSecLK
 v6oQ==
X-Gm-Message-State: APjAAAXGBeU0gXz1N2/wledDaYqR/d8/EXhVUC/YfcHrT5KqfcqJWCP8
 NvWxzYrmyerIaVSrNiE+qNYRvwJ/w5SJdQEXInS58Q==
X-Google-Smtp-Source: APXvYqxUJ6DDnv9ZUuqc2DjlMwpybNoAlS1RTAnuBKea/6PfQKnJbl6G5ciGlxf/ot7yTwhg7H87GbfP1hFjthsq6I4=
X-Received: by 2002:ad4:50a6:: with SMTP id d6mr3887130qvq.199.1572518131732; 
 Thu, 31 Oct 2019 03:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-4-daniel@dd-wrt.com>
 <53df2442-0106-584c-6fe0-673a75d38edb@allycomm.com>
 <fa5c8547-03a8-59f9-9ff6-5004575e2b77@dd-wrt.com>
 <CAOX2RU5LyA50Wz0jqATb+1vby5+r=8PTb0qDu7m8Np3p2Sv6pg@mail.gmail.com>
 <efafd2b9-d22d-d244-c059-0c1c073e356a@dd-wrt.com>
 <CAOX2RU4RQ2ApTE1qqQcwQB8NBoVi2F4EGxk9-jwqS_gcYWdO=Q@mail.gmail.com>
 <061929ed-66f1-1946-13ef-fa2fa99288e6@dd-wrt.com>
 <CAOX2RU5-4+DEgu4nt71T2WCUW98Lt5HWcaQBHfOX7AZ6UYQAig@mail.gmail.com>
 <ff63275a-f4d6-17bb-9626-21e8cfdf55f9@dd-wrt.com>
In-Reply-To: <ff63275a-f4d6-17bb-9626-21e8cfdf55f9@dd-wrt.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 31 Oct 2019 11:35:20 +0100
Message-ID: <CAOX2RU6fXs23puzyf-wkW9TB1nBa=8Obb+WLsm8i0TBmf6sEWw@mail.gmail.com>
To: Daniel Danzberger <daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_033533_219693_FBAE7FF7 
X-CRM114-Status: GOOD (  29.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

Because of old MT29F driver, it was basically a hack just to get
SPI-NANDs working.

On Thu, 31 Oct 2019 at 11:34, Daniel Danzberger <daniel@dd-wrt.com> wrote:
>
> Well, that makes sense and now it works :)
> I am just wondering why it has been working before with the other driver.
>
> On 10/31/19 11:30 AM, Robert Marko wrote:
> > On Thu, 31 Oct 2019 at 11:30, Daniel Danzberger <daniel@dd-wrt.com> wrote:
> >>
> >> I am already using 'ubi.mtd=rootfs root=/dev/ubiblock0_1', which has worked before
> > Well this is the issue, your ubi.mtd needs to be ubi.mtd=ubi
> >>
> >> On 10/31/19 11:26 AM, Robert Marko wrote:
> >>> On Thu, 31 Oct 2019 at 11:25, Daniel Danzberger <daniel@dd-wrt.com> wrote:
> >>>>
> >>>> On the deprecated staging driver, it somehow directly came up as "rootfs" and
> >>>> not "ubi". Even though it has been named "ubi" in the dts.
> >>>> Now the image won't boot because no rootfs is detected:
> >>>>
> >>>> ----
> >>>> [    1.919001] Creating 1 MTD partitions on "spi0.1":
> >>>> [    1.925399] 0x000000000000-0x000008000000 : "ubi"
> >>>> [    1.940324] random: fast init done
> >>>> ...
> >>>> [    3.170978] UBI error: cannot open mtd rootfs, error -2
> >>>> [    3.171027] hctosys: unable to open rtc device ([    3.180802] Waiting for
> >>>> root device /dev/ubiblock0_1...
> >>> This is due to your bootargs, you can either use bootargs-append to
> >>> set rootfs to ubi or change them in bootloader.
> >>> This is classic on boards derived from QCA reference designs
> >>>> ----
> >>>>
> >>>>
> >>>> On 10/31/19 11:19 AM, Robert Marko wrote:
> >>>>> On Thu, 31 Oct 2019 at 11:17, Daniel Danzberger <daniel@dd-wrt.com> wrote:
> >>>>>>
> >>>>>> Using 'compatible = "spi-nand"' worked and the device got detected by the
> >>>>>> driver. However it won't create and "rootfs" partition like it did before.
> >>>>>>
> >>>>>> ---
> >>>>>> [    1.901930] spi-nand spi0.1: GigaDevice SPI NAND was found.
> >>>>>> [    1.905266] spi-nand spi0.1: 128 MiB, block size: 128 KiB, page size: 2048,
> >>>>>> OOB size: 128
> >>>>>> [    1.911015] 1 fixed-partitions partitions found on MTD device spi0.1
> >>>>>> [    1.919010] Creating 1 MTD partitions on "spi0.1":
> >>>>>> [    1.925410] 0x000000000000-0x000008000000 : "ubi"
> >>>>> It creates the partitions like set in DTS, ubi partition contains both
> >>>>> kernel and rootfs.
> >>>>>> ---
> >>>>>>
> >>>>>>
> >>>>>> On 10/30/19 4:51 PM, Jeff Kletsky wrote:
> >>>>>>> On 10/30/19 4:27 AM, Daniel Danzberger wrote:
> >>>>>>>
> >>>>>>>> This device contains 2 flash devices. One NOR (32M) and one NAND (128M).
> >>>>>>>> U-boot and caldata are on the NOR, the firmware on the NAND.
> >>>>>>>>
> >>>>>>>>      SoC:    IPQ4019
> >>>>>>>>      CPU:    4x 710MHz ARMv7
> >>>>>>>>      RAM:    256MB
> >>>>>>>>      FLASH:  NOR:32MB NAND:128MB
> >>>>>>>>
> >>>>>>>> [...]
> >>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>>>  .../arch/arm/boot/dts/qcom-ipq4019-bus.dtsi   | 1142 +++++++++++++++++
> >>>>>>>  .../include/dt-bindings/msm/msm-bus-ids.h     |  869 +++++++++++++
> >>>>>>>
> >>>>>>> The sudden appearance of a need the MSM bus and its IDs worries me.
> >>>>>>>
> >>>>>>> With 25 devices already on the ipq40xx platform without them, it feels
> >>>>>>> like something is missing if they are needed by this one.
> >>>>>>>
> >>>>>>>
> >>>>>>>> diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/config-4.19
> >>>>>>>> index 8948b73ff7..3ee921abed 100644
> >>>>>>>> --- a/target/linux/ipq40xx/config-4.19
> >>>>>>>> +++ b/target/linux/ipq40xx/config-4.19
> >>>>>>>> @@ -303,6 +303,9 @@ CONFIG_MTD_NAND_ECC=y
> >>>>>>>>   CONFIG_MTD_NAND_QCOM=y
> >>>>>>>>   CONFIG_MTD_SPI_NAND=y
> >>>>>>>>   CONFIG_MTD_SPI_NOR=y
> >>>>>>>> +CONFIG_MTD_SPINAND_MT29F=y
> >>>>>>>> +CONFIG_MTD_SPINAND_GIGADEVICE=y
> >>>>>>>> +CONFIG_MTD_SPINAND_ONDIEECC=y
> >>>>>>>
> >>>>>>>
> >>>>>>> The CONFIG_SPINAND_* additions are not required for upstream SPI-NAND
> >>>>>>>
> >>>>>>>
> >>>>>>>>   CONFIG_MTD_SPLIT_FIRMWARE=y
> >>>>>>>>   CONFIG_MTD_SPLIT_FIT_FW=y
> >>>>>>>>   CONFIG_MTD_UBI=y
> >>>>>>>>
> >>>>>>>> [...]
> >>>>>>>>
> >>>>>>>> diff --git
> >>>>>>>> a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
> >>>>>>>> b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
> >>>>>>>> new file mode 100644
> >>>>>>>> index 0000000000..5553bbd166
> >>>>>>>> --- /dev/null
> >>>>>>>> +++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
> >>>>>>>> @@ -0,0 +1,371 @@
> >>>>>>>> +/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
> >>>>>>>> + * Copyright (c) 2019, Nguyen Dinh Phi <phi_nguyen@compex.com.sg>
> >>>>>>>> + *
> >>>>>>>> + * Permission to use, copy, modify, and/or distribute this software for any
> >>>>>>>> + * purpose with or without fee is hereby granted, provided that the above
> >>>>>>>> + * copyright notice and this permission notice appear in all copies.
> >>>>>>>> + *
> >>>>>>>> + * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> >>>>>>>> + * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> >>>>>>>> + * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> >>>>>>>> + * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> >>>>>>>> + * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> >>>>>>>> + * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> >>>>>>>> + * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
> >>>>>>>> + *
> >>>>>>>> + */
> >>>>>>>> +
> >>>>>>>>
> >>>>>>>> [...]
> >>>>>>>>
> >>>>>>>> +
> >>>>>>>> +        spi_0: spi@78b5000 {
> >>>>>>>> +            pinctrl-0 = <&spi_0_pins>;
> >>>>>>>> +            pinctrl-names = "default";
> >>>>>>>> +            status = "okay";
> >>>>>>>> +            cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>, <&tlmm 41 GPIO_ACTIVE_HIGH>;
> >>>>>>>> +            num-cs = <2>;
> >>>>>>>> +
> >>>>>>>> +            m25p80@0 {
> >>>>>>>> +                #address-cells = <1>;
> >>>>>>>> +                #size-cells = <1>;
> >>>>>>>> +                reg = <0>;
> >>>>>>>> +                linux,modalias = "m25p80", "n25q128a11";
> >>>>>>>> +                compatible = "jedec,spi-nor", "n25q128a11";
> >>>>>>>> +                spi-max-frequency = <24000000>;
> >>>>>>>
> >>>>>>>
> >>>>>>> I don't think you need linux,modalias here, nor the chip type in the compatible
> >>>>>>> line.
> >>>>>>> I believe that the following compatible line is sufficient
> >>>>>>>
> >>>>>>>     compatible = "jedec,spi-nor";
> >>>>>>>
> >>>>>>>
> >>>>>>> You might also want to consider "flash@0" or "nor@0" or "nor_flash@0",
> >>>>>>> or the like, rather than a chip-specific name. (I'm not a committer.)
> >>>>>>>
> >>>>>>>
> >>>>>>>> +
> >>>>>>>> +                partitions {
> >>>>>>>> +                    compatible = "fixed-partitions";
> >>>>>>>> +
> >>>>>>>> +                    partition@0 {
> >>>>>>>> +                        label = "0:SBL1";
> >>>>>>>> +                        reg = <0x000000 0x040000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>> +
> >>>>>>>> +                    partition@40000 {
> >>>>>>>> +                        label = "0:MIBIB";
> >>>>>>>> +                        reg = <0x040000 0x020000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>> +
> >>>>>>>> +                    partition@60000 {
> >>>>>>>> +                        label = "0:QSEE";
> >>>>>>>> +                        reg = <0x060000 0x060000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>> +
> >>>>>>>> +                    partition@c0000 {
> >>>>>>>> +                        label = "0:CDT";
> >>>>>>>> +                        reg = <0x0c0000 0x010000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>
> >>>>>>>
> >>>>>>> Someone may rip on you for capitalization of labels. (I'm not a committer.)
> >>>>>>>
> >>>>>>>
> >>>>>>>> +
> >>>>>>>> +                    partition@d0000 {
> >>>>>>>> +                        label = "0:DDRPARAMS";
> >>>>>>>> +                        reg = <0x0d0000 0x010000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>> +
> >>>>>>>> +                    partition@e0000 {
> >>>>>>>> +                        label = "u-boot-env";
> >>>>>>>> +                        reg = <0x0e0000 0x010000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>
> >>>>>>>
> >>>>>>> U-Boot environment may want/need to be writable
> >>>>>>>
> >>>>>>>
> >>>>>>>> +
> >>>>>>>> +                    partition@f0000 {
> >>>>>>>> +                        label = "u-boot";
> >>>>>>>> +                        reg = <0x0f0000 0x080000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>> +
> >>>>>>>> +                    partition@170000 {
> >>>>>>>> +                        label = "art";
> >>>>>>>> +                        reg = <0x170000 0x010000>;
> >>>>>>>> +                        read-only;
> >>>>>>>> +                    };
> >>>>>>>> +                };
> >>>>>>>> +            };
> >>>>>>>> +
> >>>>>>>> +            mt29f@1 {
> >>>>>>>> +                #address-cells = <1>;
> >>>>>>>> +                #size-cells = <1>;
> >>>>>>>> +                reg = <1>;
> >>>>>>>> +                status = "okay";
> >>>>>>>> +                compatible = "spinand,mt29f";
> >>>>>>>> +                spi-max-frequency = <24000000>;
> >>>>>>>
> >>>>>>>
> >>>>>>> Same comment on "mt29f" vs. something generic and descriptive.
> >>>>>>>
> >>>>>>>
> >>>>>>> Converting to the upstream SPI-NAND driver here should be as simple as
> >>>>>>>
> >>>>>>>     compatible = "spi-nand";
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>> +
> >>>>>>>> +                partitions {
> >>>>>>>> +                    compatible = "fixed-partitions";
> >>>>>>>> +
> >>>>>>>> +                    partition@0 {
> >>>>>>>> +                        label = "ubi";
> >>>>>>>> +                        reg = <0x0000000 0x8000000>;
> >>>>>>>> +                    };
> >>>>>>>> +                };
> >>>>>>>> +            };
> >>>>>>>> +        };
> >>>>>>>> +
> >>>>>>>> [...]
> >>>>>>>
> >>>>>>>
> >>>>>>
> >>>>>> --
> >>>>>> Regards
> >>>>>>
> >>>>>> Daniel Danzberger
> >>>>>> embeDD GmbH, Alter Postplatz 2, CH-6370 Stans
> >>>>>>
> >>>>>> _______________________________________________
> >>>>>> openwrt-devel mailing list
> >>>>>> openwrt-devel@lists.openwrt.org
> >>>>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >>>>>
> >>>>
> >>>> --
> >>>> Regards
> >>>>
> >>>> Daniel Danzberger
> >>>> embeDD GmbH, Alter Postplatz 2, CH-6370 Stans
> >>>
> >>
> >> --
> >> Regards
> >>
> >> Daniel Danzberger
> >> embeDD GmbH, Alter Postplatz 2, CH-6370 Stans
> >
>
> --
> Regards
>
> Daniel Danzberger
> embeDD GmbH, Alter Postplatz 2, CH-6370 Stans

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
