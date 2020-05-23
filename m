Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD7A1DF6F5
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 13:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gxrLTOjy2PMUBwt3iciNdVjJhC+791KNRvsj+xg1kKQ=; b=iTwXE36R9mA0piA1kkA9ZtG5f
	j5QTbZeKBORJtcccyN99+u7Q43NN/UD2f1ViYZk6IjCoVALB1dwalTGfuTksgpaMHvX1qemb3xW7z
	6bC6ciVsyEILXtJx2o7wdrlVQQ4hZWE1zlUVTV/AVR4eQJfPCCsFLuk2ifIz0l6gJbLdvbxm15kQw
	oqScr/s7WKc1+GpvLewV43vO8HRXVa98pitkeXFb9DZzMAPlIBs0fCMgCQ3gIHv3q3s7r6WHM07tI
	mgc95zgaUcO0ajzB3PLPBj2PW7Sg59WGhtJT6jM/MXkejOrlUejrcFrBc7JNwwh3onGcNVk3kUoF+
	XdBgVFnsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcSh3-00079S-I0; Sat, 23 May 2020 11:51:57 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcSgx-000791-1y
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 11:51:53 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 8577926457;
 Sat, 23 May 2020 13:51:47 +0200 (CEST)
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Paul Spooren <mail@aparcar.org>, Hannu Nyman <hannu.nyman@iki.fi>,
 openwrt-devel@lists.openwrt.org
References: <443a1fbcb9985a33b54ddb18dbabffc89f67a442.camel@flyn.org>
 <5724f00f-24a2-31d9-cb4d-bdd29f8f8c17@iki.fi>
 <4f9abf14ffa2706d630bf9609f3f346e4f43154f.camel@aparcar.org>
 <a61c2545-d2ff-19a1-2b7b-0001b3eb6e93@gmail.com>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <84cb0932-02d3-37c4-0bf5-39b9ef407020@universe-factory.net>
Date: Sat, 23 May 2020 13:51:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <a61c2545-d2ff-19a1-2b7b-0001b3eb6e93@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_045151_391248_5384198A 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Uncompress image: trailing garbage ignored
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
Cc: rafal@milecki.pl
Content-Type: multipart/mixed; boundary="===============8409926017799915297=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8409926017799915297==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ZH29N855NKRwwtHcEWf8i3YAPsHzvcgUZ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ZH29N855NKRwwtHcEWf8i3YAPsHzvcgUZ
Content-Type: multipart/mixed; boundary="KES6wc4bmQDX1FUYnQcSj6CBuVPHjjl3e";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Paul Spooren <mail@aparcar.org>, Hannu Nyman <hannu.nyman@iki.fi>,
 openwrt-devel@lists.openwrt.org
Cc: rafal@milecki.pl
Message-ID: <84cb0932-02d3-37c4-0bf5-39b9ef407020@universe-factory.net>
Subject: Re: [OpenWrt-Devel] Uncompress image: trailing garbage ignored
References: <443a1fbcb9985a33b54ddb18dbabffc89f67a442.camel@flyn.org>
 <5724f00f-24a2-31d9-cb4d-bdd29f8f8c17@iki.fi>
 <4f9abf14ffa2706d630bf9609f3f346e4f43154f.camel@aparcar.org>
 <a61c2545-d2ff-19a1-2b7b-0001b3eb6e93@gmail.com>
In-Reply-To: <a61c2545-d2ff-19a1-2b7b-0001b3eb6e93@gmail.com>

--KES6wc4bmQDX1FUYnQcSj6CBuVPHjjl3e
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/4/20 10:40 AM, Rafa=C5=82 Mi=C5=82ecki wrote:
> On 27.04.2020 00:48, Paul Spooren wrote:
>> On Thu, 2020-04-23 at 23:29 +0300, Hannu Nyman wrote:
>>> W. Michael Petullo kirjoitti 23.4.2020 klo 19.50:
>>>> I have started to notice a gunzip warning when decompressing the
>>>> OpenWrt images I build. This is with master df27e949:
>>>>
>>>> gunzip=C2=A0 openwrt/bin/targets/x86/64/openwrt-x86-64-generic-ext4-=

>>>> combined.img.gz -c >/dev/null
>>>> gzip: openwrt-aquinas-git/bin/targets/x86/64/openwrt-x86-64-generic-=

>>>> ext4-combined.img.gz: decompression OK, trailing garbage ignored
>>>>
>>>> Aside from the warning, gunzip exits with a code of 2. The gunzip ma=
n
>>>> page indicates that an exit code of 2 indicates a warning.
>>>>
>>>> Is this a result of an intended change? Should I expect this to
>>>> continue? Are we sneaking a hash or signature in there? If so, I
>>>> suppose I will adjust some of the scripts I use to account for the
>>>> non-zero exit code.
>>>
>>> Likely we are attaching a signature since commit f81412160 a week ago=
:
>>>
>>> https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3Df=
814121600e5cf43fd75fe93e5b1b54f65b71bcd
>>>
>>>
>>
>> The sysupgrade process automatically handels compressed images, howeve=
r the
>> validation does not. Currently fwtool validation in /usr/lib/fwtool.sh=

>> reads the
>> sysupgrade(.gz) as is:
>>
>> if ! fwtool -q -s /tmp/sysupgrade.ucert "$1"; then
>>
>> A fix could be to use "append-metadata | gzip" for the firmware images=

>> and then
>> unpack the firmware before validating it's signature and metadata, e.g=
=2E
>> with the
>> following command in fwtool.sh
>>
>> source /usr/bin/common.sh
>> if ! get_image "$1" | fwtool -q -s /tmp/sysupgrade.ucert -; then
>>
>> This worked in my qemu test, not tested on a real hardware.
>>
>> Rafa=C5=82 Mi=C5=82ecki worked recently on the validation, maybe he ca=
n share an
>> opinion.
>=20
> My work didn't involve touching fwtool / metadata so unfortunately I
> cannot help with that.


A simple fix that is also in line with what we do on other targets would =
be
to provide separate factory and sysupgrade images on x86 as well. Only
factory would be meant to be unpacked manually, and only sysupgrade would=

have metadata appended.

Matthias


--KES6wc4bmQDX1FUYnQcSj6CBuVPHjjl3e--

--ZH29N855NKRwwtHcEWf8i3YAPsHzvcgUZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7JDlIACgkQFu8/ZMsg
HZxlIxAAubHqbPZW5jjbnBvNfYaBFSftlYzibov2j44xP3EFeMaOBJJod2glDZV5
FMYjursmIqQivv8dT2e3Z7jXeGMLSYkLhbRrsPXON2n0xafyWlLAPsIUQopBHlQI
T4R4dWFrtPg8x+F+tw52uBieBVtyLWX+Ks7nQAFln9wdB9m9QT6j/2qU5+tCSNnx
e9Zp4jpinDZa8RCVXOtfU0dMkl31Q9ChE4X5inQSuyQ+hBmiKKnkItGWDWZLKx8O
TJ3uGNlZelFEM7HxQ7zjVZHNn+BBbq3OcbLLiQw5NEXRciSsAIC3bUGq6fNa0IEb
9J0n3zG85GDgA2nMv555C3DLdUMmmLlmEnACCZeeXLE+Cc4xiQhbK76yjKWaIukU
/kX4iuuQbuvtDfd3Ip+LTr5hCrsxpti5ikBEp/ywyBVEx9sQl1n9BGybPeOxtuGP
CrKEjYOsZTUZrtX1g39ZwXHOyUmkeQgPZj7/l4Ef2Zor0FpRpPL0pxinZihcVAZm
UnD2exaebvvvpbtNJ8JUPQMlsXXPXhW+bVo+ieHkr8FsUQjCz7BD5jz5lcxzk9C1
NFKkAlAPe59vhxu93xdFCTwdwkf8N4rdQMIObMlM0utFzfv7xWnTSBoUaKUy1v7m
2dHgLsmRI9OdD/yZmq66AlAgd4S3sDyE/0tvZDy1cuy0BOY5sZ4=
=89KR
-----END PGP SIGNATURE-----

--ZH29N855NKRwwtHcEWf8i3YAPsHzvcgUZ--


--===============8409926017799915297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8409926017799915297==--

