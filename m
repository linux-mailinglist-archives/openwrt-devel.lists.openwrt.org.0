Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E46D1C6158
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 21:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mTif6G6zL32xhs4ddbnxRaZQE7GBiDJ5+D55fzcXV6M=; b=BBEQOmjC+iOjH2K6qIy54h/Hp
	Eq+2DwwBAj24qRXMTwwyx8dgB9KKTqSYbOqIVWjW7Y5Ozj7B6BOzqlYez1VG1o3TgH5M9rZBUQILK
	+x0XREI3X11lq6/+JCUkV8z5PgQtYex0RzvqyimVC1jHjzVw5b3mQ8fpESYbT2UDGg8DFsmxQ0OSS
	xEP3RLe2CzisgejKKC4TN1MS953ApHQTckEMMYs5Op4UhwzyJh/NTQYzkkYuY3TfJr9QD90WH29YW
	dynBRknzVStSma52dT0gNRoLPmqTgA1V3D6+QnnbZKF8gkwCbIlCw30gDqdrG+cg7AXw+pNqCy+et
	9fgBFr37A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3ZY-0002xW-SF; Tue, 05 May 2020 19:49:44 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3ZR-0002vU-TC
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 19:49:39 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N0qmr-1jAhIn1iTd-00wkrF; Tue, 05 May 2020 21:49:32 +0200
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20200505174231.398817-1-mail@david-bauer.net>
 <20200505174231.398817-2-mail@david-bauer.net>
In-Reply-To: <20200505174231.398817-2-mail@david-bauer.net>
Date: Tue, 5 May 2020 21:49:28 +0200
Message-ID: <026001d62316$4bf1d180$e3d57480$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQG0MbNegMlPYcqcVS/5+KYYaKCRxQJhiNVtqMq8YjA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:WLleEVNAbvZ1M7TgWVFZdQaZPMh8blggq/rJaqVhr9m+vLIBI5P
 99gsl3fuQrxtjregZzeOJiC2KN6Ie5nAOqQZuMOy7th+xIAR9HpJZ1dW1lBPjq7HqTJMYhG
 T08r85X9lJ4clfEkCvRDUnkztmasG5Drr9Y7/gSMw7i6gk1J3HNtPcuaB5SeXBJFc2ahhmq
 N8tGZgaDKmeuQxzKCkm6Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v5CZXctxvTU=:rReBKaQcB6id86abopkSXV
 SDttkEpswQsnNyDGkmm0w0a2wgjJYIYaoA3z+jEXy7jVNJqpYFwdH0krcQHSqWoeHetQUTjHJ
 xgsCEESMgMbvR737fnTosuL2wuJb/ldArGIDo8pm/57ik7bBZVDPrzf5H47FF+BPKdeNBpsdq
 Mr2tFrkh41QyZFAPil+s/UWmQiCaVpK5/W8mEpT3vy04zbtByofeysos3TrIb59UAnTTv5AL9
 7dmvo/djRo+VHsK78QJR9gWfocD60rmzwZC4RrFHfZBktq6xtBGEKqRNwOQantSBzA5klnka8
 giuPMi66Iuxm0PdICqfjSb9/Rm6bF6VLhgriW8HmW0jip69tTCA90FEULMpPaG4H/wZCozqky
 CScjemssj3vJKjWMze0eX8t2Yl//++3MkIleKhslnf5kyDRGK/i2RkvN3iLhe00WHcClOq6vd
 vJxhWBaxa5KVN4TgnJmhUpyKqnFQ9b1q7YBFy8EE8wwbU5zsm+a03bySWhMY4qCiFpCjOErQ5
 S67t/VPOV8J/d24hwzqXGYDGAMYj53LWUA0olU3uJ9z+MJTNEE8fHMyLSWB9jZc24wLYJw6lF
 bIxfdxWsyoIEBUq2iFkHFvgUpxXWcRVkzvEQHv6UxtDQr1xVEh2fKjtq9z/sdL5gW4QM/NDAH
 CwKgbf44ExmrwrIzOMpfRoh7GOUtYuLp90q4tJHhlePa+aQNnkzxLfUAseak+2iztzsGnl2rf
 v9+oxqk1GJN5RafAQH7nSQYB39N8i5FdGGWNz6qGjlt8Vrvk1EiaNgBgaoC8UFBEwivS80V0w
 a1cS8STM2R1gME2kgAM+FTIVeB9gPw/Kk7uxMHcCsf94uR/Ux/XAZDBNI92hPScInxTbovS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_124938_231263_D41BFC4A 
X-CRM114-Status: UNSURE (   4.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] mpc85xx: restructure image receipts
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
Content-Type: multipart/mixed; boundary="===============8594933628086006310=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8594933628086006310==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=/2MGXZl2XlTyLO=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=/2MGXZl2XlTyLO=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> +include p1010.mk
>  endif

You may take up John's idea for [1] here and just do

include $(SUBTARGET).mk

without all the ifs.

Best

Adrian

[1] https://github.com/openwrt/openwrt/commit/220f43e0f2a0870305d40add4c331=
4edf150f9be

--=-=/2MGXZl2XlTyLO=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6xw0IACgkQoNyKO7qx
AnATmRAAxV86RYo8C9Bde38PjNnF//GXJJXSZOo6FHaZSBD4KG5sl23CBIUIZJRq
FYv+ro9bGyl5kM0U4veYdVk+SUgXSeKg8FDl2bvYeonojvAzXoMazBEue8nvOqpV
lxhD6sRd6cWc9k64A6t3DAY3svUU+rxh70L809LMVi4PHgokcvgM0KgxBEv4fetm
MXwCH0NitaEmP+7hB/RyQ68p7wIwcnAF55xOqWZWPDS7yd1bA48HYtZgSbrrc9A0
AVD98oYJ8JOI/KqpdursY9ZVgtPpoUcvCyz34O1bcXPIPLDeN6ZYPqy+/IfZJoEj
OLzqzUo6DOiyxTcy5/8MumHqIB3f9C2/rQwXIrd99MvME2x7QFTBLhsM/LLLsUEa
rP9aVmnxVCArmo/zNK0kydNi1Du+EJOa1PzmuEeKqHThMm+osP+rImrV4XDY7M4i
O5fje/nnRCrw3RIW94dlH034kA3eXhBckra/rL0yfVh9IMvUHv5Ud9h5BzZvzPlw
Z6mW9Z2MVDL+AdHz8zOXahQb8aiz3uEsphI+GPa8s7IwX2rgduTdLnpJ5aD+MyAB
nYw9ay5cJSbloKUMeNm6QKCiDoim96hB9O3gSd64opSdnm31Nue++Hqq2MDlrqsu
MdMTA8QT2clQ1nzskEA5iEVq9CTNReqs7Gh5HB0V0i97gn0pMN8=
=uW0h
-----END PGP SIGNATURE-----


--=-=/2MGXZl2XlTyLO=-=--



--===============8594933628086006310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8594933628086006310==--


