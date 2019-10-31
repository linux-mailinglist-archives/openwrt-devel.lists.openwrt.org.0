Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BE6EAFEB
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 13:12:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7Gr4MPPZ7a4TiZ505EcLgUdX4YbJWrTI39OSOGw8DM=; b=su+mT9rIvJxaS8
	tZDjGbyd3cC4/IFUnu1A1Yk+E9xhMF2Mo4OrOSbyaJyWNHOWK+dMEUM5/onyZ6yFMeG4EkSZJ/PIk
	rVHjEjoT1L0EgnkhUIHiy+oTnCP9XMAYJg/A99qjp142QX/AeGxExNBwQqjNvLcPrRp9XD9iV1XJR
	OVeEtIRdfW5LLWDpo9gXQc1jArAhBc8w61hiId2ntmrZyc1MH/ML5YMSbjdxL8CtKC1fjjCw1JPPi
	vBpFWkFL2FAzEPc1NUuxpByb6lY9NfMNL7iWKEkAqhgOrY0mu3DHt+LZ8wuXeBYy8D3bvLYABqn9j
	2Tyzar1LjW48DkIbD7xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9JT-00009O-KO; Thu, 31 Oct 2019 12:12:27 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9JJ-00008l-1H
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 12:12:18 +0000
Received: by mail-qt1-x843.google.com with SMTP id t8so8216063qtc.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 05:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/YYax520N9gjrbe4VyzMdNf5zPskpRGtMLAvA2jGGxA=;
 b=Y6lOYqNt6t9PU1WML38VGffIRvBT9YKBviTQGj95H3H6k6lWm7x7XtcUh6boFW4Oa5
 QPJipiR37x5cTw+5VEAoA8PI89+iCfeLG3Dc/XYjBDdjeKXfeu0MIsAfR1GyI+5caERW
 IrNtW9AP6cbYQcSLiCTFxqDzOCT1xNp7HUa0mArh+axqw78/Ihx+hBGI99/p78MHOSPr
 K7DduVNT1EZ/12qMCQm0luSVbH1X9ZeuCbbCYaw+STT46y7LI9M9BOGTF3pBWcN7I0zw
 hov029egH+g3nHQBjk7U33F6Tin+ZTYmO8GTvw7tbPSvKoVEtl8NeQzRmafn+x9Ew+kd
 Dhzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/YYax520N9gjrbe4VyzMdNf5zPskpRGtMLAvA2jGGxA=;
 b=XAQG63jDtsEbJ9M2th2a284p6N3uO0jE14u/+CkycGhWHKzLF5s/lknz+VeNE0Lh3+
 7b0T+43I1ULdc03j6YHwAq2SeY9xq5nl4yZP0fhg3TcgGn1vof9sTDNqPxo6WumFjapQ
 evxSjfF8V2gIgp9UsEBI1BWyQRBZnObxY2TkCOfO06S6vGQELCO5YO5M5hGfzb3A4yLe
 vKF0Cr7SkSQcVFAC8Lg+3WF7DD5qA6AKFA1VfmyYjJux16wxuA4mIwDe4u9VS8U+DdNt
 iVbEqb47A15zx5OfQBmAjhFqPWSYGj1ExuwSx34S4j0OFo+tUAtmwycLaxmbXJIaPxta
 U99g==
X-Gm-Message-State: APjAAAVWaNid+bEmuR3MM6hwCXLfTy81YOTGbrdzs0NGBV7WESap9Cfq
 6kfotb4C143dIgU+PIqqu3HnJRzlMkubngsiln4=
X-Google-Smtp-Source: APXvYqwi5cVXTnXAu0Pj7079DSv3ByIFGSSAAJ6gjwzQjQarE6xDqUst4uidbtMMdDL/X/6ahd4jVvtobSX65FjCmds=
X-Received: by 2002:a0c:e982:: with SMTP id z2mr4359964qvn.196.1572523935097; 
 Thu, 31 Oct 2019 05:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-4-daniel@dd-wrt.com>
 <53df2442-0106-584c-6fe0-673a75d38edb@allycomm.com>
 <31f9e2fe-081f-14de-e80a-5d5507297e6b@dd-wrt.com>
In-Reply-To: <31f9e2fe-081f-14de-e80a-5d5507297e6b@dd-wrt.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 31 Oct 2019 13:12:03 +0100
Message-ID: <CAOX2RU7rGEJmYcan5xcpUO-hNQd3bEYg80C=aWrYL3SLznev3w@mail.gmail.com>
To: Daniel Danzberger <daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_051217_104765_3756268A 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

On Thu, 31 Oct 2019 at 13:10, Daniel Danzberger <daniel@dd-wrt.com> wrote:
>
> Hi Jeff,
> >
> >  .../arch/arm/boot/dts/qcom-ipq4019-bus.dtsi   | 1142 +++++++++++++++++
> >  .../include/dt-bindings/msm/msm-bus-ids.h     |  869 +++++++++++++
> >
> > The sudden appearance of a need the MSM bus and its IDs worries me.
> >
> > With 25 devices already on the ipq40xx platform without them, it feels
> > like something is missing if they are needed by this one.
>
> I already tried it without those files, but the wifi won't get detected in that
> case.
That is because you are trying to reuse QSDK DTS, this wont wont
neither its supported.
You need to convert it to OpenWrt/Upstream kernel style and bindings.
There are lot of examples in ipq40xx already.
>
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
