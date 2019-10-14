Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA0AD6594
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 16:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KFw+tvbrEwFcGDV7oXP5Bqm9V9D5FDWukTgbDoa9UJ0=; b=enU6Lcwd4z0wmlzfrJz3jQZVv
	W4tsg7v8oF5tTe8tLYOeHC1XBEJlRYBaRByiwJYyzd/1xP691KhBFbcfr4GnBUryANFQaU0RjXeZb
	SsqN0iC6rv9FpY2kr1uCbQAcZ0F3vcPZD8sLRAVwfFmwo89qP27P47b6fvrCJEKOGUe3GI8WfATrH
	QlECpr4DqqNhg5HX9Q3BKH7/cCCSqk2tsw4KiMK9QrcIe5hJ/aPYP41VDa1FPjqCHDYRa9+ybxs+K
	cqaCGW/Cb4dTww3r7uu8HkD8D58Fcj77v48ZXsyAsB82R1mM8dhJy19MdTFXP/4HLbtfuO38o1D5K
	5CqESUM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1g9-0001H4-2f; Mon, 14 Oct 2019 14:50:33 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1g1-0001Gc-M9
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 14:50:27 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N0qmr-1i5xEo0o0D-00wmmD; Mon, 14
 Oct 2019 16:50:23 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>
References: <20191011111446.77a86e7b@kosmio.komorska>	<20191011111709.344d3667@kosmio.komorska>	<001e01d5801d$73318610$59949230$@adrianschmutzler.de>	<20191011145141.7a5848e6@kosmio.komorska>	<004e01d58033$8492d380$8db87a80$@adrianschmutzler.de>
 <20191011191438.4e9c2eb6@kosmio.komorska>
In-Reply-To: <20191011191438.4e9c2eb6@kosmio.komorska>
Date: Mon, 14 Oct 2019 16:50:22 +0200
Message-ID: <016001d5829e$b5184d10$1f48e730$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHFckNLZYiPIwXRKnWMdxFuyzZjxwFhmhhWAoiReLYBvySKggHdCrCzAXOZi7unMob98A==
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:Jdvml5XvQ/SMXemGGcKaDmS7oDmc0pSK21FBFY5bYqWxVsouUpz
 6TESonJG5CO4oTsTBA8SSb1Vd96GP7lM6PLgkzMXUhL1U1kVWBDYnCRYGKK9LdK0DtHMfgU
 zay/hS5i8PBP+ROUHLAOAtcdYUTOQ7fx8PZqfCee4Y3B6/cHW71NvGS6LSkW8vEab1qH0oE
 f91FBOWlYJm2cXHC/HYdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GlHweKJIW+A=:Ik8KB2P/752knjtOeoBMrq
 xqFzVLPU6sdabfiJ0Lq0j5Yr3teQ07ZNjy6JJdWF8rXe0BrXPeLoFj2zzjsJsg9SGFyZuNukU
 a1bEDV5jWfXFga9sOD1btBfDr1BA12DaJxW/PDNlHbpIOdqGJcE4mneVQed5Jwr5ER87gT1zB
 JBCU3/7sduxRyn41U2mdSwryr/cSrtNDVf20K7zT+c2SwC8fnE8/R3rSjOwaWiWVeOm8apehs
 g3NTCU6xrkgAkOweJRl45tcULXI5rEbK6/X206dPi42uZSGSfC7MaifTpHu0FAChKLtrN8rVU
 DxPVSjmrDPs7lXt7fC0o0V8xN0jnF4ONbMsTTfNvP9XM1vdC/vauaypv/uvPjl9Vc099Wow2A
 PiXyo1MAOiv2UMo3W+3A5uv26perKhWRCps3trnKymSw/a2u/GSl20ObX082N6X5LAO41IHDO
 y+pZpK8JNG1IWdwYkCITT8JFXA46aIdYYDoO3dcmV5wL38VJlHZyyWkYs1tc3KWDBx3Nsr9av
 86lqUkd00ZNTXquGwdNg2478AvVr+mItNx2oUVqJY/cdQiTavfopgpmmQcs6JRiTZEpzc2Orr
 jCkbHa3unCQIQ/eX2g7xmwsdqZ77ZlydGDXQjEsNk4Auodce8B5oHnRegQA+mLl2PcjfNHlkG
 fmq0slp3K8lzkBVbYTAW4X03tWF5W/P400xj0V7rw2BsXYUgzaizX3BR/nlsAYwixeWIdxht4
 1O52hIZAPlZbrCh1ZpnL5afj5dNCOW7Xk9g5skyex5ZydctsFGuolLf41ccfxnUj/2+TpKShU
 QOv15wqT5D3eVIKhNPYOpZdOfS5dDVcbDni2skrtivIBYWodQ+PwENnsKIAqg91WGCFCinADB
 ffxWlZgzREna5k7qWHYAP98KRTCKy4FB0anvvRyGI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_075026_022567_7D980DE4 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear
 WNDR4300
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
Content-Type: multipart/mixed; boundary="===============1724589804323685958=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1724589804323685958==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=H2hrdLiqZoSAg0=-="

This is a multipart message in MIME format.

--=-=H2hrdLiqZoSAg0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Michal,

> -----Original Message-----
> From: Michal Cieslakiewicz [mailto:michal.cieslakiewicz@wp.pl]
> Sent: Freitag, 11. Oktober 2019 19:15
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear W=
NDR4300
>=20
> On Fri, 11 Oct 2019 14:58:03 +0200
> "Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:
>=20
> > Hi,
> >
> > > > Have you checked that there are no usable addresses in 0x1002 and
> > > > 0x5006?
> > > >
> > > Yes, there are wireless addresses inside calibration data at
> > > offsets you provided, and they are both equal to LAN MAC.
> >
> > Okay, so for &wmac that would mean it should correctly read the
> > address from calibration data even if you do not specify it. Thus,
> > you should be able to remove the mtd-mac-address for wmac and still
> > have the correct MAC address.
> >
> > For 0x5006 this is more interesting, as it implies that the vendor
> > puts a "wrong" MAC address into the calibration data. However, since
> > you have verified it, it seems appropriate to overwrite the address
> > in calibration with mtd-mac-address in this case.
> >
> > Note that if you remove the mtd-mac-address for wmac, you will need
> > to change the label-mac-device alias to &eth0 then.
> >
> > Best
> >
> > Adrian
> >
>=20
> Hello Adrian,
>=20
> IMHO the valid place for Netgear routers to get MACs from is 0x0-0xc
> (beginning of art partition). This is the first Netgear model I came
> across that has a real hardware address inside calibration area,
> usually there are 0xff's there. I always look into vendor's u-boot
> sources to find hints about configuration and all WN[D]Rs I had access
> to point at 'the start of the art' :-).
> Even though vendor u-boot does not put Wifi into use, it defines where
> wmac address is for u-boot commands like 'wmacset' etc.
> We should consider leaving it as it is now, as long as we decide to
> honour u-boot as the valid option/tool for changing device
> configuration.
> It looks like Netgear has its own way of handling these things...
> Anyway, I'll gladly read what you as a developer think about all this.
>=20
> Best regards
> Michal

I am just reluctant to overwrite a MAC address with itself.

However, I understand your point and cannot provide any superior insights t=
o what you've presented here. So, keep your current setup if you prefer it.

Still, I would change the ambiguous label-mac-device to eth0, so it's unaff=
ected if someone changes wmac MAC address setup later.

Best

Adrian

--=-=H2hrdLiqZoSAg0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2kiywACgkQoNyKO7qx
AnA1RRAAk/OhkN8qA0Ak6lwnoW3ynqjcJUT2lySpRvNwbxw5oTMvyHKeT2U1A2wh
TQ3qF1XExbG7fYULLS5l0jCKA5Z5xjmdg1aMLaa8k8we4z+uIBFJnPq8cQRQxlz+
fA1s/wzlzIHJgcjziV+FMmtot+PGl19rZ1TatMAO8GQIF+VYXpUCXR5uhPzTc76M
uCdp+xAGYjYgzQnUgZ/rkgEFIJXp0EIOQoxFWRdtR9oA+GwRnRAxDJxq9egWIy7F
gqvvkqGNhzpN+hJFtpGZ5CtSPYbJid2wXdvAzxMukeGYqignXGgeAD6U1KMd3kAZ
fktpodBDDw9K6DpyY2BNpf0+NtHVIFI0lIn2stHXaPMocgQjwNZHMc7wlyUK6ELa
12had3x1+5Z34WuFyC3JgoeD9nYbzPiiwvO2ZsATy8vj2a7ekZdZY58ECYNiI3zA
tfgXoD2ofDW4rUeKaRHLM/YSaxb4yEEaGnnltq35mkPN/zLcya8O0euRQQv7o+/g
Pw4vm2LguKR9F692Q/zB7N3ljWaxzNB3zaP+HXIcSCZGMwLLfegM7jwVDye/1Pgb
BVmHgyVHySDMimTpon65IajgHZkdgLx4Aoe25nX8xB2oMd4yj3AdyhRfwuYFgeMo
ndTaMr8idRnEE2H8g6kbmp8wwsRTXfk7mcep9vC8lxHxF3t34Ac=
=fvZz
-----END PGP SIGNATURE-----


--=-=H2hrdLiqZoSAg0=-=--



--===============1724589804323685958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1724589804323685958==--


