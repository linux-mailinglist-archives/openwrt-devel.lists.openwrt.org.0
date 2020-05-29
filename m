Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1181E8BD6
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 01:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6lhok+Ph2vmbFXMDTrvp0a9+s82HZUfjeHndgGv8N7M=; b=Q+HsHkr1M87m/5Qaq+X4sXI76
	Q4K+G+U5dgnsJhY0XkppyR8uhtmO3NaCCu28NdreNY9zHzXjLUwVSxwWYFKxVMO8fL2T80Eaqksat
	/CKmYFVOGvRUvEmJxTgFPI1xMg6cHHRNwFzUPW5lpvW8deYfsmdigPClpoCUGnSwY+YLJkFq47vEY
	O34skJ7TTe60frBQZ1Wl8Kxrgd9jYrMQWPS2byvfe6kC8AjohjhHom8xk6efXptexOMDTggEqY0vY
	exeJTtMbGPQ1opc1YmZoqLgD5VQDqEC88i31bP3n7lVWdatWeziKUccy3E5qH3ZQuJ2U1d5VR6Kgh
	oSE0jPFKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeoH0-0006QJ-Pm; Fri, 29 May 2020 23:18:46 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeoGu-0006PY-30
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 23:18:41 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 0FE5827FC4;
 Sat, 30 May 2020 01:18:35 +0200 (CEST)
To: mail@adrianschmutzler.de
References: <000001d6360d$84e01100$8ea03300$@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <ac63cb29-4a16-eea0-5f06-08c2e09ae009@universe-factory.net>
Date: Sat, 30 May 2020 01:18:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <000001d6360d$84e01100$8ea03300$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_161840_424273_8CA817C1 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7829330370598544598=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7829330370598544598==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="HJ4bY3oDljsupWYuwkAu71mkDbDRXTXUR"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--HJ4bY3oDljsupWYuwkAu71mkDbDRXTXUR
Content-Type: multipart/mixed; boundary="DNNQDpNXFNuB5VJuNZcXtIgcvqNONLUef";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: mail@adrianschmutzler.de
Cc: openwrt-devel@lists.openwrt.org,
 'Linus Walleij' <linus.walleij@linaro.org>
Message-ID: <ac63cb29-4a16-eea0-5f06-08c2e09ae009@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
References: <000001d6360d$84e01100$8ea03300$@adrianschmutzler.de>
In-Reply-To: <000001d6360d$84e01100$8ea03300$@adrianschmutzler.de>

--DNNQDpNXFNuB5VJuNZcXtIgcvqNONLUef
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/30/20 1:04 AM, mail@adrianschmutzler.de wrote:
>> The variable is used rarely enough that we could well make this a bit =
more=20
>> verbose. "TARGET_DEVICE_TYPE"? If it weren't for the busybox config ch=
ange=20
>> (which seems hacky to me at best*), we could also go with something li=
ke=20
>> TARGET_PACKAGEGROUP, as the package selection would be the only thing =

>> controlled by this variable...=20
>=20
> Maybe just DEFAULT_PACKAGES_TYPE?
>=20

Hmm, at a glance, I still find this very ambiguous. Rather than "the type=

(of what?) for the default packages", someone who doesn't know the build
system might interpret it as "the default type of the packages" (What wou=
ld
that even mean? RPM vs. DEB vs. OPKG like OE supports?)

Matthias


--DNNQDpNXFNuB5VJuNZcXtIgcvqNONLUef--

--HJ4bY3oDljsupWYuwkAu71mkDbDRXTXUR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7RmEoACgkQFu8/ZMsg
HZyd/hAAgxkU7xnNG+HZuW+H12Ctd5adEnw/jCqGb5YgIJT2U0BlVmGS4MLR/iOY
nb4paGyqy2+Cmae2heGMqzzhrIY3ldqc8O1gQ7zXGBo1WPZ/KS9GXAHoK4iWLOSX
EB5BGczaYBKgXAsvtK1qv22hNWW3hp5W7yjVNWFO71Th9d2fsGH9SwYXazX303hl
CWmLEwAR16NIAxqAceBZi+Y6kT813Z0ekG0TQUQIF3E6z31wFf8VEBqUYYKyXF2g
ORery8S8qau6kxM+pbDNW7uDRC6OSipKly8w5aKtxz74o29IxvmOy1rOeZHbgY4U
MfIuIAjzBKglC7yqIFE8UDHYWpN09jhrgGaY2wy201iXKJYQniH6QNXy6aOIiTED
IFcdNpjrQaldqIDhBjmkG3nm/S2t1KQ4DTBsCslCbP3H3friyRYrkqMNAuD4tCsY
mkc1N7+DtoPybc2gfQspWXPVVu5opS5rl5lj5jLlGNQ3hsiRYCaIknjMfs5x0GVc
siCUE7NRgd4z84xuZhX81XhQGEiGTENVEvh1BOLGcfDBM0QYVD2q3sUi5yX07LTW
6KuTrRfk/FzdOJtVimUVApIhEV00gch4cwdWguVJXtYrJ4y+RAdCMxJ5gObBfyED
g7rc9OkMD2nnsel/ZTX4YzCJB0Mt9xrf3ArKbuDiCyoAcbomXoM=
=rWV7
-----END PGP SIGNATURE-----

--HJ4bY3oDljsupWYuwkAu71mkDbDRXTXUR--


--===============7829330370598544598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7829330370598544598==--

