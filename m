Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECBFD6046
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 12:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tE9K+BDxVmaEUWw+zc/eOTWjgsWRzA8UVVFklIoLkRw=; b=jJmRgAFVQ8FHUv35e86rYdHcy
	lBsVdSTdaRy5qgXdU1hjUCIKspVKjHTPpP8EjWbKMizTAOMJVgVEmJC0mgcRvL9IzOlNxpbDWnONw
	X77BUuwtUeqIRwMGfwljh+zSYrwxmplbHo4lICxzWTQAHvY6Av+VIzvgKTyWbs+rDahCGfHGGCe5V
	Uo8rT3j9xV7nwVNB1Vq+w4d1kRLnXKkYWQkVRsJqhvdUvGhErYlIZoK23fR/F3/E8fdBsQwthxRuj
	J1pp31uUNrVMAG+ZOagRc+6arQR/3CzdEmfZq14djgGk+z0UWZFIIi8X9NWBH8S/5VXzD6CgkjU8F
	iugFcSCiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxfT-0006ds-D1; Mon, 14 Oct 2019 10:33:35 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxfM-0006dC-5f
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 10:33:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MNL2Y-1iieBU2P4E-00OoA5; Mon, 14
 Oct 2019 12:33:22 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20191013221353.186756-1-mail@david-bauer.net>
In-Reply-To: <20191013221353.186756-1-mail@david-bauer.net>
Date: Mon, 14 Oct 2019 12:33:22 +0200
Message-ID: <006001d5827a$cdafa900$690efb00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIGbuacfD4/lhghODFtKO2MeGYSxab4F3+w
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:s+Qh/B0Z77yRDSUObRwcBnQCoc7ycNZE16HFocRojaF/fOQjY1k
 wcv1RIMKCLaCKQhI0B0PK6yNAv/sk635+yUSAHyjZwZJbpGFr5BEjNmDbgDqKEyROSfG3Of
 P0o7YBJyH/kY5hjzxc/5/PeY8iA+dDDVJ4XAp1DQEOYpFE3GJgR0C1Kl8fxHuohVF2edz0L
 hEXk2QW2x3XQPnTKg6eqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aY/Gg+wrxoM=:uUhlugvNMh40x268iIfilg
 MIUv4xK1pX+Z0kI5DIZ/+ccnipX/YdGnz+LtWo6L14ygiGkgc0icg4ZefRjVhN6rU9xp4RMq2
 T9A/IpNtFL1jNQbv69J8gb73q59zd0n0Te2Q48O2nWYG8xFrgrzZ70ZX/bopvRhtjxAg4t1hQ
 aY2jVj0VJqW6sb1cYJTD0o5vLiTf6RTNE0kQNndvhHCuq6QOXFUA6+NFkn6pCEcPKVFaVUXi7
 +rBdtIpfbnHIL6RD07sZdlb1+CO87cTedIsd7ckLji5e54VvB9XSM7NK1WMhZdSMooWHvdusX
 z2hAcFUA9ZLqBQCHwkbCo9VlQtXVK3L9EzW/njrwPVR+HVYD5iYVGG+awT62WhRxstZXmpg1z
 oumuGifqIRpWG1WZrk7JQoaPUOdsq/WruLgX2/bKe2NBYmzuPZolGCQSX5PBsBGMTjS5O9lV9
 1m8f+xNMHyE9DxJNOBr/suslvmLZtFFtowfrQlfebVOhRZYsjTPqApD83f1O3ZM/suCma2XNI
 lGjF6tlPHsCHjotBaR5XUp0KjfGk8qTvs27KKObqnZF4E4mw4dia1zzDLoOW91Os23Si2r77Z
 JcUKn5lolZviJC9Hmi+nDM7zEPocz3zoondAVc/9VzhShjF41i6jwUaJXlCGzmXZDH6uoNdLD
 6y31n8NxmUALKByIXdcbt4L02ngMuNX6nBkXFbitlftPwBuZ1xrLOFj8UrFqD5brYhyXyIUdf
 gFDTgGmSAGFwVMs33ZqqR1o++KEIQBG7vvcEJlPcKY+h6zSxasyNGxGPB/WXwQ2arDFl1Ad1O
 jz30vOO+SBikdYEjgqLrlQoVBWtakGd8SgUxYP3ZKmgCDH+PxxHqu59xEowV0akX6QUZq/HO8
 MlK9zKEeov0FJQq0Au4UJYIus03UkpH526YzrperE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_033328_502591_F968B815 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mpc85xx: correct TP-LINK TL-WDR4900 MAC
 addresses
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
Content-Type: multipart/mixed; boundary="===============4498867956380007192=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4498867956380007192==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=UyEAmQrEw3y7hi=-="

This is a multipart message in MIME format.

--=-=UyEAmQrEw3y7hi=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of David Bauer
> Sent: Montag, 14. Oktober 2019 00:14
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] mpc85xx: correct TP-LINK TL-WDR4900 MAC =
addresses
>=20
> This commit fixes TP-Link TL-WDR4900 v1 MAC address assignment.
> Previously, the MAC addrss was read for the ethernet from the "config"
> partition. However, the content of this partition is dependent on the
> firmware which was previously installed on the device.
>=20
> Switch the MAC address source to the U-Boot partition, where the MAC
> address is always present at a fixed partition. The partition was
> previously already used for the WiFi MAC-addresses.
>=20
> Signed-off-by: David Bauer <mail@david-bauer.net>

Reviewed-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Best

Adrian

--=-=UyEAmQrEw3y7hi=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2kTuoACgkQoNyKO7qx
AnAxGg/+KoEwHaRcgnGNteAFLL7OyWQo9ezKd2VW8kx6uLrYd4hTOeaF7BkjREFb
9xQGkj5WZyEfkh61ZkmiRmGBgJ+somn5jOufOBinY2ZiuD11kpFzYyzxrLiiLNqT
ZngulhQELgRtPoTlORXnh8OC8NTkhLgiehtHGJN4gB3secO2P9ZQS2lr4XkDdw5A
suFUel/E3JVnDHaReACsHz8V4Wx6/FMQ6JYjBMU0j9u4bEugf4jTSNe4JNJv6kR8
IYpGn58bQ+uk+uYfiu0v8mLoIKuc3pH1IUynmpKe8eqQzxCZBctibaBY/6Q5FOq0
tE/Qrfwh4PDBYja+Pw6ug/WDiq3VQkqyShj934wHqzNqZimi5M0PhF1Sjmchvj56
ingnhzHc0f4oGkoltnGxU6TUEpSp9G0Amy2vaAuKIJGzdRJuqcxZjzMZbjZH/4p2
1TEgLOcg4v3SOptLfmb0eaX8Q5FcovHgKvKyNoY9MgKYovk4n04tHwd8GNda3LT9
al2YJbiPmMtNvqR9vVD8BRug/aYlUe/iH/xl/GFwpwelX62Hy4KzCBJfoVO3EjMO
tSR2acahrKRlN+vvir+2iHWleuJHOiynhLsnpnCctK+XixJnNoIf5PwonsBc8vcl
Pa5AuCLmKoLJNc+gH2nl5U9i6Qp9DhM3ZE/D3CElXm86gHKl1ks=
=oqrc
-----END PGP SIGNATURE-----


--=-=UyEAmQrEw3y7hi=-=--



--===============4498867956380007192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4498867956380007192==--


