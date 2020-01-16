Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB9E13D8E8
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xFgMoGUHCXzz0kYCjIe8MiSOyhUzco/HHyisyV9vF84=; b=dOW5faFT7gHJJLJ7u1XjXFHGz
	+k1z2bN8uGs+tNnZdTFtj4zreaUVACIekstozkhNE7jIgdaBbPrQrgFU03tYtkXfBg2w4Sh6EFmfE
	a8clI9XMzbRUSnZ1XwwKgUWOCpdKm9Re8e0dxrh5xoxVMtID3MivEG8OhHNDBwEIAha2uTzaH5OQ6
	Ao+2IzNyUVlyJjJSHQ1C5dfOi0VmsM5JtmBe0YlBDvdn9q1DZDLRjtbO8dC6CjPnqWOavSoMQQRsl
	A93+XAIIHXXGro8DGXH7G7h67NqSAgUImucRKy4ZX2KMA8pVHvlPohs6JjC/+XH4n6QIeDj1GrqZQ
	A6AICVnIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3Hy-0003jo-M6; Thu, 16 Jan 2020 11:26:14 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3Hm-0003jE-NX
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:26:07 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MowbA-1jQt561Pl0-00qUM1; Thu, 16
 Jan 2020 12:25:58 +0100
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
Date: Thu, 16 Jan 2020 12:25:58 +0100
Message-ID: <00ef01d5cc5f$b9850680$2c8f1380$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvgENk/fbAjCsNHICNRzL5QEz+4ZZAglc0CwB1SBFaQHjxa05AgMP88cCD0cQRgIdlTymp2Xda+A=
X-Provags-ID: V03:K1:p0budh4bV3bfDPeiouWo8EuhmgDrr9jgSEJ1COx5fti1AXIKXCG
 9YitLOcmIeDFxZYNZIVij8tLbAlTbYiU3rbph6hL13NHlWySOrvVD45hfzNLnDs08Psksps
 nULcrwUYNB7gzqI5Sps6dtrTLfHV2A867U9nONzvbNlTLEYKwdHGb/KxHelPSXwgscWK07j
 wf2U4c2GvufKqvLpMstZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z5umSuLuW/A=:TCC+9ogkkSdnf2gjdUvioB
 4Jegnu3quQp3fadwiF8eHFVefdxupAJHy7yUyThFVgTf1M3kLfj7BdxtBndmzWCZbkpJRM2GQ
 45kHA8pZPxPwzzeqeNJY0o5moUFKMKPb/USBVdcRcU9Tl15x7TRUPYXkRP6Sz4y+jCKT4d59o
 Cm/2J0ruGN4OcNTbjA1rxrh8npyqzV+OlfX0sQpt0iLmhtLglst3JuluS67sxHtJLmUmFOVac
 jWtNtbij7+B27EdqNMW7g2UGknodzTd9coU2pHWlB75DZ5A6DAufmr1mQ0p6NA7mo3sNaWBaE
 inehlye6fnnm2mJwjlSr7oS3L8+zxNBIJyPhWnYtkZzm0oTfg87o0HDIB0QYwP/MD0df9ZV75
 vRZ1hZp52az0r/TlAbUmAHNPltNHM9QD/0qw00Awj06vi7cCjIjl3Ca5223AD0lLePOvvGdAP
 mYGq9ZO/x4XJocV0nKQK8ozs53KkUoIGWGTcxM43kfhTS28v6DZws5YYN+WhJmBmwODn1gtus
 fkAnvuyhUDl/wYDxXGypg/jxe0e0+BiuaV9oNOmjOj/eK2FQhKLiVaKOfHjrmMcayzghQ1MJx
 qlW201G2zaSmJX6vNQtFWf0vwkEirs74BS08WSBAkjQOWzweMe1dxG6XcXoVNUlxVarx0sCLo
 SUHhRuR6jR78bq1lLX6CBr/egB8VjgaDmVO5by7yi8tdhCYn7UzMoPOOOYwbYIBq95J5Q/ejG
 GI7iftreRBMXwFVrsXNxH9qt6XmRCdIM3Z0e648rLcV2asoQTjLC5etaMG2Km7paVbrGuDput
 joDhBSveGgUk6Sc9cWQCbC77xx5+TU2Mi9ZGdTulHEoF/ibiYL8cPFhFA++x3a8qaPufm5hd1
 lxjpCS8amJ0qLJFVLqvjMyB13a/JPrjx2x45mhgvs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_032603_060199_01D883A7 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============4831639173833001198=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4831639173833001198==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=2IczoN++yrx/gQ=-="

This is a multipart message in MIME format.

--=-=2IczoN++yrx/gQ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

thanks for your feedback.

I currently consider merging this (considering your reply on my questions b=
elow) and would include the few minor remaining issues as "Known issues" in=
 the commit message.

Would you provide a proper Tested-by?

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

What about the port order? Can you please verify the assignment of external=
 port number vs. internal ports (just stupidly connect a cable and check wi=
th swconfig which port it is attached to)?

> 4. Interfaces are working just fine. Except for obvious problem with eth0=
 which
> has no link status detection.

Can you provide a detailed explanation of what you observe (what do you use=
 for visualization of "link status detection")?

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

We will definitely have to use ucidef_set_led_switch here. Are you sure abo=
ut the port mask?

I will update my staging tree with the current value.

>=20
> Also the problem with unreliable boot causing LTE module to not always wo=
rk
> after boot is still present. This can be workarounded by turning LTE modu=
le off
> and on again. I don't have this problem on ar71xx where LTE module always
> realiably works just fine after boot. Though Enrico reported that he has =
this
> problem even on ar71xx.

Do you refer to something specific in the boot process when you say "unreli=
able boot", or is this just backed up by the observation of the non-working=
 LTE module? At the moment, this sounds to me like we could just put it in =
"Known issues". Can you provide a short piece of text for that (to be put i=
n the commit message)? Are there bug report/discussions to link?

Best

Adrian

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

--=-=2IczoN++yrx/gQ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4gSEMACgkQoNyKO7qx
AnChNQ//YAKy5OEK9bXdXCPjaYZgT52H8WDbvf8yB5jeH90Fd7zzD91jSOhVM2YN
EFnEC4deHEy6bmgw8Gxp4N2VEtfmp7Id4LV9yZaw5I4MQy8fT+waDX5tvpdh+1BB
5u7oGsF2SaxQnqZwDZssz9US87Xj/hJ2i1ZTtqgS/Y5p2hZHPHvhZiAxkLO55D5P
JzNGAgd3nkc8dzuFfQoNNy+44RzYTyLwQlEiE15qKFTij3Qwg7JvPck/7Sg5ilfs
uzhCODseXYx9eyHikChAgdMmMyMGb4S2D8eLyN1H8WHVSRnMrvjmLsLnM2tSMsLL
VSkF9BcZyFQMuVoqBA7Ps73Z0fUJv1Ny75NqtW6r/kmcnYw1B0e4/0i8JW23bhNj
UbUWCXSDtpqETPuTulxSCEG0fr1x4VVUkePyV0GTvxvOq+EGSW/bQCIaNddh4Yc+
Q3BLJW8AWagB2O7GMqW5C2EBLEv8CsnjnjgqmCMXgUM7axJROducflpDEDyBn7hH
TudivP7R5oa7BMSAPQsqmqQNhx3MuBATWbOLPLPaYLPaUW7ztTjQ6m0pOAw7jz70
kziVHrSIQDx8JZw/pv86RifhDdby35ZUHGaJoM9DpPK+FTKRYW7YYsv4sYX53mBF
QJSf/rNiVGgNEvyvvBhUGdi2nBSSQ5Ib4JNM7TI1G5PzsWUOg3w=
=nQD9
-----END PGP SIGNATURE-----


--=-=2IczoN++yrx/gQ=-=--



--===============4831639173833001198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4831639173833001198==--


