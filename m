Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3032FF8A5
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 14:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ptf89ztanyr2+NjVTjWCfSzPIKtGGErBuDd59txOBBY=; b=NZQly671afuKoyHE0ZVkcclhF
	E/wH9phVyS7lvkPPQ1y8LpAiGaPVaEllDpmVhKRcts/uvptkI+Y9hpmDVc8TMGRIvuTFx1UW3wkS9
	//ue9MVrUyklmwhOKdldrkS6osneySqLnp+GKwomoXhUM3Q5aiVqodDQ9YPdJWQ0KkhPeAL7K/EA+
	1poM11KvonqmeFCLQ70Unhoz1XyzjGi5B2vNExoO2K+NI1c186gbq/UYM610ATWebrUa+R+c6SX7f
	TUy9Qhz8QRyQtBU5q+Xgfqb9KT3L+RLqNWgErvewB/5zA1mG0xYs9FSkbIFdijqsSKdgwabU8EDYt
	XNsnUS/Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRiI-0000xn-Nz; Tue, 30 Apr 2019 12:18:22 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRiB-0000wt-Fm
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 12:18:17 +0000
Received: from desktop ([188.195.207.50]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N332D-1gcmad1LEz-013RSY; Tue, 30 Apr 2019 14:18:10 +0200
From: <mail@adrianschmutzler.de>
To: "'camden lindsay'" <camden.lindsay+lede@gmail.com>
References: <20190417134552.9294-1-freifunk@adrianschmutzler.de>
 <3153692.KaT8f5YDfS@debian64>
 <8a272c0b-4f75-df8a-f2a4-f9197ee9f7c4@david-bauer.net>
 <2243041.a4oj9KbRke@debian64>
 <912fd259-fe71-3446-bd05-838bea125163@david-bauer.net>
 <005601d4f900$da3d1760$8eb74620$@adrianschmutzler.de>
 <CABkW7JNC7uNqx+BgH80WAywsXymxEfwzFA+YRSmsYfDiRZDLpg@mail.gmail.com>
In-Reply-To: <CABkW7JNC7uNqx+BgH80WAywsXymxEfwzFA+YRSmsYfDiRZDLpg@mail.gmail.com>
Date: Tue, 30 Apr 2019 14:18:09 +0200
Message-ID: <007201d4ff4e$c6820a10$53861e30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKjPi7u5lBoryOgLv3WXCS/yUXMzgJSngsKAeflfosB7OewiQG/UGe2AjQDHuUC9id5OKRPmB2g
X-Provags-ID: V03:K1:6LQ0D/nrVJjO3DEAgZTnQWWr/VecNijJwmsKHKqhbMPrP66H0yW
 qcerbmjbZ4GCQ8qqjsMVRDM+bH6XcTl2E/uwdH2g4wRL/ukcWVIt/uS5Xr1jMpakSjopkiZ
 iRa/GMe6c5JeSIMUohZH7rJcR0xSTpRRQNHEFz1qhOo9YD17PC9ZwKXjC8HsdIbiDSe5r8x
 81gULAvMTnoAEGIZ2iRew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gUsTgfRWb+I=:IArOR7lf+f6g9j+8I/kUxT
 tAnLU2vIZJMcl0vxPgz/66/Olv25V7D5I9C9spzVSWl8C5vUOVdy5oRCZhryA7C0hsTDYN7+n
 vTs8ov2x37butzGPJDMpNDN/bXrXi1A9QyZ4L2AMjDCHWrMwgs/nfNgPFHO8/y4srop9SmJkR
 y0Qpz184rOr82vGLDUCUVgDBb92LDBRp+1gi/FJKesJxuOUvZsCg1XfbJv5DFCTb2x54gOLOX
 2Irb63EdL90bZXZNM94EhBz8xSdMFcBbVOO39gfS8bys1RuxDI+Kki/REk4B0Aceo+PGvtX2L
 nZrU2M9Lciiyw7DH81mqU3NwUraFvgsCd85Z4Lr9Gd2Xc029bpNADo4IgJnlnsW3zB9+hItgB
 ff58Xw7gyPSgfbrv48gP3lGEBj/10LIml2zVUa87SJFBsCHc0wVaQMfCeVPGPaD4+w7o1ulBg
 /UebF2nubkJ0fXlASZ4xbXwIEFDIu1Atw4b8+fVQ597AU2ITI5ZdiDbvMYISY9ai2cvQZ7+QQ
 YDYxVWMRR5nmDlifMgJ7IGX2siRivX8FxND7s3NhAARRY20xl/zC7zepl5qwONODeQ408Qnxy
 xLdmVq2lJJS/BTHxAw/nGCPsnkEfoWgzDMqQs+jZikJYumGU1o6oIbLJZFJFWjSuMDr2ciCz2
 JiQxkOBwEqT4irYTjbHzDnTpsihwqB/7Arhw3+g446R6C3cljku8mn7mLA9WaacuqgIooxYiN
 Hy4cmtGiVKCwy4sDOj4tiDvRW7wjLd+FJwn0KL2iPwANizmWNqHuAw6V/8Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_051815_827056_79117A16 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Archer
 C7 v1/v2
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: 'Adrian Schmutzler' <freifunk@adrianschmutzler.de>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Tomasz Maciej Nowak' <tomek_n@o2.pl>, 'David Bauer' <mail@david-bauer.net>,
 'Christian Lamparter' <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============7623556360168886445=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7623556360168886445==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=U3KKQXo26W7Rtu=-="

This is a multipart message in MIME format.

--=-=U3KKQXo26W7Rtu=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Camden,

> From: camden lindsay [mailto:camden.lindsay+lede@gmail.com]=20
> Sent: Dienstag, 30. April 2019 03:48
> To: mail@adrianschmutzler.de
> Cc: David Bauer <mail@david-bauer.net>; Christian Lamparter <chunkeey@gma=
il.com>; Adrian Schmutzler <freifunk@adrianschmutzler.de>; OpenWrt Developm=
ent List <openwrt-devel@lists.openwrt.org>; Tomasz Maciej Nowak <tomek_n@o2=
.pl>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Arc=
her C7 v1/v2
>
> Adrian-
> I have a C7V2 and can do some testing on it if you'd explain exactly what=
 you're looking for...=C2=A0 I don't quite follow what is needed in the abo=
ve thread.=C2=A0 Something about looking at PCI paths before and after an u=
pgrade from one version to another...
> Camden
>

Thanks for your offer.

Unfortunately, I do not use the normal OpenWrt upgrade mechanism; so I also=
 do not know precisely what's the problem here.
=46rom the other people's comments, I can extract the following:

> >>> In case of the v2, I think there's still the problem that a straight
> >>> up upgrade from ar71xx to ath79 will affect the 5GHz ath10k wireless
> >>> because it now has a new device path and hence a new default
> >>> configuration (where the card is
> >>> disabled) is created.
> >>
[ ... ]
> >
> > On my C7 v1 with a QCA9880v2 the ar71xx installation back in
> > 2018-08-17 looked like this:
> >
> > config wifi-device 'radio0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'mac80211'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 'DE'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 'auto'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'11g'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'platform/qca955x_wmac'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'HT20'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0'0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 '10'
> >
> > config wifi-device 'radio1'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'mac80211'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 '52'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 'DE'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'11a'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'pci0000:01/0000:01:00.0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'VHT80'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0'0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 '14'
> >
> > vs ath79 (today):
> >
> > config wifi-device 'radio0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'mac80211'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 'DE'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 'auto'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'11g'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'platform/ahb/ahb:apb/18100000.wmac'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'HT20'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0'0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 '10'
> >
> > config wifi-device 'radio1'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'mac80211'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 '52'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 'DE'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'11a'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0'pci0000:00/0000:00:00.0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0'VHT80'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0'0'
> >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 '14'
> >
> > so the path changed from "pci0000:01/0000:01:00.0" to
> > "pci0000:00/0000:00:00.0". But again this is on a C7 v1.
> >
> > Based on the bootlog on the wiki for 18.06.1 :
> > https://openwrt.org/toh/tp-link/archer-c7-1750#boot_logs
> > The ar71xx image enabling both pcie Root Complexes of the QCA955x.
> > But unfortunately the pcie slot of the C7 is wired to the second RC,
> > so the ath10k card gets pci0000:01/0000:01:00.0. Does anybody want to
> > test what happens if the ath79 C7 v2 DTS enables "pcie0" too? It might
> > work, but it might not (depending on whenever it might end up in a
> > different pci domain like pci0001:00.).
>=20
[...]
> Regarding enabling the first bus: Personally, I would prefer a migration =
script
> over enabling a non-wired interface. There is already a migration script =
for
> exactly this case in the mpc85xx target, so most of this work is probably
> straight up copy-paste ;)

=46rom the different comments, I'm not quite sure whether this is a matter =
of simple testing or whether there is still a migration script required.

Best

Adrian

--=-=U3KKQXo26W7Rtu=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAlzIPPwACgkQoNyKO7qx
AnDekg//cNKj6f7mCGEQQyhifwzUmVrVooeMYUXN+RYF2ZzRgzGjMy5CBIEfEAKj
D0V1Dfz17LILJi7VbRC9Xpdz9E78uEQW922ut2YqJuE/4fiTqbv0Mv64JDr8nh15
IIacKzmm1cAREFAJc0dRE5IHBVpMEVWBVEFCi95rXN9/LAbM9gwfXKSlu11YXHxv
ly0pxPb5U0q7+5tuPdbfiSnCJLvcxlT1Bry8Hb8Zn2xcufcRwUisH1guF9me9GYO
2Vz3oixFMCLQawOQQlrJDSrvBflIc0VPTM8co9AaJKt9nh2UDnsK1Hd7wjze1kW7
NhNdnaw2DElaVssPb3EWb51CmS5L4v1lOnbdwQoITqFe9uvgGAhv7EGvqkz9ZwID
ksVx6PgXi7fC0YdFfEaVE9X8nPxQRFAWIHuzYHAx0paLl/3q1QknwayHR71XKAmS
tSGzKfzxjGbI8fALOxJZZ9bbUYWPpfB446/ysPSrHv709l2yyeG7IzX2cqeeUU6X
1iUgRBZTMcHtAATD15lh4vpLPXkaMUkC0HTCeuaQadSlIdLmbdWQNUUqEoCYEgrS
n9AYALJV4AB8rd+bSNtYR8d9u1JWXa+c/5sFs7Ty0cM49WT+/YY5H6alqEWlYI+N
MZSpkBR3vE/6OjPoxm5PIsac3ya7e6j4C4zUzyxH9OaN6Iu2nA8=
=8vcv
-----END PGP SIGNATURE-----


--=-=U3KKQXo26W7Rtu=-=--



--===============7623556360168886445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7623556360168886445==--


