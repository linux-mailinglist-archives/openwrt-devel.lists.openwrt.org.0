Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D954192772
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 12:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zzBV5C/LV8h80Eigk4TG8ULAF2Pw2/QlIAsJwD+XAUQ=; b=XA/EV8BmlEnLBlEY9KlOANBMy
	UHsJZfCviUB6vCwbDCcMIa2fVqBeurOI9f99L4ok9HCUf6FtmgwoxYzAEFF2/naeAS4YTfnjkxO5D
	AI2TDiJNvOCzdHX8nQs+cO+KaqgE3n3h5Rsnf/rBrevsbSamTsLNCdRqUo9kaMX5Fn4OPlSsTS6qb
	aoddJVi1SmitpIF3IP4yOsRaaYHivBUeOWts334I/bBGvKMz4ll9tHK7QUy8rUr9IPmtkODzs72/y
	cQAuiMdD/YpqrH9Qeb3F1j2qNuHJUiTIsScRuLfhTrnxQZPHXj+uDrwBkMS89H3tmw4IH/ki04aNK
	XgKNT+rOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4TN-0004Af-7Y; Wed, 25 Mar 2020 11:45:25 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4TA-0004AH-Tl
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 11:45:14 +0000
Received: from desktop ([188.192.136.247]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1McY0L-1jp2NM1X0H-00cxYa; Wed, 25 Mar 2020 12:45:09 +0100
From: <mail@adrianschmutzler.de>
To: "'Paul Spooren'" <mail@aparcar.org>,
	<openwrt-devel@lists.openwrt.org>
References: <20200325070657.528739-1-mail@aparcar.org>
In-Reply-To: <20200325070657.528739-1-mail@aparcar.org>
Date: Wed, 25 Mar 2020 12:45:08 +0100
Message-ID: <004701d6029a$d6146bd0$823d4370$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKKra0Rl9vWfsO7rbt0iFpUZIq78Kbv2hLA
Content-Language: de
X-Provags-ID: V03:K1:+htDOD/35rZdfHdBjSZe/2NhzwV4DhFNTNeqBTbxNUQGnHGskDu
 RTLIYXpPe+0SDRgbuq4jkN67zPiUSz6PleOabyb1ZhxddtNuLRlUCZhctnJQ5pDmSpFEDNO
 Oqjk8+BETMNqN97UDcZWV4HSynH7pS2O3XWJdqLPLuDHKg0zp1vcSWxu/EcLDrxpdsPiQxN
 zgCgtu3HMy5AwY/8Dq7zg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jvp6nQX/xeY=:kuZtWNphqW9J0Ja6MNqKUd
 GDmEbTaPf2lKaMD0KpqxjV+elN1WsSmViibl3fzlKUZAItPVzSkdrPnPBVRd77Rx48puKlK3F
 d3/Slh0Au07QrTKmLDEAbL8On9gzd/OdOh45/l2fv0K3bDqJFDQEdr1glwwtIwQljLYZ/2QFp
 uvZrlBSwVezpu29QrR83KglM3nSSO6vdLn6d6F7D5QXYfbKwPpom2zcgkxhX4eFVJpyJj+5GM
 zuhyjjZUCAdX4pupm0paTTVrB+hJvHWjyKjo+hHf77Il0wOjGdxYUoQdRQEnLojh9XRSVucks
 lKulC4cp4bJvWEJUpUEHXxtM2v7Dd5GCW83bbVnYFjl8ph/7jrfcdfN4tf3EDStU5BAyZa6nc
 WRt/EEU9OhWvTr5zO6y7AP/hv7GZ8pZhex3s42rnw2eSN4V7loiOCdpi4L79qNM/XT7QA+9Dh
 VHJ90bZIMHeoWITeB/9aHqPRwUHmATYvIn1mE7sAcZliyGCCxSfLSOq4S9Pp5AItS6o2YLYwR
 fepd4S6xS9NDVaER7cFwrSwcJQtwiI84QbwboTeohJmGOIfnIWo1BjRgykcqZxrjgxdisKAnC
 jnLuaH0UhNR15SaXn77TLNMfmRA/VRM8k2cudeV1Se12XaGvGi12bs5MgYmTlhEVUIkCbk8CO
 dfP+sstzid2GLyfgNrboK20kqqg5vAKZUJE3j4UHjzpB4PlGap8E6o9hS/XW6TWC4NxRwGswz
 p0zh2IF5NAhKCtLQJYB8DYFw/+NXhFHKU1pGIMSvp1CunL7DuAhGsfS+q/4/SRC+R4+JO21au
 50zpLm6ve2jGwwZbAmLwoKp27ZTbd2Li/2Piql77GPNdfYO82RJcZP2zWeC8e+IJS2h62pP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_044513_254987_7515E39F 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] x86: fix virutalbox squashfs images
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
Cc: russell@personaltelco.net
Content-Type: multipart/mixed; boundary="===============7273614287176446573=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7273614287176446573==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=MPTQtITP1mZdql=-="

This is a multipart message in MIME format.

--=-=MPTQtITP1mZdql=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Paul Spooren
> Sent: Mittwoch, 25. M=C3=A4rz 2020 08:07
> To: openwrt-devel@lists.openwrt.org
> Cc: russell@personaltelco.net
> Subject: [OpenWrt-Devel] [PATCH] x86: fix virutalbox squashfs images
>=20
> The previous rework of x86 image creation broke the `vdi` images. ussell

typo in title and missing "R" in name directly above.

Best

Adrian

> Senior <russell@personaltelco.net> came up with this patch to fix the
> padding.
>=20
> Tested with x86/64 with Docker (squashfs), qemustart (ext4/squashfs) and
> virtualbox (ext4/squashfs).
>=20
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
>  target/linux/x86/image/Makefile | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/target/linux/x86/image/Makefile
> b/target/linux/x86/image/Makefile index 81a8f73efc..6d12494f54 100644
> --- a/target/linux/x86/image/Makefile
> +++ b/target/linux/x86/image/Makefile
> @@ -47,7 +47,7 @@ BOOTOPTS:=3D$(call qstrip,$(CONFIG_GRUB_BOOTOPTS))
> define Build/combined
>  	$(CP) $(KDIR)/$(KERNEL_NAME) $@.boot/boot/vmlinuz
>  	-$(CP) $(STAGING_DIR_ROOT)/boot/. $@.boot/boot/
> -	PADDING=3D"$(CONFIG_TARGET_IMAGES_PAD)"
> SIGNATURE=3D"$(IMG_PART_SIGNATURE)"
> $(SCRIPT_DIR)/gen_image_generic.sh \
> +	PADDING=3D"1" SIGNATURE=3D"$(IMG_PART_SIGNATURE)"
> +$(SCRIPT_DIR)/gen_image_generic.sh \
>  		$@ \
>  		$(CONFIG_TARGET_KERNEL_PARTSIZE) $@.boot \
>  		$(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS) \
> @@ -95,10 +95,10 @@ endef  DEVICE_VARS +=3D GRUB2_VARIANT  define
> Device/Default
>    ARTIFACT/image.iso :=3D grub-config iso | iso
> -  IMAGE/combined.img :=3D append-rootfs | pad-extra 128k | grub-config p=
c |
> combined | grub-install
> -  IMAGE/combined.img.gz :=3D append-rootfs | pad-extra 128k | grub-config
> pc | combined | grub-install | gzip
> -  IMAGE/combined.vdi :=3D append-rootfs | pad-extra 128k | grub-config p=
c |
> combined | grub-install | qemu-image vdi
> -  IMAGE/combined.vmdk :=3D append-rootfs | pad-extra 128k | grub-config =
pc
> | combined | grub-install | qemu-image vmdk
> +  IMAGE/combined.img :=3D grub-config pc | combined | grub-install
> + IMAGE/combined.img.gz :=3D grub-config pc | combined | grub-install |
> + gzip  IMAGE/combined.vdi :=3D grub-config pc | combined | grub-install |
> + qemu-image vdi  IMAGE/combined.vmdk :=3D grub-config pc | combined |
> + grub-install | qemu-image vmdk
>    ifeq ($(CONFIG_TARGET_IMAGES_GZIP),y)
>      IMAGES :=3D combined.img.gz
>    else
> --
> 2.25.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=MPTQtITP1mZdql=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl57REEACgkQoNyKO7qx
AnA72Q//ePgN39bpfE0sayxPtX6bBzOUBiXGb4AiZFVvLT4lQeB7Nc+qC65N6XCF
/l6dn8IccQn7CgciUS4WOkJuW+jDY+NGiKxKHLqxU1mLvYc09CVte1T7yCilicpU
KqrkjVHIpOpIG53G6yZCW26RJsAtpQwlx8GkU4ejSv1LEPsyLzBy0bXkEQ9H4unZ
NkD0hBXHL4WKMrDN5knsA6B7lsQbLvuunmk4Ma+kaqs/Hrdg8TGQk3HYbtomJ9bj
mbwDDB4SMt5Bg2s635Jzd/7MA9H2mNeap+EDfJTvG+5DJwzr1gCWgNceaE9Ct3fO
GA5Q95GClHecCpmxrhU7GTlw7ThL6mge9FJU4yi3uNNmIgT/1lD80BtU5DOogu6z
rVqv9Are30lkEj94hR5DHdP+cWT0vhSy+TPrGqfZTtU0eyEhWQsKKm6hxuK/Evp4
8Le9m4AxdPfznJ6DEcj2lf4JjMcUZ/J52G3RRycH+aMab/cObI+mf2pN0XIaL5Ww
6AgQpBifv+5JadqFaYWJSOybGMSlUeeyofg1BeRBhCagd79GFZRpT9G/NlVozJGA
vihFLDFkPAJFphrmX8cxW3eQ+mgsZi8FEL6fB4w6flnkdAm82JfGjvtFnEVGgWZx
mux80ZsohwVf6Fa2QdEtOYLkSC2bWnw9dZ8S2/BqVsGXUqbUNsc=
=0Mf7
-----END PGP SIGNATURE-----


--=-=MPTQtITP1mZdql=-=--



--===============7273614287176446573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7273614287176446573==--


