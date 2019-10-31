Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E22EEAD63
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 11:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUnqUVbvgwPIt11bJrb7weBfdFBDX3DleHSbwKozXIk=; b=gyj00zlMRDjOx9
	Wtst4Urkx6sIkkk+sXaIJWc2Z65SO7KR7fySBtLM12H32CGOUoxyZbkAL2onl5aKrt0X9jOkqyu/g
	pi7jY9TYkfaNVYQGlk48h5FWjTucwJHYWwFHhLTrFXkIS4DQGvGXgJoflbRYpP9Q0mw/wiXzPMMy6
	nwEW4ld0dscBupbzNm/svOrNl/rDtO26GKhxvThS7a7FhIDFRaaiSzLpDSNhhwwfxOGXa29wWUxlz
	ntqTEyib/0gQlS0HBVxfByHMBoVyrcUokNVSR2gPyiqOBCcOjK4+693bcq9sDqye6kXmKc+FnDAob
	hEg9ILohALJS82uVYpRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7e7-0003TR-Uj; Thu, 31 Oct 2019 10:25:39 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7e0-0003Sh-7g
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 10:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To;
 bh=Xbv1fUvBjhGAnVK8wb6Ri9qrqcUv89IkMVXKGC4Hq/g=; 
 b=R5vRgWIw6mMc3mUT4XP/uDjxEAoeyf1lboKsNraK02wdqFeyvsBbgj4LWKZyspnvAJQ/Rpu6lZVqvsjP4LPm7dYD3RuBMJW5oSd4LdxhrnnT/4FbjKB0miFWczFqxdzCilV9bpd83lTj3Jzd4Hwrsw8bVnrFaUlqRkhs5XHXFhU=;
To: Robert Marko <robimarko@gmail.com>
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-4-daniel@dd-wrt.com>
 <53df2442-0106-584c-6fe0-673a75d38edb@allycomm.com>
 <fa5c8547-03a8-59f9-9ff6-5004575e2b77@dd-wrt.com>
 <CAOX2RU5LyA50Wz0jqATb+1vby5+r=8PTb0qDu7m8Np3p2Sv6pg@mail.gmail.com>
From: Daniel Danzberger <daniel@dd-wrt.com>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel@dd-wrt.com; prefer-encrypt=mutual; keydata=
 mQENBFEb+wQBCAD7DgPNNCJeLdnVdMCcneGypnjJ8mtCmpjo/r7HO2Ig6im559z5IQwnGdmj
 FM+6Xws5oGBdhqh7V+uGJ0/pSVJ432OFd/2JYlEs9p9aLbth/QIaoMO4DfDS8EestMLuGYlj
 ffojt+lCwI/OVNvlsHPZczxUuLENDeCKPQKyVkSo8tf5qgOJxZmJ8ebSY2DiTD8Sr3TC7ge3
 aOMuE1YVMv8RbOEVvRcTBerCXteANRuJYA8H1Nwg1WOJjPl5SoysQqPamCkiyVFbteNtRZaV
 tBqfJNRUi4JXdZxsNoaWygJr5pAMyJ9FPMQ6meo/97Cj1E46fTH7QWDhYkwGS3sFLb1jABEB
 AAG0JURhbmllbCBEYW56YmVyZ2VyIDxkYW5pZWxAZGQtd3J0LmNvbT6JAT4EEwECACgFAlEc
 oikCGwMFCVexLAAGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEF2W1+mV7KsoZYwH/1HG
 YtcQuMVXOD1ClaDDoWumBZ089ABCeExcCjuNAqtySAD0Z1i3Dr153CDL5IF8WsLDL+hkhmRJ
 knQg31kwkFglm62HcYuVZiAEjoTgNZRfBezTQevWV6Dys8YdfJGdLifqtMQM5dBLuWtyRWK/
 gkcv0rf2iI9PLveCqb93K9qDLxzgV96kwTUabc6n4FIF324RUPlzCuGoDEUNkh/sVo8jkXl7
 v8vfxwKb1EEMlWLk7bRGqUg7mdHf9zM4Fnb9oMQLJUrFWtME2FlZLwKvMfW8/bPqHI3thIYV
 qgYvagC/1HKmlvHfo8rraKXsQKzNadlv4Vyh6iZYkdQXUTuQtDO5AQ0EURv7BAEIAL1UNRYJ
 q1hv3ggyZv9PSkaWy0t+xMoSwAd2hWdA3iuILrQXjtzJ3nTtePE9TrmLpjwmN8H/ppcNpf1W
 WZ1Zxer9e4cUmm1LjbbgNIArZqzplVh+7QwDJk0ER282k3p5s7IYLkjymwmgeuiSJgaRAmFm
 AJKjiaNZoGdZvaC8TGpgGCRidwDR/cUR1hjpA2vyidNSP5ynILqohEpIe2lvhClODSvEgcMN
 o4xOtmI+Yq2Qg2e7FUaP8pptEysDdDoUnSPxq9v0aQHe3FS90KzXGAaoCuEnnRaotzZcVI31
 vffWHoZ30yGETeTF+W52hIKe7D+MbFfyiRjNtOw6HKli7TEAEQEAAYkBJQQYAQIADwUCURv7
 BAIbDAUJV7EsAAAKCRBdltfpleyrKDikB/0SWPBPhPBpogDLF4bIwORt6Uu8UQus5jYudtMx
 j67v+R+f42sfBj+iKtz2GHlboul8tJXzcO6zVJf2gqQisCNAoS7wZ/k3axPtbgClQmsLtU7B
 KgVRYaWVlLol0hg/Sn1lju/yHhgmbdttfBmCE63wDWr1ITTFepp9aVwaoIhIRBmCBpf3Vk5I
 e6l+1iqDXNXVQVf5qPdVE0Im7IZb9kA7Wk7N6Fa+zYpK+Qz1wFOXYjmK9SPhjdf/5/V2EQGi
 JgaVyfwaMRPUDRFW2wBlScmP+82LqA6TvKKyi3O3zgnFqTGvY2+bvkr9dTfRBlx1NlX0am9t
 YMmhspz7064avRsg
Message-ID: <efafd2b9-d22d-d244-c059-0c1c073e356a@dd-wrt.com>
Date: Thu, 31 Oct 2019 11:25:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOX2RU5LyA50Wz0jqATb+1vby5+r=8PTb0qDu7m8Np3p2Sv6pg@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:819:5a9a:5145:d03a
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=4.0 tests=BAYES_00,NO_RELAYS,
 RATWARE_GECKO_BUILD autolearn=no version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iQ7dN-0004te-U9
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-SpamScore: s
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:819:5a9a:5145:d03a]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <daniel@dd-wrt.com>)
 id 1iQ7dN-0004te-U9; Thu, 31 Oct 2019 11:24:54 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_032532_705636_D7F15092 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On the deprecated staging driver, it somehow directly came up as "rootfs" and
not "ubi". Even though it has been named "ubi" in the dts.
Now the image won't boot because no rootfs is detected:

----
[    1.919001] Creating 1 MTD partitions on "spi0.1":
[    1.925399] 0x000000000000-0x000008000000 : "ubi"
[    1.940324] random: fast init done
...
[    3.170978] UBI error: cannot open mtd rootfs, error -2
[    3.171027] hctosys: unable to open rtc device ([    3.180802] Waiting for
root device /dev/ubiblock0_1...
----


On 10/31/19 11:19 AM, Robert Marko wrote:
> On Thu, 31 Oct 2019 at 11:17, Daniel Danzberger <daniel@dd-wrt.com> wrote:
>>
>> Using 'compatible = "spi-nand"' worked and the device got detected by the
>> driver. However it won't create and "rootfs" partition like it did before.
>>
>> ---
>> [    1.901930] spi-nand spi0.1: GigaDevice SPI NAND was found.
>> [    1.905266] spi-nand spi0.1: 128 MiB, block size: 128 KiB, page size: 2048,
>> OOB size: 128
>> [    1.911015] 1 fixed-partitions partitions found on MTD device spi0.1
>> [    1.919010] Creating 1 MTD partitions on "spi0.1":
>> [    1.925410] 0x000000000000-0x000008000000 : "ubi"
> It creates the partitions like set in DTS, ubi partition contains both
> kernel and rootfs.
>> ---
>>
>>
>> On 10/30/19 4:51 PM, Jeff Kletsky wrote:
>>> On 10/30/19 4:27 AM, Daniel Danzberger wrote:
>>>
>>>> This device contains 2 flash devices. One NOR (32M) and one NAND (128M).
>>>> U-boot and caldata are on the NOR, the firmware on the NAND.
>>>>
>>>>      SoC:    IPQ4019
>>>>      CPU:    4x 710MHz ARMv7
>>>>      RAM:    256MB
>>>>      FLASH:  NOR:32MB NAND:128MB
>>>>
>>>> [...]
>>>>
>>>>
>>>
>>>  .../arch/arm/boot/dts/qcom-ipq4019-bus.dtsi   | 1142 +++++++++++++++++
>>>  .../include/dt-bindings/msm/msm-bus-ids.h     |  869 +++++++++++++
>>>
>>> The sudden appearance of a need the MSM bus and its IDs worries me.
>>>
>>> With 25 devices already on the ipq40xx platform without them, it feels
>>> like something is missing if they are needed by this one.
>>>
>>>
>>>> diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/config-4.19
>>>> index 8948b73ff7..3ee921abed 100644
>>>> --- a/target/linux/ipq40xx/config-4.19
>>>> +++ b/target/linux/ipq40xx/config-4.19
>>>> @@ -303,6 +303,9 @@ CONFIG_MTD_NAND_ECC=y
>>>>   CONFIG_MTD_NAND_QCOM=y
>>>>   CONFIG_MTD_SPI_NAND=y
>>>>   CONFIG_MTD_SPI_NOR=y
>>>> +CONFIG_MTD_SPINAND_MT29F=y
>>>> +CONFIG_MTD_SPINAND_GIGADEVICE=y
>>>> +CONFIG_MTD_SPINAND_ONDIEECC=y
>>>
>>>
>>> The CONFIG_SPINAND_* additions are not required for upstream SPI-NAND
>>>
>>>
>>>>   CONFIG_MTD_SPLIT_FIRMWARE=y
>>>>   CONFIG_MTD_SPLIT_FIT_FW=y
>>>>   CONFIG_MTD_UBI=y
>>>>
>>>> [...]
>>>>
>>>> diff --git
>>>> a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
>>>> b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
>>>> new file mode 100644
>>>> index 0000000000..5553bbd166
>>>> --- /dev/null
>>>> +++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
>>>> @@ -0,0 +1,371 @@
>>>> +/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
>>>> + * Copyright (c) 2019, Nguyen Dinh Phi <phi_nguyen@compex.com.sg>
>>>> + *
>>>> + * Permission to use, copy, modify, and/or distribute this software for any
>>>> + * purpose with or without fee is hereby granted, provided that the above
>>>> + * copyright notice and this permission notice appear in all copies.
>>>> + *
>>>> + * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
>>>> + * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
>>>> + * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
>>>> + * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
>>>> + * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
>>>> + * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
>>>> + * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>>>> + *
>>>> + */
>>>> +
>>>>
>>>> [...]
>>>>
>>>> +
>>>> +        spi_0: spi@78b5000 {
>>>> +            pinctrl-0 = <&spi_0_pins>;
>>>> +            pinctrl-names = "default";
>>>> +            status = "okay";
>>>> +            cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>, <&tlmm 41 GPIO_ACTIVE_HIGH>;
>>>> +            num-cs = <2>;
>>>> +
>>>> +            m25p80@0 {
>>>> +                #address-cells = <1>;
>>>> +                #size-cells = <1>;
>>>> +                reg = <0>;
>>>> +                linux,modalias = "m25p80", "n25q128a11";
>>>> +                compatible = "jedec,spi-nor", "n25q128a11";
>>>> +                spi-max-frequency = <24000000>;
>>>
>>>
>>> I don't think you need linux,modalias here, nor the chip type in the compatible
>>> line.
>>> I believe that the following compatible line is sufficient
>>>
>>>     compatible = "jedec,spi-nor";
>>>
>>>
>>> You might also want to consider "flash@0" or "nor@0" or "nor_flash@0",
>>> or the like, rather than a chip-specific name. (I'm not a committer.)
>>>
>>>
>>>> +
>>>> +                partitions {
>>>> +                    compatible = "fixed-partitions";
>>>> +
>>>> +                    partition@0 {
>>>> +                        label = "0:SBL1";
>>>> +                        reg = <0x000000 0x040000>;
>>>> +                        read-only;
>>>> +                    };
>>>> +
>>>> +                    partition@40000 {
>>>> +                        label = "0:MIBIB";
>>>> +                        reg = <0x040000 0x020000>;
>>>> +                        read-only;
>>>> +                    };
>>>> +
>>>> +                    partition@60000 {
>>>> +                        label = "0:QSEE";
>>>> +                        reg = <0x060000 0x060000>;
>>>> +                        read-only;
>>>> +                    };
>>>> +
>>>> +                    partition@c0000 {
>>>> +                        label = "0:CDT";
>>>> +                        reg = <0x0c0000 0x010000>;
>>>> +                        read-only;
>>>> +                    };
>>>
>>>
>>> Someone may rip on you for capitalization of labels. (I'm not a committer.)
>>>
>>>
>>>> +
>>>> +                    partition@d0000 {
>>>> +                        label = "0:DDRPARAMS";
>>>> +                        reg = <0x0d0000 0x010000>;
>>>> +                        read-only;
>>>> +                    };
>>>> +
>>>> +                    partition@e0000 {
>>>> +                        label = "u-boot-env";
>>>> +                        reg = <0x0e0000 0x010000>;
>>>> +                        read-only;
>>>> +                    };
>>>
>>>
>>> U-Boot environment may want/need to be writable
>>>
>>>
>>>> +
>>>> +                    partition@f0000 {
>>>> +                        label = "u-boot";
>>>> +                        reg = <0x0f0000 0x080000>;
>>>> +                        read-only;
>>>> +                    };
>>>> +
>>>> +                    partition@170000 {
>>>> +                        label = "art";
>>>> +                        reg = <0x170000 0x010000>;
>>>> +                        read-only;
>>>> +                    };
>>>> +                };
>>>> +            };
>>>> +
>>>> +            mt29f@1 {
>>>> +                #address-cells = <1>;
>>>> +                #size-cells = <1>;
>>>> +                reg = <1>;
>>>> +                status = "okay";
>>>> +                compatible = "spinand,mt29f";
>>>> +                spi-max-frequency = <24000000>;
>>>
>>>
>>> Same comment on "mt29f" vs. something generic and descriptive.
>>>
>>>
>>> Converting to the upstream SPI-NAND driver here should be as simple as
>>>
>>>     compatible = "spi-nand";
>>>
>>>
>>>
>>>> +
>>>> +                partitions {
>>>> +                    compatible = "fixed-partitions";
>>>> +
>>>> +                    partition@0 {
>>>> +                        label = "ubi";
>>>> +                        reg = <0x0000000 0x8000000>;
>>>> +                    };
>>>> +                };
>>>> +            };
>>>> +        };
>>>> +
>>>> [...]
>>>
>>>
>>
>> --
>> Regards
>>
>> Daniel Danzberger
>> embeDD GmbH, Alter Postplatz 2, CH-6370 Stans
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

-- 
Regards

Daniel Danzberger
embeDD GmbH, Alter Postplatz 2, CH-6370 Stans

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
