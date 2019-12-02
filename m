Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1520310F19A
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Dec 2019 21:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T46M+247xUIT6SYMJ4xEG40pITdXBwlXVCue6fJPyZ0=; b=d/nxIJ5mYnt/xnwb6CCPSNX25
	o62muOxY50vpW7APKT5w9Il3qpeX2gpLVqQWErfjnCr5ENtcHmd3u2gWSud6xySGnazVPu9YcLvNr
	VCdt+3IVMta4WnGQtOUU5B858pki2lYwsWKr5K162eLTBuqSxOC6VlXD5wQX9/BVVLCSlffmPAr6G
	8fBIlqfESx9h7IocLiZNO/o7LnMkDVmwKlil4n2jrKVT5Rip+Metw5JlXZGgMaZGmUZpnWIv+gtXT
	kWuSpX4nonGgjnJm0+PtMhq4vFYLcy3MfhubLzcV+PO/9wmFtmbsaEgNidoIvgN4VaeqMrDVmNjkp
	pd/ipIUOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsPr-0008Ht-6w; Mon, 02 Dec 2019 20:35:31 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsPi-0008HD-Na
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 20:35:24 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 8DFF71F41D;
 Mon,  2 Dec 2019 21:35:14 +0100 (CET)
To: Joe Ayers <joe@ayerscasa.com>
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 mNagDQm6idBibmeHejD0zFE=
Message-ID: <93b23192-32e3-deef-de30-0d9ea10599b8@universe-factory.net>
Date: Mon, 2 Dec 2019 21:35:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_123523_065217_5FF17AAF 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
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
Content-Type: multipart/mixed; boundary="===============5163066020298270145=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5163066020298270145==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Z0qPhxdb62VjmsWlXB53x7MKoJh7UcvfU"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Z0qPhxdb62VjmsWlXB53x7MKoJh7UcvfU
Content-Type: multipart/mixed; boundary="mm4H8SEhSCBGbYpobHMizGzW2A9CDaw9g";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Joe Ayers <joe@ayerscasa.com>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <93b23192-32e3-deef-de30-0d9ea10599b8@universe-factory.net>
Subject: Re: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
In-Reply-To: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>

--mm4H8SEhSCBGbYpobHMizGzW2A9CDaw9g
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 11/29/19 3:40 AM, Joe Ayers wrote:
> Attempting to use the hAP ac lite model RB952Ui-5ac2nD with the 5GHz
> radio0 802.11ac seems to be unstable and consume available memory.
> This is only enabling radio0 with no other changes and bringing wifi
> up/down to reproduce.   Am I doing something silly, or should I submit
> a bug?

Sounds like the issue that this PR tried to work around:

https://github.com/openwrt/openwrt/pull/1077

Kind regards,
Matthias


>=20
> root@OpenWrt:/tmp# cat /etc/openwrt_release
> DISTRIB_ID=3D'OpenWrt'
> DISTRIB_RELEASE=3D'19.07-SNAPSHOT'
> DISTRIB_REVISION=3D'r10752-1859391e9e'
> DISTRIB_TARGET=3D'ar71xx/mikrotik'
> DISTRIB_ARCH=3D'mips_24kc'
> DISTRIB_DESCRIPTION=3D'OpenWrt 19.07-SNAPSHOT r10752-1859391e9e'
> DISTRIB_TAINTS=3D'no-all'
> root@OpenWrt:/tmp# free
>               total        used        free      shared  buff/cache   a=
vailable
> Mem:          59264       14104       33232        7804       11928    =
   23352
> Swap:             0           0           0
> root@OpenWrt:/tmp# wifi up
> 'radio1' is disabled
> 'radio1' is disabled
> root@OpenWrt:/tmp# free
>               total        used        free      shared  buff/cache   a=
vailable
> Mem:          59264       19556       24204        7804       15504    =
   16156
> Swap:             0           0           0
> root@OpenWrt:/tmp# date; free
> Tue Nov 26 23:32:37 UTC 2019
>               total        used        free      shared  buff/cache   a=
vailable
> Mem:          59264       29768       13984        7804       15512    =
    5944
> Swap:             0           0           0
> root@OpenWrt:/tmp# date; free
> Tue Nov 26 23:32:55 UTC 2019
>               total        used        free      shared  buff/cache   a=
vailable
> Mem:          59264       33384       10368        7804       15512    =
    2328
> Swap:             0           0           0
> root@OpenWrt:/tmp# date; free
> Tue Nov 26 23:33:14 UTC 2019
>               total        used        free      shared  buff/cache   a=
vailable
> Mem:          59264       37424       10452        7804       11388    =
     304
> Swap:             0           0           0
> root@OpenWrt:/tmp# wifi down
> -ash: can't fork: Out of memory
> root@OpenWrt:/tmp# wifi down
> -ash: can't fork: Out of memory
> root@OpenWrt:/tmp# wifi down
> /sbin/wifi: line 188: can't fork: Out of memory
> Failed to parse message data
> 'radio1' is disabled
> root@OpenWrt:/tmp# wifi down
> Segmentation fault
> Failed to parse message data
> 'radio1' is disabled
> root@OpenWrt:/tmp# free
>               total        used        free      shared  buff/cache   a=
vailable
> Mem:          59264       39436        8508        7804       11320    =
       0
> Swap:             0           0           0
> root@OpenWrt:/tmp# wifi down
> 'radio1' is disabled
> root@OpenWrt:/tmp# date; free
> Tue Nov 26 23:34:08 UTC 2019
>               total        used        free      shared  buff/cache   a=
vailable
> Mem:          59264       13716       33932        7804       11616    =
   23892
> Swap:             0           0           0
> root@OpenWrt:/tmp#
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



--mm4H8SEhSCBGbYpobHMizGzW2A9CDaw9g--

--Z0qPhxdb62VjmsWlXB53x7MKoJh7UcvfU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl3ldYEACgkQFu8/ZMsg
HZzS4hAAwLA7GUIdCLTjM9uPMwmsOCp0QaoptWV72hr8hhtwc4nl8qCxR5zUm1C6
WhQnUIE2WLLzY1Qxn9m5SKEti34pHOPWHuUni6lf3QgxwGN1Nmjw+OdjYU09O0Az
qkVKW5a+79HwzUfqaf/GEtxPVxkm7Tm19zN+F70wQuURECgzqrkFac9VBKkKrAkd
CUv9T5radXpWN6jIi//sK70Xi/PBCaEl8LTlInM070GdO5v1JQ3zNq0ArbL7A5xT
LuDaFAu3ops2Big4ooz24HVKXQtUo0+hFCz/urmlTjSUagurUueYDyggjo76n3TD
glXvSeeqA+tJfGG4m0lhG33vRvHLlGMjkUkH1wEcZY0SKDf5bLQVdf2zv4XwHkVe
icJ4dgwQql625s1Koo4AjgNDTT1ZALvxtz27mSPqDqwqGUFCbQVg35PluGODl4pb
I0apaE8aIlGR62GIRFk2qE0raeTgouQCyv+w5fvqatPU6PjUH83rorj7m8ldghRw
j1mIfWgPe6vqB+mT2OiJ92QDVjrkkjuIjgHI7/X6nXBzW+jhy0XWQqUhT7ZdLN0x
WLUxVye4ybt++CoNHEAZQZ0SXqv+JorodXnDeLsUAsNK78yfa0qzp1jfU86so8CU
Z8telgM2X1awmRmtY8MlPJYSaDFGBxpoE4Fun2XZEFabCqX3JOk=
=RnYc
-----END PGP SIGNATURE-----

--Z0qPhxdb62VjmsWlXB53x7MKoJh7UcvfU--


--===============5163066020298270145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5163066020298270145==--

