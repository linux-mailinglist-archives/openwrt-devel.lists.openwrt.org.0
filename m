Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6102F081F
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 22:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zTH/cpOANTo/J2kIwlLCbMrL2R/BcQLbcKUG57NT12k=; b=Q0U2hkCG5eJ1h4LPggZvTIwPB
	iTq59+0loe6IChp8XJz0Ghds1wONaJo015hIhNo1Dcyu++0f0vzpBfj8pQbSmGCyQTRQwTm6aRdPw
	1PlFKuFAVa+rlLwXZznR64m5Npu0aUyFiLNgiYaXRYRZst/5+MrcDlAMqfS8xc18QO+GO+UkjpWSg
	D/5xEoXJmvPGu0pXoPngMe28d7g2bdMyu5ZlUkY42wu02gWGgXMszr4Ua89jku+DXTSiuG/9b9cB6
	5yf/Y73zRxCPh1HrZi92Rkz6P9S5GUeBOl0vMWr+sUQbbc6qSljqxbjJazYMTso0jk6Iaa0T6j4b9
	Bx0Z6MVww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6EX-0003X5-HD; Tue, 05 Nov 2019 21:19:25 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6EJ-0003W1-48
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 21:19:13 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MsYzD-1hdZq71d51-00u5Az; Tue, 05 Nov 2019 22:19:04 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
Date: Tue, 5 Nov 2019 22:19:02 +0100
Message-ID: <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIj3krgsob+/zBNRWrfaNFjtbIbyKbgf+mQ
X-Provags-ID: V03:K1:KvLzSxDP+PufAnJVwg7DOQ+Htz78dzZ5QspnHr5n7CFsaAWwfAE
 LLnO8StvMk3T0tEuFdaJQmFu2K8yUVckeWrNhOLZI3wu6jpT+mNKX3gDQJvYQQbNfWx9itI
 VUTmmqwCO6eX+d9/UQ2mHTBlW1CQZUzXVriBmftrRBLH7pHNahYuDLoDMaReqRJPTpeEVtI
 tCke0+3gn9V9/6/+eqQJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tovRzqIPMMQ=:JHgrxx7Mdiw9lg2w6VzqJH
 606L6Vl2DfbWw2W6olMbIGIa9T/4Pns0LR88aDDjAFmbriKSa8tIbe6YNFDj6i8Bd23Roz4cM
 ACkbYznrRGyK6n6A2503B99d4TnRK90nlxVCkHFSkUYQdqyYKSpOfTbkfpIynDIIozLmX4YQ0
 1oMm2X0966jYw1UM3JQWw39fE+ZCYEaY6VeN+APMxDOzdNPGwTdL2HE4k180nboKdUOhXEfgm
 lWJw44P91Go4YIxfyjoPyBZh7W9P/bHAbd7AfH2uxLm4ng/qt8VWfyYnJYjKCKyft+ubP1NtS
 20a2VPi0sHnJPFIm3MrNdRTJsFpOUGhTUxfrcZ9sKzHu1Is/XeYnMxtXlY7/+GqXEy6nRyfjb
 Gw6WPG6NSwsVV4WTcInXMINWsXv0Dtt6gP0LlglUny7KhmCyspmejuJpDe6HFv7Mk9axD2B2e
 RqHGAoVk5wdhP008yOHkRZ8T/XIOhmqVmJYJ6mx1qgej9ssJR136Jtuc6a2AcUncJK3QLYXZN
 AVzdJgHO/m9OcrE+wnooWupo40Xm+SuvroJXe1e464IHrydASFDef6rD0mdwpXwcjmIfmwMh6
 +a5kxJYdXwsEU/Govw2vRsBoSC+7dH7ieOjnegev34VWsvdg1DzPo1GY9FO1B5F0WJGqNnmzP
 itMDwTbrkUJ7HPHkbtVrod961W8sEgCoQkohHN/0mBCo7ZBiuodkyTo9vNUaYDIl331NA1XlH
 F4B2MuzRE9XTCJv0VbCorUOYF6EWkQbwiHP9nGwq0xUcGnNRqZr5wlGahhZfrd2ua1uTON7EK
 Nk7g+xvmBnEWa8U1ZC+j457sI3hwED0iQOQAVi63C/AqJgcdYv/H0JxXXZ3D+KvFv9b0xZ8Zq
 mmmKRrb0RwnfxXtxQtSGjexditCysIlH5lRyvdKbU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131911_453295_AEC54DE5 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Type: multipart/mixed; boundary="===============0166331966093322488=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0166331966093322488==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=7LmfDa9J4lfdUL=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=7LmfDa9J4lfdUL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Dienstag, 5. November 2019 16:12
> To: openwrt-devel@lists.openwrt.org
> Cc: Birger Koblitz <mail@birger-koblitz.de>
> Subject: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of gpio-
> export
>=20
> From: Birger Koblitz <mail@birger-koblitz.de>
>=20
> The gpio-export functionality is a hack for missing kernel functionality,=
 which
> was rejected in upstream kernel long time ago, for details see this email
> http://lists.infradead.org/pipermail/openwrt-devel/2019-
> February/015772.html,
> discussion in PR#1366 or
> https://github.com/openwrt/openwrt/pull/1814#issuecomment-462942022.
>=20
> This patch converts all DTS files with settings that normally do not need=
 user
> interaction, e.g. power for external USB ports, to gpio_hog. The only
> remaining gpio-export will be in qca9558_openmesh_om5p-ac-v2.dts
>=20

I've just had a look at the openmesh_om5p-ac-v2, and it seems as if the gpi=
o-exports there are just voltage changes for a power amplifier. To me this =
looks like those can be dealt with by a gpio-hog, too:

	/* power amplifier high power, 4.2V at RFFM4203/4503 instead of 3.3 */
	ath79_gpio_function_enable(QCA955X_GPIO_FUNC_JTAG_DISABLE);
	ath79_gpio_output_select(OM5PACV2_GPIO_PA_DCDC, QCA955X_GPIO_OUT_GPIO);
	ath79_gpio_output_select(OM5PACV2_GPIO_PA_HIGH, QCA955X_GPIO_OUT_GPIO);
	gpio_request_one(OM5PACV2_GPIO_PA_DCDC, GPIOF_OUT_INIT_HIGH,
			 "PA DC/DC");
	gpio_request_one(OM5PACV2_GPIO_PA_HIGH, GPIOF_OUT_INIT_HIGH, "PA HIGH");

https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/files/ar=
ch/mips/ath79/mach-om5pacv2.c

Thus, I will also convert that device without an explicit resend of the pat=
ch unless there is protest about it.

Best

Adrian

--=-=7LmfDa9J4lfdUL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3B50MACgkQoNyKO7qx
AnA48xAAx3mt/7CuZ0wm2Cixc90fyl55ZP21zc23Z+3wi8gUQ8af5doVtLg0b7BO
Xmaw1BdtDomFtggaxhWeJ85PCPBBjx7EAgIgfSQVJOVfIgl1cXBi66nlu/v8zIOt
UnFKRzXO87vx3iWQ+TAx8phrs8Y2aHWXZyzSJLvkqvW+2Rp+qBGHEZyFCzJcnnBo
kVvI96lubZNRDfzlOBLJybfQszpidFjMK3xAhZkGCAyNrl6wqtoUjQbsONQw1uyl
qUzV/m8hfQPStDj4/UKv01XszWetd7gU6Dz/xuYRfohIv908Xam/yAmiX3HOrDsS
NCoL8/fnKW8g2P3f1IkyF5UevD6PWZbtc7Q9RXOU5xJvUWj8sMBnuNnxWqU8VUPJ
YO10FT9H2BW/6ldYVbEr7z3hoc5zI7SlNlunSnPlRoaUYMF0uU+JoXTfi2dgcsqh
J9iU/xb8NcVCJmVkA9Xj69RjShJl46RpIl6uFfxGeC6nwzujaB0a+kHjRURXqbEe
LCS5wj4+MI5+DPLXE8RfW5NaMVtRgff561pPurwSRUIo1+KjyFk7dAUQPepbJhVl
0lDi80BFAbx2CNXkt3YZ3+/xkMKPXs1aqY4NoIrfsWHb588NbdMHjyQuA05KVNCS
rDiMKxiZ9R9ZM5oaaADCu/T/frgBgpjs+G7xkjRLMB3H9oj+h0E=
=Kipn
-----END PGP SIGNATURE-----


--=-=7LmfDa9J4lfdUL=-=--



--===============0166331966093322488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0166331966093322488==--


