Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E611BC1A2
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 16:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hvbAyAn+1g1JQPIxxXt1LXuaB5D0+cajcaehQXjCJgE=; b=RURR2cWBJK69hGTlHlrhphq7/
	AFdAFTszIK1+m4+g5jo3R+BPx643geKMeKrOXunrE7Im8pzG3bSwd1JmFQRnQGNfnaatjRWeXxTFT
	h90MZ3aDykgm9MY9HpL81Zj6vnIMc3dSjzZPgSPWtdgZn9vxvChbqJmp4rWVSROIpUEWSihWRg5EL
	ETqkygOz4m/PiueAeHWetJdR3n6bfS4SvlBC+gth/BC91o/uiy5VTZO9PHXlU8nPxiTcdgP3falVu
	Oc9Zf+iBSUcWQbx5GkIRygKPcWAVuq96bNWLrXyRfFFLP6RxR4UWZ4XhLeoHU/6qD1IAsF1zPI2Nz
	7gJBLHOEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRU8-000715-VU; Tue, 28 Apr 2020 14:45:20 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRU0-0005J8-3f
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 14:45:16 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MlNYj-1iknvT1kWz-00lnbt; Tue, 28 Apr 2020 16:45:06 +0200
From: <mail@adrianschmutzler.de>
To: "'e9hack'" <e9hack@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <75d8e585-74b0-c24c-0ea5-4243df88f2b4@gmail.com>
In-Reply-To: <75d8e585-74b0-c24c-0ea5-4243df88f2b4@gmail.com>
Date: Tue, 28 Apr 2020 16:45:06 +0200
Message-ID: <002701d61d6b$9bab0170$d3010450$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQMBUYsGVHivecJ1+3pA6Pjt2DBlw6Y4M3OQ
Content-Language: de
X-Provags-ID: V03:K1:vkgv9IjeDX22vNmIUPt12qk5eQf90sC6ZCDqzXXiywcclVr1/AK
 DzaMyIVOqd8e8m4SdOX2Xb+cGeBD4FcL4m8VHNcaT3fA3r3gbPekaO8voMNoDc2aMpP5yKP
 3NJL24sYwgJRtcpz4fc6y7/EUAv3ZL6L9BxJAP5MuQxB+Wt8zByA0DWDOcXmRH45eUFbBHT
 sfsfbT1VYv/euHn8fi7mQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DhCsOf4hHo8=:ev9nuIqMcw4Zay5X3jr5MG
 Q2QDTUtoRT315wD3KORkeXGBW8r2Mj7uzLpC0wQP5XfaIzer1SSKAQqM10FY7qBUV2HU6auuI
 gaK3pVRZgETDwe+G4XLs8QFwD0sQkl20rwYDmIJI5ikKZnV22jNeeqePke7vfCgTRD+R+ZW06
 yxQMLbo7nwbUXpb04U8dHu18VZMN/eHx8Mumb7Chom0GEtm7LeV+/Ppbwz6KN76eQrAccl3A2
 vGGo93wQngSP/hOVSqFNihWis50GlnmEWMHuEhKPo7MGE1m3becIEJ3cnaywOMvGUnlc7UvbN
 Vu9KaoGc+NFl4bE4nUgrNiKuU/xy+rudjxfxuL7+fjD++30OwjGC4d5aLZOLzFeGHju5ZSZ6f
 3CQAiw8Kz9dmZrfFYpdH+AnR29hWyS8ZVrjrgij/mI/I5e24fYHqVj427g25gsfApGUDAkfMQ
 02rS54OYZbKxzVrG06WBff4HBhzqFDglRlcT1zAg0oCwtKi1F5jKEigqJY2ZVhAb83dpIDwdR
 jkZ6TxZPab/gbAz+l+SSSXaBNyw/mwckyX+ZLAP+wJCK9huYfrNdUGzNZa0efnEQMPukmOFRO
 SniIMI47He7Ka+wp28QHf1SzBhrWy1OPZsuq1Pu2LkGT0ShJgEEKx1DBbpKvUuifCQ9F5us7N
 za9x3thhjExczYu3RipWrU6qYO1PVzaJkVrnAw+kxVfSrTCp/Px4BqzeU8sDcZZYtv/ISwKzO
 1mB58or9IUlDabpRqGBYbwM6TEoQJCxtAU79DgIklTtaqssAUpf3rf0di4VbRBksQLyd+It6x
 KIwUz8SzIMhANHVgitihYxYb4iYvVTwqAW1VbajklZ90Otq3s3W9kaZylQohv/VUxl0jfDr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074512_466040_7E0680A8 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] kernel packages
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
Content-Type: multipart/mixed; boundary="===============6404022742899226180=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6404022742899226180==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=dJsA+FZVpAyqJM=-="

This is a multipart message in MIME format.

--=-=dJsA+FZVpAyqJM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

@LINUX_5_4=20
@!LINUX_5_4
+LINUX_5_4:somepackage
+!LINUX_5_4:somepackage

further details:

https://openwrt.org/docs/guide-developer/packages#dependency_types

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of e9hack
> Sent: Dienstag, 28. April 2020 15:32
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] kernel packages
>=20
> Hi,
>=20
> is it possible to depend on kernel versions in
> package/kernel/linux/modules/lib.mk?
>=20
> With kernel 5.4.x, zram needs the additional module lzo-rle, which is par=
t of
> lib-lzo.
>=20
> Regards,
> Hartmut
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=dJsA+FZVpAyqJM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6oQWYACgkQoNyKO7qx
AnAUMxAAwEVgQQdAQIyPlofNIjVKuX/VtRps3YPVTSKj9X/7QH61QEBG4ny+DvU8
DiVBgzklX7/SxlpE7LQRagaSDnIan0xaBQYLrh/b+ACD43cDj6YwaYdpF/v3fXqJ
Z26WaWOTBUq0L/rJbEATXMM1q4kXK0l3uMUIC9OkzfLTr3wTEY1cV8U9nfMPwx4D
tdahYWMMlyEgbQRizGP3mksZrF4zfxgjt2pTTcb5H33qYSGRxV9eV/LQ/wqncZcr
yQV3lQcJyN80mM53ldy/rc+f3JDA1fG+xMojEShGo9j4/vm28/Dcw7N8YIa9ZldE
/9QhqAfH7nRhRz2+tfVcGHRsgasT5J07XSVaq2tjZjK0XvmKY1amwSi2JxWoA4gt
e9GIuVxGJeDK93oRnRLD0OSxdXoIyeUWLBeeVp88bVNz29oDOqO9OCgkjskxOQK+
tHtROoi7PHWNEPXvr7UxIiC2QvaTstaUD0UF8VMUaoSXMIpsQ2iLGULiTzY1UKfU
uT5716R2WWI2wztgy6wNcKY7bGuR2vOlwsYe2rOdlv2dvNcq8ob1W8w3QwXooiGF
9q5kpSBYhHSrpgVWvm0Eqb7Xd61THgdHn5Ldl6PGOooQHqgt9Y21xqBI1RwCY5Pk
nvPKP7JPSWcQ3QUVuGDnbjbSKJEcy3gEAVFxDXaYWCciNasDk/U=
=ro7K
-----END PGP SIGNATURE-----


--=-=dJsA+FZVpAyqJM=-=--



--===============6404022742899226180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6404022742899226180==--


