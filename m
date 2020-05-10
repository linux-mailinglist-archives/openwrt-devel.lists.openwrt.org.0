Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998B51CCC1B
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 18:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOfEVZ99BhZ/pmMSBCwLPB2HNo6/R0xD1raDBFLbbtQ=; b=D3UkyAHxHwCUEMTIaiUMXxVFU
	JW5lN0upmNIoWw2m/BYzkK6eSmHRJnyAWhEtjNikRdU0++sNBrrb8uCrcKvBVifYN1Ds7C8d+kJkE
	TesRE5Mk8poj9huHDvlqiIYjPtH5eMmn5aFmGKWAtEoajqqyXC5Zuo3eskv2BJ0qjAs125T2hbLdg
	Zl9pQXv+7PREcE8VLZuxfBG1Zepst1xdmft9FO2CKYmPyuVTwQ7/+VHDE4zGeYu4mvCSjm0Oo4S5Y
	3mYXKqU+Kn6PFbg9DdfssznF5a+URWirXHDmGx7k2vHn8por+Z8ekbpfndxBI61Mz3x76EQd+0udl
	KTykmzb7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXoNi-0006cI-Nh; Sun, 10 May 2020 16:00:46 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXoNa-0006bD-K4
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 16:00:40 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N3bfB-1j8Par4147-010dkS for <openwrt-devel@lists.openwrt.org>; Sun, 10 May
 2020 18:00:35 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
 <20200510144754.10751-2-freifunk@adrianschmutzler.de>
In-Reply-To: <20200510144754.10751-2-freifunk@adrianschmutzler.de>
Date: Sun, 10 May 2020 18:00:34 +0200
Message-ID: <013e01d626e4$23d88640$6b8992c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQE/byLE5bhAfmwLJduBNkEAuj+aMwHybV0Gqb9WT6A=
X-Provags-ID: V03:K1:rQWG4r5/XoVFij5XOfWJ6bIlnE6gStTWruF4eCS6rc6wD1ePtyt
 uSE9dnGORLaBuX3v3W90JKKO9sPi6L8HZqKw8lrk2UapEcXvRLuQHzwQbr96HSTG6jWizwW
 53J/ORDbol+mSJq5OJAKF4jvCMLaJaobV8rl9LMpF+MbMter7FJgqYp8SaXSF5e0QyqKgfg
 xhwudCwPclYW82ka0J4ZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:77m5yJCrpCY=:4nR/FrTeT2MmEw79RAAEHX
 oTbjGl0sp2YSFVM//Lxd5c6zJ8Dui96H8MU4loJ0QmkfSGFtIkNVT9vQDUVqFoWcc2tcdT5G0
 uu6enUI+haamDKRTIEsfoMGyTDMZJPrUsmpJL3d+bE0YYiBGDfjp39PmStSvSz3wcnNJUWF7h
 IhZ2MPrK0aWy15KIdHUiUfZQTCACHL5egwRuoCwh2hrnMaTI+47WnwnYs383/nLQwC0LDHiOS
 WSPIdAnlsA1m/WReD0puRMNjb1H4XyzJ5PLOFIJQ0EFUTV+K47FNCQynisDD/SVO8j3JslZ2M
 /pazn/aqwGnlCbaGGVO/IF+0rg8nJksrhu/h2Nz3cl+Ze/NevoSMejVMJEsDoXYceQsFOwh7w
 aRofLdgKjz87L/G098OBbbqCEyMtreuZuQnR0ov5ryHdrIQxdsBpa07nRX5AmHf8QECYP827K
 WUKFe/dv6YqOFL3/Zgm0XitifhzHnsE/DH/u1/ms5t1SQACTleTClO1S2SeeiK4QUWv8QjozK
 9eV+XWqtlYVx2TiG0yI/zROzqz1jFgPu9caH2aHHAlk/XsK/ffLScFdT6jlNZknaZ5/D1ug/z
 tSobXRstosHQU1MLuiqSg7DIdlNfq+176yzu3QlyM3bbE6iJYyKGr8iUl0P35rzfeTFmMCaD2
 nwzanaEk6lMDHI+W3rA5tNil09q0bmUfI+Zjw9UZedKy4KlZWcemVkxeUsOIU7a+c3cL2CAMi
 SNvaO+dqzSYz94uvYTqTlx805wPiKNdJKdErUo3huiPeoFgSipvxI/Ssk8gMD1nesb6q41pAX
 DfpgFHmN8u8IKTv9SMSDKINRZirXytOhhE3imVfBRhexgrvohRBHscm8iK29Ap/LNFVoIkx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_090038_949052_9B2B2E1F 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH 02/10] base-files: replace backticks by
 $(...)
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
Content-Type: multipart/mixed; boundary="===============2428144896883450500=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2428144896883450500==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=CNxoM4eZOv6/wU=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=CNxoM4eZOv6/wU=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -	local rootfs_length=3D`(cat $1 | wc -c) 2> /dev/null`
> +	local rootfs_length=3D$((cat $1 | wc -c) 2> /dev/null)
>=20
>  	nand_upgrade_prepare_ubi "$rootfs_length" "ubifs" "0" "0"
>=20
> @@ -249,8 +249,8 @@ nand_upgrade_tar() {
>  	local board_dir=3D$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
>  	board_dir=3D${board_dir%/}
>=20
> -	local kernel_length=3D`(tar xf $tar_file ${board_dir}/kernel -O | wc -c)
> 2> /dev/null`
> -	local rootfs_length=3D`(tar xf $tar_file ${board_dir}/root -O | wc -c) =
2>
> /dev/null`
> +	local kernel_length=3D$((tar xf $tar_file ${board_dir}/kernel -O | wc -=
c)
> 2> /dev/null)
> +	local rootfs_length=3D$((tar xf $tar_file ${board_dir}/root -O | wc -c)
> +2> /dev/null)

This won't work, as discussed here:

https://github.com/openwrt/openwrt/commit/291d79935e9c4a974b037b6bed733ce92=
d4242e3#diff-a6a780f4082e88756e922a1f3ec5e2ab

Will send an updated version.=20

--=-=CNxoM4eZOv6/wU=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl64JR4ACgkQoNyKO7qx
AnCvgw//fELoa36iio13Fe0jCDFTYoN4g0SRhmchgiH7ugV45Id2Y4z1hmkgUu1y
O+/MouD0IsKa63uSmehfosZQ70v7NXE+WOuo3Ty8Jt9rJXPd/DSps7VrugtFhtS9
hcta89Sq94YCplCrXrjSZSDRweVmDfDyx7Utm6batzS873dbQos4IC1E5TsXwUp7
hKpGpERjYdOqCwQQJ9xYQG+Gfh/eMGjp0Exad9DL2a6KtVdDdXh6FQ7DTi9mwTOs
DtkPbhmRAARJcUjPPRHrH+aOGr0PBaCtW73B8g9SN+wo8I3xZHB4j5lRh+rKQOXV
3dZmN6IbJWlDrTm5R11NUJ/LC9MKssNg+wdBGVMmTDu7VhAgKGO5SVDa8f180HLU
DYHj1sW0AMuQ9Arjz6HZqt8cymQ9+GqqpA8SBa40GPukGRSvNT7vz+nH/FkUjefW
WXLl8Mi4DiglnfA721yYaTM3za73BRTO99rTvBY9pRydySzvJrnIf4smTpmM73Mf
fSSSKoxVVVdLqK+CNd0keMoIWLGUcLgnzx7Yd4cDiYd5UcGcmDhDT4m9/HqIs987
hFQtdVL/MCht3jI6ETbXrIlpc6aP2mz9mOt2Ha1MFwC8FzTYCwtIg5cOt7dqKZkj
Zy/KO66brRRKl4LT52gqK21J0CUAPjMLlzWHwvBC+06+J0jUaJ0=
=SB0D
-----END PGP SIGNATURE-----


--=-=CNxoM4eZOv6/wU=-=--



--===============2428144896883450500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2428144896883450500==--


