Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEE4141857
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 16:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w43t4dLSMH9JkKDJ5pNuHXCSi0N2RqYu63OBoRI/odw=; b=Kd9vV4+XhBFMWMma/l3MT/RM2
	1X263hR1o0mpS0fvoXrZVJv1OreaIwYRGV4+63TD20AU3tcCGPz50s9be95uRd4DpU5PNX6GglwJH
	zHvGroYQlXnmCteXP/7iwPbGV/dDdaH/UluHlqmzw26GGHWpxUHulil7NhjzJRwexuXlQQ1rtYEdF
	/D8vlu42RcJwx6nsm1OkHNy38f9KNpk0zZHeBK9PTB/pZS3w5eh0oWu/ssM7l3YbkrIKGkXc86aVc
	Z7hGXaPNkEbdTMCkXE37yEbmROwvRHkjvUNLFwJAnYK9drK6oDstWSFvNzr4B9mPkO45LCDCaL7KU
	30EfYfcGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isqDs-0007pT-J8; Sat, 18 Jan 2020 15:41:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isqDo-0007pN-PX
 for openwrt-devel@bombadil.infradead.org; Sat, 18 Jan 2020 15:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rJsHaprVzVaC0oKdbNY1HtCY3bBVklA7/P79/bWNHT8=; b=hl0caWihirWzFIWbJlJIHcKeH
 J+0t482nitSUzLmnINwmtran4LQGe1kB5CzZ4cH7yhn4pKzvtfqTmABjnKVxB/0QYOcuyAU/ydmmg
 /ELDLgCR9CaKVhyIMkjW0DEGWja2fdSXChEaquQb2w5mWwE6yr6r0D3ZFsPsc1zQvDTbwDUXLrnOS
 edOPMcZGlasvPxT7k+TrQzVtrNJ7TGwMD4TKGpnUCHxN+ewQi2rmT9YPgnxZXJcWCXOZivPRmPg4k
 9/bulN4+egPElCn5ds4Pw0wElcMqyd9lxxbffhlg6ZN3QwFXX0otX6RKNqtXWpxJGpAgLixVKWjEB
 eEmcm1upA==;
Received: from mout.kundenserver.de ([212.227.126.131])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isqEA-00023R-QQ
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 15:41:37 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MKsWr-1jDXMY119Z-00LEn9; Sat, 18 Jan 2020 16:41:03 +0100
From: <mail@adrianschmutzler.de>
To: "'Rosen Penev'" <rosenp@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200117044359.1923979-1-rosenp@gmail.com>
 <20200117044359.1923979-6-rosenp@gmail.com>
In-Reply-To: <20200117044359.1923979-6-rosenp@gmail.com>
Date: Sat, 18 Jan 2020 16:40:59 +0100
Message-ID: <006e01d5ce15$b0c4f2f0$124ed8d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGrvOi4PEPNLRSSGVAOhN7e64JKdwJZWTN2qDHmMIA=
Content-Language: de
X-Provags-ID: V03:K1:/53SXAMIIIKxFb6eW04vF2ZwG7oPoFXgGXJaWyW7VCJhbEOXLTf
 7M97mJU/26M1DKGpe9nU+9qV9jKEWnGFJ4v1BYNWE7bN1XAxL17SWzhavS1iqHciXke9tL4
 moE9ZFlI2t4YfudcRQUMK5ccG5qM9OspBa7Bdnla+KxO2QfMALs5/J6jeS0ukqtC+LxjC6c
 +5qD1OUK9saKK96P8DZaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3EBaEZ/97Fg=:Ouy6lstQSgQTZntfTMtepw
 8WYk8cl9+2NJPbQ4WArcM1C+P6nk0NjJRioyPL/ol6ryXLwhwrtmxB3tPQbYSJFnwbZEEDiqH
 lx8d/T3j5V3Z87qvRmcHMCtQ6q/bh51qMFosl9SEUwub+i7qU+5vxq2pleQ9amzv9p/PM7Ixv
 fkdgGqeaAmD4tF/eBopoq68p4guVzfhzc+vN8wr0M1L71trkjFnjHI7qjJVLVpafZ4fvu+aaf
 8WDx0bNyM3eAeIcLlEpUoXLKQ6zkYvTm2yX3fKVyUo5Es1vxGIEk89pXVk5JM2G7ezPDLVeOr
 JpgmsI2njAsjY5n78NpqeB64l74t5h/J9h7msCOgQwj4qMjLpR6Y+ElnLjjeIMMEM2pQPdT9R
 99DpsHYD4ipF0vWoIv25S2Jc+zHFEmY5uicc2+gH/7VbXKf2pIPs7XBa7ChQ02KVa7EbokSmL
 NDuLjUBUzhLOLChVgX4S7RRRvLuVAZSFeO9+KSnnzbY4rp1jM+hxYvYmQ+l72Ec0Mdcl0ml8E
 6Waf/w0mJUXttnBRbC8f6h7+jX5oI8CxWMe5Z55HLfC/hhxa/YaBChUpIDz3eo+42SEm7FI0l
 fyGD39lLXm0t8lz9LYsKTJqTjEqnRdJXBksWTBoZL8KPfOo/dWm/MIq9zEvA4dfskjszFrW34
 XN4kG3vNj7IjuQRJ+xS+qghV0TumrTg1BAE28J4ZD21UblOBVF0F/lh00fNnmkEQanYni8fkx
 498JoaJ2d81jNSJ9LGmew5DM/0gm78TckxV+sseaya0tgGxo3jlh8CCOUNIguBWuJBp0eT2Ug
 pHYki/gpPNXhG8Olub0e1HZWTEs4ZykjPXj2/twgkZXBSW2jB8qSDBHGyZZmPRvxzmDtLtB68
 7wNoHWImKtZZYsTIw12/8NhaIq+ZB8U6Thyb2cpKo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_154134_925564_DA67E6A6 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH 6/7] base-files/functions.sh: do not
 iterate over ls
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
Content-Type: multipart/mixed; boundary="===============6904652611391682149=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6904652611391682149==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=0mmTzLLhQeMsDM=-="

This is a multipart message in MIME format.

--=-=0mmTzLLhQeMsDM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Rosen Penev
> Sent: Freitag, 17. Januar 2020 05:44
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 6/7] base-files/functions.sh: do not
> iterate over ls
>=20
> It does word splitting and glob expansion, which is undesirable.
>=20
> https://github.com/koalaman/shellcheck/wiki/SC2045
>=20
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/base-files/files/lib/functions.sh | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/package/base-files/files/lib/functions.sh b/package/base-
> files/files/lib/functions.sh
> index 82a2169260..048bfd2b2a 100755
> --- a/package/base-files/files/lib/functions.sh
> +++ b/package/base-files/files/lib/functions.sh
> @@ -283,7 +283,8 @@ default_postinst() {
>  include() {
>  	local file
>=20
> -	for file in $(ls $1/*.sh 2>/dev/null); do
> +	for file in "$1"/*.sh; do
> +		[ -e "$file" ] || break

I personally think this command flow is counter-intuitive (having to filter=
 the pattern if no file is found).

I prefer the ls version and would reject that one unless somebody else like=
s it (and says so until Monday).

Nevertheless, thanks for caring.

Best

Adrian=20

--=-=0mmTzLLhQeMsDM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4jJwgACgkQoNyKO7qx
AnBLZg/+OAnDfGY90rZzsB4rK1HE3tuPxJNXsrMDmbnx57F2ise0FOivGrfFU9yr
fb0vsRX84Uw/jM0qBV1Wj/VMmR9xslrT6Ed5PZ5CsJoRzTGrnDwkBPbqiqTmE59p
C3JWaY3OCN063+NQneTh7KBsNMqBY2y0EbtzhkZ3d9hSC7TKhKCCJnuj66qRIDHY
axyOEdXLwqG0fzeYXZ0CxVY5QH+XwBl/MTOgb0f/Knxt6xXa8x/5y4tZ+iV2hWBm
N22P7NWA0HH+kCnes+LBM0qggI7tiBIq+hZv7F6cwlJI9nDeIfeSg1uZHbcCxMON
IsqNxyGxr1sh3/Zw2mmiShQ0wTHNnmzS1lsoubkpR7Iou15C2jn+OoJy7R7K+8JN
phqPMH67QTVaKds5pVvb8ka95pTY3QHpmvsHgJ900IhxWXm4TsEaEi9+jNHAyk2A
yILS3Ftqj/wTi1okn0BJNsiHF5k3rMKKjIqMpGyY0w8wXF7niAqfUcsst0I3Re83
pjdvsHzmjgp25uWVqV7Mbq8bfBFXljIWFV+5one/TJ9qgdK5XEfMxILmYb+uQXGS
IA3gXHmovN6VqMdpn0+oBI3gzaXI8yFNDiVbRvOspkluU+6PBPZTLC/P4OWltNlQ
AxiCqRhhg/6HG7ihbdudYd9MxvlX7hx2nNL7WY38T9euoVL0zzo=
=xkNh
-----END PGP SIGNATURE-----


--=-=0mmTzLLhQeMsDM=-=--



--===============6904652611391682149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6904652611391682149==--


