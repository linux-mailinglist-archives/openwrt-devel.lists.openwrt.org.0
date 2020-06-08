Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C801F1890
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 14:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GmKD1Kyf9uGxkK8IpGXbh2JkCbmY+rNgt7UoUSTRIIY=; b=YvC+XaF7qRQInpBCLIN5E+AgH
	O2xNW0rbYQ97jDt5q9/e6iTixKprD9hPJuYBmrS1EaMAt7idPZlUXxlHy2iy5Dhs6XalCwY+6LUFX
	HnU4bFnMA39yATwyYiznS9dNmze4TboW8a7NEXYXhrC0+p3dyajsMJCYYeRR5Sko5xSbI5GreOlC4
	RLg50YmgfDn4as7429fbq/tQ2CjYi5XfAPYzK0VsTnbuiQkG1IAdBNi+LKiXZNcgodnZKIknZ3TJb
	0s5/OJVoOvqxsyeRT7LlYb2BJZOcwNqkpTygVCMRsUROX3nH9Sv21zT4UMk9S8Uf9/9mhiIBc4iVA
	0Uau2srQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiGe2-0006yU-7k; Mon, 08 Jun 2020 12:12:50 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiGdv-0006xX-Ug
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 12:12:46 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MbSTX-1j7Gzi42Ez-00bpDA; Mon, 08 Jun 2020 14:12:20 +0200
From: <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>, <openwrt-devel@lists.openwrt.org>
References: <20200608093631.1196081-1-stijn@linux-ipv6.be>
 <20200608093631.1196081-4-stijn@linux-ipv6.be>
In-Reply-To: <20200608093631.1196081-4-stijn@linux-ipv6.be>
Date: Mon, 8 Jun 2020 14:12:19 +0200
Message-ID: <007901d63d8e$0ef891f0$2ce9b5d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQLLrC3Y94u6dgkiQDrqr2GZVrqE+gGVsdyEptcU44A=
Content-Language: de
X-Provags-ID: V03:K1:tqCQ8ka0Um39qPFHhjzdknUm6nMlewsgSxa6CsSQfI2Mo5L/2BY
 I97+E0gMYi8t3CUW8Py/SKY1XVRzRLq+nq6x8ZoYcYD3Zh+QgMugw9VLUGQr06JjVB2t83L
 JdcrG5TN/Jew9yn/qE456TzJKeoS6TFi5VQGmOKZfRLkyLUg8HyN/c8E0mAGkegsoffz/ay
 q2if01VaVEhq1g3SSS6+w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vzeJ84laLFI=:ObG5OdgHAjk5nXsBXztd3Q
 TsWmhd365gizAR1K6HvitgJvTd5J9McPeo5N6Bq/gQ1bphwdkzdoI9XmfZ11g2iJEc1DGIo7C
 ZEZe//vvjg6jKTRY4LETpZn9Pk2wROjcwqZvQ6KkCIm0y4+dORUyYh0f9rpYl7VdpPu1YMMv0
 YLx9GI78arRK6e4bef3GEBRTxb8uRfIZErP/FWMiPdUAz+mlqddxpG4HpzD4DVdJHP3ksAjG3
 Tthcl7zrK8Oneu2XQ57W52Vq4OcGcQgVjTghZmDEfob3gw9j061EykZjyGJhsAV6lZFtY1FJV
 ZppjyL1H/ZL/iF99SYABtdNbEpObgGQQpewM1OjOzbbSPXUgkF4ILN8L43lg/pHABolRk82nv
 cwUmQUAdlUP7nXm8fAvLan3MFjSFBRn/YqJXbtERKdNJxouk8Bf2SBLoq7fD0Hj24y1DA7bWv
 ZJV1zeJiwRx8fheVVuTwseWuPMBdyPPtE7FB/+LoJHP5IBG72y0IXrp+SpY/6ZmbQqUab+VO4
 tmyRUAJhAzGpmjlksV+fHsMZf78PPnboZEARL3RgS0RvwPoe57DRN/4QwIjUPONLelS8hhx/8
 KLiojkeI+fSOrsFQKANOgdJFs8Me/U5OEFFq4CAdZOaadj1pKa5R0JCNLMUyMB38cd0D7/l2a
 AXcfIIxLsIzZgGG/l/ry8G2u+E6gx5+ytAjkKen3ssXkt5JlAl1dKa6wQvjKsHIt8xpf5gpOx
 wiUlyHIUWcpemxKPkf+5dBMKyTJR8q8RyIX42up2hHOJu+z4MEHRvm+DUjYwrfMqYfWUOKKHv
 9eg5hXvTh18CGs63PlDbGqZ7Cx1A8i54KZ6JAo83lCsRuYH1yoKoGvjU8mEj8O7T2CyiXL6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_051244_289155_A2B5C97F 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] ath79: use separate file for
 generic D-Link images
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
Content-Type: multipart/mixed; boundary="===============5704521141634436566=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5704521141634436566==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=pV4GqEWzOZWvno=-="

This is a multipart message in MIME format.

--=-=pV4GqEWzOZWvno=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Stijn,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Tintel
> Sent: Montag, 8. Juni 2020 11:37
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 3/4] ath79: use separate file for generic=
 D-
> Link images
>=20
> Move the generic D-Link image definitions to a separate file, as is done =
for
> several other vendors.
>=20
> Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
> ---
>  target/linux/ath79/image/Makefile         |   1 +
>  target/linux/ath79/image/generic-dlink.mk | 114
> +++++++++++++++++++++
>  target/linux/ath79/image/generic.mk       | 115 ----------------------
>  3 files changed, 115 insertions(+), 115 deletions(-)  create mode 100644
> target/linux/ath79/image/generic-dlink.mk
>=20
> diff --git a/target/linux/ath79/image/Makefile
> b/target/linux/ath79/image/Makefile
> index 529baf8f57..6a286d3f1f 100644
> --- a/target/linux/ath79/image/Makefile
> +++ b/target/linux/ath79/image/Makefile
> @@ -70,6 +70,7 @@ endef
>=20
>  ifeq ($(SUBTARGET),generic)
>  include ./generic.mk
> +include ./generic-dlink.mk

I'd have used generic-d-link.mk here, to match the style of the other file =
for tp-link ...

>  include ./generic-tp-link.mk
>  include ./generic-ubnt.mk
>  endif
> diff --git a/target/linux/ath79/image/generic-dlink.mk
> b/target/linux/ath79/image/generic-dlink.mk
> new file mode 100644
> index 0000000000..96cb015a09
> --- /dev/null
> +++ b/target/linux/ath79/image/generic-dlink.mk

Though it's not precisely necessary since all files get included anywhere, =
it would be more tidy to also move the Build recipes.
E.g. Device/seama is used in both generic.mk and dlink.mk now, so it should=
 be moved to parent Makefile as both .mk files "depend" on it.
Same might apply to other actual build recipes and DEVICE_VARS, which shoul=
d be moved to either dlink.mk if they are only needed there or to Makefile =
if they are required in multiple places.

Again, this is not literally required, but it would be much easier to find =
stuff then.

Best

Adrian

> @@ -0,0 +1,114 @@
> +define Device/dlink_dir-505
> +  SOC :=3D ar9330
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DIR-505
> +  IMAGE_SIZE :=3D 7680k
> +  DEVICE_PACKAGES :=3D kmod-usb2
> +  SUPPORTED_DEVICES +=3D dir-505-a1
> +endef
> +TARGET_DEVICES +=3D dlink_dir-505
> +
> +define Device/dlink_dir-825-b1
> +  SOC :=3D ar7161
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DIR-825
> +  DEVICE_VARIANT :=3D B1
> +  IMAGE_SIZE :=3D 6208k
> +  IMAGE/sysupgrade.bin :=3D append-kernel | append-rootfs | pad-rootfs |=
 \
> +	append-metadata | check-size
> +  DEVICE_PACKAGES :=3D kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-
> usbport \
> +	kmod-leds-reset kmod-owl-loader
> +  SUPPORTED_DEVICES +=3D dir-825-b1
> +endef
> +TARGET_DEVICES +=3D dlink_dir-825-b1
> +
> +define Device/dlink_dir-825-c1
> +  SOC :=3D ar9344
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DIR-825
> +  DEVICE_VARIANT :=3D C1
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-
> reset \
> +	kmod-owl-loader
> +  SUPPORTED_DEVICES +=3D dir-825-c1
> +  IMAGE_SIZE :=3D 15936k
> +  IMAGES :=3D factory.bin sysupgrade.bin
> +  IMAGE/default :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | append-
> rootfs | \
> +	pad-rootfs
> +  IMAGE/factory.bin :=3D $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE)
> 26 | \
> +	append-string 00DB120AR9344-RT-101214-00 | check-size
> +  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | append-metadata | \
> +	check-size
> +endef
> +TARGET_DEVICES +=3D dlink_dir-825-c1
> +
> +define Device/dlink_dir-835-a1
> +  SOC :=3D ar9344
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DIR-835
> +  DEVICE_VARIANT :=3D A1
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-leds-reset kmod-owl-loader
> +  SUPPORTED_DEVICES +=3D dir-835-a1
> +  IMAGE_SIZE :=3D 15936k
> +  IMAGES :=3D factory.bin sysupgrade.bin
> +  IMAGE/default :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | append-
> rootfs | \
> +	pad-rootfs
> +  IMAGE/factory.bin :=3D $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE)
> 26 | \
> +	append-string 00DB120AR9344-RT-101214-00 | check-size
> +  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | append-metadata | \
> +	check-size
> +endef
> +TARGET_DEVICES +=3D dlink_dir-835-a1
> +
> +define Device/dlink_dir-842-c
> +  SOC :=3D qca9563
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DIR-842
> +  KERNEL :=3D kernel-bin | append-dtb | relocate-kernel | lzma
> +  KERNEL_INITRAMFS :=3D $$(KERNEL) | seama
> +  IMAGES +=3D factory.bin
> +  SEAMA_MTDBLOCK :=3D 5
> +  SEAMA_SIGNATURE :=3D wrgac65_dlink.2015_dir842
> +  # 64 bytes offset:
> +  # - 28 bytes seama_header
> +  # - 36 bytes of META data (4-bytes aligned)
> +  IMAGE/default :=3D append-kernel | uImage lzma | \
> +	pad-offset $$$$(BLOCKSIZE) 64 | append-rootfs
> +  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | seama | pad-rootfs | \
> +	append-metadata | check-size
> +  IMAGE/factory.bin :=3D $$(IMAGE/default) | pad-rootfs -x 64 | seama | \
> +	seama-seal | check-size
> +  IMAGE_SIZE :=3D 15680k
> +endef
> +
> +define Device/dlink_dir-842-c1
> +  $(Device/dlink_dir-842-c)
> +  DEVICE_VARIANT :=3D C1
> +  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9888-ct endef
> +TARGET_DEVICES +=3D dlink_dir-842-c1
> +
> +define Device/dlink_dir-842-c2
> +  $(Device/dlink_dir-842-c)
> +  DEVICE_VARIANT :=3D C2
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-ath10k-ct
> +ath10k-firmware-qca9888-ct endef TARGET_DEVICES +=3D dlink_dir-842-c2
> +
> +define Device/dlink_dir-842-c3
> +  $(Device/dlink_dir-842-c)
> +  DEVICE_VARIANT :=3D C3
> +  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9888-ct endef
> +TARGET_DEVICES +=3D dlink_dir-842-c3
> +
> +define Device/dlink_dir-859-a1
> +  $(Device/seama)
> +  SOC :=3D qca9563
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DIR-859
> +  DEVICE_VARIANT :=3D A1
> +  IMAGE_SIZE :=3D 15872k
> +  DEVICE_PACKAGES :=3D  kmod-usb2 kmod-ath10k-ct-smallbuffers
> +ath10k-firmware-qca988x-ct
> +  SEAMA_SIGNATURE :=3D wrgac37_dlink.2013gui_dir859 endef
> TARGET_DEVICES
> ++=3D dlink_dir-859-a1
> diff --git a/target/linux/ath79/image/generic.mk
> b/target/linux/ath79/image/generic.mk
> index 45dfc6bdad..cba2f51697 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -458,121 +458,6 @@ define Device/devolo_magic-2-wifi  endef
> TARGET_DEVICES +=3D devolo_magic-2-wifi
>=20
> -define Device/dlink_dir-505
> -  SOC :=3D ar9330
> -  DEVICE_VENDOR :=3D D-Link
> -  DEVICE_MODEL :=3D DIR-505
> -  IMAGE_SIZE :=3D 7680k
> -  DEVICE_PACKAGES :=3D kmod-usb2
> -  SUPPORTED_DEVICES +=3D dir-505-a1
> -endef
> -TARGET_DEVICES +=3D dlink_dir-505
> -
> -define Device/dlink_dir-825-b1
> -  SOC :=3D ar7161
> -  DEVICE_VENDOR :=3D D-Link
> -  DEVICE_MODEL :=3D DIR-825
> -  DEVICE_VARIANT :=3D B1
> -  IMAGE_SIZE :=3D 6208k
> -  IMAGE/sysupgrade.bin :=3D append-kernel | append-rootfs | pad-rootfs |=
 \
> -	append-metadata | check-size
> -  DEVICE_PACKAGES :=3D kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-
> usbport \
> -	kmod-leds-reset kmod-owl-loader
> -  SUPPORTED_DEVICES +=3D dir-825-b1
> -endef
> -TARGET_DEVICES +=3D dlink_dir-825-b1
> -
> -define Device/dlink_dir-825-c1
> -  SOC :=3D ar9344
> -  DEVICE_VENDOR :=3D D-Link
> -  DEVICE_MODEL :=3D DIR-825
> -  DEVICE_VARIANT :=3D C1
> -  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-
> reset \
> -	kmod-owl-loader
> -  SUPPORTED_DEVICES +=3D dir-825-c1
> -  IMAGE_SIZE :=3D 15936k
> -  IMAGES :=3D factory.bin sysupgrade.bin
> -  IMAGE/default :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | append-
> rootfs | \
> -	pad-rootfs
> -  IMAGE/factory.bin :=3D $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE)
> 26 | \
> -	append-string 00DB120AR9344-RT-101214-00 | check-size
> -  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | append-metadata | \
> -	check-size
> -endef
> -TARGET_DEVICES +=3D dlink_dir-825-c1
> -
> -define Device/dlink_dir-835-a1
> -  SOC :=3D ar9344
> -  DEVICE_VENDOR :=3D D-Link
> -  DEVICE_MODEL :=3D DIR-835
> -  DEVICE_VARIANT :=3D A1
> -  DEVICE_PACKAGES :=3D kmod-usb2 kmod-leds-reset kmod-owl-loader
> -  SUPPORTED_DEVICES +=3D dir-835-a1
> -  IMAGE_SIZE :=3D 15936k
> -  IMAGES :=3D factory.bin sysupgrade.bin
> -  IMAGE/default :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | append-
> rootfs | \
> -	pad-rootfs
> -  IMAGE/factory.bin :=3D $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE)
> 26 | \
> -	append-string 00DB120AR9344-RT-101214-00 | check-size
> -  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | append-metadata | \
> -	check-size
> -endef
> -TARGET_DEVICES +=3D dlink_dir-835-a1
> -
> -define Device/dlink_dir-842-c
> -  SOC :=3D qca9563
> -  DEVICE_VENDOR :=3D D-Link
> -  DEVICE_MODEL :=3D DIR-842
> -  KERNEL :=3D kernel-bin | append-dtb | relocate-kernel | lzma
> -  KERNEL_INITRAMFS :=3D $$(KERNEL) | seama
> -  IMAGES +=3D factory.bin
> -  SEAMA_MTDBLOCK :=3D 5
> -  SEAMA_SIGNATURE :=3D wrgac65_dlink.2015_dir842
> -  # 64 bytes offset:
> -  # - 28 bytes seama_header
> -  # - 36 bytes of META data (4-bytes aligned)
> -  IMAGE/default :=3D append-kernel | uImage lzma | \
> -	pad-offset $$$$(BLOCKSIZE) 64 | append-rootfs
> -  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | seama | pad-rootfs | \
> -	append-metadata | check-size
> -  IMAGE/factory.bin :=3D $$(IMAGE/default) | pad-rootfs -x 64 | seama | \
> -	seama-seal | check-size
> -  IMAGE_SIZE :=3D 15680k
> -endef
> -
> -define Device/dlink_dir-842-c1
> -  $(Device/dlink_dir-842-c)
> -  DEVICE_VARIANT :=3D C1
> -  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9888-ct -endef
> -TARGET_DEVICES +=3D dlink_dir-842-c1
> -
> -define Device/dlink_dir-842-c2
> -  $(Device/dlink_dir-842-c)
> -  DEVICE_VARIANT :=3D C2
> -  DEVICE_PACKAGES :=3D kmod-usb2 kmod-ath10k-ct ath10k-firmware-
> qca9888-ct -endef -TARGET_DEVICES +=3D dlink_dir-842-c2
> -
> -define Device/dlink_dir-842-c3
> -  $(Device/dlink_dir-842-c)
> -  DEVICE_VARIANT :=3D C3
> -  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9888-ct -endef
> -TARGET_DEVICES +=3D dlink_dir-842-c3
> -
> -define Device/dlink_dir-859-a1
> -  $(Device/seama)
> -  SOC :=3D qca9563
> -  DEVICE_VENDOR :=3D D-Link
> -  DEVICE_MODEL :=3D DIR-859
> -  DEVICE_VARIANT :=3D A1
> -  IMAGE_SIZE :=3D 15872k
> -  DEVICE_PACKAGES :=3D  kmod-usb2 kmod-ath10k-ct-smallbuffers ath10k-
> firmware-qca988x-ct
> -  SEAMA_SIGNATURE :=3D wrgac37_dlink.2013gui_dir859 -endef -
> TARGET_DEVICES +=3D dlink_dir-859-a1
> -
>  define Device/elecom_wrc-1750ghbk2-i
>    SOC :=3D qca9563
>    DEVICE_VENDOR :=3D ELECOM
> --
> 2.26.2
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=pV4GqEWzOZWvno=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7eKx0ACgkQoNyKO7qx
AnBwhA/+PqYwsIECxk3IcXySVFxG77q3RYKdkTJKwFTdpB80FzqDSt3CrxuY+egj
BK+um84vjfJJcR80vYK52q/U6xfHpKrpuzs4OiWuRaRkNFcDwk6VKCV7pKyAZIvs
sUHLa+dOdVqLmtx+LN7vDvtArZAC2mme1r9crYWvhpYZ1c9ZN5lyvvEbPPM0pi2r
LBu9ZHsTlcU5Epbv5NfIjMnqavyRlg3R/n+MZ6Deq84gBuXdV9GAO8KAnJDuln5o
/ujN+sPWIzqKLhila5Ww9UqOqcKrRklRHYRsbVL+KskAyFphGTJFhMBDPB5ZLmU0
hZEZgeIX9YHqxG5QGZT+b1nJ5fJopoV1JegD6mIgk1vnBpBvD3iJbLre7tIObU6n
SUgBj/Be1fsNLAi8ej1DXbUsRvjXqQ3EAErFddQXveKp/g8w/sDWmqfwJ7xtknCW
zuT9VaBC/+EhTSY5xlLn9wtjWGS7DmK97kM+mHhDqwpdQFh4R7ZzUFoVJnehVVZm
3K2JkzXSo5GZbxxPKOJ04jlxXAenQiS9R4p1BTnkL4kD+v5XLcWEZhDd+KMwlbyt
l/Qu4k5mIWRJkMqLvH229aEYU0XJuBnCdSRbps+QcKJSQiqELnsTm3Lt0vDfeiy9
YTx5pxhffTDZvsCbeKjJRS8OpQTsZqYLGT7MezfU/KNFMkN/190=
=InSN
-----END PGP SIGNATURE-----


--=-=pV4GqEWzOZWvno=-=--



--===============5704521141634436566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5704521141634436566==--


