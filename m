Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBBFE557F
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 22:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cjfGaGL5Y5qrFozxA2cMgDpRC4ZfrbdMXTMS+CUV3/s=; b=dm5ePd6N/2HOE4sYqDHZTh5xe
	9v9JEVftiUtX2aJ2g05LGZ0tkrITcU9OfhMTb0VolmkCvdlR7KXuJMB6b2SVt/RpbhLNt0+GytFCA
	ysqN+oC4DBOBGoe7MlD+Uf1dRdwWANh+lQnqPC9tZu8TrX4Am0S/rSy2FqzpdjWsgYmsTniem7RyQ
	ArXgRsMMBA0op6YAnG4NR/lQN5NS7uyq9noO6xkVqSF9EKqq/H960GpAJHyCyhYuXo87YwRiSgITv
	V2LfKNzn/Zm+OmzqJUKlwDw8fLhTdh45rWJ6yuPuA1lErrBmlz8eOWc0Nw3rqu+aHiv3s4YXqHVm/
	3OjmcnnQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6au-00027k-0B; Fri, 25 Oct 2019 20:54:00 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6ak-00026i-Ku
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 20:53:52 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MVvCn-1iXdEc0l2j-00RrRf for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct
 2019 22:53:47 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20191025113837.2844-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20191025113837.2844-1-freifunk@adrianschmutzler.de>
Date: Fri, 25 Oct 2019 22:53:46 +0200
Message-ID: <00b701d58b76$4bd798c0$e386ca40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFo3cLDKD1r+W3FhKq9ft13SGoYRKhFMJNA
X-Provags-ID: V03:K1:hRPoPSOIauz8AA9hhFfEFbt31Ksj0g9CziVIhUKaLHhiqWeITxY
 p5gLqWKdnYV2zl/SpLY8k+TD2F4GlhNai+GvJlIHfX1PYpEc8rxUFVb8KNlRkNrdGQnWXvW
 /41Yn9aJ38o1u+NZggtlLOD1NGbYIm++P92Gdzkdr2ntIqdu1K3pDHg3bnNxTBczQxsxaBI
 nmQSMzHEzID5l7HelrO7g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P+UllzTr67k=:wcb26kl8cWNaaeNQ7BLgvm
 uqjcxExEx1So+Pl1lpLGqBFg8ii2D2hMn3IEr/VocoVnzbDVS6Xv/w8yTEpwJCdV/kSzlEuXG
 5kRelVkwRZqBUBGb+T/kY1/tQlaVtIkMFCMRSVBbeKRtaYIU8qvfSsbaTEkjvDwys+A8lsaR5
 776MRVpFsRGBsdgT8ziJN0CGK4o+573bc638g36EU6+57vHAhc6QrEKa4QUuXdzrmMkJTyEem
 QdKhgI75ro829CZin1Fv6CLwQCy63Z/uB1O/0jFVXGNg8SfYML3eW6NanIFk/ghRODoCaAOSN
 jL8YGml2LjcbeQE+fk7vX2CimmHlh2vpjBnp4KoqSgYkX1Q0g8wdKNkCn/WC3afAr53RQf7XF
 hH09opsqU8Z4KIIr+IqodhzEG8Vwi/TDuG33Cl8WDJaKHnddodWM4ecvTLtrHUqoWONsup+DW
 EboJRcf02vJKSJONIZkxVagEt2LS9op/idM4fuIiRdzEYHGBpka7mfCfVhUMzThdwSoe3z+FH
 tPUOnoVAHlin+Ma3nk1lmXcvbq35koLME6HEaka0H9A7PtC75VoCrnMKUB6zyzTAx1n0nT6gw
 F8wNAnZEKgHUQrQmUD8flE4Rubpi9o6xI2DUzR/CTVpFvf2SjQ2K2rIPZ+7nF9eI6J5/TUruJ
 ZylJdt4Kj0L+YrJRs2Y5DR5pe6AQNUxfeqMcP/lFrA7W3Pz/rXlXnVS8QX1ULu/DwKxei6/JE
 1fZZMTUuVZbMd91WVQRG+pcSoLruQ4TmazJUJsdMu4UzxDyg0eg8/lV7vlMyEeb/m5nHG5jBL
 +My4Ibx8snjgvzpZfMEaAtig0vKXIrFHLr7nIrmOOwg1cw51bhkATZfwBC8pKVSZjnnEPk0zQ
 MsqIAWiYOBsuh/D1X7l2p6XDtspMdCnIwNfvbK/5s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_135350_976799_BD49A972 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: remove redundant mtd-mac-address
 for wmac
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
Content-Type: multipart/mixed; boundary="===============6808459439083814688=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6808459439083814688==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=qEWzOZWvnoU3KK=-="

This is a multipart message in MIME format.

--=-=qEWzOZWvnoU3KK=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Freitag, 25. Oktober 2019 13:39
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ath79: remove redundant mtd-mac-
> address for wmac
>=20
> For several devices, wmac MAC address is set from art 0x1002 explicitly by
> using mtd-mac-address although mtd-cal-data is pulled from art 0x1000.
>=20
> With the MAC address in 0x1002, the driver should automatically use it wh=
en
> reading caldata from 0x1000. Thus, remove the redundant mtd-mac-address
> for those devices.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>=20

Resubmit of tested-by:

Tested-by: Karl Palsson <karlp@etactica.com>

--=-=qEWzOZWvnoU3KK=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2zYNYACgkQoNyKO7qx
AnD1ghAApBD8qb6n97hxs7nzuXsbwPM4t58X3zScg1h1KPpk4PLktzZ5MNBYvCoD
FCaD73e/bTeoQJhlRLfYceDN8TiKJNt6RqMC/miyvqpiC+vO6LjgJcReEqd//XgI
lLj0FIba83cSh/jWo2tfQE5StKL+JxggEHsgc3rZxNY1urjpr1y3jIF8xvEY1OiH
uy4NFyYJ84AWquSjH9PDWExhPmENC0eoMEyU6b/Kdbfe3gb7fGfvonV4sybjASmG
xW9W566nRkb8cEp6emO1nMj2qPNOEZ6ciVItG6fiZ+eZN/wRAAqZcxe6InEJFoWJ
h4iFDW8DFU83JnFgUrxWnV941eS95b2G8HgbmNTZ33q+urGnpIUP6P9m50UQzFn0
HuIX3uTxuvGtciv79LWxzY/3ZlscvX1Xil7To+CyzWsD8DcyIGpJ9DMT8c4+p+/E
etP5YoAsKEWS2NV9px4RXlrSUjRuTyPHdL3n0rIzo2I9/YGQnI8foZ752wMkMu1R
BR/QgDM7Q0f+efF71A/U3h3Ko3rtC8ziqrzJ7DJT80jR7D/KQ+8Lcnn3bSAPSca1
ly2t5JQp/YhdS7fQtwXflG0lU4Eql5I7qp57FvhIAf4Wfr1DLfRzERxxE8XcYJd0
0ZsSdnDXXlmeXLlp5PultkAVAi8JlzaErOPHILKpTuRY2c7v2dU=
=f7Bm
-----END PGP SIGNATURE-----


--=-=qEWzOZWvnoU3KK=-=--



--===============6808459439083814688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6808459439083814688==--


