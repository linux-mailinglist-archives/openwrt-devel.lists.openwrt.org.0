Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DC2860A9
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 13:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vecxq+sWcGYID0xa5MChnvOnszZ+bicLmwEZnsjuUa4=; b=uqLz0WBwK+WASuiwpX9C44/os
	WVt0sbQuGYeJPqwX3OyKBnyr7eg8i25KWHyuGy9+D3m+YhjpEuC+cc+PJZpC7FbLD4RisbDBqKwtU
	qQtqQ/mGQ09S47YzXYWwvwuMxbXpGxor+dzYxPSsNt+00CsbZsaJNWD6iXl2GKTzlGI++0hKCPWyi
	F/RjQ5r3D/Pg1sRFFgzZZhnVzZP12+9SdUXirvGchi+c8GIYvyc387O597EBHpkAtkLaIsV/Lg3a9
	7mkz7Chv5vChKdpehy2GjDsNqt65rk0jKLDeTNaH03Rdfow8FMwR7vncSNZt8kKwywMLDho7ur2XR
	LDzLP9d/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgNP-0001RJ-Fw; Thu, 08 Aug 2019 11:14:35 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgNC-0001Ql-UI
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 11:14:25 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MBll6-1i1Dkr0VuW-00CECr; Thu, 08
 Aug 2019 13:14:17 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Alexander Couzens'" <lynxis@fe80.eu>
References: <20190805134817.1942-1-freifunk@adrianschmutzler.de>
 <20190805232334.72808226@lazus.yip>
In-Reply-To: <20190805232334.72808226@lazus.yip>
Date: Thu, 8 Aug 2019 13:14:15 +0200
Message-ID: <00e901d54dda$6b092b70$411b8250$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHg+oOHKkyoEmu+yvtA4KQzd48NuAGnWCKqpsyErhA=
Content-Language: de
X-Provags-ID: V03:K1:YwGhYFjyw5FybiZ5Ru/Eye9yxUL/Y4940oimI/qzaUGTGfCROWP
 VIjYEeIk5gSZtr/Iy5DNP5Uo7+lhO2PiIRIdkIjkgs12tmyeyEFL7uUMOcTsuwKJOadS8Bk
 rWPuJsxAgG+IkamTZTiJeuqjFkTRuMgGbbIs3RK0uvVo9ZiL749eTmSwkeMcDBf4jRD3zmE
 6oQkw/0rQKnIi5UjpmEgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wDwHOXQC9zU=:ZHpDoh/1afmUr27X5T7b3c
 UUZz82Mhu733TMlEH1JYY4E9Y/YIi8pVEU0uk9tDh0mtm0G4w2NVdDTqT/EVhNcn+Dyg6ZRmT
 sa0EizomhmlWAyzjNm+TObhMdgY5XTu1yjY0hNcyro+4VYj20DV3BG258CcH44aIUa0Tp8tAZ
 vn8TV1yBvLHuz7HOJ12PsK4m3cwt+exSxiMV4C3MFq8gTx93fTaje1sg/QDj9D+atVJ891frD
 VMFh2nH2j8rRrwY1GQN1kplJ/U8qurtVNneYdVgnQ1AR/4+Ues4oiBf5U+sS30oJw5erwqSqa
 O2mpWvhCByGsiqnMuBDMgYkjhsj6BJmseM8FNGhg7Jzc3hhOCch0FD4zpdrnNxWPlXjY/rqeo
 8ysFIiY3uBPYxfeP83QddJGEeA6OORCBn9orhfi9oAv65MCw4XGLedRTiz6saZ5nTzsmbiS3t
 +SCp7FThRVtGPSUCdBSuvaHtyymrjt1btOWKy/qM1lVUrZfJ15MYeFIW8YPdx22RU0fPYSOe6
 kbI4gZoArYDKP5oUoUQ5btznymyzaQjd9KzClGEaw/nBQHAiD8M1FZi/33hvgCWphNFmvydJo
 wuejo5HXLHO8aubRyRkhKCUj/1fVBxfeuqs4308c2WmQPwZoh60kebAbKvpzMf1HjhdewMVfc
 oL0FV9Ob6OCPxoG/0nS+vQ89/m3T6RjXsCg2YQOU8ARMYqlGyqqY3BwONJYcCems495P44eml
 As2RE61RGOw+uEp8swzwSnnYeygPJ2TtUJOyG/lGgt7rZMmT9Q/ZNlMvErE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_041423_268514_33072B98 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] treewide: convert MAC address
 location offsets to hexadecimal
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
Content-Type: multipart/mixed; boundary="===============2217868267642836140=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2217868267642836140==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=+igWS0/5m/Jext=-="

This is a multipart message in MIME format.

--=-=+igWS0/5m/Jext=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: Alexander Couzens [mailto:lynxis@fe80.eu]=20
> Sent: Montag, 5. August 2019 23:24
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] treewide: convert MAC address lo=
cation offsets to hexadecimal
>
> On Mon,=C2=A0 5 Aug 2019 15:48:16 +0200=20
> Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:=20
> > This changes the offsets for the MAC address location in=20
> > mtd_get_mac_binary* and mtd_get_mac_text to hexadecimal notation.=20
> Acked-by: Alexander Couzens <lynxis@fe80.eu>=20

Would be nice if someone merged this patchset while it still might apply to=
 master =E2=80=A6

--=-=+igWS0/5m/Jext=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1MBAcACgkQoNyKO7qx
AnAnOw/7BMhtNom/cz19IQasGx1djzUrMSeVKS9puCciLZORm4UEnJgkWcEQiDmg
aglEDJjn0sk63ku1/H0D+U/6HynOmynsahzwQml5TQ9rii5n6JFCRw/mLYBMUwk3
IPRPCqoGgVs4tsOsR6rH/fKgc7M/HjhQuKerItMrclGD57MJ+2449sH/CcHqimN5
jh0L5r8yMzrCz2DSUGh0vE11/UtkfWMGzoHh6pOf10nzTYpXD6c/vaAFzdAv94Hm
boAhzXe4T30iyPphYmDRoEL3+1D6zKxPSY4TVCnpTBpymPfgU26B+aopVLOsfZLG
S0lIPCdrROgZkR2n3qlccG7dyvCifsogHnI2akd9vechY6iG49GgO/E1t4hmjZFS
SxLOtIAKgYIRGMrYS+0MYtK7+JuwT1iasOnS+yooSn6XCIIjlxlNfj9q82TPtjaD
/kS0J9OZ/gx6RWCI2AeACHUpTGkRxbCsvUPhQnC1dW9+MUMIlj4PcgUQUTGY79TA
m95bnlL+MaMD+XdpnSR/bY4T6GCaGHJHtloTlZLmi/FP9H0aAx8/AZi7VvtmoftO
75UkirNQPqGuUZ9xQZjPYa+T8g9Va0zUaDCSNCRTjGsmt3mKzXwIMyOSU40kjEOm
Etth4VDpYDomZyYm6ob62NWO9IB9MENAk//cy0rxWAxdGgd8FJU=
=PYmi
-----END PGP SIGNATURE-----


--=-=+igWS0/5m/Jext=-=--



--===============2217868267642836140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2217868267642836140==--


