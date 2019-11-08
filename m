Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDE8F4EC4
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 15:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gqEjyYTt35tLG2C9i03iMm3u09R5jynfaQdBJP9Ojjc=; b=GsgL9I6yeRWGsFnbRx84OCcfX
	Y1wVxrwsxfuhglZv3on/Pjlgu8Q7ne7ZsK7l42gDNA8cMhTKMt34sE3yHusC1AeztEy72O/nH1ABr
	I1O9849nONdeOtukfNj3yPmwvXZ7ejkZs5HCDlpXt/FonFqYLRZ+SzkPkcv2LjCGIQ7ZW8FesL1sk
	lb31E4MQ1wQrkSz/lPfhiKkGA4TO14PiglGIDV1+VQx5jiwOr4QKvrUAGQz60EOLT/7ecsH6CD+LO
	6H3C+XfoFRGfi9YLvZ6YkizTh+eMLdtx1PeINv87Et7b/yv0N6cgDhKJ2BlpoGbTv9Ok7xS5gu4fb
	4rmqbrn9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5eR-00080o-0q; Fri, 08 Nov 2019 14:54:15 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5eG-00080A-So
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 14:54:06 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M5Qhx-1iRibK35vx-001Szd; Fri, 08
 Nov 2019 15:53:59 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
 <20191104165429.GT1190@home.paul.comp>
In-Reply-To: <20191104165429.GT1190@home.paul.comp>
Date: Fri, 8 Nov 2019 15:53:59 +0100
Message-ID: <00b001d59644$5a7f1c80$0f7d5580$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMAGbqKFWAjDI91KoQ5nnwA==
X-Provags-ID: V03:K1:TD+Cu7pRvEh3Wt1JnaSX/iSqFye2UVWKYa2W/UovWzObl4SQGQn
 XmsTs0lW8ZnSg4dMWpOuwKm3CnXM2j6fUO0R1/cJDOH92y92Nx6YuLPfkSSGQocYjeR+VZb
 9KwGix2w1LWwkz1zy4CXBWzySjGjk+EwBGQxmfXqA9uJ7SfdD8fmpsSivu8X0agBRuaHzie
 /EHdo/V7uzIlCk5marFMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:b4XDpUy1FCI=:3cAoW5Tm6d0BA3Xl7mVsJ4
 LCjyFAJVq9LL6fZcQlFpV4uFDz53rM8AifMKlMjMyKDJE8sP9j11R6iX0EBSrgihNrAhZH6B8
 j0bkCLIqF8ma0y+pslcDtBWi4945ll8uPg8BD4CERjuaxjFJb9RX1KBeu1ezp5fJkNtY+0O6i
 Ld+6CE7k/BKSO56Qb9d6w1stKjv7WdcZoUFLbqEtIfl9gYRQNhrhx80jG37xKMcTlJ3rnGuEk
 mXlszNA5H9z7u7AxDxhs9uPnVvhfhsqxxQMmANc+6po8Tix8Krw7T9Y6ePI+jj160Wv6kLOm0
 R4cEAkJeOns6cUugI0Z71klozTLSRUyxqK0UN9+p30H2gRtw7dloNMdbKb+WRtQt2ZjLDuJqH
 6Mj59S74OTzMcFNjZIFxyiLeo0AtW4BL7YVWE3EMziO2EFgWWEugoGst5yR3NESLUfO3lMrAP
 1GzletNCmB1mM58i2+TGa9pabxxL60qk/UkecROOSn7yy/DZHpV6JOXRkGQtPcqfoeHGvv1Me
 7maJxrdYRf1fhPuMNId8scLLlJxGsnQomzLK5u9QWLsg19/2fo7tKNq1TVym9/NF8cRLhnQJ5
 PJbrICnjC3PrLvMjNoL5t7NNgvOL25Ibb/CNwRH0niSTZNj6nKfrRNB7WB0892UW+P3ufR6N2
 YoiSUTWN/C8EPB9K0kHNSjkjpuAHOjs1BZ340yECy5g3j8UyM35r0f/wqLiDsnRRT+D0kEAtz
 8SueT1LcmxSP0fYKTTzZRuA6oOPBbdrOlLukqA2l//YacWK+ohyCez6bJvSw/ZoEhG3aMMJyi
 YT1XJs0i5TRYJHfk12ch8NJwRtQeGnGci7KX/+008x92gb+VmJf5hrwiynAKFoFJu5vkgQRq8
 Tc5x1s2AC+febQBQScPDZNHbOr8BUPwOF5GRu1i3g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_065405_219731_1D3C259B 
X-CRM114-Status: GOOD (  25.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Content-Type: multipart/mixed; boundary="===============2129120445974241605=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2129120445974241605==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=LXr2xhb9aqyeCN=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=LXr2xhb9aqyeCN=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > > +			firmware: partition@40000 {
> > > +				compatible =3D "denx,uimage";
> > > +				reg =3D <0x40000 0x370000>;
> >
> > 3520k? Does this even build with standard buildbot settings?
>=20
> I did not know I need to check with standard buildbot settings, I
> haven't noticed anything like that in the patch guide.
>=20
[...]
>=20
> With that I have 6 eraseblocks left for the rootfs_data partition (5
> is the absolute minimum jffs2 allows).
>=20
> > Be aware that you might not find someone willing to merge this.
>=20
> I do not think this device is any worse than the other 4M devices
> supported by ath79. [...]

Well, TP-Link devices have 0x3d0000, Netgear has 0x3a0000, ...

>=20
> Regarding the firmware partition size, it can be made 4 eraseblocks
> more if the next two useless partitions are merged into it.
>=20
> > > +			mac: partition@3b0000 {
> > > +				reg =3D <0x3b0000 0x10000>;
> > > +				label =3D "mac";
> >
> > Why is there a partition labelled mac that is not used for MAC
> > addresses? Have you checked the partition for MAC addresses?
>=20
> I have, and it certainly doesn't have the address printed on device
> label. I would guess the partition is a rudiment of Cameo99 reference
> design or something like that, and D-Link in their wisdom decided to
> store MACs elsewhere.
>=20
> > > +			lp: partition@3c0000 {
> > > +				reg =3D <0x3c0000 0x30000>;
> > > +				label =3D "lp";
> > > +				read-only;
> > > +			};
>=20
> This I have no idea what can be used for. hexdumping it reveals some
> filenames and "whiteout" strings which might hint at using it as some
> kind of a writeable overlay. I can't be sure I still have the factory
> data in it though, but I do not remember specifically overwriting or
> anyhow abusing it either, probably it was done before me.
>=20
> Anyway, I do not see any good reason to care much about running
> factory (old, buggy and flawed) vendor firmware on this ancient device
> (it came with an old-school 50Hz transformer PSU, you can imagine how
> old it is!)

Well, on the other hand the question is whether we want to deviate from the=
 principle of keeping vendor partitions to add support for a 4/32 device, e=
specially since the partition size will be still small in comparison afterw=
ards. If it might stop building anyway soon, we could also keep the partiti=
ons in official repo and whoever wants to use it will have to mess with the=
 code.

Best

Adrian

>=20
> > >  	case "$board" in
> > > +	dlink,dir-615-e4)
> > > +		lan_mac=3D$(mtd_get_mac_ascii "nvram" "lan_mac")
> > > +		wan_mac=3D$(mtd_get_mac_ascii "nvram" "wan_mac")
> > > +		;;
> >
> > I didn't find a reference to "wan_mac" in nvram in ar71xx. Did you dedu=
ce that
> by yourself?
>=20
> Yes, that's where I deviate from code in ar71xx. I grepped strings in
> nvram partition and noticed lan_mac and wan_mac, both made perfect
> sense. Regarding wlan mac in vendor firmware, I do not think I've ever
> seen vendor firmware running on this board so I can't tell. Guess
> whoever added support for it (and the other 3 almost identical boards)
> in ar71xx have checked all the options.
>=20
> All your other points noted, thanks a lot!
>=20
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=LXr2xhb9aqyeCN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3FgYMACgkQoNyKO7qx
AnDbrA//UGDxcfJVPFx42QVo10obd7RfYjnnu2SGeeazBQAHp6/xCWuYj24VEgkL
69oeOr5XkRt8mnOPcwJwLSSHk3WbRJvQYsbkpXMq9p28lMi6q+hxo1tiTIGFPDiR
DOcbQINDQB+gc8LPROLh9aHExX7Osl5z7Vc++2hOwiqN4QgkmSty+3dmRF4/emIi
+1I6cc5tehvL6jQS0XIPXWyqf9bL3svqmrtELCG8ABVj8JYwM3+p51dmCw/rbMKi
gqD+WQtAEGlrVUGE6vDc7/GjOwTR0EAc+8F+XtVyKXVF79ZgLGYMM85R+nptPB98
YLtdGCfwJRE51t2F/3N55cDL27tIRDMm0DXCm7JfzT3oJZG11E8x3f2gQL6wFx9S
b2lzXgtfZrHkQtuROzO/XlptbPaAY/Jw+k2RFcPHNHvMBIH1TKOO5SGa8I1R4KDB
42WGZN2Ha4+EciMtmenmSteLRfZ7WmeD8IpW9b7ZlyGVyoKM/IHKDI1OI+odq2bH
7k3jixn+bQmbS9PugWC2cI4Xh874OqQzdT4F0aXT1DUq6RLo4zcVzgoBWbhR40Ml
0TESsq4cmfJgJHXrVz+6hbuAO0t7kkCn3SH2xG1spnYY7bn0Fsjew405MiUwN7Zc
bQd+ddwwlJPlJNhGZoLxshKiHvkefuFU0DEJ99JIE690+lDKMzk=
=1HdM
-----END PGP SIGNATURE-----


--=-=LXr2xhb9aqyeCN=-=--



--===============2129120445974241605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2129120445974241605==--


