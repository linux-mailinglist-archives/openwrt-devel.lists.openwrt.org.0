Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3787312F889
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 13:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zVKAT3SzzKNFFl2FVaPxvyId6Eiurhn4SBMXskoIXqc=; b=OjBPeymVy4/3SHg63agI4r9O4
	tVCT0X2UNy4Taho9/yl7NBxgP2NpyKrmNwVHqi62u8zsHuwC3xt9L2yM92PZQl9yF7vM5xyNvz5uP
	d+jxJFJfx+2/mFg4fg7lhlRZlky2u00u+G4IufyHgGUYvAhBbZ5/VGt31VBSz87F7Jzyq7HiB4pWy
	Ba8ssIbPWm2f0qtQEblFrITDdRq4Yn5JIxTlyTaB8e/IvKGFKe7t9I3qvDqNSjrJ75RPdDgw49LOo
	tdFxfFt+9gMAeOq5FnaegPUrJwFxEPBfW046zapFX4wxI0nLM6NypulIX1psgBwQyMz/AYYdfSmKp
	/adZ7p7OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMSa-0007Lh-HJ; Fri, 03 Jan 2020 12:53:48 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMST-0007LD-Am
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 12:53:43 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MyK1E-1jfRVt3JZk-00ykdW; Fri, 03 Jan 2020 13:53:37 +0100
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
In-Reply-To: <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
Date: Fri, 3 Jan 2020 13:53:37 +0100
Message-ID: <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0gKX3rv8AN9zaFmmWnNxUA==
X-Provags-ID: V03:K1:jZvMr7TfgacwSbZ7P/PdCxFEs9zJhjTUycxrKPKdZ0gloT2M2PN
 MvmbO9u4c0REBiLSBNDL71XXu49wsapLJeWWFD2aWEZM9avLULDGvVI4H25GRThrbwBRRR5
 w2nOyoxyeJNuMp2dfVGsoNeiPz54zDgtqQhRVwpxpkpaaB+dzpm0CuLkgkHuDgo9AFco/RT
 bX1JQvPtral3C6970NdGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jbuBHP9faew=:2Bmx+FuvXKQpywBOJogZO/
 ep9BpmgfoeLjhpENsWfDf3HNL8TRUtey7HOHX4fRDP4J3RJE77vnSX8aDw0DnsjNkDA9vtzty
 yGzBbKGM0T6uxC+KXVam81G9Hmu9RK7G4enn+zLeBIe26HWpQD5TgXzysPD+wSo1+t2htKwWM
 ea0i9ExaFveOLES6IIFARkY0RvPnvtGEq0W04B0MqQ9scEDrpWATMl8hY6vlICQvoX6jym0RS
 T/Vd29EAqNzoATHagF2lCxe+UNO3I5rN9bNMt0v3jBnGwqlvqq0qvfa40tKM5HRWkW45LNSyi
 bH9HWl+x8ryA+4IRYdgBj4MPuzLbGx8g0lzQ3gh7VW0sQmNnA6rV2fn4A+r3ZTqF3IABueKpV
 uH/lJl1Nhvjytmv/y9dJhwuEKiRiqLfu09XbMUMfCxI6nRWsI2s4CABudFxtYTXGukVmlQZju
 tVHKrzTfkBOWWgyF0MaxyE0ckp7Aviv00fEfDDwC/HDhIKZfd0D9jDXTSpcRYMTugM2WgIJ3g
 Bktlb99WlK2F0Hf3NHfLw3YQAJvEm0NN/C6N0hdKgpO0dMqkNMggSDmYPvB+FG4UPCRNkL0ag
 pJSL2ILJ+OHcQBP+06+eo7vH6jK5T0980JKrNX9bnj0bGXqp79pXPZIUTY9u2DtnwhhNnn5PG
 +YoSW8k58mEMKLYLWMYcqJfc8RoE/tLO/UZqaDw6+kx4GXcrGfy5ih4OsuAeIwfUUhkI1DK7h
 wRfWdZ7p27+4Kw2BU9kcbsNH1640p6mVLmE+3RcB5rzBueWhoYlAw4ZC/ixkRMq9XG4iyf0NI
 NMFXqX7W/ERmKQsMIHFcsXIPhyKf3dw0uvzHb4GmwkyPBCy1R7OKckXlcB5Ve+f199LwFAFbF
 h1Ko1ylkJiX9R+k+ocj8bsDyMh/WNBPY7HLtphhI0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_045341_668581_32D3E940 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============6817492851952846105=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6817492851952846105==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ohJFnsOG2IczoN=-="

This is a multipart message in MIME format.

--=-=ohJFnsOG2IczoN=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Hauke,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Hauke Mehrtens
> Sent: Donnerstag, 28. November 2019 19:42
> To: Adrian Schmutzler <mail@adrianschmutzler.de>; 'OpenWrt Development
> List' <openwrt-devel@lists.openwrt.org>
> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>=20
> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
> > Hi Hauke,
> >
> >> The following are still on kernel 4.9:
> >>  * ar7
> >>  * ixp4xx
> >>  * orion
> >
> > There are patches (actually from you, May 2019) on the list which
> > claim to bump ar7 and orion to 4.14:
> >
> > https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
> > https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339
> >
> > I haven't looked closer, just in case you forgot about them ;-)
>=20
> Nobody reported that they are working so I never applied them. I do not
> have the hardware, I just made them compile.

Since there was no response of any kind from a third party, I've just marke=
d the two patchsets as "Deferred" in the patchwork, so we get a little more=
 overview there. I hope that's okay for you.

Best

Adrian

>=20
> I would just remove these 3 targets soon.
>=20
> Hauke
>=20

--=-=ohJFnsOG2IczoN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4POVAACgkQoNyKO7qx
AnBTnRAApdTMBj/y2D5k9dHPqo2hspjNQcKzU1SRr8EdiTcazRct8JI718G0H5QA
+o938nKRwe6tKGdB6fX312zmzT0KZros7g8hiWMuk/4PraYryQpkCePrUHT60fRl
GDix6CH5MiFgIj5LK3YJ5b+bITWDTjd60LUfZnboA2WxUSBr1Pqu5ov69K1NhZkF
BDHigfeFhx6WE7Lj3iHutfLKh1msZZ8IGHb2F6/+zkyLVuKmOHhg2if4v9RG6h5R
QJjiycj1U+oVANfSsD3j2bo+l+qKcRmOQ+GEW2cU5xD6LVLQQAIaBOEn9qpZmKJ8
fEzpqTnHJQ4v9HgqIOm2ov8QQ9yLsbB2tfxPxkvExEzU59kJKyJxNx0qC01p1BO+
za6ypXY5Yl67Azn5pY5tTNxFdAkK5l0cdSlUJcVwWAdwJ4XlFGpVLn7stC+CF/5X
7nNl6O3DehUFFInCDTbjwp4uNLZO848AQ6yVYc4erIZCJNmYkwSdElSL1xDmAmIb
mackxZIDtSXooduC9WOHFg306yWf8Se07TEpi7uZZ6G+3dTsXBBzN2MtwZ60DGoc
8sXIkFdgz690rSSRYHBoPrXsYQq2oa6QzKRXahNQJp/PxHeAf06HzmZB5cc5JgBy
C7DmeFfpTmGpJL8pQsqhBVti/KEinhhM5FxuuT/W41FBfOE6+aQ=
=KH6x
-----END PGP SIGNATURE-----


--=-=ohJFnsOG2IczoN=-=--



--===============6817492851952846105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6817492851952846105==--


