Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACA847226
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 22:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pjObSRdMiF54i+XR7ZuorEYQOScNT9hTOg9MajW4YJo=; b=P98ZQfmZZ8bDHXJC+9chX4m6b
	fgp879qD57gJHNIg0OaT3a5Ls8gsS8Y5X/G6oe/HO/0Cf1Aart4jgS37cNJza+m25KBIB4V9GrG5P
	Vhng9S+Dav7OIMm9voQFH8xguFjq+ue1o4v7lmSELH7qhJt4pOfYSwD0yVTKzQOJnCD06O4b1A007
	dtFmWwnd6rDe6Exx7dEpC/qBWhgAo4CyUTDO1SU5VG6q9pU4i2AKbGYMxP2GZFC/BWxcSun46Ee5M
	n4fgLtx2nzJk7HeoKvQrCtaNn6xRxcai56Lls52Fs6QbokIsXilzobfZJf7IGbXw00z8Lp0A7+kq9
	ULDB/+Wkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcFfd-0005oL-9C; Sat, 15 Jun 2019 20:53:05 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcFfS-0005nd-HF
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 20:52:56 +0000
Received: from desktop ([188.194.85.108]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MI4cT-1hoe8R3YRz-00FEGt for <openwrt-devel@lists.openwrt.org>; Sat, 15 Jun
 2019 22:52:44 +0200
From: <mail@adrianschmutzler.de>
To: "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <20190417134552.9294-1-freifunk@adrianschmutzler.de>
 <3153692.KaT8f5YDfS@debian64>
 <8a272c0b-4f75-df8a-f2a4-f9197ee9f7c4@david-bauer.net>
 <2243041.a4oj9KbRke@debian64>
 <912fd259-fe71-3446-bd05-838bea125163@david-bauer.net>
 <005601d4f900$da3d1760$8eb74620$@adrianschmutzler.de>
 <CABkW7JNC7uNqx+BgH80WAywsXymxEfwzFA+YRSmsYfDiRZDLpg@mail.gmail.com>
 <007201d4ff4e$c6820a10$53861e30$@adrianschmutzler.de>
 <CABkW7JNc+GeMHKna-fWLDDCWND=BhcT7fCgC+NRLkzQLL2gb4A@mail.gmail.com>
 <026901d514ab$f561d410$e0257c30$@adrianschmutzler.de>
In-Reply-To: <026901d514ab$f561d410$e0257c30$@adrianschmutzler.de>
Date: Sat, 15 Jun 2019 22:52:39 +0200
Message-ID: <02a701d523bc$483cb6e0$d8b624a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKjPi7u5lBoryOgLv3WXCS/yUXMzgJSngsKAeflfosB7OewiQG/UGe2AjQDHuUC9id5OAJO5LEFAkeRmZwB5B9Z+6RknkmA
X-Provags-ID: V03:K1:59jBCDG7InSUW8cLOnoE/T4LUoI7be/3JCZshunrHZBCF/SU/9Z
 aODqIg0bx8s5CRQpGxvn9MLnYFAWEnjYMhbmglLLmGxHJSUIiPd8lIxNs7Sm2Hahx3Lo1QL
 xdb64UqDd9qwrpQWIuTWag3/me1uTHka6Bpd0nOotQBL2s7aicBbmIaZnAoyz+xp1/0axWR
 bzbN3TiK93+birG3BhDEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KUpaSAWKz/0=:qV8SDZ2qKCAavXoLErSsAY
 Du6cCRxoAtG1yUVAGwhJSO3UDp5+PXNQ2TwEjf1mnxNgmZY9qH5fxE/kxuO/roEe+AmW6qgDM
 35CiP7OnPsJA9OAaRUg+ebB4f6CiUt4zUAHBfeFqt/fvAFOdZMUbpDen2u109WHGVwjSlfhap
 m50TRCO48v58YOE6nBeb7t/L7K3pYgeKndr3Vw0eufi8M5BSXpRyq9zG8LVgZ2rCXEvKOZ4kn
 l1uvGWtWlEM2HMTbuZ5CFk/H16Xdp7lxzXZEWduFe3ffERQRZSe5sQf4gPfS4fV3V56Rnje9Z
 PyRG1I5En9od2RtDyu2JBPcMSUV9mslgHaRpDYSFM8iJNzalnstBCWSUUPLZLuP9444ZwDovA
 uoEQk+xTRcfy1O3ShD6HYXS9l6mjyLqXBzjbQFPJQAOV5B0PrrSabRXwcPFHVpUVXl8+wUMD8
 6XYziz4qqZqMuXzfB9GJeUh/Qg4yuBCULpqQbKx4cRpkYcEGlTT7EPyOkYL8t5pGEVQoHAb1m
 uu5Vus3TUtgyG6GfF8Ge/9rEcz0LAyaygSRZIRO5pxz3ALMTwgkJ8UiFcbWRNOTxL4DRI3Mgy
 znXNrq15AHDajOl4WjouMCXBeq5B3m74/0ZfjHG7zzlSJ1yOauL45eqjlEJtdBgzGMRhEhW/a
 95r9ZzaTjS+OkW6OYp9G7m0ip9pEeu89V8Nuh6pe2cd/4oH20wLAl5zxks+7Tp+owkrAcQAO7
 Ry8jq5ZRTdKkZxaYNuM5MGNjzkeOCRjlxui66rh3MkJ3GFJ1bKyQNz+GVE8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_135254_873361_56D49F7C 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Archer
 C7 v1/v2
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
Content-Type: multipart/mixed; boundary="===============0035394938820045808=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0035394938820045808==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=QRPH5EsNKlQOF8=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=QRPH5EsNKlQOF8=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of camden lindsay=20
> Sent: Donnerstag, 2. Mai 2019 05:38=20
> To: mail@adrianschmutzler.de=20
> Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>; OpenWrt Development=
 List <openwrt-devel@lists.openwrt.org>; Tomasz Maciej Nowak <tomek_n@o2.pl=
>; David Bauer <mail@david-bauer.net>; Christian Lamparter <chunkeey@gmail.=
com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Arc=
her C7 v1/v2=20
>=20

Thanks for merging into master.

Please also apply to openwrt-19.07 (should be just a trivial cherry-pick), =
the C7v2 migration is already included there.

Best

Adrian

--=-=QRPH5EsNKlQOF8=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0FWTgACgkQoNyKO7qx
AnCeWg//Xy3UMlYfp+K027uJQEhIY50emQO8WW02PRErqQjm1oCc8lG477AcCQUH
vxVDVi26SELZDnhFBU+2xjUEXN+f9AQlwMDbQhJywGzQ65iMoPUQynvGx8O201+O
LqC3oTc0KCuslvvz6kviHrAHQRLjpr4FDZMKIQCIR0003xQpmwdSK5Qx36XCAi0w
/siuS5fEqxKCX8glXVCdqSr0N1fCoZ6KsiwpqtjPlWVPB9Ee6gRTdyC0RA3/NUyY
fmlXT06WcN9qVDUOOLmumEg9QS3SJ4rmVTMQZ3j9poWBYd7DbzyRUWwuaeoSSrSc
G+QjEzEkzSScU6BB6/m91Lzl5FFSyNjfF57O/T5izy8rfjGKKiTKUJcJRmYSgS0p
xn3f1oY/HGRQQraQmVRu8kz7U4GtSCvBwXQBITo8g858vMjaaeg16EZ8Y113hTW0
KDNKKSlpT1mHYPfOWGe67LgJUUsummmXt7XNd3b6ndoqvBo7A3TfO66R5IfT3w5E
m5nDNKIwCaoYGwwGTsU0uyuCyE7TLBPPwtgUNDlNJPdzm3I15ItmzHCJ1sLgOUSJ
zyEIWbnvwaG2oligX6h87OdbZ3FNbKZZxODgT3nRrZei93BDs48xrG3UHp1V7EaF
4gybc9KUMwpQ0UjC1ITDG0RPHYhKklZ6zO5Llb7QfEk5OfjDzQY=
=5Jaa
-----END PGP SIGNATURE-----


--=-=QRPH5EsNKlQOF8=-=--



--===============0035394938820045808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0035394938820045808==--


