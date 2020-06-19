Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCB12007EA
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 13:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GhlvCmTrjaC5EVfGWlNhEpHdpPVbXU+e5NErl+F9aAI=; b=ndc
	/+Pwbfr/AxHLwoM8uJjxtZoc21mmUjgtqr1sEy3gw/E8fOqc+BaRUOcMKx+HraqAarSy/tYXWJ0Ox
	TS+tzLeOUaoPl6Cll+KoDxFZhY2VSykpnXxhXo/oPKjI0GAmnodkQ4pE1GBUZW/5kdv8tn3DYBYXv
	30wxxS/Zmxou80S3oN7NXTrDu3IKEXpOYpIzys3IzmNvH5MWMUPJBBkzFOaDhzanBF8824uw/DhlZ
	OJQe6Hv+Mn9klL5vUwW7dIp4BrC/SXt+2UJLSYS2vNlNB7bKTXjqmV2UUufIyVHCh9LCsWJ5G/N6V
	qZ+dzRBIKysPP5BYx+66gjjE59clcdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFHy-0002IA-4t; Fri, 19 Jun 2020 11:34:30 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFHr-0002He-At; Fri, 19 Jun 2020 11:34:24 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Ma1D8-1jPCe10dvA-00W1zz; Fri, 19 Jun 2020 13:34:21 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>,
 "'OpenWrt Project Administration'" <openwrt-adm@lists.openwrt.org>
Date: Fri, 19 Jun 2020 13:34:20 +0200
Message-ID: <00b301d6462d$933ab860$b9b02920$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdZGLQnBrQzUb1NoQaqXQofG9vAP8g==
Content-Language: de
X-Provags-ID: V03:K1:eP0wpWkozYyxMJmeWQQ7fxtYPpn82QyasBavRVgYv+idAgjpImD
 40Bg1sa1RxSAvyj+UA94/omyoLD8HiNvMCV0zfIZH697o3Zr03J3WCNnseY9aJ1IeGW4FQY
 umz/3BFLMzMC1+OB0gS0uHMY4lliUKi2UE8IrFtp6tnakcDz/s9cEBfQMjUVBUPZGsF7DIH
 Q39UjX0YJCRkgQIsW6Dgw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fc34Zv9G2/Y=:dFVxwYoJguDv7zzg0vFGHG
 hv/Pt352AMw1KCUF35uprlFj+DakX5FhLYAB8BW1VXJaYo8Gfvt5iJy9zsLh8uua9P/0zN5Q1
 S5AYKZgHUPObo5W3JZHzPrhzxt7fnkuNEqTmVyFnqsyukdX7sby3e6q1KJQTmfDPq3Dvw6Gs6
 brZn4DGLsKppNGHoJEnCrfgH2EWKHKJi3A9/PhcUQHAFpAGe6k2kzgT+Kan/KJqp/l3sY6YKy
 OqvrNZYYedu3Q7znsYa6P9wTGFsX9MkG6itAVhoJ5relRKI84k+3i5dTNrxQFgYX7HDzlh4CH
 ceBX4AB0ADlmurPo2HZM8Zjgd3+BkBHYEyglWC8v+PlNZaRrJFsV2nYA1a07Np8bZuTLCnEpa
 6U0RtUHxXBQ7Kvqj+ocFxRfMX1M18YaCb4P2c3kuBu+1380hLPRhGBjC4SzdquPObcWLl4jLG
 BMI3lb2D2K0gPkx6sjOHDIucFs/YG1QhCj6lqTF9e/XJkqY8OzzWZiPsSGXfNlSbAgFKVdwAU
 MaYxwTfWsgAzWBCIlTb4yzGXLmHsf6FOfcNgayt9Q3K2HuJhltesCFovnVL/eeRLcYKUG3p0U
 bKwJHbojzd4Kbc/tlNaV8SWpKEtfyewwIhYv8cj5EOgX9me8ZcuMxBQ4IAXNpHvtdXmvlSMbK
 Yah7JO8c8o51F4YVdVmZZ2mV1ZcoRPPakTBdBJD+679/w9SYk55gQ3kK9woKSkg4gVVG5YTb4
 knVfwARngNzyPXfpcrV8u6tEy66V0TphJ4sW+v/bXG3Cni1z7qu8UEdjT3KntfuyqoXiz7Qik
 Tms6j1IovoPONuFcWdR/SFVcD7HCy7r9xjoyfnmvuOzKUVqpcPaDOJQnITfGZJVQ5sOVGMZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043423_667091_2E0D1544 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Bugs for 17.01 closed
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
Content-Type: multipart/mixed; boundary="===============0553688951145295457=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0553688951145295457==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=AstN0ZLDlRIl25=-="

This is a multipart message in MIME format.

--=-=AstN0ZLDlRIl25=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

as decided in our combined vote, I've now finally closed all bugs reported =
for lede-17.01 in bugs.openwrt.org (Flyspray).

This has been done based on a script, so I haven't looked at the individual=
 reports anymore.

Please note that there will be _no_ notification mails for these closures, =
as this would have required me to hack too deep into Flyspray to make it wo=
rk.

Of course, if the same bugs can be reproduced with a newer version, resubmi=
tting them is perfectly fine (unless they are listed already ...).

Best

Adrian

--=-=AstN0ZLDlRIl25=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7sorgACgkQoNyKO7qx
AnCpoxAAmq4KhBgBetlqeiM9szPyDhTYUGjffSRjMR3WXSz2eTcZZfL93tpPGEUS
quE9bCdc8zw0Iwo6hBW6s7dt/0kpSIkb1FoxW6sdc1VSZ3Y/Urnf40wKrsK6be9m
uP0fwiP6trelrYCjyevH2M3DmeOKJ6lH6kF0ZuKvx7tw60ld+Jp5zSg1dYlwLA+x
0TlfABzbCxKTYINxIHB6fDqtcR5OkzLiAJjKzGR2U7mjlCRHhPv1CoSNJrt4Ywmq
Dztkl+SkQxJvBnrhZ2mQGIdsh0fG2J4eQVVLIgcC0+mpAUKrV7P6b4GYpE3KUblG
6lAj5BZ+gWOl7ZOH77jAlmymh7zlUXRJiyOr8VEqDRSSGW/cF9677vKlwioq4ExQ
391Ew0aDCzDlBSCntQhpPNsCwt6I83lTshSY97NRyJowJ+w4zwExmALok40+6j0a
yVU+uf0y9pTt4kFRuaM7PhlLwQpOB0SUKm9i8rCCLZvJBOPJhKAprkN4hvFh8gAO
N+8ciaa3ym2fCA8SAyM83R+pBByBCqq7LHTQ7LN0PiOUt2i8LxW1oUW5G7rNA8AP
ESrXqz+maBiyT9t8c3N+1rqpzZxsSiGYNhi5okYIbFb+J5PNyhJl4TSmCvBv9DAF
nfgDzvhu9/CFk4NfNqG6fk8hfr9GJybqVC2mO41U7IC07BRQt04=
=DNs+
-----END PGP SIGNATURE-----


--=-=AstN0ZLDlRIl25=-=--



--===============0553688951145295457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0553688951145295457==--


