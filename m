Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E9B11CDB3
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Dec 2019 14:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E3I8DTZ90KzGQBn7USXZ/fE2IQhg6M5u+frNTPBe7Pg=; b=BYjCTEk3ZLj+fHJUWiNkm/K0z
	XFHQHe1VPwCSXcQEutNabLXTtpBzyQjlralRgi9Jfcm/Yh2DXd1M0JIEQOwhOaHXwtft+1/N9BbR1
	nDg7b/KxBf5WU/sjcQ8SL6CmJPKJxfEacq3xVoXOa18EHBS0+yJoAndblqJ5Ayv0qlsaJDGIucKal
	K6KSSeGtUqOTZ5eBpcZc40oXTnrmNTqQttqO6CWj9rhabuCsG/Go0p72JXOosij6qr1U0TtvbEBoX
	PMKye2PumadG4iFNcDDwtBs6pmNSzRPSIKixQTRe6SQja4m/jOd4lPnCaO0EAQSjFfujWMftT/Kuo
	Ofeiq/7nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifO5x-0005qH-O8; Thu, 12 Dec 2019 13:01:29 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifO5p-0005pj-MX
 for openwrt-devel@lists.openwrt.org; Thu, 12 Dec 2019 13:01:23 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MzQbw-1hkNgY1QMS-00vNLz; Thu, 12
 Dec 2019 14:01:14 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'DENG Qingfang'" <dengqf6@mail2.sysu.edu.cn>,
 <openwrt-devel@lists.openwrt.org>
References: <20191210132134.28943-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20191210132134.28943-1-dengqf6@mail2.sysu.edu.cn>
Date: Thu, 12 Dec 2019 14:01:12 +0100
Message-ID: <002801d5b0ec$3c0b1f70$b4215e50$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKfsDij8OKxvqtindx3hQVnDFbrqaYidPIQ
Content-Language: de
X-Provags-ID: V03:K1:MwA3Pm5txMUuozW181+tt1wvcgEQnjpt6LZwdXcLetJFJUsRHBQ
 EeExtp77kYmh8CQGFN4k4N82JwS0Efut8MoBBciGtFTZTDmOcKho7nNx2ZKB2IKRsjjq4ZT
 VkCoDRZvUDYXuoGCG2qLlYM5FetSoG35kZr/ed32HsCMDiFLd6YaH4Vgrs36nI1jqT/kLYn
 h/kPRGNWvB0YnrnMw8Mlg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YdmSPy+ya1I=:BnyfL6xwNNDQxvY/eYtaer
 Uol2P9ql+pg0lyOIF3a38Lz2RJJNiDWjVUEipLFu9hpRZrViS/drIEY/gSsHfJDCKYNWo2ye2
 CUwX+KGZViw0IIiVlfE6pARwpEw2Wt+DXzWs1lHSZQfjgUfNhr6RFPXUD5cjYjRS+pBNOamy8
 4bdF+fZDDrqKPJjroGbA0Xhd0VhBcsHgxe1LvjhJIImlPXqqdqdOEfgUKL4Y0t4+L3cEmjE3T
 FepNJsTUvv8AZwAVl+Nr9lO0EFn8w1ylYAYFGWuDB2DVvMOYDbc2nn+rG/fTqTfX0Sh1LJAmY
 IK8uEMo7qV7fjLYsu2OGA+TrK0EB6g7R++oaQBAAyVSIW1dW8H+F+UMtOsYnwCazh0YUYlw2V
 aBUDNrZcCSwCv3F8rM8KdrJNQxYPIufUfL0sfxp030n12VsBbzZ6D1JEpMR4UEEqyIRxS1wP+
 wcqNlyQbGQTlEK0YUYZJt4Yw/boKBY7is5lSG259RhUBZQ7vJ+/MW+SKLDZZpIMoWoBddsNwK
 fhcztSFFKQieCNcXyGp6eOGM4eljKtFY4QR0F4UEGtTR8TJrWoemq9dc8vSjWsEHVif5gzoEK
 kU0QhVV8/vgv0ANUFVgJsY5NSLfQSGWgGEIKHw1DsfYNAjr6OW48F5smfUwT+YNypT3Nb/aBd
 6HBYXF0SAeT7rTK7djr9Jj51DbyChnrLfoYlILKzT03zOp84U6D6lyJ5CFe1rglAbvJZd9eZB
 7Se5+SDB8rJlGfKC2cqybO+TNsKQ4EREo1FUOUoqfqOCSR0XwE/QhvnSyW9f48I4RnCYRDGpK
 JH0XM81Pu7kGR+X9JIhtrFV0+n+aUWVYPBmUA3MNk9f36YgyOa7p9f11rNFf6G08cwNja03Sf
 OYQsC897W6RoaeWqWWa29sMkzqCX7hV95F11x4GzE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_050122_028607_B4167ABC 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for JCG JHR-AC876M
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
Content-Type: multipart/mixed; boundary="===============3893719322513085905=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3893719322513085905==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=7hi2iRdhLfawKZ=-="

This is a multipart message in MIME format.

--=-=7hi2iRdhLfawKZ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> +	aliases {
> +		led-boot =3D &led_wps;
> +		led-failsafe =3D &led_wps;
> +		led-running =3D &led_wps;
> +		led-upgrade =3D &led_wps;
> +		label-mac-device =3D &wifi2g;

This won't work (address not set explicitly in DTS). You will need to provi=
de the address in 02_network (see below).

> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index d663aa29da..cbbda06822 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -361,6 +361,19 @@ define Device/iodata_wnpr2600g
>  endef
>  TARGET_DEVICES +=3D iodata_wnpr2600g
>=20
> +define Device/jcg_jhr-ac876m
> +  MTK_SOC :=3D mt7621
> +  IMAGE_SIZE :=3D 16064k
> +  IMAGES +=3D factory.bin
> +  IMAGE/factory.bin :=3D \
> +        $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | jcg-header 89=
.1

Won't $$(sysupgrade_bin) include the metadata not needed for the factory im=
age?

> +  JCG_MAXSIZE :=3D 16449536

I'd prefer to have a substitution included in jcg-header, so we can use 160=
64k here, too.

> +  DEVICE_VENDOR :=3D JCG
> +  DEVICE_MODEL :=3D JHR-AC876M
> +  DEVICE_PACKAGES :=3D kmod-mt7615e kmod-usb3 kmod-usb-ledtrig-usbport
> wpad-basic
> +endef
> +TARGET_DEVICES +=3D jcg_jhr-ac876m
> +
>  define Device/lenovo_newifi-d1
>    MTK_SOC :=3D mt7621
>    IMAGE_SIZE :=3D 32448k
> diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> index bb6e41e06f..904e82e09a 100755
> --- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> @@ -14,6 +14,7 @@ ramips_setup_interfaces()
>  	d-team,pbr-m1|\
>  	firefly,firewrt|\
>  	hiwifi,hc5962|\
> +	jcg,jhr-ac876m|\
>  	mediatek,ap-mt7621a-v60|\
>  	mediatek,mt7621-eval-board|\
>  	mqmaker,witi|\
> @@ -223,6 +224,9 @@ ramips_setup_macs()
>  		wan_mac=3D$(mtd_get_mac_ascii u-boot-env wanaddr)
>  		label_mac=3D$wan_mac
>  		;;
> +	jcg,jhr-ac876m)
> +		wan_mac=3D$(mtd_get_mac_binary factory 0x4)

What about 0xe006? If lan is 0xe000, I would expect the wan MAC address the=
re.

Add here:

label_mac=3D$(mtd_get_mac_binary factory 0x4)

Best

Adrian=20

--=-=7hi2iRdhLfawKZ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3yOhUACgkQoNyKO7qx
AnBDFxAAjM93wIStbqKn7O2XObaC1HfctDc08DMCRF0Dk9Iza/P1R44PWvVD5PzM
uKYZ2vWXyM6Br7+HLjAYZK+HlssoqF0UJXppfkFfmKFnFFct39faM6znXci3HDRf
EcTJWLlx4D03o+803lJlvF3PR3ivBXVLPBLOqHgBd+WYJOpleonXz8RBCvWsMiG4
TVMsUSnnU4mcDsnGfRuAKp5515OtoLOtD8aJBwbnb6N8fXV3yp17jlcGNQ6CSlGW
clgX1JAATFW+Y0ASvIDqbEhfhop08VYRJa2kSLYt9r80sLurvrpQxCqpDj4v57EK
Z0blCgDb6/Xty+JvHKP9gb4JWVtQdA3b94GAE9gfcD7NRT32P8DR+R3sI57LoIo/
thB+0T1CspU38Dur14Jc733ADlB8UE5ANKhBHweQOXjZP+Of59Ecick9YMfqZjGc
v1oTUJod1MMzfO1gdlQ8VQMbskragOcKJk90Xya5IR0bRRFmZLq95vHAzBnoAqPu
figqBkdukb0LkoOfe4eN41Anx6pkhgUDcDekrwIeE3KYf8/nql0rDwoE+rI9oQsR
y3VbtyR3RHt28m6OcIXdMTJG2Xqy+XyHp6hx78ym+GdeOsqnpNCMI8R8nAIb6FV1
b6kzeviCaNQIb9rhC734onlHGiMf5fHTYmAHaeiw+Le6QIGik1c=
=shGF
-----END PGP SIGNATURE-----


--=-=7hi2iRdhLfawKZ=-=--



--===============3893719322513085905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3893719322513085905==--


