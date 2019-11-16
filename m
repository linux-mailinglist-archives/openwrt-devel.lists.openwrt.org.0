Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D504FF548
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 20:06:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9v/9FJNV+iQmlv6fQdE9Aj3dClWZ6Ixl1a4TwruyAs4=; b=aOOP8IWdG66GY8hrkZVSnCD4+
	bvA7F1We28hnXcmzuMiXcVvue8DAie0iXMMfHVF3nkqE248TPdGUm5madCM1Hp2+FefGALe716jj+
	AQRCaP/4JYFF3rx4mOl3DX3YQku2e145cGTIfaQETZjDW3AT1vDhzO+qJgKpic4L7Mmd1cTnczPO7
	dgz8yzs3ICI9rr4BeA3Z6P+IhVJn2l3oZlVNAfoWtkKC27Jvfn2jA46BAccfktQ+xkHslEGcfapHt
	TxXcWTV/rccnN5Fqj7sW65seiUDZRriHUWFzELzgvIuicOrC6BSiEVVKKAqPhigT4eOKb6q9clLn1
	Y+niNtGhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW3OU-0003qP-GW; Sat, 16 Nov 2019 19:06:02 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW3OK-0003pk-Ql
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 19:05:55 +0000
Received: from t480s.lan ([88.152.169.61]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MSLhm-1iPPZi3Zvc-00ShrT; Sat, 16 Nov 2019 20:05:47 +0100
Message-ID: <fa4b24dfd5f020cd0314510b31837850ef242c5f.camel@brenken.org>
From: Dirk Brenken <dev@brenken.org>
To: Daniel Golle <daniel@makrotopia.org>, e9hack <e9hack@gmail.com>
Date: Sat, 16 Nov 2019 20:05:42 +0100
In-Reply-To: <20191116162706.GA1274@makrotopia.org>
References: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
 <20191116162706.GA1274@makrotopia.org>
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:cATFVE93y3mHTMZQUUriAMEFAztqZS4NltCH+NzQL5ftAp0Wrbx
 FUbOxTspuznYc4aF/08oT9OkoaVFrzrZ8uEm+4Mk5lLNXuSVNdq9YY3Ey5TIb/NrXMzZFjG
 +G8jsn/I1dMXzM0zR1fFhW6Yw8lrvjj8woXPbrQMkD7I0IUsef7Am5nZHyVUvDKEjpdXYNC
 OJlzlBd0+0JoFjE4ffupw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2y7n8Hr5bqg=:j46/Us4hSAB+MtMp6Xqm2H
 WO8YfpfErr1k0B4yMhECONmRYxxYESnxhPk1SkyPFoe+hLfVewsQn+MQTZFIhLiojEHO8gKvS
 97949WmzzIDl/sKOcnJ6b120Rs6Qftw3lsy6htguwrrpb3Ef3Btsds/7BtCdqGWfHF0uHC3+9
 ZjYlfuf7cX6A6SZmBmogVd7r1g3gouq7ua1czSZiUZjpLmxbWXuZ1Vl8TeadWRjyZC1tviXsm
 V0aJx0tFBZiWWPbdj8e9N/lrAjt392N10wzouWBYY4HujabINT/tQfTGC6NpSDI4w0F2hx1hg
 91u4kWdtNF6F8Z7ARzIM61NzC82nTPN23GGAy0WtBqOagq3BMWxCTPCBrkMmKubhuiS8VCJEk
 lkdLfT5EYgQjTzPJKKXKlvebedmsYJlnU7RD/4+RTFNbEeYJOJL1cpSo5DfdjuHfDHVi8HVyT
 GJUax2Wc1hrN9YL40UIDTv+w6cEW2aDEV6VmkAEFkHCrZvm7V4CiQOp4FhyJCIPKkIv2WabNK
 fRQGo6w86V6MUvmU1yego8/25bvHGMNDHyOXTkJAmRGWOiD8HrD/hrLE3p9ulCqeqOO4Jaj3L
 rvkCpcAHftdCb2A+4sP6WrWAfZBIOkP88QGN3J1ox830iLmA2NzoLt8RzvZimGN2R2fOWbyb/
 bqeIfhIAv1BUCBjQzR8H/tzjcz8cb3UxszKRxqEKESRKbFzNjjbqDctbsGWmC6ztsO63UBB0x
 YcIIzi6bajKC6puX8L3qH4C6qGDjPxKt7okr9O5sTvh9o2a3YU6yxajQpeIonJj8sAT5PmGdO
 5ql4mnynwPGrwF+VkqI09IQ/qk8ICMGQ0xm0vkMTRoNF5SJRuu0OUjrvZiGV+NUCv4c4K3S3H
 bAtFtA4XPU16I/CxaRJQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_110553_171130_C4FC17E4 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Wifi is broken
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
Content-Type: multipart/mixed; boundary="===============7217238200238022384=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7217238200238022384==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-ptcWSqDPGa4vrvx8N09O"


--=-ptcWSqDPGa4vrvx8N09O
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-11-16 at 17:27 +0100, Daniel Golle wrote:
> Hi,
>=20
> On Sat, Nov 16, 2019 at 09:17:08AM +0100, e9hack wrote:
> > Hi,
> >=20
> > this commit
> >=20
> > commit	000b7687bc50be5b0f1161f4bf8ceb85c495c395
> > mac80211: restore mac80211_interface_cleanup()
> >=20
> > breaks wifi on my tp-link archer C7 router. After update, only the
> > 5G wifi will be activated. The 2.4G wifi doesn't start. I try to
> > recover from this by shuting down and restart wifi by executing
> > 'wifi down; sleep 30; wifi &'. Afterwards, wifi doesn't start
> > anymore. I modify mac80211.sh to get some more log entries:
>=20
> I've reverted that commit and applied a more sophisticated fix
> instead.
> Please retest and report if that works better.
>=20
>=20
> Cheers
>=20
> Daniel
>=20
Works better now - the AP now comes up after reboot (still with some
suspicios error messages):

[...]
Sat Nov 16 17:26:15 2019 daemon.notice netifd: radio0 (1262): sh: out
of range
Sat Nov 16 17:26:16 2019 daemon.err odhcpd[1331]: Failed to send to
ff02::1%lan@br-lan (Address not available)
Sat Nov 16 17:26:16 2019 daemon.notice netifd: radio0 (1262): command
failed: Too many open files in system (-23)
Sat Nov 16 17:26:17 2019 daemon.notice netifd: radio0 (1262): command
failed: Too many open files in system (-23)
Sat Nov 16 17:26:19 2019 user.notice firewall: Reloading firewall due
to ifup of lan (br-lan)
Sat Nov 16 17:26:19 2019 daemon.notice hostapd: Configuration file:
/var/run/hostapd-phy0.conf (phy wlan0) --> new PHY
Sat Nov 16 17:26:19 2019 kern.info kernel: [   48.375045] IPv6:
ADDRCONF(NETDEV_UP): wlan0: link is not ready
Sat Nov 16 17:26:19 2019 kern.info kernel: [   48.478057] br-lan: port
2(wlan0) entered blocking state
Sat Nov 16 17:26:19 2019 kern.info kernel: [   48.483739] br-lan: port
2(wlan0) entered disabled state
Sat Nov 16 17:26:19 2019 kern.info kernel: [   48.489606] device wlan0
entered promiscuous mode
Sat Nov 16 17:26:19 2019 daemon.notice hostapd: wlan0: interface state
UNINITIALIZED->COUNTRY_UPDATE
Sat Nov 16 17:26:19 2019 daemon.err hostapd: Using interface wlan0 with
hwaddr e4:95:6e:45:87:e3 and ssid "adb2go"
Sat Nov 16 17:26:21 2019 daemon.notice hostapd: wlan0: interface state
COUNTRY_UPDATE->ENABLED
Sat Nov 16 17:26:21 2019 daemon.notice hostapd: wlan0: AP-ENABLED
[...]

Regards,
Dirk

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
>=20
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
>=20

--=-ptcWSqDPGa4vrvx8N09O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvk9F2uJ4OsaK+T5unXHNVHv65oQFAl3QSIYACgkQnXHNVHv6
5oRKSw//bTYATXjLWDvJcZ93b31TgQ50VfyO+Gf0jY+/AByNOXy1Zce9tPbMtYuG
DTHZtCKihT0w/YVPXRcIkkt+TtJFj/TjB6kEEKozsTCL8NYlnijXmzDJa2sOMHRo
IwaMiN0C/t5s8cRnujc8X2JsIRSL6WmATAcgF0adp0WRu2BOotT5aqkaO5RYy9ov
M4kd5gZYJrMg3P7MYvh/pzEGiTqWt9AR6Ub1zypQ+PrK+p32Iu6ZaDo/9DRzYoFu
L8KV38ADNLN89yXut5/LVkKR7Jztc01Pe0502sQ8oPLKDJ/QxMrA68PIML0njrMa
qqezOkxAdugZO+1ZeFeldhQA/LYtE3xZwa4AnE11+GZ02nVoIPtbui0eQT9vTYRI
Lyt877le7vXl8zvuqBRMEoaTFxTOHKK0cUMhAQyZ5DExag7hWtUg5M/6dw6rFJM/
OYw5EOW/cql0s8EKMI7Dc+gmoWELcI3d5jLdN1m2EzrONgSmE14l24XUc8uZhkyl
z+upAk7IcBCAMVWdblULuv5xmc71tVxGij/E+SfhJ8VagxiB3Jz4/KZD6sAyAIBB
JyFaE57NicLPIk2TqWa4uNpJXWzlktrzjahSi0Q63aLulPa2EoFKnECD2yrOzB80
avmBpPKolZvj2e8IFxfSL1nb4zPZ8csjvheuOmMJ3RAbIyf3rUs=
=8Wmg
-----END PGP SIGNATURE-----

--=-ptcWSqDPGa4vrvx8N09O--



--===============7217238200238022384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7217238200238022384==--


