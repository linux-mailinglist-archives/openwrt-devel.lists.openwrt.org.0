Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D189ED384
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 15:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gZZqDuz6kfYsfMZCkg1pObPfxh374dUHh8U0AKoWxpk=; b=u1IDMLIj2FIoHJHMga42fYw91
	W97YHJ8/WIX0WZ6VDYV10oyai0j/oEPo1J34zoSxk0neB894mf+PCY24Epb3zAUVkLZDzn+XAo+ks
	LnyWzfNqEvCnbcyQKGfNnGk0m3homzaLNSa4vu6xefqwuO0JkTOW8/kz5kz3pXS5N/FRSp+HFJzHh
	jorjl7Bbv/sF4mv+InY0yMXcvei19qxj2cFKCsd9FvSO2sIitjbuA1roXhIAiQHFeVrxRBlpOS+fb
	ljVYmviJWMjPx31OZB9mTVwKddC3qoxwDiPADX1mU7cJHTpPsdgYVjCwEpumH21brnZovZlJnxHFM
	L/0JwQvSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRGeE-0007et-6W; Sun, 03 Nov 2019 14:14:30 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRGe7-0007e1-06
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 14:14:25 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MsI8Y-1i6it00dbu-00tmsD; Sun, 03 Nov 2019 15:14:16 +0100
From: <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>
References: <20191102141855.22192-1-kristian.evensen@gmail.com>
 <20191102141855.22192-3-kristian.evensen@gmail.com>
 <003c01d5923a$fc6d07e0$f54717a0$@adrianschmutzler.de>
 <CAKfDRXiQNTFAEcyBFi9zon1OOCZ_do1ABep4dPRBepkXjB2pXA@mail.gmail.com>
In-Reply-To: <CAKfDRXiQNTFAEcyBFi9zon1OOCZ_do1ABep4dPRBepkXjB2pXA@mail.gmail.com>
Date: Sun, 3 Nov 2019 15:14:15 +0100
Message-ID: <012e01d59250$f9b20490$ed160db0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJ9EmdS4FKp2ArqG7hizcaqLuVA1gDvu8tfAfumoIEBij59fqYGz21Q
X-Provags-ID: V03:K1:dqycIADki62pwqc3nHQJqACb4ye3YpXwKVt7tq4CM/Bqd25d9da
 DaT3DRyZIp4MmXyMZeBZFg0wTtT48WkCP2pi6s59RV7znRxjNyq1HNJDgaL3rUmjMPM7EL7
 iRGnz9Y/RJtS0N6UYoOLIcO/8RH5sXXTGHM7yucN5xpAs+F9G5WdcO54T1QY00qNyuvKZjB
 aRKaqcsKcxSnCVilu9skw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7dkukXjClxc=:2q5BIMAJUxnoQVelUwFfy/
 wQ3TjFUN8/yh+iinqzPE1oPEYeiHLWdc/DIF5bxCh7lG/sHKxFO416Xj8reeozbtEonJzt6UR
 GOL34mv5QyzmAa159bxWzAC/RK8jGncKm+pU25yndhx6I5Ad1gbJkIGSiQMh2hdbYgoAMQNb9
 +gQpwRtsWnuwBnT0EmYz+9nrs36LdHsSurT0+SOnNKQJJlbzDNrYaiZ+wTScHbsUsLvPFrua+
 eZeLLJPt9P34FAKomv2TxYHuDoio5BneBZdNpDS+6i7sNLMtWQH4JkCUZ6Bj7/DrMuUTJviJI
 KzI9awCQr8dj87OP0ghc5r4w8fRl65tLK+Md96OLJr4byH1h2FGyuwNTriOXgyg8DFTy3kEl7
 Ihiy2f3GTInNJB9ydN/5vSAetpDuJV/jviwyVfgzG4WnS0dvMmWkEZvpkuoEuP27eguKx5g51
 GPseTJylpmgxDrkNYKuzOROsPlD2EVGwTbthQC62aIanUxuXHcm7uJqQcn7j2k8LS+uIUzflu
 Wiq4eKaqwbDc1NFe9Wy7Sr97itOd+tla9AlLlzHCxOzMF/eIOij580OF7Vn5wXnM+IBBIhwtc
 ciFhEWruXGEEH297IVLKu1/4PpoAlo4LcWcuK68GhwA6Rw7pe6VF5TOSxMJnktNGQ5hkyhz6L
 HhWCAD6rv1WXkrLit4XElrXNiNHlwzrYHrMXsykyhv31Gf4np25OTwKc7tTHRT/sz0U3UB4Yg
 me2+1GdK0Sw2aCPObd+zNMjrerJhx9bUfTXvEs2qlUzzdFnRf/tkJGN7Xs/7A1DsmWZLBYZUM
 KqS3oQap38gVsGC3AKW+GMFToILRP68ZFPO/XhKH4RhFNgOM0xClkj71lD15Uv9TQ8ib4ef10
 Yyoxbe+tSZzU3u+XIy/QlotCLjwg3ZkqsdImYox88=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_061423_334467_C3A33239 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT
 WE1026-H
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7930907110438927333=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7930907110438927333==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=qhUpUERBYNu7zc=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=qhUpUERBYNu7zc=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Kristian Evensen [mailto:kristian.evensen@gmail.com]
> Sent: Sonntag, 3. November 2019 14:35
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT
> WE1026-H
>=20
> Hi Adrian,
>=20
> On Sun, Nov 3, 2019 at 12:36 PM <mail@adrianschmutzler.de> wrote:
> >
> > Hi Kristian,
> >
> > > -----Original Message-----
> > > From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> > > On Behalf Of Kristian Evensen
> > > Sent: Samstag, 2. November 2019 15:19
> > > To: openwrt-devel@lists.openwrt.org
> > > Cc: Kristian Evensen <kristian.evensen@gmail.com>
> > > Subject: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT
> > > WE1026-H
> >
> > I've already pulled your patches into my staging tree, but then stumbled
> over the USB LED as Power LED thing:
> >
> > https://git.openwrt.org/openwrt/staging/adrian.git
> >
> > I personally don't like that very much, and it also doesn't strictly ma=
tch the
> policy of sticking to the vendor's use of LEDs. However, we also do not s=
trictly
> follow that policy for other devices, e.g. the TP-Link CPE devices where =
one
> of the WLAN strength indicators are used for signaling.
> > Still, if the LED is assigned to USB it will at least irritate some use=
rs.
> >
> > Despite that, I remember that for TP-Link WDR3600/WDR4300 a nested
> setup was required to get USB hub working:
> >
> >
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/
> > ar9344_tplink_tl-wdr4300.dtsi
> >
> > Maybe you can get USB LEDs working as USB LEDs with that.
> >
> > Since you seem to keep track on your devices, I'd also be okay with
> removing the power_led alias for now, merge the device support, and then
> address the USB issue in a separate patch.
>=20
> I have no strong opinion either way, as the device is inside an enclosure=
 and
> no LEDs are visible on the outside. So feel free to remove the alias.
>=20
> BR,
> Kristian

Okay, if it's not visible I do not think it's worth to deviate from normal =
procedure here.

I've remove the power_led label and aliases.

Feel free to test and provide an updated solution for the use as USB LED.

Despite, note that the first word after "ramips:" should be lower-case in c=
ommit title for future submissions.

Thanks for your work.

Adrian

--=-=qhUpUERBYNu7zc=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2+4LMACgkQoNyKO7qx
AnCZvw//as1dIUdrbElqpeTmkW6pLcPvD/xodiUpQoIAqEnUjDpuOrLie+zbgifA
qum2W7VsOG2dp3/D1+DBJHcyybGSp388Ssc9Sny/mIi0CkvKVM8fxz4fWrzG7e+L
VOApg9d06R4SfZcnqoA8DYcA02V6HDkq+JRACv9KqMP56Cedep/M/NWgyq22nRTf
7m98UGzsFQzOAvsFtePCsJpWtogI63G3wm7IyZ0/FTeqlGQw9i1c6oKmHsuKZ+8R
EKY8kaEjEXONHDVXtBbitOzdNTzFA0qaPB7Ys8idf4+hTmmPM/BRlZSbcvTdb0uq
tklXdzGjs30YWsm5Nbs4q0hWzvqVPUVc72pTupZH/XrEEzIX/VdClkZyCP7q03al
c6LFlsyThh68f/AeRnoGM3SyKx8jBeY3ao2aOr3Rj9VMhTQa14ciR+mH5eZS5o+q
B1bgxoWAYL5WElrxGgzA10Sn9jZZRj9UkDPdSwe08wpjmZBGEc6NNBiLmP93O/KH
UhR+7h1SQ1KP+fYd6Hq017f+1nUtNAW4ymHDEIcgA28Kgjtc7cNG2XsAHCVw1zWH
QUjQLan79HAAMcpQF5rmN0JkUpQDRTmINK1CxbYWJPCdbZGCktLUZd/IoR7jfdpr
ur4njELBe4Nth4Cbv4ykR/nAZP8uZo5ycYzBzt7WRlNEWZh3Qww=
=9QnH
-----END PGP SIGNATURE-----


--=-=qhUpUERBYNu7zc=-=--



--===============7930907110438927333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7930907110438927333==--


