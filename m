Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215BE2290E
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 May 2019 23:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n86d790uV41R4jGvnOCT2V8ziL7FB77DtZLC5thKWbg=; b=h/BQ/wPn90y1/k
	X5QDOryWgQojC7ZnAQj8vVH6jl2EDvBv5C0dCwk59vv70y/j2imKq2mmbdvwwi4bCtpZ5fZNvKgpo
	laqHV0IlM8KaGhkwHbX3dEKWG2DJsgzo887qmZpP5MRyaZs4vOkmeEqM/rZ8XO5m6ZovcIYyJHOoa
	NUsSQVkNQ2eUUPFocsrB9Y5ataH4ShOW/yLZQpagSJEwq0amChCY8KqAP32YLgy4NoiBRnhQ2gy33
	6Vvz39cdxqHY7vxQthAbFIA4GJ8uVDAEjbTJRSQKrHMU+dzwAJHQx6/7NUnYt3TeXsFA6thLh92fB
	y6hAjvTYwN2XiQ542M6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hST9x-000871-GB; Sun, 19 May 2019 21:15:57 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hST9p-00085x-IF
 for openwrt-devel@lists.openwrt.org; Sun, 19 May 2019 21:15:52 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 9BAB84F2B8;
 Sun, 19 May 2019 23:15:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id s-vkJ7-FesiO; Sun, 19 May 2019 23:15:33 +0200 (CEST)
To: Sandeep.Sheriker@microchip.com, openwrt-devel@lists.openwrt.org
References: <20190511115320.12285-1-hauke@hauke-m.de>
 <20190511115320.12285-4-hauke@hauke-m.de>
 <BYAPR11MB3157455EFFE6402BF4CE6D9A820B0@BYAPR11MB3157.namprd11.prod.outlook.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 mQINBFtLdKcBEADFOTNUys8TnhpEdE5e1wO1vC+a62dPtuZgxYG83+9iVpsAyaSrCGGz5tmu
 BgkEMZVK9YogfMyVHFEcy0RqfO7gIYBYvFp0z32btJhjkjBm9hZ6eonjFnG9XmqDKg/aZI+u
 d9KGUh0DeaHT9FY96qdUsxIsdCodowf1eTNTJn+hdCudjLWjDf9FlBV0XKTN+ETY3pbPL2yi
 h8Uem7tC3pmU7oN7Z0OpKev5E2hLhhx+Lpcro4ikeclxdAg7g3XZWQLqfvKsjiOJsCWNXpy7
 hhru9PQE8oNFgSNzzx2tMouhmXIlzEX4xFnJghprn+8EA/sCaczhdna+LVjICHxTO36ytOv7
 L3q6xDxIkdF6vyeEtVm1OfRzfGSgKdrvxc+FRJjp3TIRPFqvYUADDPh5Az7xa1LRy3YcvKYx
 psDDKpJ8nCxNaYs6hqTbz4loHpv1hQLrPXFVpoFUApfvH/q7bb+eXVjRW1m2Ahvp7QipLEAK
 GbiV7uvALuIjnlVtfBZSxI+Xg7SBETxgK1YHxV7PhlzMdTIKY9GL0Rtl6CMir/zMFJkxTMeO
 1P8wzt+WOvpxF9TixOhUtmfv0X7ay93HWOdddAzov7eCKp4Ju1ZQj8QqROqsc/Ba87OH8cnG
 /QX9pHXpO9efHcZYIIwx1nquXnXyjJ/sMdS7jGiEOfGlp6N9IwARAQABtCFIYXVrZSBNZWhy
 dGVucyA8aGF1a2VAaGF1a2UtbS5kZT6JAk4EEwEIADgCGwEFCwkIBwIGFQgJCgsCBBYCAwEC
 HgECF4AWIQS4+/Pwq1ZO6E9/sdOT3SBjCRC1FQUCW0t9TwAKCRCT3SBjCRC1FRetEACWaCie
 dED+Y6Zps5IQE9jp1YCaqQAEC78sj4ALeU4kdZ35Obe99uyQ0q/vvPlnFigkp7yeBDP+wPHH
 c613/ONkaz+vXSItz5oHCt6o2QuelDX8cKCD4zexmiPfysJDwTcwmg8oPnfMqmob/97l1IoT
 nfkgWPYjfjjj2CUkXIJTYx13q6bHFYQ8FBur8PRWMt+xOlZI33HsQCMjc+akdA/ULclpauD6
 4nYL/a0kakUgv9wgZ0aET++VOpBPQQfvfzJJFKsBEWmZdtMql8XgyzTiIUu9oH3CqLNCgdB3
 vekYPw3ltV3MxvUtCCsZMzApidOyJnCc3BJElf3g7gV1W67NnqGm4U8Kj0uoG4MHh/Z0raqf
 rNVrbwKPVDeLkBgkdDud9TuTH35adTYPHQEGaof5zqOJk0jOZYC0D5TCKsGeRnCSR+WRYLLv
 ifNQhyaLmTGA1dw3FUgsKje7ydRP0ypMnOJpLYFRSgkum18C7eBfgk9KRqXFglIrh7h2bryU
 EyvR4r4gABi966uU2TnfGOZapDHbwgEK/2d7/ixL19B8vZlvBNQdpKa2yO9Eq/oeDV8vZzVr
 9DhwpBEcAw7XsaXAfvH3eMttiP6DJGVzju0bWUDu0Xqo4PhJlYm4rmo7bAl5EThAUttcUJz1
 ruS7ck6WznuFwqd3niYX080Sy2rltrkBDQRbS3sDAQgA4DtYzB73BUYxMaU2gbFTrPwXuDba
 +NgLpaF80PPXJXacdYoKklVyD23vTk5vw1AvMYe32Y16qgLkmr8+bS9KlLmpgNn5rMWzOqKr
 /N+m2DG7emWAg3kVjRRkJENs1aQZoUIFJFBxlVZ2OuUSYHvWujej11CLFkxQo9Efa35QAEei
 zEGtjhjEd4OUT5iPuxxr5yQ/7IB98oTT17UBs62bDIyiG8Dhus+tG8JZAvPvh9pMMAgcWf+B
 su4A00r+Xyojq06pnBMa748elV1Bo48Bg0pEVncFyQ9YSEiLtdgwnq6W8E00kATGVpN1fafv
 xGRLVPfQbfrKTiTkC210L7nv2wARAQABiQI2BBgBCAAgFiEEuPvz8KtWTuhPf7HTk90gYwkQ
 tRUFAltLewMCGwwACgkQk90gYwkQtRXUDw//ZlG04aPiPuRXcueSguNEdlvUoU7EQPeQt69+
 7gZwN+0+jH/F9vHn3h3O0UUF+HkaSjJqDTDNIHltaEOa4al/bpgCZHUjv6yq6Wdvjsuh6IXo
 XCptXEWKC8OPa5ZWRczIaGpTY4yEwkYi0wTMvFYIO1WPaaAqUWI7p63XqIoC5q0YB8ELYxwV
 WukezpUw+umxuvz/ksk0JHAsfXjTMnYHGYqOyu+5gdZcl7Hc+IpDnjeTu7jwMJTUWE/3umyM
 kTrnSx5l0/hZIo7IO5mciYibp9aAGhpGAemdLpOgFY8tQne/2kxgVP+Pgpzp82LOeVDSeHXj
 HRS8rhnU8Wu70fGC752LpwCzdsS53sURfofAeXEw8A6Cbcw1igEi21rOi3VIeCxwDonozVQM
 8hdBW5jfJmwn598P0MPESSx3Z1MQ3onuopNcnsr9Lu2t5bFN289n7AM9UVGvrloN/FKMyRzC
 lRVFsc1KRFwVaHNLYw8jlwTlR8tgZ4QNUYj0QDrof/ItdZZ0KcmmnSYKACjqwbKuiCUanaVJ
 DibyTrQmi0vwz/0PyIAWsaF4pQZ78dRwA0B/jEewY3RDA1BOy35dn9gG+qr0fbkYY9YZYFik
 1p/PYOBFn0a/8tFp8ePsZGQAuLdAANcJdoiyeGUejktsWHOww4CwVJvdgxeNK7tyI3azmoK5
 AQ0EW0t7cQEIAOZqnCTnoFeTFoJU2mHdEMAhsfh7X4wTPFRy48O70y4PFDgingwETq8njvAB
 MDGjN++00F8cZ45HNNB5eUKDcW9bBmxrtCK+F0yPu5fy+0M4Ntow3PyHMNItOWIKd//EazOK
 iuHarhc6f1OgErMShe/9rTmlToqxwVmfnHi1aK6wvVbTiNgGyt+2FgA6BQIoChkPGNQ6pgV5
 QlCEWvxbeyiobOSAx1dirsfogJwcTvsCU/QaTufAI9QO8dne6SKsp5z58yigWPwDnOF/LvQ2
 6eDrYHjnk7kVuBVIWjKlpiAQ00hfLU7vwQH0oncfB5HT/fL1b2461hmwXxeV+jEzQkkAEQEA
 AYkDbAQYAQgAIBYhBLj78/CrVk7oT3+x05PdIGMJELUVBQJbS3txAhsCAUAJEJPdIGMJELUV
 wHQgBBkBCAAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAltLe3EACgkQ8bdnhZyy68d1Wgf8
 Dabx9vKo1usbgDHl4LZzrJhfRm2I3+J5FTboLJsFe8jpRNcf6eGJpGLeW3s/wqWd8cYsLtbz
 Ja1znoz3EwPhHaIHmwXw4TgYm+NVu2Cm9dg2aLNQj8haNfOPhIGqr5unvhnlwrbG+Yjl0er2
 sAdB5zXlIx8hIjHofMJIoW4yB79T4eZseFyrwA+OeI6pJTgQ1daXlOph26ZGulMy++pviIP/
 Ab57PJ81/DTSPWXqmEe72nLW5jWKXeHbTMaH9KVNdxJCIl8ZZgq4zN2msnpliJ+EoNVgGOgK
 iRckeGlkWtcezQ0Ir5yBaABkVVZCSydYfETSJ7TrFwY1wQwyCFcL78I7D/9UA3T1GJebF9QG
 zorfw1AcWZrEbv2kr01mTdmcw65Kd6BN8GpwPcmMYNlYQvUCFsOmoA9Hif292fUY1l1s0aYV
 yBFwaZNbkcniXY80X0jIEmmVaJci/PNrp5GRg3W4x7DXFsUKi2yUCXk5Y7YCDce2cJhqA+mQ
 +nqDEvjoLvoJFUaCDIvC+BBP9DgjrJ1s/rYASYitSsnkoNmArt2umAJ8VOY+7Q2SsVflzuXK
 nmjnHkXRuh8srxyzck/a9EombaSvfRpV2K0nmB8qdXNxKWtWT0N/7KbOlPkqkZKBAZSgTXBE
 Lqhmi7SgUDc4F8nEwR3RnjZRsel8flyQoIr5qp2KWJ4buK9c5OijYRhvN8jFpw/s7z7mM9N3
 PnHQqyOcIK1j6lqMQjC/kmRKpN+0TraMz8lX8TI9dNty/XFuVt9Y9Yv1vfSFHZEYqWQfRFAY
 SIA/ovBb7CRBo8Sd4nbLk7z+7Q/tO1Zy/XS+UGpwgBtQyf0WTC2WDSK/gmTwFhWva4+19KGu
 qW4TeDaiKtaki/NrHwCH3aOWx0xrxj4Vr2qVEO9Qksk+4RZt2QLX9PClmDDZR/KgnAGIVaHc
 w6Onn02ka7+V9c8DcJjQpD6IysI0r4U0LCUMddtwqaDk/0LR8M3+LhQ70+kWRCAY0QCZa5pC
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <8da7ee39-4e10-4c69-14a9-15bd08f91f9d@hauke-m.de>
Date: Sun, 19 May 2019 23:15:31 +0200
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB3157455EFFE6402BF4CE6D9A820B0@BYAPR11MB3157.namprd11.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_141549_915532_B754BFFA 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] at91: Merge SAMA5 subtargets
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: c.mignanti@gmail.com
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 5/17/19 6:41 PM, Sandeep.Sheriker@microchip.com wrote:
> Hi Hauke Mehrtens,
> =

> =A0 =A0 =A0The reason I created different=A0SAMA5 subtargets is:

The additional subtargets cause us extra maintenance efforts and we also
need more compute resources for our build bots because we have to build
more. We would like to reduce the number of subtargets especially for
not so much used targets.

>  1. Able to set neon flags to sama5d2 & sama5d4 subtargets.

Yes, this is one disadvantage, because the sama5d3 does not support the
ARM NEON extension. I do not think this extension brings so much
advantages in the common use cases of OpenWrt and the at91 target is
also not used so much as far as I know.

>  2. We can=A0configure kernel specific to these=A0subtarget.

The kernel configurations of the different sama5 subtargets only had
very little differences. In addition to the specific CONFIG_SOC_SAMA5DX
configuration the sama5d2 subtarget had CAN support and
CONFIG_POSIX_MQUEUE activated, otherwise they used the same kernel
configuration.

>  3. Able to set vfpu4 flags to samad3 subtargets

The vfpv4 feature flag is still set for the sama5 subtargets, the legacy
subtarget still exists because this is rally a very different CPU.

> I would not=A0recommend to merge subtargets into one. Adding neon
> optimization improves performance.
> =

> =

> Regards,
> Sandeep Sheriker M
> =

> =

> =

> ------------------------------------------------------------------------
> *From:* Hauke Mehrtens <hauke@hauke-m.de>
> *Sent:* Saturday, May 11, 2019 4:53 AM
> *To:* openwrt-devel@lists.openwrt.org
> *Cc:* c.mignanti@gmail.com; Sandeep Sheriker Mallikarjun - C17018; Hauke
> Mehrtens
> *Subject:* [PATCH 3/4] at91: Merge SAMA5 subtargets
> =A0
> External E-Mail
> =

> =

> Instead of maintaining 3 very similar subtargets merge them into one.
> This does not use the Arm NEON extension any more, because the SAMA5D3
> does not support NEON.
> =

> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
> =A0package/boot/at91bootstrap/Makefile=A0=A0=A0=A0=A0 | 26 ++++-----
> =A0package/boot/uboot-at91/Makefile=A0=A0=A0=A0=A0=A0=A0=A0 | 22 ++++----
> =A0target/linux/at91/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0 2 +-
> =A0target/linux/at91/config-4.9=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 =
5 +-
> =A0target/linux/at91/image/Makefile=A0=A0=A0=A0=A0=A0=A0=A0 | 10 +---
> =A0target/linux/at91/image/sama5.mk=A0=A0=A0=A0=A0=A0=A0=A0 | 71 ++++++++=
++++++++++++++++
> =A0target/linux/at91/image/sama5d2.mk=A0=A0=A0=A0=A0=A0 | 31 -----------
> =A0target/linux/at91/image/sama5d3.mk=A0=A0=A0=A0=A0=A0 | 33 -----------
> =A0target/linux/at91/image/sama5d4.mk=A0=A0=A0=A0=A0=A0 | 19 -------
> =A0target/linux/at91/sama5/config-default=A0=A0 |=A0 0
> =A0target/linux/at91/sama5/target.mk=A0=A0=A0=A0=A0=A0=A0 | 10 ++++
> =A0target/linux/at91/sama5d2/config-default |=A0 3 -
> =A0target/linux/at91/sama5d2/target.mk=A0=A0=A0=A0=A0 | 10 ----
> =A0target/linux/at91/sama5d3/config-default |=A0 2 -
> =A0target/linux/at91/sama5d3/target.mk=A0=A0=A0=A0=A0 | 10 ----
> =A0target/linux/at91/sama5d4/target.mk=A0=A0=A0=A0=A0 | 10 ----
> =A016 files changed, 111 insertions(+), 153 deletions(-)
> =A0create mode 100644 target/linux/at91/image/sama5.mk
> =A0delete mode 100644 target/linux/at91/image/sama5d2.mk
> =A0create mode 100644 target/linux/at91/sama5/config-default
> =A0create mode 100644 target/linux/at91/sama5/target.mk
> =A0delete mode 100644 target/linux/at91/sama5d2/config-default
> =A0delete mode 100644 target/linux/at91/sama5d2/target.mk
> =A0delete mode 100644 target/linux/at91/sama5d3/config-default
> =A0delete mode 100644 target/linux/at91/sama5d3/target.mk
> =A0delete mode 100644 target/linux/at91/sama5d4/target.mk
> =

> diff --git a/package/boot/at91bootstrap/Makefile
> b/package/boot/at91bootstrap/Makefile
> index 22afd1ec41..8a08a7aa2c 100644
> --- a/package/boot/at91bootstrap/Makefile
> +++ b/package/boot/at91bootstrap/Makefile
> @@ -30,79 +30,79 @@ endef
> =A0
> =A0define AT91Bootstrap/sama5d2_xplaineddf_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (SPI Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d2_xplaineddf_qspi_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (QSPI Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d2_xplainedsd_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (SDcard/EMMC)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d3_xplainednf_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D3 Xplained board (Nand Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d3
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d3_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d3_xplainedsd_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D3 Xplained board (SDcard)
> -=A0 BUILD_SUBTARGET:=3Dsama5d3
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d3_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d4_xplainednf_uboot_secure
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (Nand Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d4
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d4_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d4_xplaineddf_uboot_secure
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (SPI Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d4
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d4_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d4_xplainedsd_uboot_secure
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (SDcard)
> -=A0 BUILD_SUBTARGET:=3Dsama5d4
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d4_xplained
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d27_som1_eksd_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard0)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d27_som1_eksd1_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard1)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d27_som1_ekqspi_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (QSPI Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d2_ptc_eknf_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D2 PTC EK (Nand Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
> =A0endef
> =A0
> =A0define AT91Bootstrap/sama5d2_ptc_eksd_uboot
> =A0=A0 TITLE:=3DAT91Bootstrap for SAMA5D2 PTC EK (SDCard)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
> =A0endef
> =A0
> diff --git a/package/boot/uboot-at91/Makefile
> b/package/boot/uboot-at91/Makefile
> index f0a4ba56c2..23bd2d2b01 100644
> --- a/package/boot/uboot-at91/Makefile
> +++ b/package/boot/uboot-at91/Makefile
> @@ -40,67 +40,67 @@ endef
> =A0
> =A0define U-Boot/sama5d3_xplained_nandflash
> =A0=A0 NAME:=3DSAMA5D3 Xplained board (NandFlash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d3
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d3_xplained
> =A0endef
> =A0
> =A0define U-Boot/sama5d3_xplained_mmc
> =A0=A0 NAME:=3DSAMA5D3 Xplained board (SDcard)
> -=A0 BUILD_SUBTARGET:=3Dsama5d3
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d3_xplained
> =A0endef
> =A0
> =A0define U-Boot/sama5d2_xplained_spiflash
> =A0=A0 NAME:=3DSAMA5D2 Xplained board (SPI Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_xplained
> =A0endef
> =A0
> =A0define U-Boot/sama5d2_xplained_mmc
> =A0=A0 NAME:=3DSAMA5D2 Xplained board (SDcard/EMMC)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_xplained
> =A0endef
> =A0
> =A0define U-Boot/sama5d4_xplained_spiflash
> =A0=A0 NAME:=3DSAMA5D4 Xplained board (SPI Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d4
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d4_xplained
> =A0endef
> =A0
> =A0define U-Boot/sama5d4_xplained_mmc
> =A0=A0 NAME:=3DSAMA5D4 Xplained board (SDcard)
> -=A0 BUILD_SUBTARGET:=3Dsama5d4
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d4_xplained
> =A0endef
> =A0
> =A0define U-Boot/sama5d4_xplained_nandflash
> =A0=A0 NAME:=3DSAMA5D4 Xplained board (NandFlash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d4
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d4_xplained
> =A0endef
> =A0
> =A0define U-Boot/sama5d27_som1_ek_mmc
> =A0=A0 NAME:=3DSAMA5D27 SOM1 Ek (SDCard)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
> =A0endef
> =A0
> =A0define U-Boot/sama5d27_som1_ek_spiflash
> =A0=A0 NAME:=3DSAMA5D27 SOM1 Ek (QSPI Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
> =A0endef
> =A0
> =A0define U-Boot/sama5d2_ptc_ek_nandflash
> =A0=A0 NAME:=3DSAMA5D2 PTC Ek (Nand Flash)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
> =A0endef
> =A0
> =A0define U-Boot/sama5d2_ptc_ek_mmc
> =A0=A0 NAME:=3DSAMA5D2 PTC Ek (SDCard)
> -=A0 BUILD_SUBTARGET:=3Dsama5d2
> +=A0 BUILD_SUBTARGET:=3Dsama5
> =A0=A0 BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
> =A0endef
> =A0
> diff --git a/target/linux/at91/Makefile b/target/linux/at91/Makefile
> index d71e0850ff..cae3c6278b 100644
> --- a/target/linux/at91/Makefile
> +++ b/target/linux/at91/Makefile
> @@ -11,7 +11,7 @@ BOARD:=3Dat91
> =A0MAINTAINER:=3DClaudio Mignanti <c.mignanti@gmail.com>
> =A0BOARDNAME:=3DMicrochip (Atmel AT91)
> =A0FEATURES:=3Dext4 squashfs targz usb usbgadget ubifs
> -SUBTARGETS:=3Dsama5d2 sama5d3 sama5d4 legacy
> +SUBTARGETS:=3Dsama5 legacy
> =A0
> =A0KERNEL_PATCHVER:=3D4.9
> =A0
> diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9
> index 452cfd5aa3..ad18d6b826 100644
> --- a/target/linux/at91/config-4.9
> +++ b/target/linux/at91/config-4.9
> @@ -214,6 +214,7 @@ CONFIG_HAVE_ARCH_PFN_VALID=3Dy
> =A0CONFIG_HAVE_ARCH_SECCOMP_FILTER=3Dy
> =A0CONFIG_HAVE_ARCH_TRACEHOOK=3Dy
> =A0CONFIG_HAVE_ARM_SMCCC=3Dy
> +CONFIG_HAVE_AT91_GENERATED_CLK=3Dy
> =A0CONFIG_HAVE_AT91_H32MX=3Dy
> =A0CONFIG_HAVE_AT91_SMD=3Dy
> =A0CONFIG_HAVE_AT91_USB_CLK=3Dy
> @@ -464,8 +465,8 @@ CONFIG_SND_SUPPORT_OLD_API=3Dy
> =A0CONFIG_SND_TIMER=3Dy
> =A0CONFIG_SOC_BUS=3Dy
> =A0CONFIG_SOC_SAMA5=3Dy
> -# CONFIG_SOC_SAMA5D2 is not set
> -# CONFIG_SOC_SAMA5D3 is not set
> +CONFIG_SOC_SAMA5D2=3Dy
> +CONFIG_SOC_SAMA5D3=3Dy
> =A0CONFIG_SOC_SAMA5D4=3Dy
> =A0CONFIG_SOC_SAM_V7=3Dy
> =A0CONFIG_SOUND=3Dy
> diff --git a/target/linux/at91/image/Makefile
> b/target/linux/at91/image/Makefile
> index 49d93aa97d..f4d942b682 100644
> --- a/target/linux/at91/image/Makefile
> +++ b/target/linux/at91/image/Makefile
> @@ -16,14 +16,8 @@ endef
> =A0ifeq ($(SUBTARGET),legacy)
> =A0include ./legacy.mk
> =A0endif
> -ifeq ($(SUBTARGET),sama5d2)
> -include ./sama5d2.mk
> -endif
> -ifeq ($(SUBTARGET),sama5d3)
> -include ./sama5d3.mk
> -endif
> -ifeq ($(SUBTARGET),sama5d4)
> -include ./sama5d4.mk
> +ifeq ($(SUBTARGET),sama5)
> +include ./sama5.mk
> =A0endif
> =A0
> =A0AT91_SD_BOOT_PARTSIZE:=3D64
> diff --git a/target/linux/at91/image/sama5.mk
> b/target/linux/at91/image/sama5.mk
> new file mode 100644
> index 0000000000..f9a190c8b2
> --- /dev/null
> +++ b/target/linux/at91/image/sama5.mk
> @@ -0,0 +1,71 @@
> +
> +define Device/default-nand
> +=A0 BLOCKSIZE :=3D 128k
> +=A0 PAGESIZE :=3D 2048
> +=A0 SUBPAGESIZE :=3D 2048
> +=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
> +endef
> +
> +define Device/at91-sama5d2_xplained
> +=A0 $(Device/evaluation-dtb)
> +=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 Xplained
> +=A0 KERNEL_SIZE :=3D 6144k
> +=A0 $(Device/evaluation-sdimage)
> +endef
> +TARGET_DEVICES +=3D at91-sama5d2_xplained
> +
> +define Device/at91-sama5d27_som1_ek
> +=A0 $(Device/evaluation-dtb)
> +=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D27 SOM1 Ek
> +=A0 KERNEL_SIZE :=3D 6144k
> +=A0 $(Device/evaluation-sdimage)
> +endef
> +TARGET_DEVICES +=3D at91-sama5d27_som1_ek
> +
> +define Device/at91-sama5d2_ptc_ek
> +=A0 $(Device/evaluation-dtb)
> +=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 PTC Ek
> +=A0 KERNEL_SIZE :=3D 6144k
> +=A0 $(Device/evaluation-sdimage)
> +endef
> +TARGET_DEVICES +=3D at91-sama5d2_ptc_ek
> +
> +
> +define Device/at91-sama5d3_xplained
> +=A0 $(Device/evaluation-dtb)
> +=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D3 Xplained
> +=A0 KERNEL_SIZE :=3D 6144k
> +=A0 $(Device/evaluation-sdimage)
> +endef
> +TARGET_DEVICES +=3D at91-sama5d3_xplained
> +
> +ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),"")
> + ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),"")
> +=A0 define Device/wb50n
> +=A0=A0=A0 $(Device/evaluation-fit)
> +=A0=A0=A0 DEVICE_TITLE :=3D Laird WB50N
> +=A0=A0=A0 DEVICE_PACKAGES :=3D \
> +=A0=A0=A0=A0=A0=A0=A0=A0 kmod-mmc-at91 kmod-ath6kl-sdio ath6k-firmware \
> +=A0=A0=A0=A0=A0=A0=A0=A0 kmod-usb-storage kmod-fs-vfat kmod-fs-msdos \
> +=A0=A0=A0=A0=A0=A0=A0=A0 kmod-leds-gpio
> +=A0=A0=A0 BLOCKSIZE :=3D 128k
> +=A0=A0=A0 PAGESIZE :=3D 2048
> +=A0=A0=A0 SUBPAGESIZE :=3D 2048
> +=A0=A0=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 955
> +=A0 endef
> +=A0 TARGET_DEVICES +=3D wb50n
> + endif
> +endif
> +
> +
> +define Device/at91-sama5d4_xplained
> +=A0 $(Device/evaluation-dtb)
> +=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D4 Xplained
> +=A0 KERNEL_SIZE :=3D 6144k
> +=A0 BLOCKSIZE :=3D 256k
> +=A0 PAGESIZE :=3D 4096
> +=A0 SUBPAGESIZE :=3D 2048
> +=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 248KiB -c 2082
> +=A0 $(Device/evaluation-sdimage)
> +endef
> +TARGET_DEVICES +=3D at91-sama5d4_xplained
> diff --git a/target/linux/at91/image/sama5d2.mk
> b/target/linux/at91/image/sama5d2.mk
> deleted file mode 100644
> index b841448633..0000000000
> --- a/target/linux/at91/image/sama5d2.mk
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -
> -define Device/default-nand
> -=A0 BLOCKSIZE :=3D 128k
> -=A0 PAGESIZE :=3D 2048
> -=A0 SUBPAGESIZE :=3D 2048
> -=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
> -endef
> -
> -define Device/at91-sama5d2_xplained
> -=A0 $(Device/evaluation-dtb)
> -=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 Xplained
> -=A0 KERNEL_SIZE :=3D 6144k
> -=A0 $(Device/evaluation-sdimage)
> -endef
> -TARGET_DEVICES +=3D at91-sama5d2_xplained
> -
> -define Device/at91-sama5d27_som1_ek
> -=A0 $(Device/evaluation-dtb)
> -=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D27 SOM1 Ek
> -=A0 KERNEL_SIZE :=3D 6144k
> -=A0 $(Device/evaluation-sdimage)
> -endef
> -TARGET_DEVICES +=3D at91-sama5d27_som1_ek
> -
> -define Device/at91-sama5d2_ptc_ek
> -=A0 $(Device/evaluation-dtb)
> -=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 PTC Ek
> -=A0 KERNEL_SIZE :=3D 6144k
> -=A0 $(Device/evaluation-sdimage)
> -endef
> -TARGET_DEVICES +=3D at91-sama5d2_ptc_ek
> diff --git a/target/linux/at91/image/sama5d3.mk
> b/target/linux/at91/image/sama5d3.mk
> index f48c981030..e69de29bb2 100644
> --- a/target/linux/at91/image/sama5d3.mk
> +++ b/target/linux/at91/image/sama5d3.mk
> @@ -1,33 +0,0 @@
> -
> -define Device/default-nand
> -=A0 BLOCKSIZE :=3D 128k
> -=A0 PAGESIZE :=3D 2048
> -=A0 SUBPAGESIZE :=3D 2048
> -=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
> -endef
> -
> -define Device/at91-sama5d3_xplained
> -=A0 $(Device/evaluation-dtb)
> -=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D3 Xplained
> -=A0 KERNEL_SIZE :=3D 6144k
> -=A0 $(Device/evaluation-sdimage)
> -endef
> -TARGET_DEVICES +=3D at91-sama5d3_xplained
> -
> -ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),"")
> - ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),"")
> -=A0 define Device/wb50n
> -=A0=A0=A0 $(Device/evaluation-fit)
> -=A0=A0=A0 DEVICE_TITLE :=3D Laird WB50N
> -=A0=A0=A0 DEVICE_PACKAGES :=3D \
> -=A0=A0=A0=A0=A0=A0=A0=A0 kmod-mmc-at91 kmod-ath6kl-sdio ath6k-firmware \
> -=A0=A0=A0=A0=A0=A0=A0=A0 kmod-usb-storage kmod-fs-vfat kmod-fs-msdos \
> -=A0=A0=A0=A0=A0=A0=A0=A0 kmod-leds-gpio
> -=A0=A0=A0 BLOCKSIZE :=3D 128k
> -=A0=A0=A0 PAGESIZE :=3D 2048
> -=A0=A0=A0 SUBPAGESIZE :=3D 2048
> -=A0=A0=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 955
> -=A0 endef
> -=A0 TARGET_DEVICES +=3D wb50n
> - endif
> -endif
> diff --git a/target/linux/at91/image/sama5d4.mk
> b/target/linux/at91/image/sama5d4.mk
> index 1140c3c4b2..e69de29bb2 100644
> --- a/target/linux/at91/image/sama5d4.mk
> +++ b/target/linux/at91/image/sama5d4.mk
> @@ -1,19 +0,0 @@
> -
> -define Device/default-nand
> -=A0 BLOCKSIZE :=3D 128k
> -=A0 PAGESIZE :=3D 2048
> -=A0 SUBPAGESIZE :=3D 2048
> -=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
> -endef
> -
> -define Device/at91-sama5d4_xplained
> -=A0 $(Device/evaluation-dtb)
> -=A0 DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D4 Xplained
> -=A0 KERNEL_SIZE :=3D 6144k
> -=A0 BLOCKSIZE :=3D 256k
> -=A0 PAGESIZE :=3D 4096
> -=A0 SUBPAGESIZE :=3D 2048
> -=A0 MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 248KiB -c 2082
> -=A0 $(Device/evaluation-sdimage)
> -endef
> -TARGET_DEVICES +=3D at91-sama5d4_xplained
> diff --git a/target/linux/at91/sama5/config-default
> b/target/linux/at91/sama5/config-default
> new file mode 100644
> index 0000000000..e69de29bb2
> diff --git a/target/linux/at91/sama5/target.mk
> b/target/linux/at91/sama5/target.mk
> new file mode 100644
> index 0000000000..35df05b70d
> --- /dev/null
> +++ b/target/linux/at91/sama5/target.mk
> @@ -0,0 +1,10 @@
> +BOARDNAME:=3DSAMA5 boards(Cortex-A5)
> +CPU_TYPE:=3Dcortex-a5
> +CPU_SUBTYPE:=3Dvfpv4
> +FEATURES+=3Dfpu
> +DEFAULT_PACKAGES +=3D kmod-usb2
> +
> +define Target/Description
> +=A0=A0=A0=A0=A0=A0 Build generic firmware for Microchip(Atmel AT91) SAMA=
5D2,
> +=A0=A0=A0=A0=A0=A0 SAMA5D3 and SAMA5D4 MPU's using the ARMv7 instruction=
 set.
> +endef
> diff --git a/target/linux/at91/sama5d2/config-default
> b/target/linux/at91/sama5d2/config-default
> deleted file mode 100644
> index 1724375c33..0000000000
> --- a/target/linux/at91/sama5d2/config-default
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -CONFIG_HAVE_AT91_GENERATED_CLK=3Dy
> -CONFIG_SOC_SAMA5D2=3Dy
> -# CONFIG_SOC_SAMA5D4 is not set
> diff --git a/target/linux/at91/sama5d2/target.mk
> b/target/linux/at91/sama5d2/target.mk
> deleted file mode 100644
> index 63f50aeea1..0000000000
> --- a/target/linux/at91/sama5d2/target.mk
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -BOARDNAME:=3DSAMA5D2 boards(Cortex-A5)
> -CPU_TYPE:=3Dcortex-a5
> -CPU_SUBTYPE:=3Dneon-vfpv4
> -FEATURES+=3Dfpu
> -DEFAULT_PACKAGES +=3D kmod-usb2
> -
> -define Target/Description
> -=A0=A0=A0=A0=A0=A0 Build generic firmware for Microchip(Atmel AT91) SAMA=
5D2 MPU's
> -=A0=A0=A0=A0=A0=A0 using the ARMv7 instruction set.
> -endef
> diff --git a/target/linux/at91/sama5d3/config-default
> b/target/linux/at91/sama5d3/config-default
> deleted file mode 100644
> index eb0ec01cb9..0000000000
> --- a/target/linux/at91/sama5d3/config-default
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -CONFIG_SOC_SAMA5D3=3Dy
> -# CONFIG_SOC_SAMA5D4 is not set
> diff --git a/target/linux/at91/sama5d3/target.mk
> b/target/linux/at91/sama5d3/target.mk
> deleted file mode 100644
> index d30931bfc0..0000000000
> --- a/target/linux/at91/sama5d3/target.mk
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -BOARDNAME:=3DSAMA5D3 boards(Cortex-A5)
> -CPU_TYPE:=3Dcortex-a5
> -CPU_SUBTYPE:=3Dvfpv4
> -FEATURES+=3Dfpu
> -DEFAULT_PACKAGES +=3D kmod-usb2
> -
> -define Target/Description
> -=A0=A0=A0=A0=A0=A0 Build generic firmware for Microchip(Atmel AT91) SAMA=
5D3 MPU's
> -=A0=A0=A0=A0=A0=A0 using the ARMv7 instruction set.
> -endef
> diff --git a/target/linux/at91/sama5d4/target.mk
> b/target/linux/at91/sama5d4/target.mk
> deleted file mode 100644
> index 2bbab60d81..0000000000
> --- a/target/linux/at91/sama5d4/target.mk
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -BOARDNAME:=3DSAMA5D4 boards(Cortex-A5)
> -CPU_TYPE:=3Dcortex-a5
> -CPU_SUBTYPE:=3Dneon-vfpv4
> -FEATURES+=3Dfpu
> -DEFAULT_PACKAGES +=3D kmod-usb2
> -
> -define Target/Description
> -=A0=A0=A0=A0=A0=A0 Build generic firmware for Microchip(Atmel AT91) SAMA=
5D4 MPU's
> -=A0=A0=A0=A0=A0=A0 using the ARMv7 instruction set.
> -endef
> -- =

> 2.20.1
> =

> =



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
