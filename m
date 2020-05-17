Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E81D6C1A
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 21:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eUr+D0UhE/QC+RLJTKDRjLL19Th/q3w9Zau7NZD6Zd4=; b=R2NKWNtHkJdShJDbYF8X2vWeT
	28OnnfA7frp+FACDq8fgXCH88e+OZmQsHbTF7IrT03HoULIUT4YAJ+1Ung88ChmSPY/9Coy3UAWAe
	B4wALMu/ypympfHJNQGapAdp8ZAXOsGprvk9OD1RROX/7E1DzngBnslGfl3K6pZg3SYw4+ipW9wTd
	d8aGCi/NUkIH0Xdt9b+Tt9jxK+ACq0a7snpVPxU6ONryypCSTndIATCOWxtY2b0YruOed71+nXaS4
	x6lOhIsVEJw0ZGPKBbRMTaKjhr1Pe3y11ijMGmHOFFiRIdsUrZVJVAROzr/oD4bxyZ18gHytB7jM1
	SedLJJWTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaOez-0004Xf-DN; Sun, 17 May 2020 19:09:17 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaOet-0004VW-R6
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 19:09:13 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M89P1-1jf5Lk0IJn-005KMT; Sun, 17 May 2020 21:09:07 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200517182851.33553-1-hacks@slashdirt.org>
In-Reply-To: <20200517182851.33553-1-hacks@slashdirt.org>
Date: Sun, 17 May 2020 21:09:06 +0200
Message-ID: <012001d62c7e$a34974d0$e9dc5e70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJbwqacdd2pBtLx39QJMf1QnPkStaehd2XQ
Content-Language: de
X-Provags-ID: V03:K1:Vqr10rvrMFwZFvmEcnWXASHujp9SyHvUt9YX8SlhM9I6E1vI+Gd
 Z1tSmr0DzsnXi7BydeQZKO4CkF8XJiDjuOqDTsiSTTJX6++/sPocWF+fZTENgtLKv4oKFf5
 5EguRW6yJ5kcGnmfhf3r4aZajwWlqRw/S8h/XZXewdPT7M2S2llZUJgTETOhOXQYTZpOrh2
 3+M/xxvWNalZ6QNQHUPYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W7E+t2AeQ6Y=:uFc//k2PRyXf7jLDPO8edo
 4xoDxEEwta8CMpt9r5WJbRol0nHiC8cgtWycrADPVNyBM1SZdKo6GnhLJYXWR+tzmFQrgR0pt
 xbdP5211KdvpvizaEUvWYYz8KvpBpS5z+rl77ik3RBL7v7rPnsjYfNzV6K7mIntAEHDWMwwOb
 wYi4aIqVFDfFpD++VAtILI8rwgKY1gXEeqtSHeKX4EFVeIb4b+5l623T/uLl7tWSUnZOk/aM/
 5Ag1RCMj7OiYZF3pd1uOhriM8UTSs1r+dr3UvSrNge/frRZLdTG5H99VbqatWPMRE/dM0fIHP
 8nxFBdqxxifjlurKZtdE7LRsIgUm83f/FdyooAJigFbeDGkX8EPNgTTEekhB0LPW0JASwkP3k
 luHZu4pxJ+MGSrRMFpW6R1dxTORcEfbtLv2PtL8cMrud/eUeQl2cX2tpkk1vzupkzULImdjyc
 TeisYHRZVHM8cQRJsiEDvXUiA22HBlZ5kWOlmZyFtC7ybUfZjDia6P+PO5dR4XjJwEe/0WzCW
 ZsR7QrR/pcDBBsI5KEvuQLfzqERfyKfJL00KxZE7lwTM8D/qVYqKPx21Og+9bmqs/T8OQTGHK
 o0tzPYHUaHwm68yBGOrCm3L5ACO/Ulu/zVD53getm4Uglu/I1tNQia7PXo0HgP+q3VkpFSw7P
 2XnYoUgaH0jhFb1Klu1uWt3OBKctdoix1XvmNITJ/wU2qsX5resD8Pc3O5YuKWqiLzQcI49ym
 p1YbwMlIANOghMVT0+U5AB4DKwV1tAmxjH8/IFTronN2ExP5gcpkyQ76GJWMkeMsO+oCnu0z6
 AEXu5BofJDU6wp0v3Cvd/RaKGNppBsaSXgyhVo+kiPCCUF9XceaARNTeuJDRLX4+wxiQIFa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_120912_177697_C0DF2231 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] package/base-files: caldata: work
 around dd's limitation
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
Content-Type: multipart/mixed; boundary="===============7800468861074666094=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7800468861074666094==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=3WSITc13+3Oy7y=-="

This is a multipart message in MIME format.

--=-=3WSITc13+3Oy7y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Thibaut VAR=C3=88NE
> Sent: Sonntag, 17. Mai 2020 20:29
> To: openwrt-devel@lists.openwrt.org
> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> Subject: [OpenWrt-Devel] [PATCH] package/base-files: caldata: work around
> dd's limitation
>=20
> tl;dr: dd will silently truncate the output if reading from special files=
 (e.g. sysfs
> attributes) with a too large bs parameter.
>=20
> This problem was exposed on some RouterBOARD ipq40xx devices which use
> a caldata payload which is larger than PAGE_SIZE, contrary to all other
> currently supported RouterBOARD devices: the caldata would fail to proper=
ly
> load with the current scripts.
>=20
> Background: dd doesn't seem to correctly handle read() results that return
> less than requested data. sysfs attributes have a kernel exchange buffer
> which is at most PAGE_SIZE big, so only 1 page can be read() at a time. I=
n this
> case, if bs is larger than PAGE_SIZE, dd will silently truncate blocks to
> PAGE_SIZE. With the current scripts using bs=3D<size> count=3D1, the data=
 is
> truncated to PAGE_SIZE as soon as the requested <size> exceeds this value.
>=20
> This commit works around this problem by using `cat` in the caldata routi=
nes
> that can read from a file (routines that read from mtd devices are
> untouched). cat correctly handles partial read requests. The output is th=
en
> piped to dd with the same parameters as before, to ensure that the result=
ing
> file remains exactly the same.
>=20
> This is a simple workaround, the downside is that it uses a pipe and one =
more
> executable, and therefore has a larger memory footprint and is slower. Th=
is
> is deemed acceptable considering these routines are only used at boot tim=
e.
>=20
> Tested-by: Robert Marko <robimarko@gmail.com>
> Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> ---
>  package/base-files/Makefile                       | 2 +-
>  package/base-files/files/lib/functions/caldata.sh | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/package/base-files/Makefile b/package/base-files/Makefile in=
dex
> d8e7c31878..5fb275533d 100644
> --- a/package/base-files/Makefile
> +++ b/package/base-files/Makefile
> @@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk  include
> $(INCLUDE_DIR)/feeds.mk
>=20
>  PKG_NAME:=3Dbase-files
> -PKG_RELEASE:=3D220
> +PKG_RELEASE:=3D221
>  PKG_FLAGS:=3Dnonshared
>=20
>  PKG_FILE_DEPENDS:=3D$(PLATFORM_DIR)/
> $(GENERIC_PLATFORM_DIR)/base-files/
> diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/=
base-
> files/files/lib/functions/caldata.sh
> index 6862da7164..8b031e29cd 100644
> --- a/package/base-files/files/lib/functions/caldata.sh
> +++ b/package/base-files/files/lib/functions/caldata.sh
> @@ -64,7 +64,7 @@ caldata_from_file() {
>=20
>  	[ -n "$target" ] || target=3D/lib/firmware/$FIRMWARE
>=20
> -	dd if=3D$source of=3D$target iflag=3Dskip_bytes bs=3D$count skip=3D$off=
set
> count=3D1 2>/dev/null || \
> +	cat $source | dd of=3D$target iflag=3Dskip_bytes bs=3D$count skip=3D$of=
fset

These lines should receive a short comment directly next to the code, as ot=
herwise somebody will "improve" this by removing the cat again when nobody =
remembers your patch anymore. I already see a "remove useless cat" commit t=
itle in front of my eye :-)

Best

Adrian

> +count=3D1 2>/dev/null || \
>  		caldata_die "failed to extract calibration data from $source"
>  }
>=20
> @@ -74,12 +74,12 @@ caldata_sysfsload_from_file() {
>  	local count=3D$(($3))
>=20
>  	# test extract to /dev/null first
> -	dd if=3D$source of=3D/dev/null iflag=3Dskip_bytes bs=3D$count skip=3D$o=
ffset
> count=3D1 2>/dev/null || \
> +	cat $source | dd of=3D/dev/null iflag=3Dskip_bytes bs=3D$count
> skip=3D$offset
> +count=3D1 2>/dev/null || \
>  		caldata_die "failed to extract calibration data from $source"
>=20
>  	# can't fail now
>  	echo 1 > /sys/$DEVPATH/loading
> -	dd if=3D$source of=3D/sys/$DEVPATH/data iflag=3Dskip_bytes bs=3D$count
> skip=3D$offset count=3D1 2>/dev/null
> +	cat $source | dd of=3D/sys/$DEVPATH/data iflag=3Dskip_bytes bs=3D$count
> +skip=3D$offset count=3D1 2>/dev/null
>  	echo 0 > /sys/$DEVPATH/loading
>  }
>=20
> --
> 2.11.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=3WSITc13+3Oy7y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7Bi8wACgkQoNyKO7qx
AnCgMRAAqfZCapCz6ZrWZQfjiuZyOVH9Se1gVSrovrRcDrpPMeTP3rx7OJKNKaFJ
TYX0ScOg7oxRTbiFrE9zY5fh2LpF3W93onjaogj2zDjs733AvDrveiN7btg0rmfJ
zUUOCtN4Bajle4DB2snmJNRqgUrkeMqe/Okuk04jLj6vhXF8I0cn1GHNlL3PI73o
sDWV8z6c3LnE7KjImRVJJ4FvlWdAQsOkYWGpcCw247hNge1nn6PngsAXqz5H1IyJ
l2HsrqNLkSavOYqmFdMdQSkYjt5tZDQbCTrpOZwA09DKiAVgkQOCIqDaKyChsIqX
JoijYu2NIlTGGHmJbQIuk4oYDlw0B2vX4NtUfsHvqiLDm80hJaZfecbt1bkeeZzN
q1cONp9BqYBRm1BynVsFkMDL4o/jd04kVP7amtMsjXljMsEXcalHU4MVWOitWknF
qqWegAPZdor3poh6dQuYMSmp3sEaC2gr15l+mWm+lpUSWKUaZvv8R0Ob5ge5K9I1
aiHjBaUbuAUqD7tZFe2eRUqEgEg3BijhTpQv2gaPtu5r2x0OZre51tyXzuoNMaOd
585nr0rKe5Za6sCRbWmBLXxxKHIiga66gDYiuzUvD8a0DSPEl6/h7sqm+VMy6YS+
wlJXspv0PY5qVy+Ni7fMMf79eJHY0JlIHjsxZbHMfGfHYeYbAck=
=XYA0
-----END PGP SIGNATURE-----


--=-=3WSITc13+3Oy7y=-=--



--===============7800468861074666094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7800468861074666094==--


