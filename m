Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D5711F938
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 17:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6sTChsoOsN+5W6QLpadtorkaYfB7YvWAdbxiAj3ieUs=; b=fDQRW5BAzrpLsej15/6TFC1hO
	KCyc3jBec8PQfmb+Xk9pv9+EvBsLmsj8qd2R9baiI/OcDM8NA2Mx9i1+lNzqKsyENHxYlfCip7GdV
	wU2JOV9jye1MYHl49rmd6HMcpP0U3dsUf37/IJvnzzhJy48r2wKi/q4wWStjLF3ifGa6kWjTNv2Vq
	V/psdgh1mTI6ud6EQz/B2ALnNoqva2/sGdXUihQplZLS3GeURFqWkz1g4/0XH6zEdgg1WYmgEdcMc
	K+jaa95BFhaxliT6bEDySj4Sbx+8LlumSMw2ko2xXpEYhUvhViOK5Dv3s6pjuLOyjQaBjWRsuLPdi
	0EA5o4nSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igX9b-00043m-8f; Sun, 15 Dec 2019 16:53:59 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igX9Q-00043K-GK
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 16:53:50 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N5FxN-1hg8uD2ZUb-011BjE; Sun, 15 Dec 2019 17:53:44 +0100
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'Daniel Golle'" <daniel@makrotopia.org>
References: <008201d5b348$fd4eba30$f7ec2e90$@adrianschmutzler.de>
 <20191215132728.GD4782@makrotopia.org>
 <ecf600e1-e264-44d1-c9e6-61513f2f4da6@hauke-m.de>
In-Reply-To: <ecf600e1-e264-44d1-c9e6-61513f2f4da6@hauke-m.de>
Date: Sun, 15 Dec 2019 17:53:42 +0100
Message-ID: <011f01d5b368$364cc830$a2e65890$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIC9z+J6jM/wzuGls6A2zVqwOi/FwGBxYSAAUr+x0mnSnubkA==
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:aoVHO8xuGqgQTieUM4WxSJk97VHTEduPPXuB6vZy41ezfp069EV
 hMCVUW3iFK1phjlyv5o/tq3ULQdZUQ9jgqTNQq5iZGnuPU3owIJjYuo6ixohB5uTsxmK64n
 /z42VdUtOwQce/u5NpCfbf3QWyT2b2iXQhqz6q65zf95vdA7YYDhe7eB2q0VP0BYp8imqkH
 NdHJy/Wkcnx8gEBNB6I3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1fez/0bJrQw=:84eEdJz9uR54SOHOJvRuGr
 w0b7r03CXLulDJEEyvRp5V9MI8eHBzq69vvgYiD5dVGZfMjTTrGOAj+fAvJRiXwQ70eWm+nPh
 rjDLznfrrJ6A9UnvBN7nYxDtW1Vafss2Yl2YYTsIcD0KQ0drgZ1MOLngn8ixzF8qbT/0VCDoY
 6EZwO9Gc2s/S1Ae1sbACDaUrFIutZFaCea5EEh1h9JEE7vN7QmNpVVauzZiqB8RJme7yaAPjE
 y90upMcyAEn6qV4ZLw0nCZZUtu5Z9D3hNRkBNYnU6Uep43dTRPrqB8iUvE1zmyBMWEagI2vxk
 cXQPtv04k/zyiwPGLZvfaGL0a0B0o+wGH1dpDf+3TQbDpTHpQcsRAXzbpWAJiLzYL1n84P5Xe
 SZg4XdVDm4rW1Ok3Gfn/6TgHJYZ9sO6FBw7o5IrSeBi1FBZ9uGOZfAXwvRvQN3a1HoLKrxBon
 Q/7w/NB1MJae0AkbOVGtq8CvR7Q770u189zfp4V8bFzW2Nc+VmKWeYtq217GwWGjNvBO15Eam
 l9HLQDGLANHCBYm6izCIRkLejanHAepc7Er/nV5AJ7WlINKW3fEs/oikxCvITbISLGAMT9gXX
 aCvzCaF/jVdUBCpMjJg+4th+p7qSEPd/YNpTf180aCjcEbf2DJOcgtDwHIhmsh1ElM4KIgg8Y
 O8My/K5CSzNwgqdrxvnK/JGwI5KDRHl5/SYMywZmKCLHX7zltNABCDEbn6ax/m4KTnpCzgp0n
 N1pIqKACDifGFxAdqnJPntryNop2u2Vhce9xPOB93oXxzUQ8PKTO5sq8WHOGqrUTgX6jrhvpZ
 9Wcko04ZT1seM69vrcIGWi9liWUxp+/Mgl2QRTIVApUzN17FwOWZma3tIQ0ZYHvTG3fmKUXZV
 Ks+8YHPJHtP4O7mfE0PKJNhgR0QojoUL2EHVixnRE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085348_838382_F7590441 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Lantiq DTS rename
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
Cc: 'Martin Blumenstingl' <martin.blumenstingl@googlemail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7017129507146651006=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7017129507146651006==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=yNr2Us74vziR+9=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=yNr2Us74vziR+9=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

how would you call the SOC variable in image Makefile then? (the equivalent=
 to ATH_SOC and MTK_SOC...)

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Hauke Mehrtens
> Sent: Sonntag, 15. Dezember 2019 14:49
> To: Daniel Golle <daniel@makrotopia.org>; mail@adrianschmutzler.de
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Lantiq DTS rename
>=20
> On 12/15/19 2:27 PM, Daniel Golle wrote:
> > Hi Adrian,
> >
> > On Sun, Dec 15, 2019 at 02:10:14PM +0100, mail@adrianschmutzler.de
> wrote:
> >> Hi,
> >>
> >> I consider doing a DTS rename for lantiq target similar to what it's l=
ike on
> ath79 and what I did for ramips earlier that year.
> >>
> >> However, I wonder whether the "soc_vendor_model.dts" scheme is
> useful there, or whether it wouldn't be better to just use
> "vendor_model.dts" ...
> >>
> >> Any thoughts on this or any NAK in general?
> >
> > soc_vendor_model should be appropriate here is well. why not?
>=20
> Yes please clean this up and use the soc_vendor_model model, I think this=
 is
> the common format in the Linux kernel.
>=20
> Be aware that there is a pull request from Martin pending with some chang=
es
> to the existing files:
> https://github.com/openwrt/openwrt/pull/2216
>=20
> Please also move the dts files into the lantiq subfolder at
> arch/mips/boot/dts/lantiq/
>=20
> Hauke

--=-=yNr2Us74vziR+9=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl32ZRMACgkQoNyKO7qx
AnBtng/6A2G7DADlL2XLZw1hPqqD8yvVdoRO0QH2BccI8nqABIC0JNuwmTfE1LlZ
RGeX89klcDfjvRYDaoQ/SDFEyK00hkPXCJhqbzxcJBLYDVKNZi8wMqJjETT9WzF1
9k3Ch2xxeNBKEvuCdfAMlWGbegJHoSmvnSS2IcmBwXCPvSGfgSthYNvXodPX5Pbn
BE+yshM+3KygpTNNe5YKTAae4YDOhohl2Fkbhm+hg97lfOR3oBlw1uOg26Mhytrf
0UZTiW8qrxO2KKGpGyP9ft07PdgBbwJHAzBmyLKxn3LHO0XRwAc+tSgB6D2Qx2dH
5y0QSypuqjCN/DqNFCZa26WdtqY9es+LHZfNNH2vdsi/oVUJrmVkg+hovr1rYnIY
Y1w9ofyca5ZMWw7gD+LoYYGbEFt5+6kpzyhPtz4tzwx0a0GTmfpuiD4mLdDwxg4h
nbJnMOuS7y786HcZ/B19AGt+q2s1L6kwHe9QJDuilprdns7OVbSGGFROcesm5Vo2
gmpC0oVcantxkA2oE/y5B9oDziNg4oNw4L2P2u8wJK3gI+8fxkHf5bScjKIgBJfK
1jaQrokMp9xpf2t3yBmJnCu+LublO7s+G/ewVyMN+A3KE5J5sJhM5LhpgeYEhJX3
9TFWVGs6eraSqfzQLdEuqEFvXkaZr3btX8+8tCgE6CImxDrwceg=
=fhZF
-----END PGP SIGNATURE-----


--=-=yNr2Us74vziR+9=-=--



--===============7017129507146651006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7017129507146651006==--


