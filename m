Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB001E87E3
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 21:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HH7/u+b64QX6ketLOy56WQF1EpFbPq3t9Y06h+iRaB8=; b=p+Kd0aZh5GVP27UKFsTrQwMLc
	QLoUt9DYJc4Uw00ePeu5goZGxDvSgWWTUiSx0Bein5DyuzI2FnHWCfrlwc8wxp4aUsY3XrmIvfsGx
	feoiLOSJm0RGnVBQ0G50mEKFMNVXEgJrXZmuw26EojaFZolBZI6gqNLzs/72P+LxwrzeSHq0BoMkF
	HyGXdBYiziajG3y2ZDTFY6sbfCokp0fjyyrNLaLr4JwTo6g0bQjEFvPHy3WZgCvpgpTikn7gMM5DR
	3QGnk45xqc/yYSpT9r0ePsjiLEGevPpCQYvaEF3u0Wd0vyMGXvvpfhaILr5NTkPpblGI9ln7X7B5k
	QajNlXEDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekki-0005hi-Tm; Fri, 29 May 2020 19:33:12 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekkY-0005h2-Gf
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 19:33:08 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id B6EA727F67;
 Fri, 29 May 2020 21:33:00 +0200 (CEST)
To: mail@adrianschmutzler.de
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-2-freifunk@adrianschmutzler.de>
 <3547903.KlJ2vqsxt8@debian64>
 <013d01d635e0$f9f72b40$ede581c0$@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <4a068b9d-1c65-496e-b367-ba1b22920284@universe-factory.net>
Date: Fri, 29 May 2020 21:32:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <013d01d635e0$f9f72b40$ede581c0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_123303_227903_E0D4F2F9 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] treewide: drop DEVICE_TYPE when
 used as device variable
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 'Sungbo Eo' <mans0n@gorani.run>, 'Christian Lamparter' <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============6984254070195329188=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6984254070195329188==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Q2yG22ea6PLZxxQGpeVHLIWzJeCbI6AO1"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Q2yG22ea6PLZxxQGpeVHLIWzJeCbI6AO1
Content-Type: multipart/mixed; boundary="yFAXvKjM1mZjrhKCTnCjQIJ0luWphnxTU";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: mail@adrianschmutzler.de
Cc: 'Christian Lamparter' <chunkeey@gmail.com>,
 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 'Sungbo Eo' <mans0n@gorani.run>
Message-ID: <4a068b9d-1c65-496e-b367-ba1b22920284@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] treewide: drop DEVICE_TYPE when used
 as device variable
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-2-freifunk@adrianschmutzler.de>
 <3547903.KlJ2vqsxt8@debian64>
 <013d01d635e0$f9f72b40$ede581c0$@adrianschmutzler.de>
In-Reply-To: <013d01d635e0$f9f72b40$ede581c0$@adrianschmutzler.de>

--yFAXvKjM1mZjrhKCTnCjQIJ0luWphnxTU
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/29/20 7:45 PM, mail@adrianschmutzler.de wrote:
>>> Consequently, having it set anyway is misleading, so this drops all
>>> cases.
>>
>> Well, I can tell you where it matters for devices.
>>
>> You'll have to look at this:
>>
>> <https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dblob;f=3Dinclude=
/target.
>> mk;h=3D9bd4c14936c1438df2be87e5697f5f5568699d2b;hb=3DHEAD#l54>
>>
>> |# Add device specific packages (here below to allow device type set
>> |from subtarget) DEFAULT_PACKAGES +=3D
>> $(DEFAULT_PACKAGES.$(DEVICE_TYPE))
>>
>> So, the MBL gets "DEFAULT_PACKAGES.nas" (block-mount fdisk lsblk
>> mdadm) over "DEFAULT_PACKAGES.router" (dnsmasq iptables ip6tables ppp
>> ppp-mod-pppoe firewall odhcpd-ipv6only odhcp6c kmod-ipt-offload) which=

>> makes much more sense for other devices as well.
>=20
> Hi Christian,
>=20
> that's exactly my point. Since this is target.mk as far as I can tell t=
his selection does not work when DEVICE_TYPE is set within the device def=
inition, but only when it's set in the (sub)target Makefile. As I underst=
and it (and tested with make menuconfig), DEFAULT_PACKAGES is a per-targe=
t variable, and thus the DEVICE_TYPE from within the device definition wi=
ll never be applied, and DEFAULT_PACKAGES.router will be used anyway for =
these devices.
>=20
> Or am I completely misled here?

I believe you are right, it seems DEVICE_TYPE is not evaluated when set i=
n
a device definition.

Matthias


>=20
> Best
>=20
> Adrian
>=20
>>
>> If you want to revert these changes and make this transparent, you'll
>> probably want to amend each device package list with the appropriate -=

>> package (i.e -ppp -firewall -dnsmasq ...) all around.
>>
>> Cheers,
>> Christian
>>
>>
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



--yFAXvKjM1mZjrhKCTnCjQIJ0luWphnxTU--

--Q2yG22ea6PLZxxQGpeVHLIWzJeCbI6AO1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7RY2sACgkQFu8/ZMsg
HZxbYg/+NdSEZEun8CHdxYVDP1pRYhOzib/0s4IahwbtiNbAsay+Hy67tBIB+vhL
vOrAU2gm1NkMdvzREBH/k9gU88j/NjN5lNEjzZ2H5etMAEk7i1Plq8pbQSCM1mx+
CCj/ZHxUi6eCk1pg+MSEPg7aiszQiOl21LPS6SA69jqXSjj8x9iGX9ZifCIv47cH
1iqboRY9uRsBTaUe2NQDflDUNGlm72zw7YxaQ5s4c3RSx4Si5+LOG/weVotORfom
zmVSIqLTQEtIQrsfFa16pcSv6UZWohFpAoIJhwMPvmM05ITc7DT+crZYs18UCEob
huD5DCY9RZ3L3V5kGRt6hnaxy/qFjBjH3uhZTEjnxRzugKUxIU7EmfYmIi366ERw
/W0pbKk7E1V9oCqLDReXn2lTH+Em/MU0soxcFkkfa02GHPJdu7iotOxpjU4nV45N
g1hAVSUhaMbYmo4apmMorUAsO63Mka09gy8/QXQjCFuiSbY3ZhXTD8Ku7tK1I0Sn
GMS1XMoHWpCTAUt9I+i0MgCsILqV6ID7m9bPy3W4c071eqxZNF/h6NbYxDHqKPqc
DuSD2cYCKqkrELqWCCyAPkgrcqAdYImNN4UGu5hC1XhOkzoAU1kT7tvM4gMSkzIW
eImRYiExbr03k/OwJ1KiyhelUZAmenYu3hB3X1FRDKuIE7yXB3g=
=eetF
-----END PGP SIGNATURE-----

--Q2yG22ea6PLZxxQGpeVHLIWzJeCbI6AO1--


--===============6984254070195329188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6984254070195329188==--

