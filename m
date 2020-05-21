Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6981C1DD45E
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 19:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xR8u6RZn8KynGkAFpAlDKpdqlWmyEXv+TibDnaVyaL8=; b=LZMtSgnu+UFlyt8t6DFzlfYsq
	Jy/0he/GrK2HMS2O3Lnc2KQ5WzS9QvJzYp9FYWrRhoV7PRka0S/PEkdh7a01L8jZ+TXm5gGFvf/Ny
	nR5Y+EBSIQfq7q4SoijG1ld8jrvQraoJAxxjz/x56zo2q/3qsg3z/8s6OWLjrINWEa6mQzQRpGZel
	vo/Z4ffw4FJFJ6dHPukCU6kXYN/DESEODCnysr1w0CmURNY3Yxbqr8Qi0wiIOOHIRPgejdFAlhn7s
	toPGFgCZASOY9wuJ1P7mwvSDNiKWTdehyMtmzIGlfUhLXorBhfFsrPPh7Of3HgrjAlxqxwh8JGMaf
	GBuTZ7cCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbp00-0007HO-Cy; Thu, 21 May 2020 17:28:52 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbozp-0007D6-Av
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 17:28:43 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mduym-1j0q5H1n3G-00b3mF; Thu, 21 May 2020 19:28:33 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200521154510.31736-1-hacks@slashdirt.org>
In-Reply-To: <20200521154510.31736-1-hacks@slashdirt.org>
Date: Thu, 21 May 2020 19:28:31 +0200
Message-ID: <00c201d62f95$409cf8b0$c1d6ea10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKVmTUMKQYyjMcOvA3boc6/l5m28Kcz98uQ
Content-Language: de
X-Provags-ID: V03:K1:W2YvT+SZbVUhGxOHP88IeQTZl3Vgvx7lRyZuvAJLdX/vXvZ4DZ4
 JPga9OjH2DymChNkM4py/yRTN6RmaZ1qS4ET46CkUYP6AD/Roa8+nQR3UR4xS54mypWHHYS
 vVdBXO8+TeKFPAhb+PCRUvx6AxtjJWu4x0AVUG4BKLE8Bq6gDS9i/0JRzeurlTTsXc8rfBa
 xpUfDkBC8VnWSc2daWL4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Akr2PBaPWTg=:+SW5jVF7fOZCrCzOD33edQ
 stHs6FiL+lzV8m0nVCFutYI7f+uhaHvKrNxtuuAKdqVajeIZyaaHs++C0qdjYbeWAp+W4lR1a
 0vkRgd/myvSE2bCX6MxPPfbzhDQkRIDLqgNL6YcRdym2aa+Iva4myyjDrc9xchax1ghbeRy0P
 2slDjZH6V0F+G/7pVeMyUUiaQ2J/OVj095xsXkdddZo8EhaDVsGGMeDrluJ+H4t2Mpc3F10IM
 FM6BsueV15ycfabwNq379ZNQO97xWiJO+ahh1RdymqG8LHWpDnaTAarJFxvEdoi421O+AohYQ
 JcLjYx8rQSUtoEzXRXdDVajcXQfWzF4CIsuXj1gS0RyroaV5KVzEgUU4f6LwWlUiH/PTK07ic
 oYUQIH3GsDq8sWPBM6oyYsIbQrTmQ66j0mcIAwYu6FIxRrOces6KhHTNhBRF6sq5QGlyQqXZ4
 cbnwI9VTEDwstZYhFnAf+X9Whcx52E84in2r+M6YwY1CGif64AwwYFsvm7VMhL939uEweKOfL
 5WONoIwTQp5OuZYgH1FvTiuDbkRa1gcfWClI/XrJQUblaT9DMxXzOUu+LF6nYN2EoRsCHVWtx
 2Ug0usxuFR68aDeKEHpXijNKZhZhfRCaaKv6OQgLUtkDJuIeHGSPMjzvw663t5x9b+xi32pZg
 1J5u7kbgftxqUmMrxTj/SibpL6/Jy5PXt2DN2NTQmVoWNV6RSeWLySnvudT5X3hUlT/TbznEY
 xTrV2AZV3fhdt4Plf3sEaYWa+2S/iGbC6flgL7VGnNZJDrdMtsPbP3PDEodXA8cuJiKg8ZNCp
 5D1p7/mui7jhDNbOkFGxVcnxhvdj0QxKU3INA/qCXyG7Cl+SagjA5XKOXf8aYJHMRVqXwf0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_102841_665195_78BA17D9 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] packages/utils: fbtest fix Makefile
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
Content-Type: multipart/mixed; boundary="===============7879674206358481728=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7879674206358481728==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=NQ+C+bCGBrM6w/=-="

This is a multipart message in MIME format.

--=-=NQ+C+bCGBrM6w/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Thibaut VAR=C3=88NE
> Sent: Donnerstag, 21. Mai 2020 17:45
> To: openwrt-devel@lists.openwrt.org
> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> Subject: [OpenWrt-Devel] [PATCH] packages/utils: fbtest fix Makefile
>=20
> The clean target tries to remove what looks like a bogus 'rbcfg', probably
> carried over copy-pasta. Remove the name of the generated executable

It's there since the beginning. I'd therefore add a

Fixes: 8099f4e0d3af ("fbtest utility ")

Best

Adrian

> ('fbtest') instead.
>=20
> Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> ---
>  package/utils/fbtest/src/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/package/utils/fbtest/src/Makefile
> b/package/utils/fbtest/src/Makefile
> index 075bc0ecbf..f7c9f86a87 100644
> --- a/package/utils/fbtest/src/Makefile
> +++ b/package/utils/fbtest/src/Makefile
> @@ -11,4 +11,4 @@ fbtest: $(OBJS)
>  	$(CC) -o $@ $(OBJS)
>=20
>  clean:
> -	rm -f rbcfg *.o
> +	rm -f fbtest *.o
> --
> 2.11.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=NQ+C+bCGBrM6w/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7GujsACgkQoNyKO7qx
AnANQQ/8C9rXcqi8rOkzd+LDCfzCQc1TJU9bIjN0t6qthjfAEqapL1zQQiJ7SVkd
AhhaFA+NygpBpgarvVIACA/vqks8jUyHuIVPF+gnk4Nalt6NEWPedc3R4GSk9/N7
oO3CPyEhGaDBjUo7xK9Js/0gpv9qf9kFuvJ9k6dUvCg1mDObnFCLsY9Bp9SP0nM4
BlZNavaOrM73p8WN6+c+AnZr6OVGGhm9VqrPmkXD1j8pV0XthD9D46BOzxFyuOlc
YwgwtNvf+wpja59hn1cmKQuSaPIdxKFNV3z1Hmb/yRoOSwOnXrMP3SyCTZ40qywz
Uu0Ks2E12hSARsitFcZ6lDheM2c2IHHM0t0gyZeWg7USXEtzA9l1vWAiOaEaOWAM
j/tqSgu1krG+SArH9jc75LyHZ7pD2bGwnevexfyqomT1hhckLuK6A8WNeZ48q3Cu
ka7BXmcwURAY5aok1hiMnUGTmt2HQn2J77JISCIi/pT1N5bLoVY7++/zzLVW9/ZT
U5be5jeW7+GxrzW66LmVIUvaDDzKUfFpZVnbO9ABhL69tXHUr/Uhnp+gx2UhN9XM
Xx0OOrV0ZfrlgQ2ryVbKCMI7ymcQZjuQsKQodF4XX4d+jiujrcu4AHGirOXZfZTN
bZspYNBtL2CsMc13wii2B0QITYGxd/Pm5+K7XuLD9FpCRj5NKMk=
=hBkv
-----END PGP SIGNATURE-----


--=-=NQ+C+bCGBrM6w/=-=--



--===============7879674206358481728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7879674206358481728==--


