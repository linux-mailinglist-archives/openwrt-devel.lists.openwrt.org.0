Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE4AD7BD0
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 18:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RMEJoiVsEh/6LjeihfP2NJmnk2WUac45L+GjNPCO46I=; b=YykYs1dqj4+rianakG8Btifpg
	+++8bs9ED8dIp7bb9oiwO/3axS94Cv8xqJcl5YSNmlKVFqFhvP1cMflUf9RF4EY7agLhxWW+xpmuK
	6V7xIClWrJaGsWdJX80dkGJCbp32iWWN7FU+d/dp4qwCXH5w2QY+MoOpF0ZuiBdmrrZwSD8PvcmWs
	iRbkm/7nvEx8ejo88SmjsFE6ToCTwHQimUfpWiZxEMkFUh9ZutgtU3jb6weRb0jRniweTtsPqrKu8
	1kJfspPuDsTwonC4oP+4Mn3CcapDlWbWXsk2KCUFuEtHAfFD1F3d9muAZ7fXZxf2O28C3qxSqgM7L
	9P32IZ4Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPp0-0002EZ-W2; Tue, 15 Oct 2019 16:37:18 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPor-0002Dv-GJ
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 16:37:11 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N79dk-1hzGMJ0w8a-017U0n; Tue, 15
 Oct 2019 18:37:07 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20191014104701.207324-1-mail@david-bauer.net>
In-Reply-To: <20191014104701.207324-1-mail@david-bauer.net>
Date: Tue, 15 Oct 2019 18:37:06 +0200
Message-ID: <00f501d58376$c89e1300$59da3900$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHvpjY86j1/DP94kfwinZ8alhrMWKcnoQVw
MIME-Version: 1.0
X-Provags-ID: V03:K1:E2oc6Qxe32tyOTaPCbJeKNZemgHn+qYC1MY9DYfi5J4bGaxM+cZ
 AACBbSQbjnmoY0Q/Bo/LNrIZYKlAc8a4Ory6omwril2gL47H2uRBiDHs8ZANMeQ/2+Rjbmn
 bTg4dWJr9wT0HaQrlNUuFLapbQLaHf2rcJYwqPZimLcI1jEgRvlIjK0wh9nbobEs/6rUnEQ
 fiZLdnQXFZVeh2e/n58hw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2+9mcvpl1Fk=:Bhir5RmXSJBiCafrHNoJA9
 PbMetztWtJV7hDb9KGGJDOIB0YJ/DlZpbj6LsDtzG4zr8NZHuPc11BdQKuB/Oz/f5HWvu1P53
 n+VLbIB5hwSzCF3UwYz5B8Os6ecpj064Ragao0gF+oDeNeexzve8SU1eZ8MwW2jfBIC3HcHR/
 8Si4VVodi/MuWaPjQA6SkAfy8yIhcy3BrQ3uS1MdSi8L9lYwQT1jjXSqf7g9Qf0C5q/YnTuuv
 bn16kP5I/XJOVspTQka5GUEiyHH27O/OyUZafHcyi5AuazuFsDb1BIhvnZ9mWW2REg0V/OEqt
 4LIhknmrVvL8Hjg8ixbi8HRoiIUvyYqZgHxUBNGUtjFU3xrO2lMevVwLNHcDKetzJcbQfwj3A
 dBovMzNQjMjveObaI0VsXBsB4F0VndFK4fVV+kX+DNaSQ77p5mqBNjI4x3/9CaOG65AT1wGaj
 tsAR5irZhKGZSPluHMQxseNwm5s9gOQt1SPSV/qM3Ldc53JwfWyfpJ0ziTrg+1kpc5aQe8nlx
 tsHTssqJ7Jy8jEGUw7A3SCMblioLDjJpL5C6gP3Y3bFrT4RTRu3LiVeDthtFvfp7+s1adNDX4
 Yb5Xew5Y+/Fv/2rhrOycB96ahRC9AedPu58Z3or5L1wCg0Rm3F+FFXBRvX4/1vMNO/AXLkdNu
 qtQCrfL8b/qL9NgKbkPKnvDeORA8UoEVcfX+XFtqZJLIMf2Y4KyJa9sYIVIfHyUHl9+5UIZAF
 9ivbxww0a7CW/CpREl8JhWHDrCUEJq4gJOB8+4xYhNhDEC96gCHY/tR/k/STMCzCxY5tMTt2N
 08n2nYThDxLg9p0flP6L+TTEBipcLDogvqW5KROArsbBVR0Tzanbgr+4jdwjoyJNk0dJtQ5qH
 o/3E5/m91sfrKGVrup2KRgIACvq6o2frzZo+Eu44U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_093709_839138_A564004E 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: correct ar71xx boardname for
 UniFi AC Lite
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
Content-Type: multipart/mixed; boundary="===============7839907023282428934=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7839907023282428934==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=xoM4eZOv6/wU0d=-="

This is a multipart message in MIME format.

--=-=xoM4eZOv6/wU0d=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of David Bauer
> Sent: Montag, 14. Oktober 2019 12:47
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ath79: correct ar71xx boardname for UniF=
i AC Lite
>=20
> This corrects the additional boardname for the image metadata to the one
> used in ar71xx. The previously present additional entry was never used
> on a running system.
>=20
> Signed-off-by: David Bauer <mail@david-bauer.net>

This should be backported to 19.07.

Best

Adrian=20

--=-=xoM4eZOv6/wU0d=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2l9bIACgkQoNyKO7qx
AnCToxAAvsH4de/quYY2iGjd68xQ5SXvk8T1p/I8a5dhy+V7VW2fSkkH1IFnKkQW
Jg5B3nCo3vWIPSsGRdUzNz6QG5fGF1Q18zLCt7knyAkP/9RkCBUhfx4QutLVl5Hv
VzbBPrDEzspF3sjixVPuaAjFmpoAscrz4iuho0gHGYWC8nlN2X34grREvurIzbeA
VekEXacnGEnxu044934LQcXJ9RnKSj3gIEByaN1gQ/PsN3YoRjDgZ48DthjE8uXW
crhCYTxTuu4wr3jUTGIDoMcknggOR8MRlUx229fxcn7xNxkGcPdCRHstYe3nlf65
tD6JlbbkyWD9Pf9OlZQxeYa9Tr/6QdHyd6hfzWDBJ2/5Dzrxvl9WmRCFTjZPbliN
ySoy+lWpYJgqQ3PWatffxS0hSPIm8aCdjFApVG5nLKJzwF02POSJ5bbUzql4AvqW
27ZtIyTia5ujeM3CbRBUMro3XjW9n6xBko0ZMMpZ3osGOEULtlKnH9hrgRMuKvSZ
3XASugTKi/die3sSChYx7XecS17UTlWTsBa/Y/sAqXFDBQ1Uom2LStqI7bHZcI7K
TxmTcbYVzlydk51eF4EbiVAyF+LIvzim0Lr68cpM6MqoTTtaY4y88sXp+lG+84k+
zJeZqIUDab+37a03XaFUWIaU5XW8mvKgdxo1zexOrZQAYmwT2ZU=
=Wj5x
-----END PGP SIGNATURE-----


--=-=xoM4eZOv6/wU0d=-=--



--===============7839907023282428934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7839907023282428934==--


