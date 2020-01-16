Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7E913D9A9
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 13:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g1r1PQliYwF+fHu3m8UB/6K1EZENIPcREEXjMoovKqI=; b=Yko7T7xDcNS7OQkjqfWGq9vsR
	V6lctT+r5kIprd9T+gbLOvdQLXyYGNgGoAUWNcjqkfJZxWjQn7KukS3GUYrwQF8NoKE++USyBHoTH
	FuiY5XKSLKKEX97SD8q4tiptU52WE9z9XVxHhjqD5j3X8Kq0oHNoniFxxeeZSTYBYeUBriKU2Q0Kh
	9lzBre4UQmQygw7nknr7RN6+xnQnKCXwqqIScRpR55bKWGXh2t/yTHwSyB29sGdlbLLOgHXBCswyn
	et9wmZwWy6k/VaX/aCXjkL0q7CrUIlE14K8VRbv3csOkVQwkKEdYPnsgomvPCUhXXkLhYCgwLKmbV
	uUFY+YKuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3vx-0006Sn-DA; Thu, 16 Jan 2020 12:07:33 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3vj-0006S2-K3
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 12:07:24 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MBDzc-1inA6d219C-00ChfU; Thu, 16
 Jan 2020 13:07:17 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
 <20200116115100.1906-4-freifunk@adrianschmutzler.de>
In-Reply-To: <20200116115100.1906-4-freifunk@adrianschmutzler.de>
Date: Thu, 16 Jan 2020 13:07:17 +0100
Message-ID: <015401d5cc65$7f2fa610$7d8ef230$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFpZD9SHqcA6EB1XhMuXn1Ix58spAHXFTDbqLdJrcA=
X-Provags-ID: V03:K1:9alPFLSeTCOHM6GW5rhM4yJ04krr9x3N54YvpCr40Z6iUrbEgGh
 AkYH7sP75IXMSU96xGQsfQOqbTn8VQ5JRVPO2HFv9Qf95uh/tqiR1YPHRkiXUquqqzfs9h2
 PcCjsNBWgVnhdHbxEeVPGLU49dDkiphFFv5/18+yw3GOnc5eMnAT+S5KetR3C+IHi1nZH1c
 mhCeWKjSMyMHWDO0TOsWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8eu3W/52fhM=:c8/B6VUvlfvfieA5TOaCMA
 EzyhIFXv/4ynW4ZNvf+W8naU7XDPoklQRU/IlRCqhMVE0Gm9FPUzsgfIeKS2BAqMKl+rq6/ET
 QXy4BHXDm15leF/t2DtSBkcTn7A4wKYR5cnDZYY1byemPogCUKLlHgCAC2H8NU1W1jamOjxTD
 3byc17B7PBVdSyCwLSE+knIa4qNWiEHWUqByrzT3BnsEcTaJgc3a2PsHGOgl6koM76uRpsTLn
 byj3r+uZhFzNCp+6mzdn42sKGNsmf2+LNw1AnpTZXskHkZ1BD4cA6IHNFcIewGEQ7d5wWe5CH
 S4sOGSDUbZSYsFoSIu+RpIMqSLCZ+81SZjeYKdmgGlXGkKr38xzKhQ2Lr5YS7Eu8HqubyQozo
 BsaplYSBjxyL5eEBEAJ4QxI4Rj2AN8S31Ts5WFwVEUV6ALGflLOHjNF7qpZKvwk6w9r2rx4KV
 a24K89lZpzBz10ZbIsGk8X3LKSemV2Y+8L4VrTyN/sZJGat/SaMVl9aTM4Ct/BO5iy1LEHyxB
 /dRLIoeQ7rK2o4/PjbQlFY+M8tPFfQGHI7z8lfPDOAWX0tdoFUk1ep6l/GLZtAOO654JNxAaM
 c2Blsa+Wr5+9ClqtpwhhsE07N7UsBup8B3f/k5L3nuQ8KgeOXTHzn5/KJfI/GBNtRUtXH+MFT
 9T0AOEf2nwkieAfFlxNh13gxxvIgHRQ0pFBMh+quMVZc2nyyGor0+xbJn6ecgZT6UYr6EgCKp
 droedeS+GHt2Y1vhgcEqVhphi6GwjNP65l23+nW0wUSDBDAUGfKZiQo657WahU6uIVE5b7ZPg
 Egwpe4Dsy02WMjbOQeAfjgjgNCErHoOybJtokthi7Zkx4QHnl5lXb1V6DBgG4+6/ZKSEO+7mQ
 27coxsC+VkUu8jrGwHPsp9UuDffl9Y0d55tYsKogo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_040719_950365_9E238502 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/5] base-files: wifi: add 802.11ad
 support
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
Cc: 'Robert Marko' <robimarko@gmail.com>
Content-Type: multipart/mixed; boundary="===============6598884871402023760=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6598884871402023760==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=Us74vziR+9dYET=-="

This is a multipart message in MIME format.

--=-=Us74vziR+9dYET=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Adrian Schmutzler
> Sent: Donnerstag, 16. Januar 2020 12:51
> To: openwrt-devel@lists.openwrt.org
> Cc: Robert Marko <robimarko@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH v2 4/5] base-files: wifi: add 802.11ad su=
pport

We will need to bump PKG_RELEASE for base-files here.=20

--=-=Us74vziR+9dYET=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4gUfIACgkQoNyKO7qx
AnAa3BAAtgyt0NUwsyp8qazKHXhpYXd8kX13W+vmt/84shyi5kChPSBO9f50sZMA
XlJ2auJLc0XVK+CAllDp7sutLPe6MktD5IT9N6Vd9efas3AC7LXROcW2/Py4dW8I
1hW4b+yrIhUScQahR9lPp+eoKnCwdxKp4ld1OWG+R26ebn0qZPvW0lI8VljzAZPu
fdRvr8nE/DAQkMjffAzF0DWe+tSW2x8uvDhJJVRe4/Gpa0Q5mtV0AWP+4YKusFzB
VzgsM8y2V4n0U1yl6Di7IOIrNm2uT3mTLnU476a/iSq3lf/hqw6+a9BNHxWoQEpL
twbyhXv/WK/pvu8qbXxKMJB0IFuD56juOFsIBLwdQdUOGcnwty4DJ5lgsKJ4kvIM
OvfKupxLnuQScQYgvKAx3jCcf3Y4TnahKYIV2Q4c9k9RlmDAGVWzdqtfdaM+v8+m
DMeBHh3hsTwG+8iAx3nI45Y4RhXfVrWh/F4vGl/M45UZ53Gu7yL4Yh1Z71+29h5V
ZPwe3zD0dUCCcsx4gxjRhhpxaXjkOyb8p991jCuwSCa/guGEWnWkAJfCquvLKegb
sTVsh+34dnLuE+HnCIjvJI6qFT65nmQlG47MBljCWyfoEQL3JXXDQMDZPRUx2PMV
u7XpIzfecmV0gvRuYXazzMxAFxkxX/iDgTCbA6ItCPedeqSqprc=
=AVlz
-----END PGP SIGNATURE-----


--=-=Us74vziR+9dYET=-=--



--===============6598884871402023760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6598884871402023760==--


