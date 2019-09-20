Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F043B8E13
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 11:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TN3JvDnD+QeVc58KxGUj8kiMebVIcDgvrUNWD1hNUTg=; b=EAjFHy4moeepIc7xfA+SE4qHd
	Xa6KbUt5QFQWDzsNvQ+2aK4IM1wb2OYaZxy8S+Oe9EVvpH1YtNLj6zhAhoPnh2b1JfWTC/mLf4DEi
	fLZjAqZJZ/Kh/XTcqoCkBRbDUWHwgmbmVJpjEhaZdmEqmq7SjLP8aJKgHMJz5LNlnglVzVQfg0z4f
	l3xR4IEnsNFXIHT+LENF8UcHTcfEhbP8Wrm2tO84M9l0XrcwSnlTFUDQQ4fnJO3VIbe5uvFDRVnZz
	lpngsUnWCYitwPLB8uOuGkR9WJyYoGc40kdK6QdvpX0DRg9zgVwlckKd+2YfFFUavCFSxsAljk4AZ
	x0PLYJU7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFct-00024z-V5; Fri, 20 Sep 2019 09:54:55 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFck-00024g-Ba
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 09:54:47 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N3sNa-1i2LcR2ikS-00zoud; Fri, 20
 Sep 2019 11:54:27 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
 <20190920064507.GA17181@meh.true.cz>
In-Reply-To: <20190920064507.GA17181@meh.true.cz>
Date: Fri, 20 Sep 2019 11:54:27 +0200
Message-ID: <000701d56f99$64049900$2c0dcb00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQEl3TS+VjKhK66FTozTe8BiO2ldHgGlT+C+qIZMOBA=
Content-Language: de
X-Provags-ID: V03:K1:HD4ynFnoMvqGTIxtAxNOJc8gxV21XZHChiQKpG4Ps9SjcxemUXv
 r2JgA2l/JNcG0aiglHkadyHsUNgcIJAdCDTlT2YYqoC2IqCuJzxvYkb1xNeTJO5G7JoBvcM
 xnF0cf0AhSnJqQSOcZOFe/NtorgVZPTtU+wI3hKqaOqYRVPrAsQv+SE4Xsw6d3yeM43e+Fs
 167w7qEA/kmonWbmtgY1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dBDlkXCDfq8=:1ELynNcnTDbxQG8AsGGyVS
 YuxuNIKDYnX6XrEB1Pe+6TMY/wqSe96RE3Dfo+Lq3Bcpy7/xXTGbi8rtt3i0dSSOlUw3LlzX7
 mCDWhHI/HjALSZkjUiKFBNcTIHeyf5Eyj0DpnWJ6jq58oAqu8zZgj7F30cWbjsgnDlmvzIQEv
 x7BBs6/vKIcUwGxuJe3rBYbUPqpuJ1CrbvGUvJXrzWyVUtGrCFIWKpangouLEzQzdtMBNakrO
 KeuShQDp9ajFDKYWA5vrOH71ks2no7YgTjL729HO6nDEHvDVrIeyByY8Spnb/7RAShpOkzL69
 NGKh2i255PlUUqWnd3RLsiy6lJGGK2Tlc2exauE62B5Y8Nj/dNKPRvZNKedaMRM+RTa684VGQ
 JjcUQknEvEDdn2mQiDux+RH2XLfKn8lB/INCGYr8JSkfFBMZZJi5UdS0D8/qQzLENevRFuBZv
 Z4+AR85YL/0S95VgdBsOb5txVuCrxBtCT9HXlB1jbF7F8fOCos0I/LCEadxIdbdzCHYcc93rQ
 fecPs4a3B4pbO0kMj+32iRU1VLVTt5xBphYton6Ugi15U34D1MwCbNNa/5cumwQWj8KObHrqK
 spqxJZcj9SLN5gbkiS8ZM5hAV1ltv4x38jW59xIsf9vL10RxT0J2Uk7+tfo6zEYW2rZE8x9z9
 VcwifF+kzr+g0SGr7faQa+K6KcBabgp67Y3sptPm8NpUeEyyM3hJg+XLIOq68uCnAaUKSgghL
 FfEz0rw4x6AldtS74qH1Zr9cOI+F48lxl/C4qQvDPXdp1/n1Xf+FnINkSw+6WH5Bso8kwso+g
 VmYTWIi8IkY6+93zioCsnXGpjSzW9C9v2pAhPyHMVMd+d4dl5Nfv4qO3NsBnIJrLfWp1V/6gJ
 wcMEm/mm6u0hgG0w7q7N8MtA/1mthzRClZHvAXhVs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_025446_690164_BE68120E 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ramips/mt762x: convert devices to
 interrupt-driven gpio-keys
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
Content-Type: multipart/mixed; boundary="===============3964800779298818360=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3964800779298818360==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=7LmfDa9J4lfdUL=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=7LmfDa9J4lfdUL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Petr =C5=A0tetiar [mailto:ynezz@true.cz]
> Sent: Freitag, 20. September 2019 08:45
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ramips/mt762x: convert devices t=
o interrupt-driven gpio-keys
>=20
> Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-09-17 14:22:21]:
>=20
> Hi,
>=20
> > This converts all remaining devices to use interrupt-driven
> > gpio-keys compatible instead of gpio-keys-polled.
> > The poll-interval is removed.
>=20
> [...]
>=20
> >  161 files changed, 197 insertions(+), 314 deletions(-)
>=20
> I'm just wondering what makes you so confident, that this changes wont br=
eak
> any of the affected devices. On which devices this has been tested? Some
> Tested-by: would help to get this merged, thanks.

Well, for quite some time already every device added to ath79 and ramips ha=
s been advised to use gpio-keys, and I personally do not remember a single =
case where issues with that have been reported (that were not also present =
with polled keys).

Also note that I only address mt762x devices here, and do not touch the rtx=
xxx subtargets.

But I would obviously also be happy about some Tested-by from the list (as =
with ath79, where I received those).

Best

Adrian

--=-=7LmfDa9J4lfdUL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2Eoc8ACgkQoNyKO7qx
AnDooBAAvFsdFUuQZe/LSsz07r4CeBtQ3s12psOYOi5SdUW7tJkvvnH8Xs/Y65CW
YjncdapIS4wDW/iL7uaqKzfjKvRU+mEHYzoupCU/XBKyUzBSM73doUrnkZqr3O6T
dpQPhG9wEhoRbLYo4ohnPxzK0V10mtFS9n77wou0Addo5P2oKJ7mNMyPJxRrTmWC
N95/GRrWyykXpefU2yk4IhgcF88rX0qZGhDkD8p01N0YW8oMeIPIdOA7qdS9FnAn
806MuyPrlMBROHjmU3JiE7g7l5Q98NMBPIT7LqSqiMOsLas6zRJhf0ku9BOQKeJp
BaUMGUZsFxlo8EdCbb0kGomXTkOoVYgvuQznVxXFrrbAppzSviawl89AzuBM1DXz
X5iB+YCOtUL1fKEyzP4SVij/bAj1dgTnpS6vQTnTK4ohDWgEdCAV95EL0PHqoQiW
0hNBOwb6kh9YCBy41WtEUxV0PR2RQvZ8k4x5SPtHtXIDMbKZ5MyhGoUUFFgeuGQS
Vm5Hijbzqy/7eMDdlt/yivK9Sgm8FZ3txrVw9WO+7TzZLU9jzbkVZ8V33/G/gm8U
vbqMAaFWk/AV/W0rI+ApMI1tt/3xkj7rU8c7QWmSOdyVvG6EhvOHCFGEqKqA06Jj
tqmGZXNSvJ+JXmFneqmPUgyjgJG27dZiFAbfCte8SSf0RikFjBM=
=8lUh
-----END PGP SIGNATURE-----


--=-=7LmfDa9J4lfdUL=-=--



--===============3964800779298818360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3964800779298818360==--


