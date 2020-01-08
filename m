Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EBA1346BB
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 16:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BUHyVXi74qfCEllcAy26m1qfLolEKeAdmyFa5TRLpb4=; b=D2WWBdp7rVhw5d0WM+8pktJj7
	6FoKj+htYduxD8gmf+dYVp1FNv/qmf4iPru/BNSx+aeXCos1S6gy7xW4dVI4x33mDtQTQHmRpDz+9
	kFhdswbjbORQhm62OViY1OlWaZzjGfqlYzz0psWwmBpcnT2eagt4lCl/i2GhKuGiktSSfI6eIvHmm
	t9K17GFUijLIhy2ntAGavGlfTm446rnq2h4oKoWTXL8G8S4/3GfyEZQkc1qSZHQSGwa9E3eKXuu3L
	u5xQRnNrZgVAk3zt/VJqjL0NRsKJacFyV6+taUj0jzBvyNdJQ5V/jBrhXZ8Nld6EL6LjYvcbx6X49
	oPLXc5CCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDe8-0003gn-E0; Wed, 08 Jan 2020 15:53:24 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDdy-0003gM-8w
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 15:53:15 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MeDYt-1jNSOf1Us3-00bL3q
 for
 <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 16:53:10 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20200105164319.4035-1-freifunk@adrianschmutzler.de>
 <20200105164319.4035-2-freifunk@adrianschmutzler.de>
In-Reply-To: <20200105164319.4035-2-freifunk@adrianschmutzler.de>
Date: Wed, 8 Jan 2020 16:53:10 +0100
Message-ID: <013801d5c63b$ba05cc90$2e1165b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQJGJq9yddHcdKR3mYo5DKhKTiIi7AB98M37pvw6AIA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:Fb4MG7lrIdwWivXo0TqIIGPy5Lmm+6tyqJi/vxriySXxjBtEc2V
 Nin/ZRi3bWvxXlF1jgjxQSw0mXB2mK+8RMCAXj1V/F0S6n+u14B75tpRQXDzrnaa6Rq323K
 2IKAkwK7KrK/T2rfvQPmaST5eRTsTJs0T2upjUWxbM9JLuEinx1VKgMM9k5ELvgeCAV/g1F
 qGLXgV0K7rF4yQHkMZHSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C2F6VeRDih8=:Hy9JyibIQHyKqHLTPArXyV
 3SZyowFq441KxZBeoyhpmxu1cqv2scP2yjCfKIrCvMI4RQP2HICbnfPQxqdHsINlGmrVxjQJb
 mMH1pMoPZZLQAKARse8jWQ9rQSTGBT/uajCDOkSo22CfYX9kfSIgWXU9GQWsMO2P9HWhK0T7Q
 yImyo+BFp8XyXkYdgS4l9PzxcSj8pbiNWeDwDI/eSFlWEy3F2/pFgN56jKdYS4GAlOx8mwL+Z
 KwFxRkd+IEBaMJyYFcendkfFjOY38NHgBYbv9p36iVu4wN94XcBG3TVw9RJzy8HhB4BpXnXEP
 H5lhcSSsXsSwl35jRyeDtH1MNN9z/NO8AJsvVtiyEKyLV2CWOMTpoDDVo3PQLL5LOR+wu00N2
 OHeG9UOSCmOOP1RB412vKBKGjqTFT5L7XaUD7sltw4dWKurOVCJnUFDzmmjP2DIMIL57htbq8
 KQRTEjm6UI7nM5Jc+WnVgPbS2+tXWbU/YkDwhULafumWurRnmbYFy6OPH+E8EizMVobOpTD7/
 MQ/PfaxScnjo7KVLJ32eVPGfiJQlCO6E3g6Es1PpQzeAjDqqU1VHbk91Jp3y9dgLzjPAmn7oI
 AfqHBurE06DPvhSCcohc5muxm8KwcMUxCONQjxlsnalwsh98wnx7CZn0/WovNokHTysnlP0cD
 d+Y/aXQ3q3HFWmA30RopbWekauA17hLEWlOW3BjKv8q5tup3iBgZXO39t2EhiKauhFy8Vd/VM
 13tnsdxM83yAFwLLmkqrFw6VSDqhLrRm+WsMRPwC6QBsqeSruzXMir187i8EHOP5Psco/YBHC
 2+d6eUJXZA4jt8SKhyluIoZg/EX9Qb0Qo1KtuHzQKpvpHHfzaNh1/bGrLYv1KciT/k+V1Ap/g
 lVUV5U0gknwX9dNgu+CXk5bOZM+jORYMUPX9jUUpK9VttG0lrtqpgIAQ8LY91CYn1xVmeSkoq
 SgIr2NQIubYZJgkn5kDeg+ve6ttahoXLkV8J+HY5CBwhplq3/KF29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_075314_614969_8988608A 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 5/5] kernel: remove obsolete kernel
 version switches
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
Content-Type: multipart/mixed; boundary="===============4311698017812284824=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4311698017812284824==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=n9xgexAtIBpnBl=-="

This is a multipart message in MIME format.

--=-=n9xgexAtIBpnBl=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Adrian Schmutzler
> Sent: Sonntag, 5. Januar 2020 17:43
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 5/5] kernel: remove obsolete kernel versi=
on
> switches
>=20
> After kernel 4.9 has been removed, this removes all (now obsolete)
> kernel version switches that deal with versions before 4.14.

I've merged the rest (target and kernel 4.9 removal) but will keep this par=
ticular patch in patchwork a little longer, as it's the only one really aff=
ecting other stuff and thus posing a chance to break things.

Best

Adrian=20

--=-=n9xgexAtIBpnBl=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4V+uMACgkQoNyKO7qx
AnA6nQ//W8vDO6SPLVwt2jqnDh1GNQgIViPVJI3Bcq54/TImLbM32HUNU+h6tg3n
/ldyZo+J/1qiVdQRjT+jk5nrNRh5bREiBzE7sRKL1t7HrZxO413sOxvmiOyDIv5c
EC4kRfX+ZkW6hOM+0W+ZfEYkZp4hCh58u5x/XV+1saYnQATSJtdDU0luCq8UjP/Q
A0bkOL2zRiLsMNHRVNOs1tkmzS4UQ24V4xEphOfSunSIZ6yZ6wouq+C3QewqH1ER
DDqfSous5OWMV9SJQmRi73q181FOUoXwfrF75Pkd18LKe65ALXzNHKzo3gdK5siV
8t8AB+E/X7LusXFeIchQFL+RZkAQn5vl/JDffaf3r9dpJOIaVtvWKmCxJwgwcls5
Bp1uN8EHNvITa4grMK3NhxUEUX4dOChISzt2pARN2cdQ6G0U01IuixF8ez+S0r5M
madZ+vroEWASZCqsS13X5Tizcms2iMhuUyYmKRQyTLMV5p22NRezeATbr2wyyQri
wr5TpxGLWJ9koD0ZFaaoLF2gDOildRjKTFlxdM8TjyNiALU8DkSW4IpRK4SDM1jE
BsX6E89/n2HxdE0DhtE3LrkGIuh7c4A4/Y69TIUu1I7MM5d3EzyotgmCiBtyhCSj
+Zk3aHTDpxN3yH7jrDOWECx0VsfHERuv+FOk0M3jeW8y61mkeEU=
=efBC
-----END PGP SIGNATURE-----


--=-=n9xgexAtIBpnBl=-=--



--===============4311698017812284824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4311698017812284824==--


