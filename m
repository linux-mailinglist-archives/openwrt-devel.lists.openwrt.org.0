Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B04F5E93
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 12:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FdOSptRT33lj81j6QmcfQiiR8Gko0HBfnzbsEK38rP4=; b=GlL0rgdTWxrK0v2Es8Z59snBF
	dauj1QfIGzNo8e2JJACoDztoAolM/FWV2N0f/I8mU6RsNMZ37X+0X1k+oORJ8tlZE7RU6dAH0DrQX
	L6b7KYAvRa+m3FZBDRQ7oSbDuEYhPDlNEpJHTVVPR33Lmwslh5kn7jawlOYcWdvU7DGVCa/BxGxMO
	DSrPZD5vI6KSuQQfJdy9LNVwC86TF1k4TLPvtkQa+kE3OfQDvGnN3i/MR8oKN/vdQk0BW/ILZ/CtA
	Y2MrO34B/hdApU+FvbIp7kZ9bqpXkYc1QeunPX9YzruGN/EB/lMpFX2SVGTB/R/c0rfH4nHC9mRiP
	neFdLosbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTOXu-0005IY-9A; Sat, 09 Nov 2019 11:04:46 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTOXm-0005I4-S1
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 11:04:40 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MxmBi-1hhS573vry-00zIRG; Sat, 09 Nov 2019 12:04:28 +0100
From: <mail@adrianschmutzler.de>
To: "'Jonas Gorski'" <jonas.gorski@gmail.com>
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <20191108114841.1343-3-freifunk@adrianschmutzler.de>
 <CAOiHx=naOdB-EKxGy4Ks06k9iZHAj0WmzFM-gTMc1LauG8heqA@mail.gmail.com>
In-Reply-To: <CAOiHx=naOdB-EKxGy4Ks06k9iZHAj0WmzFM-gTMc1LauG8heqA@mail.gmail.com>
Date: Sat, 9 Nov 2019 12:04:26 +0100
Message-ID: <003801d596ed$74496400$5cdc2c00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHcF0zWbuS5TMQDT9hgqXlDJybg2QJ9xhovAdItDumnUyuSEA==
X-Provags-ID: V03:K1:aE/6rkGMhXA8TpK6baMph6lOHDyBdy1vk2htT0sO+mQuKWju/Hx
 LSmzXxyH64ncRHk68pIgQO7nqjinD8MVeYQNpLPJ+XDX2hN9EDwetUyrFPfCcVt43ATOXR4
 sTkz/WBm5jgaUq1ISkLXOsf/6c90oki/3zIUfngpPaPip03s/E39ZV+XoPpNxBqfmRySb68
 DaB1Wc+fd0NhRFsCT97AQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wpk8VWnydn8=:8fWU+1XLkLiwMlwxLsRzje
 HtnwPcFqS2BoSVE4ArCelW/6LP25pv4gJItB3N9j+DCt7flORzAaywHbUI2WUT5NX9mg2H6Gm
 FnvnsOrF9tvewg10IyYiGZ/SvNPezRMii2I+SmdX+LRluEI8d+BRZRvWTbOAgHaxUd1hWL9LE
 BZLjMRtmF6nEbEuaxOkujsH1gqprFj0RuDglkt1zE4q8PAoIVK4iEI/U/QL3Bbhbj3w8GXO7c
 BzyGYMYeUAJVeZDMigwnTEAO6s//ZOlrKKdP/CGBd8pmhyGFbuFxuMeI+wZAh6POuUp8f83Sx
 Uo4eppWFkuH2xHOwxYXLGcVcJ04T4OuYq/u5DFRp1xtPgfoJbKtQMs4og0S5jyHeq1VMydFac
 48PprQTSwrzedMPLypI4jD1vNUDh/4mDJpUWV9q2GdcHxctp8G0BFjiDF622MndiuSRWYSQuS
 M6c5Ooyg7Rd8mOatgHo/X4gNToZwX732If6iDcbbRFYQIQy3vu5HJrBQQReEeNW14iC1WCePz
 o+hbSj7G/TNzCJcrr0VCRKQXxpmy7Bc6UFPsOWTnU9SeTIQI9j1O7h8dJrEe/ZTyG8jCIyNGX
 2DqfFcBPm7gW4SBTEfOci9BBT4ytX0HXiw4rXCKLPpwyut2/QLpIx0rar0SWF8T+x/Dd3p38d
 2JnYQcf1+qcYjbBO4Cd9fq/pJSdk7JYGMaXBI9Yh/kPyq0Pt31WeoYC8Q7BXxYtgQCN7ugAIE
 EItMCeNF3oACT/p6/KURGQq+ZnHiC31YtQk2s7fJK7aO4gUyetLOjHbiyoVYWLam14J3i5GNP
 ioXk0mhVH5BwTqU0H8t3Picb3CpoTliznBiX8sv2wZCcN4MwKbybXLIvo4HAZlaif9VQi/3LL
 abqE9JulVC869/M86bXRADQ9h+fRY3EM81JJH5xvw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_030439_202022_30E65666 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID with EUI of
 mac address
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Rosy Song' <rosysong@rosinson.com>
Content-Type: multipart/mixed; boundary="===============5139542583360726212=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5139542583360726212==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=w3y7hi2iRdhLfa=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=w3y7hi2iRdhLfa=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Jonas Gorski [mailto:jonas.gorski@gmail.com]
> Sent: Samstag, 9. November 2019 10:37
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>; Rosy
> Song <rosysong@rosinson.com>
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID with EUI
> of mac address
>=20
> On Fri, 8 Nov 2019 at 12:49, Adrian Schmutzler
> <freifunk@adrianschmutzler.de> wrote:
> >
> > If the label MAC address is provided for a device, the default SSID
> > will be set to contain the EUI of this address, e.g. OpenWrt-ddeeff.
> >
> > With multiple routers, this will help the user to identify his device
> > based on the MAC address printed on the device.
> >
> > If no label MAC address is specified, this will use "OpenWrt" as done
> > before.
> >
> > Using a uci-defaults script for this is necessary as mac80211.sh is
> > executed before /etc/board.json is created, so label MAC addresses set
> > in 02_network would not be available there.
>=20
> Unfortunately since we detect wifi async these days this is quite racy, a=
nd
> there is no guarantee /etc/config/wireless is fully populated by the time=
 the
> uci defaults are run. E.g. mwl8k takes quite a while since it uses differ=
ent
> firmwares for STA and AP modes, and it needs to re-initialize to switch
> between them (triggered by by mac80211.sh trying to detect the supporte
> features).

So, in the end, it might be like Manuel Giganto suggested in GitHub and one=
 might
either have to wait in mac80211.sh until /etc/board.json is available (ugly=
) or
just put the same code (the few lines of SSID change) in both locations (uc=
i_defaults AND mac80211.sh).

Best

Adrian

>=20
>=20
> Regards
> Jonas
>=20
> >
> > Suggested-by: Rosy Song <rosysong@rosinson.com>
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> >
> > ---
> >
> > This effectively uses a workaround to prevent SSID from being reset
> > after upgrade (match SSID vs. "OpenWrt"). If there is a nicer option,
> > please propose it.
> >
> > Another option for this would be to explicitly mark the wireless uci
> > config as 'default setup' by a to-be-introduced option, which is to be
> > removed in a late uci-defaults script. This could then be exploited
> > for several other objectives, e.g. further config-dependent WiFi setup
> > tasks.
> > ---
> >  .../etc/uci-defaults/15_wifi-ssid-mac-address | 22
> > +++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >  create mode 100644
> > package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
> >
> > diff --git
> > a/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
> > b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
> > new file mode 100644
> > index 0000000000..aeb46e39c0
> > --- /dev/null
> > +++ b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-addre
> > +++ ss
> > @@ -0,0 +1,22 @@
> > +. /lib/functions.sh
> > +. /lib/functions/system.sh
> > +
> > +set_wifi_ssid() {
> > +       local iface=3D"$1"
> > +
> > +       [ "$(uci get "wireless.${iface}.ssid")" =3D "OpenWrt" ] && \
> > +               uci set "wireless.${iface}.ssid=3D$ssid"
> > +}
> > +
> > +label_macaddr=3D$(get_mac_label)
> > +
> > +[ -n "$label_macaddr" ] || exit 0
> > +
> > +ssid=3D"OpenWrt-$(macaddr_geteui $label_macaddr)"
> > +
> > +config_load wireless
> > +config_foreach set_wifi_ssid wifi-iface
> > +
> > +uci commit wireless
> > +
> > +exit 0
> > --
> > 2.20.1
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=w3y7hi2iRdhLfa=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3GnTgACgkQoNyKO7qx
AnB4Ew/9FncaMGm6TuZf2U1Df7aLuxEoIkUwoeBhqq8NpQuGPpwY116Ffc6AcKl9
pRsIPWaRWW5VO8sSFJUXBQUoVP5GU239vk3+ekFpItStU5jHJszIZZtG37U8rjQh
iKcds8wzJmkG5mV4h3CkmwApYA6VMoaiU1oozdIbPnNhvPPVqk7gIrkJd9mhBdV6
/e0mXpZJAsq2V9Cog78WT4VI1zfWWUmoZ6UbAXnOHo+ebQuEN44oJal7b/lE02T2
KT4Z1p51ckAuuiUd6LuGRQNSNqbb4ir0hJnmIloaTuApf6G2bsP7KXzc87TWWqnG
jqcz3jOx++F0cI9SfZS8wgieltuq1R4WPEHpyAB0/ozX1sKXihwjzeuu//Xi1vkA
q9wZLj0+7AUsjpPynPxfwDdZvUsbuPzeDE7Ov+hsCaLchIwul7W0P7TIvIlGn4UV
i6JDlrTYA1z5aEmT2iYUkHFH9VM39Cs84a7rlVS/CtfwAcBnjCFJmO2T0nZMNhhh
BDfdiOERS5LeS5L58s8jEWQJGo0NUz6U/KpcgbSPkjAH0P+u8lbcWFFH70K2CTl8
M3IsZwiyUR7LcBesFsCEgNd/B4+E3bEj/aAaHiHsaCVrqunnS1MSYQd01p26GQ2C
i7hBafV3OBuBLuGwM+RBb2SXUYOu3ioivk1wqbGwk9fuZKZffgs=
=Uy5f
-----END PGP SIGNATURE-----


--=-=w3y7hi2iRdhLfa=-=--



--===============5139542583360726212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5139542583360726212==--


