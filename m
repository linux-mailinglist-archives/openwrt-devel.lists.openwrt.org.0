Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E461A1FFF
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 13:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EaK0RvU6RNgN90k0ER/6Da+mbj/ib2tiWWs8k3Gy3mA=; b=uBIFM9DjJl9XPMwL2lKiVsLqI
	0rgS7rO5L3GmZmiQOLpdlW9kBFlQLNDhnLA6mzhEoEp9gYoNirR5ZydsToCf2IwzVF2lkXIjahW3q
	6J0aO7kyptZK4pKPfgLK6dLWPYtT+P7dCuZhFqf8dvlhUGvf8JiqTPZGfky3kSJd3tX54BUmxAi3+
	cn4DeIWBU8tOcFSotkUjxwNNpMMdhnXTAjnxNr+LgsdN+b5r/41zXuHkeo6mtb5/Xvj4TP07xbd3H
	xOZaBuvLG7fFcqdZaqZgFOiBwNgGZV4WTFOX7Q+8JwW1pJpsKMVWgft4y00i6fCn7jDvRouvP1Xpd
	2uvkQAxag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM945-0004h5-3K; Wed, 08 Apr 2020 11:40:17 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM93m-0004eQ-CJ
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 11:40:00 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N0Fh1-1j82l20hsN-00xJ7g; Wed, 08 Apr 2020 13:39:55 +0200
From: <mail@adrianschmutzler.de>
To: "'Tobias Schramm'" <t.schramm@manjaro.org>,
 "'Chuanhong Guo'" <gch981213@gmail.com>
References: <20200408104716.3644779-1-t.schramm@manjaro.org>
 <20200408104716.3644779-2-t.schramm@manjaro.org>
In-Reply-To: <20200408104716.3644779-2-t.schramm@manjaro.org>
Date: Wed, 8 Apr 2020 13:39:54 +0200
Message-ID: <012401d60d9a$6c95f560$45c1e020$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQHkf13riykCMy8CQEUiyF1LlGSzzQJO+Ci7qD+945A=
X-Provags-ID: V03:K1:VX/hucKaN8dRy1Vw5hyRLrvOW64p+pxB8hl4M8meIrOeVYQUtvF
 L1Eyu8sVRxWezq9P42AedOCIPJLhW6rgb6azUY7q3q1b+sy6pTIZcwQrb3iMLK+ZzabWFW0
 RS1fDM9eXCsjmfZDFgmD/+57bgo+ncL9yyYLYZ4+JmZ0k/UMEB6OSiY1bIIiViaVjdxeka0
 LcWkwIl6dNGpz8dw1SlxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WD7pwSkYW5U=:nngUpD04tLKAA+Hh6LVrPS
 i5f9OL7bwuFPYe/W5K/rQCNfKoz4ura/XNp/4tG6sVy4+gTHWzicUm806FRvuhUaRV9vcWOCH
 EDgc+D+6ZpypESgcE4a8Gf42SpligoC/2dug6M2kvrgXAUJDrBoN6g8Gr7Owz54/e6EvlXQeg
 TjmO+xyUCdzI6FrScU/jQOkojDQnsr7JQaiAUCe2I6aDeJ6Tqa2Q502ETRFwssy1vzMcGLlos
 Rd/7QnqUGqIpUo/RK1vMvkI9/FwBpm9DbLbf+u/EFQAVlPC5cyrarS9u0IhhG9ZlhWmUJDojN
 SIiEi88iCZ9EeXGSvV82LBSbTBnsJF/bVeMA5X/Z7kWKOjf6AWOFPYWEp63kkKFaKRhCLI00y
 XY/XU6HLmEJZfSuipYZW6fdOJJ8PY/WFTDfe2oaNY3F2n0EL32hjet3E2RJAOVgKijTeua8Xa
 T5ZPr1wtbaJNY4AciYfmLjpDak0wFNTXCIRBNgTtR71RyjwQy80DsF3sot7BJf1NUty+5tsMt
 d88ik/udUZS89F/U5ow6P9Bjj86wFJL6UHWN/WphDUqQsOJ7Iv+AeypUTTaTSFFLj1ICKHxd0
 fKYzae6E3mbo/cGXsWdjQDx1v2nDeiYNjfXe5sBRvTNLSO+Bl++8XdhGhvUaPq5mh7xUNKnIk
 hw1NogvJ3DQypCIhZ6rKRnNnIoKe7y5m9aNlI8WjVVaIsi1umpQX6qmYFSg8ad//RAx7sRCsp
 nW621eEvSyraVYKqsY2FXPJOgpCsgGohmgj7FVS7W7Zbq3nfBVeLSwue8o2KmUZM/52sGbU9S
 48V2WupmnLmEaVYdh+Pmim1vk+AQfrhXrdEABb4801TdbzZ8+BZqI7qYzk24QHEsUKvk3qd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_043958_709875_FBA53B29 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ramips: mt7621: add LAN port mac
 address to rbm11g dts
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
Cc: 'Thibaut' <hacks@slashdirt.org>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============3757089357247009929=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3757089357247009929==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Si5UQnxXI4NSpd=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=Si5UQnxXI4NSpd=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Tobias,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tobias Schramm
> Sent: Mittwoch, 8. April 2020 12:47
> To: Chuanhong Guo <gch981213@gmail.com>
> Cc: Thibaut <hacks@slashdirt.org>; openwrt-devel@lists.openwrt.org; Tobias
> Schramm <t.schramm@manjaro.org>
> Subject: [OpenWrt-Devel] [PATCH 1/3] ramips: mt7621: add LAN port mac
> address to rbm11g dts
>=20
> This commit adds a mac address from the hard_config partition to LAN port
> of rbm11g.
>=20
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> index bcfce33a16..554573f30e 100644
> --- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> +++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> @@ -149,6 +149,8 @@
>  		port@0 {
>  			status =3D "okay";
>  			label =3D "lan";
> +			mtd-mac-address =3D <&hard_config 0x0010>;
> +			mtd-mac-address-increment =3D <2>;

That doesn't make sense to me.

gmac0 is configured to 0x10 +1, why would you overwrite that value for a si=
ngle port?

And which is the correct value for the port of this device (based on vendor=
 FW?).

Note that setting another MAC address for the first port of m33g is because=
 this is the WAN port, all LAN port will get the address from gmac0 there a=
s well.

Best

Adrian

>  		};
>  	};
>  };
> --
> 2.26.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=Si5UQnxXI4NSpd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6NuAcACgkQoNyKO7qx
AnDL+A//b0V+AZd8yJqUsS+DcT9Sixa0910VNbX2k1uSN2snXM9aqqGn4cjXaiCe
pgf2lJ2Bu11mz6PSa3J/J+GuECsh6+4rUFGP1Q0xT36b7NHQ9ndcoeezbu42kj82
bIUww6Jo7QFSNaTe3qbtuRe7zw1wo47WxV0CVfDyPz5pSQ5G4ljKKYlbAIGJD+u1
eq1OQqFh3rmUKP5jkXg4eFyXHF2h+SdjSRel+GyFVB2SjKko9yHga2l6jEYLyWeq
Tb/Go8+MHJDgd9/DGFs74lFCVIFkcgYbt+c0J+r/1ZAbbpeRAVseoFJdMdL8NOFw
2yP1BRedd6m/gFpY77uLeQD2uRAqohpYFW0s5ZfijNkPKsXFom9/1z2bNt8vz0jZ
bIW2RyR7f0G2c8NfpsCHp0WyCGTawg17k9hGeyqKSCKTKgNHFKBK1nN0NLo4EQug
cunjcZ66SkyRWIFMg92rEtjMr7FjcjfDkvtGFaMZfjoVu6KDM6Hgxx96uve04hKT
yxL0SOAYDFCHAP02VEWmJkY/w0/fdvJM+uH9LO0uVPrcaV/JURGS/xvgDqYKiffZ
sNwBzXdBzuxK5IN/4nY3x8KZuwRAbarwLCfPRvX10gbGjY6kPQkTI+wOV6VaiyQK
neMKRb5GLwseQku00IGqI5WiT8Ni4CPT/FstnS7GzzDKVcmS8Kc=
=lccL
-----END PGP SIGNATURE-----


--=-=Si5UQnxXI4NSpd=-=--



--===============3757089357247009929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3757089357247009929==--


