Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254E31B0DFA
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lATpb2wBtePEJCsSOEl1ynF8ltiVWramnEyDdLPm5KM=; b=oDEVAzI/y5+CiTvAJ9x9w3rw6
	bQRAMS2/rxptJ+8UIqMEsoTN8URrViEY4rLNdAHXo4djE/Z60Zccv5wZC9933DRdkrTqPiZbqoAs8
	dYRrEeYx56mo6R8JwVT495hZ8rn/tzZPLBRk5vUg8j30kihMqJvzkveHlA783A1IyTRrmTpN79rZa
	/ZuLXT81OBiEKbz2TwWdEjoWff7pOIAZzes4iSp22q/TO9fHQGp4ZtGnY/Ca52B0KThR5ePQUEGFt
	8XJqkEhYFER6qiQRdP5Ge7VPtL5Rh0+jbsk6Ic5N3v+iwkjmJ/2HQ728nSephawdYHHwoBiJoqz0V
	kQGi/+BsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQX75-0003oS-49; Mon, 20 Apr 2020 14:09:31 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQX6w-0003mS-1V
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:09:24 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MY5XR-1jizkA1Rjp-00YT2M; Mon, 20 Apr 2020 16:09:19 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-12-hacks@slashdirt.org>
In-Reply-To: <20200420133503.18700-12-hacks@slashdirt.org>
Date: Mon, 20 Apr 2020 16:09:18 +0200
Message-ID: <016c01d6171d$48f0f650$dad2e2f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQH9rhEV/dFWOkGBLi2xOlxjqT5TbgMQMhjcqBpcbMA=
Content-Language: de
X-Provags-ID: V03:K1:BSlDzL+yLxOXAx+815SBfSRhZnVIbgP3AhNKH+ywHErrS76D1qr
 2GdG5i8/fVtOPIHpIxc7gQJ+NGRlmXv0jU3H3IrP1OT7eo86wS/ZluqFzJ7A/DXsJlFuqwn
 P1jjtjGHwsJMFtP8iTLNKaSo8B4TA525j5zsXIvhNrJYpQRidyBwpQyW/+9YjEsKBF5H5Zy
 vvFC4QsuWxoRTWbvpmifg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y9sTVnHPVnI=:FkI+bgiGDd2kN41VXRJLVO
 JlOmC/V68iocJOSVlokxQhcTLhwG1lIZ77I/XuCmZGOu4aRNjnEulS4BKoaNTQ9scKfbbTmUl
 ehspT+MKkW06uMjWBOjgonwS4Jm4VPyO4JOSPeNq9qjCI//JdUJrk407UJXG449lOqMflMkCI
 t9m0PUCDPhYDFk+9nF8BeIsOKixhjRANqc/p71NtBr1pCzEKp7wjGXK0D4Nv2/wWOxBv+EPZQ
 1tws3jE1FlHs2lVCF/d+Uur94WNFAXa4kRaopYpiVTnFn0GQy8P9fiYQ29w8+ecE0wlyWWxnj
 ZLofN5Rm1xy1NUG9xgm5Ug8Jz1GKuDK7lu3YMtksdswwJlxVHFx/5Qo2KuezaEN4bNvM0AAO3
 LawvI3xqD07ogFJDTmdl3yCP822xu6Esor8HFp26M/HeGRropi50FFcrLEvIhTQnqcs4YaPDU
 fGTw8wPe0I828Y6rK6vTQIydyNJj+6XGPpjbX5d1A8h2GG4akPfNcuh4hHF1A43Op0hRN8jah
 YLc074fcMUG6kwlF0zrir4b4Kra6Zk4/s0O1ZkOWeauFdiMrWaQKr36a0NqvIUJzeHq9Z7q0H
 pTpy/lsiNmzrXmnvJOjnQE/16VuQEh4R13lxJffEtHiFAmJ4sZmz16qaEZ86PhuqCOdwoM5sV
 10ahfe2fYVjwK6MER/uZWxWQ4XNtgNr+GtEb1rDhIPwE0bBAZH+7G5ZIIH6kkq36BfXA9MQU/
 XPV86fhqsCMEd6sggD5iDvMAWoliBzr757OjrHpcJECUi6Msnsn7LC6/JrIGmPVARWlFHxlPK
 KL+7zf37XhEs/b2ZRamJ7chUry1TAOpXb5F4qbpJIhsXaCeoO1X+p2kUA1xkd9vbnk2Cic6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_070922_369861_F442BCCD 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 11/14] package/base-files: caldata:
 allow setting target file
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
Content-Type: multipart/mixed; boundary="===============0206943195619075099=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0206943195619075099==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=SHLGsmijz50QGy=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=SHLGsmijz50QGy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

I personally prefer
[ -n "$var" ] || do something
to
[ -z "$var" ] && do something
but that's pure matter of taste again.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Thibaut VAR=C3=88NE
> Sent: Montag, 20. April 2020 15:35
> To: openwrt-devel@lists.openwrt.org
> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>; koen.vandeputte@ncentric.c=
om
> Subject: [OpenWrt-Devel] [PATCH v2 11/14] package/base-files: caldata:
> allow setting target file
>=20
> This will enable platforms to extract caldata to an arbitrary file, or pa=
tch mac
> in an abitrary file.
>=20
> Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> ---
>  package/base-files/Makefile                       |  2 +-
>  package/base-files/files/lib/functions/caldata.sh | 29 ++++++++++++++++--
> -----
>  2 files changed, 22 insertions(+), 9 deletions(-)
>=20
> diff --git a/package/base-files/Makefile b/package/base-files/Makefile in=
dex
> 156e7bc8b9..f1f0f17a60 100644
> --- a/package/base-files/Makefile
> +++ b/package/base-files/Makefile
> @@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk  include
> $(INCLUDE_DIR)/feeds.mk
>=20
>  PKG_NAME:=3Dbase-files
> -PKG_RELEASE:=3D218
> +PKG_RELEASE:=3D219
>  PKG_FLAGS:=3Dnonshared
>=20
>  PKG_FILE_DEPENDS:=3D$(PLATFORM_DIR)/
> $(GENERIC_PLATFORM_DIR)/base-files/
> diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/=
base-
> files/files/lib/functions/caldata.sh
> index 3bdb1e4dd5..e9349c7eee 100644
> --- a/package/base-files/files/lib/functions/caldata.sh
> +++ b/package/base-files/files/lib/functions/caldata.sh
> @@ -60,15 +60,21 @@ caldata_from_file() {
>  	local source=3D$1
>  	local offset=3D$(($2))
>  	local count=3D$(($3))
> +	local target=3D$4
>=20
> -	dd if=3D$source of=3D/lib/firmware/$FIRMWARE iflag=3Dskip_bytes
> bs=3D$count skip=3D$offset count=3D1 2>/dev/null || \
> +	[ -z "$target" ] && target=3D/lib/firmware/$FIRMWARE
> +
> +	dd if=3D$source of=3D$target iflag=3Dskip_bytes bs=3D$count skip=3D$off=
set
> +count=3D1 2>/dev/null || \
>  		caldata_die "failed to extract calibration data from $source"
>  }
>=20
>  caldata_valid() {
>  	local expected=3D"$1"
> +	local target=3D$2
> +
> +	[ -z "$target" ] && target=3D/lib/firmware/$FIRMWARE
>=20
> -	magic=3D$(hexdump -v -n 2 -e '1/1 "%02x"' /lib/firmware/$FIRMWARE)
> +	magic=3D$(hexdump -v -n 2 -e '1/1 "%02x"' $target)
>  	[ "$magic" =3D "$expected" ]
>  	return $?
>  }
> @@ -77,6 +83,7 @@ caldata_patch_chksum() {
>  	local mac=3D$1
>  	local mac_offset=3D$(($2))
>  	local chksum_offset=3D$(($3))
> +	local target=3D$4
>  	local xor_mac
>  	local xor_fw_mac
>  	local xor_fw_chksum
> @@ -91,38 +98,44 @@ caldata_patch_chksum() {
>  	xor_fw_chksum=3D$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
>=20
>  	printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
> -		dd of=3D/lib/firmware/$FIRMWARE conv=3Dnotrunc bs=3D1
> seek=3D$chksum_offset count=3D2
> +		dd of=3D$target conv=3Dnotrunc bs=3D1 seek=3D$chksum_offset
> count=3D2
>  }
>=20
>  caldata_patch_mac() {
>  	local mac=3D$1
>  	local mac_offset=3D$(($2))
>  	local chksum_offset=3D$3
> +	local target=3D$4
>=20
>  	[ -z "$mac" -o -z "$mac_offset" ] && return
>=20
> -	[ -n "$chksum_offset" ] && caldata_patch_chksum "$mac"
> "$mac_offset" "$chksum_offset"
> +	[ -z "$target" ] && target=3D/lib/firmware/$FIRMWARE
> +
> +	[ -n "$chksum_offset" ] && caldata_patch_chksum "$mac"
> "$mac_offset" "$chksum_offset" "$target"
>=20
> -	macaddr_2bin $mac | dd of=3D/lib/firmware/$FIRMWARE
> conv=3Dnotrunc oflag=3Dseek_bytes bs=3D6 seek=3D$mac_offset count=3D1 || \
> +	macaddr_2bin $mac | dd of=3D$target conv=3Dnotrunc oflag=3Dseek_bytes
> bs=3D6
> +seek=3D$mac_offset count=3D1 || \
>  		caldata_die "failed to write MAC address to eeprom file"
>  }
>=20
>  ath9k_patch_mac() {
>  	local mac=3D$1
> +	local target=3D$2
>=20
> -	caldata_patch_mac "$mac" 0x2
> +	caldata_patch_mac "$mac" 0x2 "" "$target"
>  }
>=20
>  ath9k_patch_mac_crc() {
>  	local mac=3D$1
>  	local mac_offset=3D$2
>  	local chksum_offset=3D$((mac_offset - 10))
> +	local target=3D$4
>=20
> -	caldata_patch_mac "$mac" "$mac_offset" "$chksum_offset"
> +	caldata_patch_mac "$mac" "$mac_offset" "$chksum_offset"
> "$target"
>  }
>=20
>  ath10k_patch_mac() {
>  	local mac=3D$1
> +	local target=3D$2
>=20
> -	caldata_patch_mac "$mac" 0x6 0x2
> +	caldata_patch_mac "$mac" 0x6 0x2 "$target"
>  }
> --
> 2.11.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=SHLGsmijz50QGy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6drQ0ACgkQoNyKO7qx
AnB//g/+MjqFaQwS+s17jtSoTupHZQcWhtGdkRgS3oBysv6nrTKxZ4ektzjJsYA9
xvRqzspq1LwPRci9Kc7nR6lZkpngcRlwtZfrqzGcaMfzdlHROGv+8C59SVZfOaWs
dRsoPKOYfI8mSKOO3iATUaeQerZPJwKUqveG8RJVzTqPneYXksgt/y+JiazwMiqV
p15j+JPq9slVZ21iy9zYxtyjQfiIRveiitutFIpK/b4Xp99hIiOeooWN0vS0Rvsl
lnBrP/9zdUTFWdcBN/T9Cjd4aoxDLRa9yBa1DSovPKXTZpEPhRQ5i9h0LQ8tbYjg
bSjXFvyEmsJ2VtFymTKGoIYZT7CE1bLUAWyHl+EL9Bnjz4I802A1kkd0WqrxN3uC
aBl0GcgpcDdLIU39GaJULMD30oNxBGU3U0uzL/ntQ0L92GHlrmePiD0WTigVrtUd
f3XaFtu2PVCjhIVRVGJT3EwS+kqatVe6St7fYaU7mkXV1+zdijYwr1HPP5tglKdx
jtu099fb2Dvl9LG04EMNHLZL1g7p9wEOzF0jHPtQmDp/BWS12W5iH+ufF4SY8F5c
EZ+RGlAg+VBIupZfeL+Ld5r6n/HdaKqN2LDH8LtHIqzbWmShQWNlPeQ+te9oVVVz
VsPJ2cFxsSD+nWMCzPKewYbdCp9crxkJgPZ+V1x92YX83UHsvyE=
=LJ09
-----END PGP SIGNATURE-----


--=-=SHLGsmijz50QGy=-=--



--===============0206943195619075099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0206943195619075099==--


