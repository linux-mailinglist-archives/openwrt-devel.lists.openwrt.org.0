Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6451B0E0C
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oscyVweUTeh2ddIyin8gOOTncqh1IFrtgNqgLcHDj2s=; b=FN93SnCW2c8YewK7feXnn9FHb
	FF8fhX+zs7gUuUS37oDrBNIGUexAlORP5xxtALMjwwA2yDUG6r+8rk3DY0RKlALwAL6J1tzA/xCRp
	lCSIamNSeRuRqRFbY5iv2Mx66p8f9TAdRPi28U8PyrM5n5mXDuCUv84eSdyFzuGVuy+iPP0dDwSOR
	iEqocppFvTYZVzRgGYipSJCQBJpIr1SiN1QzYU8auVoWiLLVga61S0Ky0qqNqTWrdFqkC7i4kqO+x
	9XIGX2cp/439pM3O/Ct/QfxOxGoTdWJhc0SSRBuYApKhZVMZuIrThltOGOLGDQw7cIYSe1LDNEzlu
	G7RulWi/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXBl-0007ae-9D; Mon, 20 Apr 2020 14:14:21 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXBb-0007Yk-A5
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:14:13 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N0WsG-1j3Nf319Vs-00wSWE; Mon, 20 Apr 2020 16:14:09 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-13-hacks@slashdirt.org>
In-Reply-To: <20200420133503.18700-13-hacks@slashdirt.org>
Date: Mon, 20 Apr 2020 16:14:09 +0200
Message-ID: <017701d6171d$f5c35d00$e14a1700$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQH9rhEV/dFWOkGBLi2xOlxjqT5TbgFvtKNSqCdg3dA=
Content-Language: de
X-Provags-ID: V03:K1:9E1TTq8+V7Gww+rlAP8l5f6xrBX04x6FiNyHn3AI2qhLz/XP+f9
 reeapDvqdK9RzYQtDxWAzNEyhjTHPFNCePxbodG0aol+8y56IZ5PfWwUpfwILJjZajUIZWh
 OcQk72iQvDWwAwnmomhpISxjITbX79WavRxTkAT1zxnTvkWK83bxtVdRRcJqjoD1DgEakkC
 9B6ciJUQAKgiRF58gqMgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KAh6eDyPHqI=:0+SPipNdZ7q928aYAEHzCS
 gDZQbkHy7wTMOdMOx/nLknFsUE8nbNOI7a3gtVweIOfEDOM9O7hLFtrDa3axqxuhLB0seqZL2
 iRh+8NE8KoDtXdzQhY34NjBcNTMuWpMMOm9ptifofUEeighFbwz44IsN9qhFo0OGUpcMTYHqo
 H5a6gaUCvAbpDs/xuIHpI3Lfd8+pJEO7J3m/lDuavpJpUIEGbUEIUzix9gcHYk1eqR6Lg59CC
 nJNX/0KgxY5X+Lwim9QGYSJXICqSg1YtuzyRyhqRwfLnaGwmAyAoaWlEciKya9ECxm/K+qOVk
 SUuJlCLrOHz/0SI+FobaRIPINS0fTg4dXzoVJ5DxMDKi7sv8kn04mat9qWgpffx9fLMf/fKZq
 y1XLTt/Uipq9V/SOHuNgztsfu2xBpcAX0VNJ2+NWswOcni/qhk+BTbpGUEt51ZmXcSpXnWHre
 yBRhX3tPTNeKjrKuP2iOQd0CgISeG9WdOd4Q1FnRzCAdlu2OJjVcn4AjdU1NkMoQGkvwc/U2G
 qBLxzMYobPaej//dbIZ0E1xnlehLOga8izmcoAXv8Q0BoGDRln2FOtBLRyhTFcTIYM81fIggM
 ltaddD8ABn9gthNr59wpJ1yz0xM+p0OZQlEGKU/7Shu/zdRcgM59wzJvO5BCqq3kVywDF2yoh
 ZXR8hfUeMQJYe0wKV4SKs5v8TgtN4ez+hlSirO2kANpNdFB7WBrDA3confaEncNAaRZbUvud+
 1rWXo2Ac24kKnrs+XbKhC7MZZRXjA91Fv0+8oVCuMlfgfwe4G15r5TbrbeneiwPpI8XcJttpF
 uJqALeJxOCN0JhRaVThRo7/QGmjiH0PIpTkYi8e8ylnlDhM/T+8H8jxPKerM8cj9owdUidX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_071411_658242_3506513B 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH v2 12/14] package/base-files: add
 caldata_sysfsload_from_file()
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
Cc: koen.vandeputte@ncentric.com
Content-Type: multipart/mixed; boundary="===============0559528961135739711=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0559528961135739711==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=XC2sIu/wg6cbf6=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=XC2sIu/wg6cbf6=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Thibaut VAR=C3=88NE
> Sent: Montag, 20. April 2020 15:35
> To: openwrt-devel@lists.openwrt.org
> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>; koen.vandeputte@ncentric.c=
om
> Subject: [OpenWrt-Devel] [PATCH v2 12/14] package/base-files: add
> caldata_sysfsload_from_file()
>=20
> This routine enables loading caldata binary via the kernel sysfs loader
>=20
> Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> ---
>  package/base-files/Makefile                       |  2 +-
>  package/base-files/files/lib/functions/caldata.sh | 15 +++++++++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/package/base-files/Makefile b/package/base-files/Makefile in=
dex
> f1f0f17a60..d8e7c31878 100644
> --- a/package/base-files/Makefile
> +++ b/package/base-files/Makefile
> @@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk  include
> $(INCLUDE_DIR)/feeds.mk
>=20
>  PKG_NAME:=3Dbase-files
> -PKG_RELEASE:=3D219
> +PKG_RELEASE:=3D220
>  PKG_FLAGS:=3Dnonshared
>=20
>  PKG_FILE_DEPENDS:=3D$(PLATFORM_DIR)/
> $(GENERIC_PLATFORM_DIR)/base-files/
> diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/=
base-
> files/files/lib/functions/caldata.sh
> index e9349c7eee..a64f07778d 100644
> --- a/package/base-files/files/lib/functions/caldata.sh
> +++ b/package/base-files/files/lib/functions/caldata.sh
> @@ -68,6 +68,21 @@ caldata_from_file() {
>  		caldata_die "failed to extract calibration data from $source"
>  }
>=20
> +caldata_sysfsload_from_file() {

Didn't get that at first. Maybe choose something like
caldata_file_to_sysfs()?

> +	local source=3D$1
> +	local offset=3D$(($2))
> +	local count=3D$(($3))
> +
> +	# test extract to /dev/null first
> +	dd if=3D$source of=3D/dev/null iflag=3Dskip_bytes bs=3D$count skip=3D$o=
ffset
> count=3D1 2>/dev/null || \
> +		caldata_die "failed to extract calibration data from $source"
> +
> +	# can't fail now
> +	echo 1 > /sys/$DEVPATH/loading

Maybe make $DEVPATH or /sys/$DEVPATH an argument?

Best

Adrian

> +	dd if=3D$source of=3D/sys/$DEVPATH/data iflag=3Dskip_bytes bs=3D$count
> skip=3D$offset count=3D1 2>/dev/null
> +	echo 0 > /sys/$DEVPATH/loading
> +}
> +
>  caldata_valid() {
>  	local expected=3D"$1"
>  	local target=3D$2
> --
> 2.11.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=XC2sIu/wg6cbf6=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6drjAACgkQoNyKO7qx
AnBEeRAAiStPByW6PvIBDrPP3yU4s09uSGL860kbPWWcro5aHOla5SiymISsHRfu
33SDWNZnfLM8zGC1IhjZ5B5LnUzlWCTS/dSw1wvP1pRS5voF+o5dnOPki7mElSC9
oNuRqAhlMe758SHWdjJz1M4rfH2NChkG4Lx2C7MjbNGw8tbfqw0+xTvq8q7K5kX/
uFkqit8K5/zR6Ioz/hqqCn54nvafzV7dFK9VTPmN6BIV4iY5rtWxlXIWs7wDIQS5
KxPeiPWwjTGGTGYh116hQgClPpPhtxQdWPKnN7UPo2OU9bBhuiN3KxcYkjCu2H+w
mnep7ien8ciet13PBRSu3oxF5UqmF5dN3WLusveiqDOB12+b3kshZQ07axGcwxYw
B1cj9cEgRiWHSgi9achRvvyq9IQkX3Hl8tO0RhcoduxyaJ563bumwqocSd9ldJBq
onaTV4/t/coM92d1lrBF6VG/4fXdSbctPNCS6JfCzDF4hXeCCLUn0748qnYfET4N
/6IUzmG+hUhBZszNo3FI9FttCqb3ah4ilUZkc93T10vvwZI/tKN8MS32nCYzE/bs
IJMacgPZuMelu3Na3kTDBf7F1QbGUiiPWu8cVIn5Y2w0cdIu8rb14gdhCDlX9hj/
hPQny1xpIjsM0HcGQhoqAOzLvfyXNVOSKh2MEKhu0OGVLgNpqbU=
=M8cD
-----END PGP SIGNATURE-----


--=-=XC2sIu/wg6cbf6=-=--



--===============0559528961135739711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0559528961135739711==--


