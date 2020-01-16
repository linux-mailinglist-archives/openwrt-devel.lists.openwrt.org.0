Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C686413D906
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:30:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6ds6h2s8k6ldo8OvSf+9fJOLB526rjYq1YwLXv7ZtDQ=; b=EnIwrQfmxIy7syqUoEfnLyoZa
	BZmCaBkcZQUfEicuv2KjLM1FJ5ZKlb7XS7dGuBP0Rd4mGRJPwcHpeDdF+VGcfT5vSwnBS4uxSBUql
	VxeRCECCkgqwIqQzIlRpZxzx4R2G+yLba6Piro12kq/Z6Au17BY0NVqT6GVFt4Mns5E1j8i6IlKmY
	f2ceoOsiuRWMxaAR2BxSjDIsPAsU8xYE3N6A8U53hGrW3v3inJ7EIPl/kgmM/LF+x3XqB+D6dvBCA
	LyILBMTiW8jHEFacGg0ewjS/PS9XG3kULOvkNNNtnssm4GEOAo3HWFsmbOU3TMpSw+Ag8QF5IsTNG
	MCTBtVUfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3MJ-0006TM-Ja; Thu, 16 Jan 2020 11:30:43 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3M8-0006S2-VJ
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:30:37 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MYvLi-1j5Ecl3CHw-00UqI7; Thu, 16
 Jan 2020 12:30:27 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Filip Moc'" <lede@moc6.cz>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
 <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
 <20200116083048.GA27998@moc6.cz>
In-Reply-To: <20200116083048.GA27998@moc6.cz>
Date: Thu, 16 Jan 2020 12:30:27 +0100
Message-ID: <010901d5cc60$5a146370$0e3d2a50$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvgENk/fbAjCsNHICNRzL5QEz+4ZZAglc0CwB1SBFaQHjxa05AgMP88cCD0cQRgIdlTymp2XhNxA=
X-Provags-ID: V03:K1:3ZQP1HXeIbYRM6E9uEdWpkWAPZrR/GaRZHz0kqmn4FdAjENzoaq
 6O6VZSEA7XBCabZbfJDY47/ntRZr16PtGXovY3I7JEuq4Hea/xZSpq+nKGa+MgpShRxvPYF
 PNJgfPLPveVSmRwV/CsZeA+h842dGt/3QEXycZ2ljsgYePSMbQYkPvHGzKnPGHmltX0qZNc
 FJeLeT5Ryy60NwXnyUDHg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4JOIeVHmzyc=:XxMdimAqM1rz08OlfNfXLe
 1p7z2baWVuoW65Ilzq3K90QM1DFQUEpudrM/jpQp2t1T5Khe9x+DRGvPs8rjSRR+mM+GR/uvD
 HgHhQ0TIfKTja+SpGvd9S8n6VyrMgf/NHX0jlJMWj0ClNWMfCNzzgA0tWm3QF/EpzfrcTr07i
 mB/594lP7EJ9Q7xXoqe3QD9V0xY3ChaxCzXpqcFAjbUBhsuusrcvYJ9FdJsLUodszLx7XmS0V
 43ROewlja99KX3gf9xi5kEmfjO2Xn0r6FPcxEKv2DKBnRBk5jsinD/SHnkIoZCd0vifBvb7/q
 +lnE7QfMqElxZD6Bmm8LA49veEyBFsVwhyWDeUTS/uX9kBnc1uFyJf+Bza8+Jrd/yqs1CuHh2
 PNHAtoLUrZcxBq3MBckZX6AE1jVRlK386WozPKq2jGocZrZzC7GiiutUR91BvU5w9aOK2MlLU
 b00sJ7klcN3s7tCsk3jJBgRlgQgLhvdXv3PAbPYXnoQE3KUcIrOvrUltt/68N/pXdpx7jBMj6
 /t0pU1TqL87KrE+HnHdSEutwVYaRwSJJFnj0sCy2dJbbYQ2bowZh5nXSPJA6wUnYfq+gLFxIi
 Sm5RGSBtLoKHNItkeBsAceOYAb2nOLroI8L4nmMKIGGnQ3Fhapgb5EZOZnvj60CXkL5TWAUjn
 cltG6KpkX5p5JP8z7wfPWJsgR651KxlsL/h9XoK0idhZ+d1FFpob7e7R4FAAdzAaXUZv/diGL
 z/QYCVT057hnPPyvZOpVzRHlDarxv4TtK3sFniNiJzmtxFEZ5MXk9+j98OavYI9IhXUQtecIa
 lBM3Ihu6ZgJqBNdUhC30z+zUc25pzl0lhm77zlEX2zBGvmr18Ri+9Sjuzp96taMUBemQOF4mJ
 ZJInu1mcDuQmwONEtBAL3HIHwQJ8HRDJIItb5FcSU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_033033_304105_9BA502BB 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org, 'Enrico Mioso' <mrkiko.rs@gmail.com>
Content-Type: multipart/mixed; boundary="===============6353155694776034702=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6353155694776034702==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=PVwKn/YdUN05nZ=-="

This is a multipart message in MIME format.

--=-=PVwKn/YdUN05nZ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

And does the device have a MAC address printed on it? I would assume the on=
e from WiFi?

> -----Original Message-----
> From: Filip Moc [mailto:lede@moc6.cz]
> Sent: Donnerstag, 16. Januar 2020 09:31
> To: mail@adrianschmutzler.de
> Cc: 'Enrico Mioso' <mrkiko.rs@gmail.com>; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR=
6400
>=20
> Hi Adrian,
>=20
> thanks a lot for patch.
>=20
> I tested it on current trunk (bda6b6144d) and I can confirm that:
> 1. Works as expected, LTE can be turned off/on and value works as expected
> (0=3Doff,1=3Don).
> 2. Works as expected. LTE module's httpd is started after boot and LTE mo=
dule's
> web interface is available.
> 3. Seems to be working just fine. eth0 is still connected to switch (port=
s LAN1 to
> LAN3) while eth1 is connected to LAN4/WAN.
> 4. Interfaces are working just fine. Except for obvious problem with eth0=
 which
> has no link status detection.
> 5. Seems to be working just right. Even LAN LED turns off when I manually=
 set
> eth0 interface down from shell.
>=20
> I also tested buttons which still work fine.
>=20
> Problem with link detection on eth0 which always reports interface as UP =
with
> carrier even when there's nothing connected to switch remains unresolved.
> I'd be willing to help with link detection but there already seems to be =
some
> specific solution expected and I don't know what exactly is the expected =
way to
> solve it.
> So far ucidef_set_led_switch with port mask 0x0E can at least be used as a
> workaround to make LAN LED show link detection on LAN ports (though this =
also
> has negative impact on link activity visualisation).
>=20
> Also the problem with unreliable boot causing LTE module to not always wo=
rk
> after boot is still present. This can be workarounded by turning LTE modu=
le off
> and on again. I don't have this problem on ar71xx where LTE module always
> realiably works just fine after boot. Though Enrico reported that he has =
this
> problem even on ar71xx.
>=20
> Anyway good progress, thanks for your work.
>=20
> Filip
>=20
>=20
> On Mon, Jan 06, 2020 at 01:23:22AM +0100, mail@adrianschmutzler.de wrote:
> > Hi Enrico,
> >
> > > -----Original Message-----
> > > From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> > > Sent: Dienstag, 17. September 2019 19:59
> > > To: mail@adrianschmutzler.de
> > > Cc: Filip Moc <lede@moc6.cz>; openwrt-devel@lists.openwrt.org
> > > Subject: RE: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link T=
L-
> > > MR6400
> > >
> > > Thanks! I'll take a look now.
> > > Still, something should be interestingly wrong here:
> > >
> > > root@OpenWrt:/# swconfig dev switch0 show|grep -i link
> > >          link: port:0 link:up speed:1000baseT full-duplex txflow rxfl=
ow
> > >          link: port:1 link:up speed:100baseT full-duplex auto
> > >          link: port:2 link:down
> > >          link: port:3 link:down
> > >          link: port:4 link:down
> > > root@OpenWrt:/#
> >
> > I've just unearthed this topic in my mailbox and tried a port myself ba=
sed on
> your V2 patch.
> >
> > You will find the updated version in a branch of my staging repo here:
> >
> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3D=
refs/heads
> /mr6400
> >
> > (Most recent patch there.)
> >
> > Despite several minor issues (sorting, rebase, etc.) I've also addresse=
d the
> following major issues:
> > 1. Use gpio-export again instead of gpio-hog, so LTE can be switched on=
/off
> > 2. Added adb-enablemodem
> > 3. Removed the phy-swap in DTS. This is not present in the mach-file for
> mr6400, only in the one for the fritzbox 4020 you took as blueprint.
> > 4. Adjusted ports 2 vs. 3 in 02_network based on your assessment. This =
will
> most probably be wrong again now, as this might be influenced by the phy-=
swap.
> > 5. LAN/WAN LEDs still won't work properly, as at least one will need to=
 be
> changed to ucidef_set_led_switch, and I cannot check that without the dev=
ice.
> >
> > Best
> >
> > Adrian
>=20

--=-=PVwKn/YdUN05nZ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4gSVIACgkQoNyKO7qx
AnCPPQ//UcPrCCDHQ5XcXh63n1LC31pqUr78e4UN1kzcHe4TUWM60x7dny4sSq0O
1pnJ1MM24twaI/agFAxk3S+9LIc+IND4F4+pW0MoFN8ljqMAE4uD3AL94CiPBBJW
ID+1cDuiY0Z5b7NSddXulQqCk6GKm6kKkIk8AoZWGiBxSfwBkPEXZM1nJmzMClIv
Ci0we3GzXSj3SQU0H2G61Eo+AG32stPbzJI677KTGTs25fzEkl8LGei58CNB0DzV
6cGgWKV8b1mFMU10bOX4krtHkauyCrldO2DwJjS1mahIvhy8UE0GCG/9w8f2DDfg
zyCHp0Pq391h2nUFkfWXBWKLdyScA+TnPHQgj57vootqjIhjPbJJ547mF3KN6Sbm
N90BYJDlNtf/RhTUn32Dh2m2qrgCmsDrIMsjAGpNlRaMpsPlpJMMWjEKEzyuL5IY
I8hye5Pt4szgRUZ1wS0iVBxqKXX/JuRQT/E3dMw1JbjDXgg0JDIWHrkSsILC1RA8
jkIXnIBPOfbxmSWtk48pZpq+N8v4/VEET2c+dQJxTakW3jNNQ786rOKJ9KKa6WoQ
/5PpPbdIP5Wvp2pptV9KdEogfsF/qP4XVNAfuFilT6QUWNr54OFpchGdz77Y5Fve
WHU+yQkBly4wzhgHGQ3P1IhOp7QIdhy6727lDhY3QSQpSi2onws=
=KixU
-----END PGP SIGNATURE-----


--=-=PVwKn/YdUN05nZ=-=--



--===============6353155694776034702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6353155694776034702==--


