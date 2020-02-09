Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7696C156AD9
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Feb 2020 15:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5MiFfCcvjUE1mnZqVIXGj7e1mP9tS9FbuTNRHKqe8OU=; b=WgUH9nMLKa4kcYWmxyxrRw7A2
	ncppd/6qIyX+L5wEO6PPTN0fkJJOs5VDwfum2yOIsXVhcgf5u563pNo+mhveSrCASnSv0lKtdU4KO
	lYT8BA9YnAnZFoewv/516CCKQ74LZm+hcE7AT1lMUSjd4xxSRKAM2U/QbChlyvzyT83uKpNlGD3yB
	X8RX0QqXkUc079jY2rbNmPzeypQHX1fOOmrvJg8xWOxt0Dx6mUMKRJZ1e7GXH8UDI9BFMdjJJtGNa
	34+7ArycNNrLLjYVLIqERhYnzQ813ajcHR2N8oG2kmj+Bd3qDY4F1+v1wCcyIrEwOHJW8WP9Q6+FU
	g87VjGwBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0nbP-000153-W3; Sun, 09 Feb 2020 14:30:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0nbL-00014g-DI
 for openwrt-devel@bombadil.infradead.org; Sun, 09 Feb 2020 14:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=D0ys27UDGpsTcBc2KBVoYGlCHleBqpbYV7v/b3JGqUI=; b=mQQPqZl7OrqIpmFduuJfV5OC4L
 m3+eI2O0Eskmi8gRoxxATPOL0GXp9dxRUBb/FbMtOJlUgC+xGwfV/t2KOD1NXuvnNNacGJD9mEFVw
 x/iRBgen7VifS6katNtXIw2VS0Nz6/f2LRlADzWv7dxTyt+U2z9oE+l9YPsGoHRAUxXjwQBedzrC5
 1sJB0C9/b7v5v+7aJov4sqVpmxEpZioKGEsQnaX1qs0xMmzh3TeiySPJBw/b1wH1iW5RyHWQv8ZLp
 MELMaDeq30Lfs2duQoYlvCQCBxSJd+UFS6ebbu68l5+E5zpdlja8uzR1r8Krp80oFhP7oyJ8KD6lB
 iqf1EVDg==;
Received: from mout.kundenserver.de ([217.72.192.74])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0nJc-0003Rs-CI
 for openwrt-devel@lists.openwrt.org; Sun, 09 Feb 2020 14:12:06 +0000
Received: from desktop ([188.195.207.249]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MOzKk-1iqxHf1p6a-00PQEo; Sun, 09 Feb 2020 15:30:07 +0100
From: <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
 <871rr45ndq.fsf@husum.klickitat.com>
In-Reply-To: <871rr45ndq.fsf@husum.klickitat.com>
Date: Sun, 9 Feb 2020 15:30:05 +0100
Message-ID: <006301d5df55$6d371bc0$47a55340$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHp0ha7lKjPYlgZsHZxvjoJzzB4mwJi2Rozp9fuRiA=
X-Provags-ID: V03:K1:JyZVUfvjPxdK4lzBlpjSCsX4911qTJpzAlZKfD0n3h8eJsoZsTW
 96FlzFJs1Zo22v3Xt7athr64Qt0Y51loFzCb46mJCxVYeMurvbcG3PJOWIrPp+asgsLy+dB
 XLXGnyfqQmsenU0p4fU5Wg/P/r/VXp5Jh2fkgsU0XLjHobLYUTyPB0QtLST33qv45uWNPE/
 kC9DKhhKhczQcuEd1IhRg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MFsqqR0I6PI=:4blEUscP7bNPMKGO22YNd/
 bfWZxaCDptH2clbD4ni1TjCWlh3AIeM2+HiZj2q5+mjGM1Igcp9ugVb4ghJRsetRZIQ7Qgdj+
 TqSVsBWSnC2R1c3WQP2dbQFMTUdVjklZEysltLsL3/hM8O31oApbQ1FHx88/75c6EOET42SIK
 JVWhWkHhTdw8cm32eY8/+3Osu+8YO9z1D7wezCkBqw2AYg+UYEr90veHVmM7I6DsKZ2vVmxMq
 ycHxW9BA5qZuV6U6m3Z29etukfAFl/F0daTosVtc237LOCTGE4wgHqQSJUV9ErNJchxlF3TRG
 0Q66FdMaM3ikE3ZhUQUJ4KxJUxpUNV/o47PHKHT0uxlXDzqtZJmEc13uGp5ENkh4/0MJO3sdv
 PMHYRjv9BlMCNzazULCuXO8QJMyXad0FiY+6wdYh60B9k34ZJ8G5P+ZudNfRZxGkvoGqlBdNC
 U6AQ1UTsr4Y3M0PUaFWc8pVgjD0reLejxE74wBwVrxYlJL3INzW4IGc3FHfGmPuQMQhkxDQv8
 yRMvrvY7UuGpdDIGicMHU0dxNbN19s+lzzLskOHsq2C60s8foImcTCBCp9TzZ2XGHS2FRsTts
 zvqqxsMWa3W1KTb72pBbGglzVPAsWuT2qrzykkTVhiQDAvPqksgNLLFU31P2zqctmebX9nGZy
 vHysRLjoxZl964HCu77QlH7FA5nOLCSUOJTZil0vaFQz1EPU+mfV7d8vh4D5hBxoGMSWpop4l
 qM1ESMXMVtHYoCgiaNAFo51GXRbMqnMwS509jFrSI+XXyySU/LUc4PrpEoZe6789kmptMgj8M
 a/fcti80JPmkHLlmBhr5gD6826dtbhN3TgdVtgLL48oR9KuEXe/4roVzvaWkgcEIdPXhA0A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_141204_535387_159682CB 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to bcm47xx
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0621443369637282209=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0621443369637282209==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=fQAUhN+7FVH7zC=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=fQAUhN+7FVH7zC=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Russell Senior [mailto:russell@personaltelco.net]
> Sent: Sonntag, 9. Februar 2020 06:41
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to
> bcm47xx
>=20
> >>>>> "Adrian" =3D=3D Adrian Schmutzler <freifunk@adrianschmutzler.de>
> writes:
>=20
> Adrian> This change makes the names of Broadcom targets consistent by
> Adrian> using the common notation based on SoC/CPU ID (which is used
> Adrian> internally anyway), bcmXXXX instead of brcmXXXX.  This is even
> Adrian> used for target TITLE in make menuconfig already, only the short
> Adrian> target name used brcm so far.
>=20
> This seems like an aesthetic change, but it will have more consequential
> effects in tracing history and searching. I question whether the tradeoff=
 is
> worth it.

Yes, it's purely cosmetical. However, I also don't see any big drawbacks.
The renames will be managed by git automatically, there are no references t=
o the target names in packages or luci repos.
Despite, I consider it more confusing to have different naming schemes betw=
een and inside targets than to account for one target rename.

Best

Adrian

>=20
>=20
> --
> Russell Senior, President
> russell@personaltelco.net

--=-=fQAUhN+7FVH7zC=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5AF2kACgkQoNyKO7qx
AnAMehAAtQYIt5OkwCf5xmJvLmKC+JZBDWss4aOfGw8muS/0ZTeYRzQ0XeJvWCnq
ezOlznS3FtGLuM3CLeL4j1hDW1kxmpiuxH6ypqogAnK0NvhkKfjsIv+5gOp/9umE
90DXfBWKRBmoLrWWDFNAg6p8EYVi0TsdCH0XD8oyug9jQqEbSh9FV7n/dYIgd7/h
nhcLYZJ0XbRxHz2Pp1pMg5nvfhH+4q0RTe2glmzGWdz77sy8U21bHp/oniUUZ1nX
28TL6S/t7am80jPkhBehKWui4eIQRHUVtDoJb7Cau3yPE7zcouRZZoCtHwIvo7Pp
6YWHTQItzzg6XrAoD3m0jVD/s6uv78eiADBCkpORZRDhSMGk8w9w3v/d1TtBXObp
PG/IDzVezaf4QxsolLnWYOLDn6SG7GU4B1aU06FFyzQ1j0UCet5jzm0LtXCgdJfj
BtWkUTlEPsQXgxp057mM3ZqJ+6TsZIsULJimAXVrMUr0/+ndeLnK0qlLWeZWZXUE
qa3amjUtVTkANptttlSRjSV7+Bq0UDH82HyOjuDGKZHgNgtirM/FTe0TxgNnRWng
sdGkTJTe6z/WZijdQdogWmArhVsilI/yD4P+GpLo/WkoP0zxLJpTIjyntMr2x/qD
02lO5Ipq9rusfzTeUzRFemwgqWtGULqoYq9AqSP5npIUrEy9+yA=
=D5a0
-----END PGP SIGNATURE-----


--=-=fQAUhN+7FVH7zC=-=--



--===============0621443369637282209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0621443369637282209==--


