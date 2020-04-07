Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449B11A0939
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 10:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EOH/eLUyXXvN18Jh7Ou/IrQXLogi8UbaSWQHz3A8wNc=; b=JZk0oG4RtsHOYnsnNcDKcx8xm
	kAi976i/bVhncNWYGPLCKb0ZJxXryowmZw6TEPS8EZRo7W94Bv+lG6pqpVCsa8YLJHIlSOnai93Lk
	+zEl4ruZbpGKUF5/F+f1u/OuNymA/qxIExS0jRCIUDU7ivrmFSDBFOgGaa1fSYDr6EBZs/wd5gLbn
	B3HqphXHk/bbj5ZLLOdmbQ2zLUc/oHMmH78vCghCMce8VW5JIGTVXRxCrzEkPkG3F91qHUDdlF0qt
	kSpc/tq6yS3PCTZNFzAInE3o7bAzb/cqNmxiJQ9zrRAbj6GTR+rKAr0G7NYII/DkACmKk6C/UqL86
	iEidxj6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjSz-00049p-S9; Tue, 07 Apr 2020 08:20:17 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjSl-0002ww-Cc
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 08:20:05 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MlsWZ-1iwG4B2I9z-00j0dX; Tue, 07 Apr 2020 10:20:00 +0200
From: <mail@adrianschmutzler.de>
To: "'Chuanhong Guo'" <gch981213@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20200407022721.249622-1-gch981213@gmail.com>
In-Reply-To: <20200407022721.249622-1-gch981213@gmail.com>
Date: Tue, 7 Apr 2020 10:20:00 +0200
Message-ID: <007d01d60cb5$54d30de0$fe7929a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHkmStj7ij3kuhbWxw/bvSNN91eDahQN4iQ
Content-Language: de
X-Provags-ID: V03:K1:FXbr2judvywRiUs+P3SWGeC8bYJ327AXCn6IIY9pHWcY/wvv2yl
 zDCtDEZijhpA3OdrLR1hEL+VQaCIoX93zcgqZS+Yc2gT3IHGV67mB5CUGGC++2MyapracXb
 8qaASaxkNsSv8ftA5fjLWSv4ULjUyjYG8F2OCLinSfj5QXzWFKBt/K4LWPBGeJu8SM/wgRc
 uoZmwT2k3tMn7yFBXcKjg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EjNUiF1f09I=:9IWNgOSnmvAGmaNLqNk+Ou
 Y/3o4r0jAUhRcx5AlSbPbI1Otp3cmbczQ/asvxyKAm30DDp2G+fda0igBVifDfIXMMG4HA3sz
 X6J00jV81wYaDKH0WwNcXulje2ScyB6l5tiK0gxDOeyRwnfVKKyyBfUk1KQrouQM2mxEn2MhN
 TMTwsvKQYKBu15/0oclXx04BR/1+gq75LgwMIUioz5pFYfI1CIcvgDIsSm7ipAXN5tlfFq2eg
 LN3+lZEVG5my11f5h5WxVVmUzC+UYq/ACeh4UU+sIq6U6PkmFfz9zCAkYMsV7+d1SchjE/+sI
 /uvk4fGGYk+viDZP3ozc7R66BF4Y/4b2QrA+V7qoqP6Sd983mUqDMFeD7N+ba/Us4bD5cns/m
 7mSF/34pdH2sNGiX048N36PfJB4va6g8CkUsQa4qcez2DUNYla3fElzqBQfunuCH1sghX9KkL
 y+nTHnuT08mlqr/JUIdCqrwE87JX6qW2juUee1XUBh+eLKKmPSFiZAs/WzqOEnb6wUAQmLflf
 S/UDu9FHvLe1Ca1W2LLJ4LiHWbIYB8ugmtnBccRFfRBXJRpWr9tbPrYBqfrcehaFprbLvFSn4
 3+blSyZNJXf6z/hu+da4Ix6gFm/hSPntIYGYc3gCkSfL7s3xeofDazdMKjrGfDSKzgauUsIN0
 QbGghziVgpzfa5XIZgzJYcYX0jVszpf/EQoyGoY2RmbuCIGF4XmJYnrYB2dTIpEoPOVxPR2a6
 zsGr6ubOqYPpfrJ6TdGPFUTUopRAH6BhAPlojkb/d2LzAuQsaVb+Hvbwq3xcC0Gj+PvyWGz52
 ovuofdokWMxzgLu9+CqNhDcy1lEXZ/qtJVrFjljaDbJiKy/s9LcfSZmosRAUAhgUXe5ElEC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_012003_736494_A7099E0B 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH][RFC] Revert "ramips: mt7621: disable
 image for mikrotik_rbm11g"
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
Content-Type: multipart/mixed; boundary="===============2091494261951001653=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2091494261951001653==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=W/UW+tcOmDvXJh=-="

This is a multipart message in MIME format.

--=-=W/UW+tcOmDvXJh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Chuanhong Guo
> Sent: Dienstag, 7. April 2020 04:27
> To: openwrt-devel@lists.openwrt.org
> Cc: Chuanhong Guo <gch981213@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH][RFC] Revert "ramips: mt7621: disable
> image for mikrotik_rbm11g"
>=20
> This reverts commit 838f1fbb50e91ebaf1d34f9666ae6b65eb49df5c.
>=20
> It can be guessed from Mikrotik GPL kernel that this router uses port0.
> And even if it doesn't, RBM11G has easy-to-use tftp recovery mechanism for
> users to restore their firmware. Let's enable this image and see if users
> complains.
>=20
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
> RFC: Should I do this?
> If I don't do so, users will complain about missing image; But if I do an=
d brick
> users devices, users may also complain. That may not be a big deal as use=
rs
> can recover their devices easily.
> I have no idea what I should do at this moment.

IMO, if you have a chance for an educated guess, it's better to have the im=
age available (just as you justified it in the actual commit message).
Due to the DSA introduction, users will have to do more conscious updates a=
nyway.

Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Best

Adrian

>=20
> It's even better if a developer with this device can spot this mail and h=
elp
> testing the firmware :D
>=20
>  target/linux/ramips/image/mt7621.mk | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index cdae42f3e4..a4484b408f 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -497,7 +497,6 @@ TARGET_DEVICES +=3D mikrotik_rb750gr3  define
> Device/mikrotik_rbm11g
>    $(Device/MikroTik)
>    DEVICE_MODEL :=3D RouterBOARD M11G
> -  DEFAULT :=3D n # disabled due to unknown port assignment  endef
> TARGET_DEVICES +=3D mikrotik_rbm11g
>=20
> --
> 2.25.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=W/UW+tcOmDvXJh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6MN6wACgkQoNyKO7qx
AnDF4Q/+LZRs1NaZn66XdvrHhn3xjLwgDQyMvFLsTODvFZaQIwr6kFVioz+/AGxT
PJx+tjiPCCNJTnNvU18MWxv2P892JkA5KgKZd7SHHtYpF8MZQXW463Z2/Esv9sBl
hS+rB08ccIMbHYAPt2hOSL4OBgmOemtRh9WTV+J/CAHsjL2WURojOtHR2LvSju1i
vTcw2NKTVpyzm/Yc59VgDyWN92Hq47oLZ4/djF376V+xqP0pSJzQ9VjqaFwdDkvT
kuZKRMCVx4ZS39SVKgSeDpIZQV4fsTQhgzyEcxsHPlze5KCPcm9QOGGwxkeAnnza
FbSxlzEMdbd83o+2EkSwykB0P97XFXPJW/SOmtuNj2LOqBrurpSrEr6BB4Bn9jlk
W4L1fgiuYVheQj+EwpBYdDPOb+4K2sZyrStd8FcFCEUy+JeGs4kR6flZb+ZTdI5s
0jX4Yd5158aqJjbGs+gbB9pgpgxka1wrGpCk8D+Iw8lTnYrs7Pr9ZsrXSYKFxpuM
O6f1QyIpnNi/73W8nA93j5OJ41ub5ChZDuRreLNDMYYhDzsOrN6vUietHb00RPV8
soXteh9Re7lJ89qG1wTQ86zlViThXKMHa2fZeoXcD70MY4uVGtnsKiY1qPKanXhm
Rw9QcFBuRoT6gpkxhah3qPr0bQXOJfaG38kKyMQAZl5w+cA6/aM=
=UCUx
-----END PGP SIGNATURE-----


--=-=W/UW+tcOmDvXJh=-=--



--===============2091494261951001653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2091494261951001653==--


