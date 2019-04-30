Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F171EDA6
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 02:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NIUToSzfyRPM7WW/ELwubNVsf4KeYjrCKE1uooZRi8Y=; b=eJvMkJovOhuAiyvJgbPjxt60F
	FbVl3CG9J7Mfwd31Uzl2KGghAV9mbnVX1GkR+WKIiMULJ8Bz8tc3bE/QZkFXKFzFqvQE4TIZlzXrh
	7r2lgznDfkdF2kh/Oh62/FhlVdoOji1Hj83Kvremm5lQVTpJu67UnYVQ9bzvolqm8YaRfKIKhEoHZ
	wHd/OkA6KOhX137/wklEy2xQHG8LdnJjpJ+WCDf5FNt6K3VRITgC/yI7pPdsKl5jHoq2DK1JONddJ
	KVpA15Op1YFyr/Ry+rRkXKqYatOoWQbwA+kRCwDc3C7C8K5ltoeoB6+8BqmgVxZ7yHEGpHeopmgEz
	KDsS96YNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGZv-0005wt-8G; Tue, 30 Apr 2019 00:24:59 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGZp-0005wW-BX
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 00:24:55 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 578B11F41B;
 Tue, 30 Apr 2019 02:24:44 +0200 (CEST)
To: Vincent Wiemann <vincent.wiemann@ironai.com>
References: <f0cd6229-71b1-fecc-3876-97a68ef743a6@ironai.com>
 <cd20ab81-8400-0e34-dc7c-ff885aa5d1ef@neratec.com>
 <2a85ab45-d350-c2d0-175c-1e23f79ceb8c@ironai.com>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Openpgp: preference=signencrypt
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 mNagDQm6idBibmeHejD0zFE=
Message-ID: <4a925786-ded4-5baa-92cd-3888f914f8ea@universe-factory.net>
Date: Tue, 30 Apr 2019 02:24:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2a85ab45-d350-c2d0-175c-1e23f79ceb8c@ironai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_172453_692217_664E6CFC 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Fix TX power handling
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Matthias May <matthias.may@neratec.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0774443949314627929=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0774443949314627929==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ug5vjtetO5xFxiVitjSi9LMhbPMlHOvVk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ug5vjtetO5xFxiVitjSi9LMhbPMlHOvVk
Content-Type: multipart/mixed; boundary="Vf1qJ2SZ1vanEfN7Z3TP7uX0ZMaTRugmK";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Vincent Wiemann <vincent.wiemann@ironai.com>
Cc: Matthias May <matthias.may@neratec.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <4a925786-ded4-5baa-92cd-3888f914f8ea@universe-factory.net>
Subject: Re: [OpenWrt-Devel] Fix TX power handling
References: <f0cd6229-71b1-fecc-3876-97a68ef743a6@ironai.com>
 <cd20ab81-8400-0e34-dc7c-ff885aa5d1ef@neratec.com>
 <2a85ab45-d350-c2d0-175c-1e23f79ceb8c@ironai.com>
In-Reply-To: <2a85ab45-d350-c2d0-175c-1e23f79ceb8c@ironai.com>

--Vf1qJ2SZ1vanEfN7Z3TP7uX0ZMaTRugmK
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

This is just the factor of 1/2/3/4 (approximated) in dB:

10^0.0 =3D 1
10^0.3 =E2=89=88 2
10^0.5 =E2=89=88 3
10^0.6 =E2=89=88 4

I've seen these numbers being used in WLAN drivers to account for the
antenna array gain, so at least this part of the TX power computation mig=
ht
already be working as expected.

Kind Regards,
Matthias


On 4/30/19 12:39 AM, Vincent Wiemann wrote:
> Hi Matthias,
>=20
> thank you for the hint. That's funny, because someone from the German F=
ederal Network Agency
> said that when radios have multiple antennas, the aggregated EIRP of th=
e antenna array must not exceed the
> EIRP limits of a single antenna, but I've assumed this is done in hardw=
are and not in software.
>=20
> Can you hint me to the source for this lookup table?
>=20
> Regards,
>=20
> Vincent Wiemann
>=20
>=20
> On 29.04.2019 08:50, Matthias May wrote:
>> On 25/04/2019 17:54, Vincent Wiemann wrote:
>>> First EIRP is by definition ERP + antenna gain - cable loss.
>>
>> Hi
>> Small detail: Don't forget the antenna array gain.
>>
>> So EIRP as:
>> Antenna Port Power
>> + Antenna Gain
>> + Antenna Array Gain
>> - Cable Loss
>>
>> The Array Gain as a simple lookup table:
>> 1 Antenna: 0
>> 2 Antennas: 3
>> 3 Antennas: 5
>> 4 Antennas: 6
>>
>> BR
>> Matthias
>>
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



--Vf1qJ2SZ1vanEfN7Z3TP7uX0ZMaTRugmK--

--ug5vjtetO5xFxiVitjSi9LMhbPMlHOvVk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAlzHlcsACgkQFu8/ZMsg
HZzrnA/9GaiF6nMOOoazukl2txTrB9xGhMvJZjt/Mv5/i4WATAUssMRcLb42A4NL
dMvcLgeKnYOdjZDtqhGJcDgQ/0MKmmRFieo7ecUFbzyehyQCqIvDxmyctMwQ1d5R
1zXUAYe6NXkrOBO2yQC3JiBbDJVgcQdMLUPBVj1Jnvq9hhMpnqa+oLXeKdR7BlMf
msTK+LA1Q7NVs9fOVpmGl12i5VZQF6BlKX2anf/7LLp4uvPNYxaNpBBMDPWK0R2G
h0gBEIa/2JGNdfTo+PeSdVK8zCEtMuuKpCavFyL7Mxv6TEym1qp6KIYx9EEE+ZF3
LitMi/0e5brhhm1muPIl57YOXNYWO4AVB+mHHRjwXgUzbdq0gK18dKkQ1F2Hu/Cx
nYa+QwUbHxpz8xfd1g5+oXgRQ5MUmXT8Jh09OI0a1dZhi/g7QtsUn79imOxlr+3V
3/kL9ptJilt3RHYEN9eyZtCoRJiIJUcZwt5YFtIHJQWO9EQw4c0zHNPFkK4YFi8c
3z3gcJPnd+nkrowKh4m0dD6HJ/WAjQJrjF4lcaoanc8+Xm3XgZwWZ20VsAXzlhYv
tj9d7P11nl/eMvWxedWzw9bie7kOye8KXIIKhQ8l3u2U54NEujCtFV9PumFXJkIj
RnYiJCYs0LFca7q08A/jPbUhjG/FWAG12MaKypfQUWS2LUKdLCA=
=cLn1
-----END PGP SIGNATURE-----

--ug5vjtetO5xFxiVitjSi9LMhbPMlHOvVk--


--===============0774443949314627929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0774443949314627929==--

