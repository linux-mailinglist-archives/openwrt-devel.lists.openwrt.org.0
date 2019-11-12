Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F598F9291
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 15:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eqgkDa2iS1yJDtbMOzyVDI+l4gLnDY0PQFCgyqZWb4U=; b=oIU
	8L8IVK0HEEhMbsL1IhvYKpJwNYiwvFNUOAE3Iqez3l7a0bXlY1lvBeKgLmgyDa+TSQ4bhLpeccrd+
	cgzpf42R7+cR9gipDvHyzC04GNO2AH7+NOuSiuKe8lf16EP2gyATIFriSJ4gMZyoELiEmh428ea4Q
	JROz1iOHi1+NRqtvqYAtTO+79db5+94YV2cMXnXgQUqrnYxvIb1WpsNEfbghA95lp6zViK/o6O+Lj
	lHCmGE6oRBn4ChttAcxY33zqEt9HX9+vrRupQIE/oLyg5l95z3/YSdq+X0Nk08hR8sPu4ZemSEo8I
	l8mrC0OgBWiTma9VmWBI+JwnfrvIa5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXC1-0006d5-9q; Tue, 12 Nov 2019 14:30:53 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXBM-00054z-EQ
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 14:30:14 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MI5YN-1iicC60VJX-00F8hX
 for
 <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 15:30:09 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 12 Nov 2019 15:30:08 +0100
Message-ID: <002801d59965$af6ed2c0$0e4c7840$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdWZZWKY7aBcf8s3TY2r3uavYYpDfw==
Content-Language: de
X-Provags-ID: V03:K1:ZMM/dLGcQykDd8D2apxUmXwdtQevOqr6JPyaz+4ctPArcBizmiQ
 HOMYa3KB3hajr7gikIYJ+ThiOmNQ4qUDW0IpjqyeEe6rZHA48FvKVOknhg9bHHrW3qNROWr
 ehNFadWw/6aYcDwSzLglC5cYHtlPCipKgW0zbmV8iJk0zieyEy+n7h1Jlg8DuubinVmLF9E
 SQJyV6sT5MDGNtuApOEsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O//RSObHHBw=:vH6eWHST/95JrAdjoccetk
 4vdgRa5upzu+76zdc3SK/RC9U7yRJ++HzwftWaJ7rB48Jy8VNiGxCDOLsx753dn/93Sy2pmi1
 GRd9rkLFKmj+P7ZxpXwcVtGHFaQF1Icnvi7ra4Ek+Np3L0a7CWg/a8MBJgcjkkTRBLL7+TXYY
 GecvB3904TyOLfk7wWaga8uuXefQrGBMlPGO1WUYjtwySdPEqBBb7z+3NxYxvtLaxDcO3O6Fd
 xLnX72Z6T0GS2znqDFUVhfwtqzN9Y787ro0s4PUF10gtmZxoOXiwV5oaxHXqgN6Uv2aux54Sh
 VNwc4fzNki/PPaz5H/MNVPDpHFtbGC1Jr/0rJHVrBqx6Ro3U0iL3yWHk/qkug1xPmf97ZTDzd
 Vlv/xq+ZVE3hOPoAbYQmkQ5s7/AVmAN+otAvD09RzEvdxLOZJCuV+v4IDN/S+cuFnIjuTkEiw
 QVvqyZpGNqmxdywMhtx2CixBfpUQpcq9XGhdRDr8g0fjfiKJ9mdAt32Gvi1wphZGjDbFiF/Oy
 tEmykZdcTojSn86mPMQu0AhoU4J7aVIm0SMFoTHsq7Q2LfbURbcDZBCCfzWefCWb9g9ctab3G
 TkB3qjJCy2BDPG8zO0R5EL2P/7O2R/lUI1tSf/t6xmEjqoEfamHiTXGFbYiTp9fBH17KCtn3b
 MffDMdEzSRiQNjBBmZk1LVhsAhn5TX0UhrO5kBGHu88EDduuRRY+7y5v5vMCMTPVWrBTZotoj
 d9kaqQHk9W1Jvg+UZ1GYKHKKDUSxQNKpNJcA5Uv0MlSWG5nK0skAjSjDpuoBrQCwcze0EBEba
 1OG/HLI9+exk9aBNWKB8Lf2/cQPXDBXQMNeFhF+YR3yVs1DQ4dJOCd6/WpGMmS/7mmqO2Gh1u
 zg8QlWj+j6aarSJKKJGH+6ZkmzGfaKr8YGTb4gozA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_063012_791706_49083FD3 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] dts-v1 in DTSI files
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
Content-Type: multipart/mixed; boundary="===============0760329859018656486=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0760329859018656486==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=sTLJSez0eM0VUf=-="

This is a multipart message in MIME format.

--=-=sTLJSez0eM0VUf=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

is it correct to put /dts-v1/ into DTSI files?

In the documentation, it only says "DTS" files, and technically all DTSI ar=
e included somewhere, so it should be enough to have the /dts-v1/ in the DT=
Ses?

Best

Adrian


--=-=sTLJSez0eM0VUf=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3KwesACgkQoNyKO7qx
AnDdsxAAnKfcEBlSt8eP2qwd7DG/Gc6J4A17n4tt3gbicDIlKKMnHsS44qupsWgC
w3Y+BuIU52KTTAaVqxO5XFVNE7H+LgAPGgKWUrmutQCsZXYLdXYfSU/l2+o/hjLN
F/2uAUjh936KpqoZ4bABh9EdwLE3zhNrFMY22sB8JhkhyYM11vKaL2JglrCjiZoT
tTpSB+1+COASNybJilcyUs4QItb7iin/0X9j8gnJ6ditaRDtYVEYv/nCquUdEd6i
C42eb0RrvQdMyh3QozI+oDUumg/uT334V4MhWy4Ld/2z3Zs69Xe1r2xpb5Fwb33c
+K4atvtbYt7TuPwlYKEUfmXyQoYgmYRqbCjW1m6s3y0Bt+A07YqY2EdxIaY7t9lI
0OjrHPJ+0jdpJIta4hCNvwfRGYWj0RPRqkZMQ/DupjxQpUJoR3S7cXAQvkDzFnbD
AJVlSaB2Dr74wZ0t1j23hXUjcQUYyJtDlNC4JOF6kLHI5xRcetGLXSPv0GJbueJj
jSTUxz/WVnhBj0lHUDoC/CFOualSFlR54HiiYtBT/fdIAh7tussEWoXnkd9bJ0wa
bo0/blAwgzixcnr+zkGzagBwmSFn6ARmseKMriojlD5D5fq3WfC076wifjbk5DoD
KvwDl8DkmxsjW3i6ck9NCqg7ZR5wmZpy9GQelBIqmOx8ctl8QxQ=
=2plI
-----END PGP SIGNATURE-----


--=-=sTLJSez0eM0VUf=-=--



--===============0760329859018656486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0760329859018656486==--


