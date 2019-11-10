Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2AFF6B84
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 22:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rfLz2k6W2iowegbxIRwGtHh+asD3MqRw4O1ASyLLNr0=; b=AGJIOCbUkWV9kOzc2PU0huAHq
	6wMmclCldEHknreUTyhuud9llZD0dUvPpbJep9tgPxZiabEC+Ag9wQBEuMcnV6rBxI1qEEP07PyRG
	+N3z/VCHjP100/Tf7l6Ci/QIFtoYcXxi3zeqKKPpQLER3M6WEeAEfC67uLpErRGueXUoj0B4Co2tS
	8KMHh4olbkzcMUqj4TI6fIiIooXpfrPSVxKPCnaP5MdVSnRpgds9SoAftMm9KTRcB6Q2roGjUIpcK
	5ALCsTzTLYihMuGdgGjCFYGEaZkFdFQyFvNkQPwj7mPudjz7zelgV6/80EEckHwPqlahvqHqZcDVB
	p8Ko1L6bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTuKy-0005If-2e; Sun, 10 Nov 2019 21:01:32 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTuKq-0005IG-AB
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 21:01:26 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MLzSD-1iCW4X45gX-00Hw7e; Sun, 10 Nov 2019 22:01:13 +0100
From: <mail@adrianschmutzler.de>
To: "'Jonas Gorski'" <jonas.gorski@gmail.com>
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <20191108114841.1343-3-freifunk@adrianschmutzler.de>
 <CAOiHx=naOdB-EKxGy4Ks06k9iZHAj0WmzFM-gTMc1LauG8heqA@mail.gmail.com>
 <003801d596ed$74496400$5cdc2c00$@adrianschmutzler.de>
 <CAOiHx=m5hgPC09U_eMMX88G=TBG42SfLyQt-XTB93at540cuBA@mail.gmail.com>
In-Reply-To: <CAOiHx=m5hgPC09U_eMMX88G=TBG42SfLyQt-XTB93at540cuBA@mail.gmail.com>
Date: Sun, 10 Nov 2019 22:01:11 +0100
Message-ID: <020d01d59809$fc2aab00$f4800100$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHcF0zWbuS5TMQDT9hgqXlDJybg2QJ9xhovAdItDukBwD951AJYgHe1pzSeVRA=
X-Provags-ID: V03:K1:Pkyl4OakS9v0ncgEHv6U+Av7Q7g9HN1vC3+TV+kTmmIS5+icgeo
 tSFyBj5oDp0GRHD56gdQvY3BJ1yHinLjl+PrxbSKA1mpMph2A8+yIUvPp2Gphb9SubG0WxM
 HQFKX2O/3MIXEcxbhvg83W52da6cVwEJhQNNmxJmjAtMpx4cL2wQx8CPXKrgTPzhZGCMTpy
 r2CYIC9GDk4yV1fwU3g+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qvcQ8Sa5w1g=:ju0oH33tvmWeE/S0z+LdJP
 ThgTRrv9pGZOs4WYIqiAaiTfoQ+v9tO9cxIMHz0wwyTuz87e+erzUJByCL1cy1V+qYpaJD/o9
 znQxskIdcDJj4FS2FSWbgBEWVimCvlLkgsMbSw9lCkUOoTf3RwtQkygti/XLLnyhCyJgqRllZ
 dHrZ08DJfj+1BNsSJ4yehpZPM0DoigKF+GkNd8mgFO3CkC5qi5RmIcmDKrVwm+rStlfFEq0JF
 QYSVOvPJvVd/5WrJSiiWPVWFrCKKEpO0NN7UbWYNt1DcokUyaEbz2LHHgyfM5ix0Ye8If3sAa
 h3b5sFuSCm5FrsGUTSOAMMbIwLAg0hnKcj6dRv+QxVpqXPBPo6BvYpxIW/MuGoiK/2I++BT1b
 uFUR7WaCt2C/fQlyqoIPJARBRVuVLynvdt9fGPkNOpf48ftrcwSvOONimc4hDjdjqhJnYv8wB
 lJQkpk/+a+5MAZ74UUO7mTZYsfaX2znfXiuLhTcpT95Hdm3jcylnGakupcDlA5dVOM3D8nwXX
 Hkd9T1s6Ye8MM+ju8bCmA9mNF2KP4vRcHzQqnVwb+l543CL+lc/emJ+1Is1ifjWfb3IlrjycU
 v4sDtIfd2mjYtsvFVM62J7JOmaH7VlwcE9m8Y+Cw4F+EH/IjuuQDc5aEzOnh1LxIs2BC4HIBi
 +Ov5VPfZkZTJCHhrTXWaLvZEStGATe5GyzAOTx19n47oWUY257dlaMEDiRpkar6nGzVcm0sxI
 H5WLlUfXcU+/fD4Gq8X3/mlwXs/z4EeQf8VdTJrZz8Emp7tiq7mZeUmKuNJDvq2xTsG+e6jfD
 Hq4m1N7s/Oj3sSXkPtZ6beqxCariVP2nK3PrTw/pt0iQWmQKjhcyNTAOsFQ1KcrJm5Z2BT7Vf
 zmOnMDsnx7lxA3Nt2wpfuZCX4ZwqDuBxo8mNWfTmk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_130124_646203_A717EE44 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============6961286336906650491=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6961286336906650491==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=yGMmJ+26YtVXSK=-="

This is a multipart message in MIME format.

--=-=yGMmJ+26YtVXSK=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jonas Gorski
> Sent: Samstag, 9. November 2019 13:57
> To: mail@adrianschmutzler.de
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>; Rosy
> Song <rosysong@rosinson.com>
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID with EUI
> of mac address
>=20
> On Sat, 9 Nov 2019 at 12:04, <mail@adrianschmutzler.de> wrote:
> >
> > Hi,
> >
> > > -----Original Message-----
> > > From: Jonas Gorski [mailto:jonas.gorski@gmail.com]
> > > Sent: Samstag, 9. November 2019 10:37
> > > To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > > Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>;
> Rosy
> > > Song <rosysong@rosinson.com>
> > > Subject: Re: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID
> > > with EUI of mac address
> > >
> > > On Fri, 8 Nov 2019 at 12:49, Adrian Schmutzler
> > > <freifunk@adrianschmutzler.de> wrote:
> > > >
> > > > If the label MAC address is provided for a device, the default
> > > > SSID will be set to contain the EUI of this address, e.g. OpenWrt-d=
deeff.
> > > >
> > > > With multiple routers, this will help the user to identify his
> > > > device based on the MAC address printed on the device.
> > > >
> > > > If no label MAC address is specified, this will use "OpenWrt" as
> > > > done before.
> > > >
> > > > Using a uci-defaults script for this is necessary as mac80211.sh
> > > > is executed before /etc/board.json is created, so label MAC
> > > > addresses set in 02_network would not be available there.
> > >
> > > Unfortunately since we detect wifi async these days this is quite
> > > racy, and there is no guarantee /etc/config/wireless is fully
> > > populated by the time the uci defaults are run. E.g. mwl8k takes
> > > quite a while since it uses different firmwares for STA and AP
> > > modes, and it needs to re-initialize to switch between them
> > > (triggered by by mac80211.sh trying to detect the supporte features).
> >
> > So, in the end, it might be like Manuel Giganto suggested in GitHub
> > and one might either have to wait in mac80211.sh until /etc/board.json
> > is available (ugly) or just put the same code (the few lines of SSID ch=
ange)
> in both locations (uci_defaults AND mac80211.sh).
>=20
> How about just generating the board.json at an earlier time before loading
> the wifi drivers, so it's always there once mac80211.sh runs?

in principle, yes. Thanks for this idea.

However, we have to be careful to not break anything in 02_network, e.g.
using $(cat /sys/class/net/eth0/address) or similar when we become too earl=
y.

I do not really have an overview of _all_ targets and what they do in 02_ne=
twork or similar board.d files.

Despite, I introduced $(cat /sys/class/ieee80211/phy0/macaddress) retrieval=
 into 02_network as workaround for the MAC address. However, I will try to =
change those lines to point to the proper original sources of the addresses.

>=20
> We already generate it in preinit (unless failsafe is disabled) to config=
ure the
> switch and find the proper lan if, we might as well make it unconditional=
 and
> then rely on it for mac80211.sh.

Where would you put it?

Best

Adrian

>=20
>=20
> Regards
> Jonas
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=yGMmJ+26YtVXSK=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3IepcACgkQoNyKO7qx
AnCBnRAAuxrNi45v/RNrFiBzJITXHxi9nfFso/Rj59fTbg7FA+xrLdUuEaFWMpef
JLmT3XjCUP0Z93lGKDRBNnX/IbEPrjIh8RIrFlJjF59eklYTwJSEkihFsROukDSo
XlS9wNhCkqCjPGsjIYo95Gp/gjIPU6A0ownBAbVIia/VptSnBSCfDHZAHlWzjac+
nzBfHp1QwnBRs02nwOjr+8gYvmYjktseFYiADhNNwv7gLgAO1WFcy3gFfpvIza2D
vbWxTxQTvssUB6zv7xYtLB3/fXGG8kAFjaVWOzmhbI+fgYqAclf9cakmPaIzubkn
KSpmauuU/LcCuCz0W090bkUJhYU/0FgabP3ZI1vKarseDo4mKU0w/HNXyUInnC5F
04OJYCd8xDK4p7nRSIOrKBUM/CIYinbRv8ipETXkfkhXjZS/PcMempK9+pKezxiV
mdGhE+FsfCr+N/1WlDH0eVds25KunNhNRLqTicmaRMIk6iNlYK5LSDNFb2EpE8IB
rwOa8B/X/lgx1zyUu6MEAvIm+FhU0wIFHpW0WkYOivtm5Q3zSRS3QQB5zHU2bY0V
gemsWwYDtJzF+F36wqyVRZm5Ne5uok+3HBA08Kpn8/0+tT6eQRVRjdi4O0JLJFRZ
Q4Oc+k2nk3f+HxWBtZ42dMNSGDlQKMVk0o1MVDg5ANtSwNFE1d8=
=mRyz
-----END PGP SIGNATURE-----


--=-=yGMmJ+26YtVXSK=-=--



--===============6961286336906650491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6961286336906650491==--


