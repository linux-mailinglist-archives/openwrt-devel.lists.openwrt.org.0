Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1134ED323
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 12:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0kgRbZU73dfEs+SBxa0F1bzJZ8us7JehJrUuuyiifiE=; b=ifZGNPFlHSeFB6qQJ8NPNn4Qp
	yZnPEV3ipVkNQZa9asNedvz/3CY9XRCGFbUhDbMKJ3RanbgjGrTdz0kNhvDHb4BOKmPxHs96H0lNu
	V4S6tn6F3bdhwmsTXVYu7qPHpH6WfEz3c5oYixLLS4vxjYbHfa6w/HU4xlqQi9Va9HrgynTDIFK3z
	0NfW07CAB6yhO9QQ2OhvM0UDUyPag4z/K/yMx4N8mPuDP/FP7S+3krn3VJg1OsKW6GT647mA85fKA
	I6OGVIZLFN82RYMFYXtBHZjhaABy+iaIjNwa5I01y14PR+25Es8D5Fbosiel0PPs799bZZaUrLimU
	sjlee+e5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iREBr-0005uH-2z; Sun, 03 Nov 2019 11:37:03 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iREBi-0005tk-Mu
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 11:36:56 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MkYkI-1hfCbF3IMg-00m0sL; Sun, 03 Nov 2019 12:36:51 +0100
From: <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20191102141855.22192-1-kristian.evensen@gmail.com>
 <20191102141855.22192-3-kristian.evensen@gmail.com>
In-Reply-To: <20191102141855.22192-3-kristian.evensen@gmail.com>
Date: Sun, 3 Nov 2019 12:36:50 +0100
Message-ID: <003c01d5923a$fc6d07e0$f54717a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJ9EmdS4FKp2ArqG7hizcaqLuVA1gDvu8tfpiLPsoA=
X-Provags-ID: V03:K1:V0SJAj4hylV7KJQYtep2HadOyzz5D3QF+VhpHmm/mCjAXMXdkEx
 56vomco4vhOhgiqzSRfhnDedyeLnLIpJAwjwtfG0Vqi1JR9joZk0kWvDBn3vsKfg+yOJGSe
 vc33XQKaEK49cz/Xd8lviGTcdh3aJ6qKeFk6NEoawYa8On6QE5+Wdct8sUXDeLB6722RhLc
 V2UMWgN7mSk+4csC5SXDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2R6D6W2AXMY=:wjNBdI0sFJ1CEI66K8CbdJ
 HPhqrGQFqDyUI5q5fy7vEZiZlC2sDQJbIHvUbhu11YjS66AG8UID2TBXVd8WLBz/gAuNavpNt
 e26xLNNp/SPDse9qO1jDfl2rffkgMTDxPO3d7coZ7VLYd16mFQpCzmfTAqwY5WFmxRs3NPTxy
 d/CzA0BO70CrpBfeFIzR6hKwh4yWcCDAIMVClVltUw/+cb0pFxiV+wsAcTw/c+s82ffycous5
 VX2Kqw/662Noi/5RdyExP9xmMA+Rj8/GMcjRinTCjDIlEVPP/8Su5m7AdxKYFk/YtBNL5sZ95
 dx5b6ITj6xvXK/JTJMUTyyqyB/YOSt28SHknbKibd3j1yMSpTby34S6gdPjW9RDehvgC8Mvy9
 cIRNYrihsoZxZU8Gpuz7fEsxsIQf0HK/1LoGnO78zacXaBxuIVQPCWsWAse08TUQZhDG5zavu
 md4WUTHdagXmfDZnbc4rgzbNWx/KLv0tezhY0m5O/5RumetxkpOEmM4I7UKiPjQVrWCIzqzXW
 kzXo887qoz1CQvNWW2Uw2eaAAHqch826uR9kGUg+wGzJ1Sv1ZHIe3COJD8zZHFU+wmdtyOCaF
 y+t/ocqrLDZliyZgBpJpxFCCH9TiSD1FgrR13EQpdTVkHE/EGdlZkZ3lcjsKdzuwJjVG9EWS+
 S7CiYWvMP8XBYbl/cDHEI03FEAd40RdYe3TqjLMSyoP5dwn3oF/37HzUu5LTx/peKmQm3Qvak
 yQ7l8JJ/eiHS4YRrdmIcxRLss7/X0BLVluEDVho1VGqs8DvXjPrf3UgGT8l1Oq9Efzc5wHjZT
 kZZHbqvk4HX4mnmpm7Js1Kh2y6H0vs4XJkZh7YZpXGENQ5cgEg6t3lmt3kbnDf4wwS2cy/sjo
 GkOcaxUPB42LUjkSCYaUuY0u0TDdY++2eYOqlyN9Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_033655_039501_ACA12646 
X-CRM114-Status: UNSURE (   8.89  )
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
Content-Type: multipart/mixed; boundary="===============5230074306708929564=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5230074306708929564==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=mZdqlA3r4BHEOf=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=mZdqlA3r4BHEOf=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Kristian,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Kristian Evensen
> Sent: Samstag, 2. November 2019 15:19
> To: openwrt-devel@lists.openwrt.org
> Cc: Kristian Evensen <kristian.evensen@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT
> WE1026-H

I've already pulled your patches into my staging tree, but then stumbled ov=
er the USB LED as Power LED thing:

https://git.openwrt.org/openwrt/staging/adrian.git

I personally don't like that very much, and it also doesn't strictly match =
the policy of sticking to the vendor's use of LEDs. However, we also do not=
 strictly follow that policy for other devices, e.g. the TP-Link CPE device=
s where one of the WLAN strength indicators are used for signaling.
Still, if the LED is assigned to USB it will at least irritate some users.

Despite that, I remember that for TP-Link WDR3600/WDR4300 a nested setup wa=
s required to get USB hub working:

https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar934=
4_tplink_tl-wdr4300.dtsi

Maybe you can get USB LEDs working as USB LEDs with that.

Since you seem to keep track on your devices, I'd also be okay with removin=
g the power_led alias for now, merge the device support, and then address t=
he USB issue in a separate patch.

I've already done rebase (base-files!) etc., so it would be enough if you p=
ost your desired changes/decision and I apply them locally.

Note that I've not been granted admin rights in Patchwork yet, so if you ha=
ve an account there you might update the status of both patches to "Under R=
eview".

Best

Adrian

--=-=mZdqlA3r4BHEOf=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2+u8wACgkQoNyKO7qx
AnDlJRAArSQi1cDAQAx+SLi9VOyfyUccURMqLjh6reCHOtZKHQ1pVTrBfXrE+nk6
H6nONLmQzkKreQFvGVgOdmvIEo7TvTfUROP+C7qe/E08D3+cY3HQE7M04y/cgGGQ
RHY++VFyHxGCikX4BssmY4U5p8a1fZiiVrsw+HxEsheNzI8wYgxqBX1DvMdoCgt4
E8ip/NXN5xarvey9m6oGKSBNLwwO5gNO3m9btLbk1u2Fk5d1GFSnoLYMDVjrDNGJ
RkaFh71/ZPScuC/Uerf4NSqqrjNRHIy8t5hfED9TtkycIGn1UfZ/+LrrYzj0vNqB
AmP/diwxj/KzEoorlUr+6sl3y0cK9pkFj5+MWkbzde8iAkodzBFpJlxgFGVezy+o
N404ubxuzHBev05Ky7zMZfzeQmlDnNFJCxOu9UWnSDYki7dl9F78LH78fbA3EuAA
hGK2iAQzcXB6WIB9lrw5dTLzYHXAiOmGapd6EcChfU7v66QQLhQLgtR/exZ61ALp
HOePuN2UEnxmGk+I3tDOmqqKzKEoBzLqyldqLB8YCgHu2wrTz9jG7x4gA+0vn6iP
WNXACWdBD08GMlvz42CjIXDl/wsTFXsM5ZdXRpQvTE0SOiQDXfQJUGcLRkHIkLNX
xTHW7TPc8Ym6Uyu9Bu/N89wlr9rtNe7mCB5njVrh7RFh4WC65Fk=
=kMWu
-----END PGP SIGNATURE-----


--=-=mZdqlA3r4BHEOf=-=--



--===============5230074306708929564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5230074306708929564==--


