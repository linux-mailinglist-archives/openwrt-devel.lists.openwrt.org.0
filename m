Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446DE1E0C0A
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 12:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tDaV7ZPjR4jkzGm6ccd3ARbLJI2PX2761OLScwQuxSQ=; b=WIg
	VH5iko3WTG4CwFM8ne5BP5P9sbcWZzA84j7k8Zeev5PSPr+DUxuVK8bT3QTn9OtFLoZESWaOeuONP
	SfSB3i2jI5txYgnbnh3GuUqhvEFhMFJiY/mz+bGrYhXD0CzSe4bJe3vqcySBX8raRYevoW8YjWdpQ
	ZKgEiHYN1Bz/Rp7RjH6Hw0rfkSIAajKRbMJXZcAe5al8pj5prfy/q+H743SPrdIvlF07p5SnWcbii
	RkBmJL0Yh+lIkUgHZXPHqRnIYIgJ6dMnbJqp2VtloLbXzwS3Qcdv+OHeIAgYTRaWwnfopuv+3/dSc
	lzT40VIL6bG7/+1Or6u1PNk4Zo1+FLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAZV-00036P-Es; Mon, 25 May 2020 10:43:05 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAZO-00035X-6D
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 10:42:59 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M8QNy-1jhaPg08OW-004URX for <openwrt-devel@lists.openwrt.org>; Mon, 25 May
 2020 12:42:56 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 25 May 2020 12:42:55 +0200
Message-ID: <00e701d63281$400bbf50$c0233df0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdYyf+OdAYouaWKEQr6zlLpQxKh45g==
X-Provags-ID: V03:K1:X7mnZG3kD4+f/3mJu04c0JnDFrhlrhUVeLk+HIxRTm6GwM9w2Qt
 I8JKRYAo/r9WNPYRExqXg4stF3ArHwxo+ttpLFSDA8pqYaZZlboljQ/ySEYOJaTNAzA01xO
 jIRwf++65OC1nt1YMfX0l94E6VDPk28vZ6XL8wh6e86Q+HZKyZfz8SpsEhsHIWznlgNH5BW
 TQak8VqxLJbIJkDDu5NEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:R0qXrktZSQk=:y7G46UKXRTKvbAHcG2erlv
 VbXze/tuC5/PE7u0wfKluPGS+DIrK9B84jdeRDnp8ripADBVyPDM8d7aKVOruNJPY0FW1GTUR
 pSJ3y0t9l9/1DCcTOw/2fSHMDofJci3W916hw0Yr944aruoM5xKu0xAsSZKI5JctAKE3SvXV2
 Vnd7dFAckvwQv9fsPTIH3h8KW3xq8LkJ7gEpo+sG067eLBmxm67PPBIybMY1Do5L89kHSHx4l
 QcnqJEXslGolnZcCtBQcOg1COk3aCAj+nX8v+INLQwAGaRq4zG+a3zrFvm1sbcZhbSOvI1JDz
 vyQAJgcwAkWp+Lcl+aLpE3QDK/TJXu2Zlyi5OHj2swwtLyzoMH9W0cZSq6xc5/mEkCpT4c8al
 1LFD7bSIbCXh4+p8sdv0h+qf7A/oKrGrOOEdh+AgV7+LSq5FsJgvP+SmUwidCDSJq1lQfOSvj
 9y8iXqKsZZhO+TdZyOIoeUpw306NeHZ26j9RKI6/FIwgfm5hVGrofhDEeGpgqIisEVQ0prpNe
 Ki81qbzC24Hpasz+gddUv6P7VeRrWvZO1l7sMf/s1GoLQEvGqMJwENiMHSoa0U/9IuYaxJXta
 ezWuAHHeD048UVKsl5OaotkfrmdzBuXNdNjpw8LE4QX6EHU0FJoao2CPwRAdxv7qCdhkbIuVc
 QfMlwypljqinhenAYEnTFtRg9+DVYG1aqMmNVY/76s43mZAw5GjRb453e2ZmM9N54e5LWejTq
 6NQayxjCRKkO/5ydc/r/s3x+B4lmeffr+wo/SXrSVtFWF6OfJXCiceTnvaTxKShmtwlEOZshO
 2RqPlTGpd8hOWCTSX5TRJ7YomFj6isueRVPvkzJR1GEAwcz5ReLVHmcdKwz7AP71pyk29Wq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_034258_520132_96127210 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Targets without 5.4 support yet
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
Content-Type: multipart/mixed; boundary="===============6130223153083590197=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6130223153083590197==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=zPzTADKv+KvVPT=-="

This is a multipart message in MIME format.

--=-=zPzTADKv+KvVPT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

while there has been a lot of progress during the last months, there are st=
ill a few target that have not been updated to 5.4 (at least as testing ker=
nel) yet:

4.19:
cns3xxx

4.14:
ar71xx (to be removed)
arc770 (RFT patch: https://patchwork.ozlabs.org/project/openwrt/patch/20200=
413103352.7429-1-freifunk@adrianschmutzler.de/)
at91
ath25 (patchset crashing at Ethernet init: https://patchwork.ozlabs.org/pro=
ject/openwrt/list/?series=3D169991)
pistachio
rb532
samsung
uml

This is meant as an invitation for those caring about/using these targets t=
o consider updating them; in best case they should receive some testing bef=
ore a 5.4 stable branch is made (whenever that might be).

At least for the 4.14 targets, I expect them to be archived if there is no =
update until after the next release (or at the latest after the one followi=
ng it).

Best

Adrian

--=-=zPzTADKv+KvVPT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7LoSwACgkQoNyKO7qx
AnCuKA/+Pu1to+UIXot4vZA8jxuu7pRVLRk6WSQwLJRzOvv4AAT43iGdYDPvSDUl
QL+rB1HD99GAIk1uQPSP/ULY89UwEOezMwxOQlfFyhWlvkqAZDnPBgzLLPqYPeJv
2kOTPRkrOS78fQFZrPptHki85pGK3xhT0mx3ypYjir+AYd2w3sU9TSr4WTSQ0wjU
UgnpXhVvudEEYjsMkhcFZvkQ1eBv8CG6JqBQj3+6siwW2tQMh+gtC5OoRlUfg6yS
RU8aQF5qubc7meSHM4GCMQKSTsuizd8CV2KCwuyEreSj0S0na9aFvQ9NGSi7Js9x
DReGkDw14dOI5iTmxWPvjNOmNnIsJUQirhiboZIlokHeGaqBmIkKaZU5C7EomInL
OVkwwVnwJWJrH67q6nSBghubffTz8DIM4SNZM3Vt+Z/UdELA4OdNKixaKfbbSXtI
G6jHsQaC5kSYv/EhUDXkGaA4y8lD4m7LWYac47sSdx3gWtNksGiD7gb294yw6cEE
TbFPB2xEFeFmjSQJQu2z7Rzuz+YWW+3NBDFwzVaooj5e8l0r0udTPOuSNoxrYnz6
QVSyz+ckHGB1P/QVjilZ3fDGHmoRLPOhmEJf4aUV2wuBaWZdPpXGIBTAeHF+1InF
3k2oGCo7MbkwtEuy7CojiVeSKa0Lvvp0ZzKop2ieibBYB4FXtsY=
=aCFR
-----END PGP SIGNATURE-----


--=-=zPzTADKv+KvVPT=-=--



--===============6130223153083590197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6130223153083590197==--


