Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70764121AD8
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 21:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R3SUEjhytivf+qfZT02W6FrE4Y52piVS8PQAcl8zmUk=; b=OZ0nUU2Og85Aivkaui0lP+zOu
	xuuTapT19zyuSGkzbEzUBiTbfp7uTXrTa9JSiSv7oJ5f/JjQ+x9P8ikUukFDbEKSsmIivQluwPR4p
	8iz7UJMPQxsnrShwaGnjlJC0kVgCCQxD9Eso+F1uCR7eqk2A8xyzgViW03qTclQ2THqsP6El/rNje
	fGvqawtsYNQxNOaOGg+5VUhtK0LVc4R4wad5fNoIsx/OeExu9OUfeZo3mcWUzrWF4Scs9UziREuim
	snnsIlXZtIJchujiV9UIHkCsMB0Rhr5K6UVxHS16OBOah5V66rgSE4l9NNrHzRLg+mzxEoAmyhhn8
	HxBOD/w7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwvo-0005Ax-66; Mon, 16 Dec 2019 20:25:28 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwvg-0005AP-3M
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 20:25:21 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id AA64C25213;
 Mon, 16 Dec 2019 21:25:14 +0100 (CET)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20191216123110.22741-1-freifunk@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 mNagDQm6idBibmeHejD0zFE=
Message-ID: <b3565dbd-88aa-2346-3f7c-7db8183af98b@universe-factory.net>
Date: Mon, 16 Dec 2019 21:25:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191216123110.22741-1-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_122520_453411_203CF495 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix port setup for Ubiquiti
 EdgeRouter X (and SFP)
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
Content-Type: multipart/mixed; boundary="===============3670834188574528679=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3670834188574528679==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="r0nydQz1qVKuRnSqIhnSItZIS2sShDhFS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--r0nydQz1qVKuRnSqIhnSItZIS2sShDhFS
Content-Type: multipart/mixed; boundary="VvDbhNw5CcJ76GDhLR6BuJyjkSgEnfGIs";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <b3565dbd-88aa-2346-3f7c-7db8183af98b@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix port setup for Ubiquiti
 EdgeRouter X (and SFP)
References: <20191216123110.22741-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20191216123110.22741-1-freifunk@adrianschmutzler.de>

--VvDbhNw5CcJ76GDhLR6BuJyjkSgEnfGIs
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 12/16/19 1:31 PM, Adrian Schmutzler wrote:
> The EdgeRouter only has LAN ports labelled eth0 to eth4 (plus
> unsupported eth5 for SFP version). Thus, there is no reason to set
> up one of them as WAN.
>=20
> This patch sets all ports to "lan" and removes the unused wan_mac.
>=20
> Actually, stock firmware on the EdgeRouter X assigns a specific MAC
> address to each port:
>=20
> eth0    *:f4 (label)
> eth1    *:f5
> eth2    *:f6
> eth3    *:f7
> eth4    *:f8
> switch0 *:f9
>=20
> (No data for SFP version)
>=20
> Only the label MAC is stored on flash in factory 0x22.
>=20
> OpenWrt currently sets &ethernet to this address, so all ports will
> use that one in OpenWrt.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Having a WAN port by default is extremely useful (and necessary for easy
automatic configuration by OpenWrt-based frameworks like Gluon without
having to special-case many devices).

I would prefer if we could always make one port WAN as long as we have at=

least two independently configurable ports, regardless of labeling - at
least that was my policy for creating new hardware support in the past.

Regards,
Matthias


> ---
>  .../ramips/mt7621/base-files/etc/board.d/02_network   | 11 +++++------=

>  1 file changed, 5 insertions(+), 6 deletions(-)
>=20
> diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_netwo=
rk b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> index 5c6b5659cb..6dfe24e296 100755
> --- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> @@ -62,8 +62,6 @@ ramips_setup_interfaces()
>  	asus,rt-ac85p|\
>  	iptime,a6ns-m|\
>  	mikrotik,rb750gr3|\
> -	ubiquiti,edgerouterx|\
> -	ubiquiti,edgerouterx-sfp|\
>  	youhua,wr1200js)
>  		ucidef_add_switch "switch0" \
>  			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
> @@ -124,6 +122,11 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "6@eth0"
>  		;;
> +	ubiquiti,edgerouterx|\
> +	ubiquiti,edgerouterx-sfp)
> +		ucidef_add_switch "switch0" \
> +			"0:lan" "1:lan" "2:lan" "3:lan" "4:lan" "6@eth0"
> +		;;
>  	xiaomi,mir3g)
>  		ucidef_add_switch "switch0" \
>  			"2:lan:2" "3:lan:1" "1:wan" "6t@eth0"
> @@ -246,10 +249,6 @@ ramips_setup_macs()
>  	telco-electronics,x1)
>  		wan_mac=3D$(macaddr_add "$(mtd_get_mac_binary factory 0xe006)" 1)
>  		;;
> -	ubiquiti,edgerouterx|\
> -	ubiquiti,edgerouterx-sfp)
> -		wan_mac=3D$(macaddr_add "$(mtd_get_mac_binary factory 0x22)" 1)
> -		;;
>  	wevo,11acnas|\
>  	wevo,w2914ns-v2|\
>  	zio,freezio)
>=20



--VvDbhNw5CcJ76GDhLR6BuJyjkSgEnfGIs--

--r0nydQz1qVKuRnSqIhnSItZIS2sShDhFS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl336CkACgkQFu8/ZMsg
HZxMUQ/9HUwtC5jF2+nyaGMu13gOup8GBPNF/8vQR9pzvR6dW3pKE6wGwb6wNLFu
HoqfvblmkPLqjzEwCN/3iuIbvB2eOYeiVyeeRPWCwX+s5AeZCe/vIZMDCa26P+WU
J27Oqp2tQSbD8pTeQ9w5Itx7ujwaVnyWPoIAWPvL4qGzVH2heKOPHJX6i9ZoZHQE
FmPeR82MTpEnqmYjRBQmYwKO04dUjMvGfShTs9q77NaTnLsSpncuasT61yzIHNN9
aPlMWedIRj9yKT+MBfrDdCumc2aZSJgVLQf8th4uflFlkF1VrAa8FCWosnNhoIbz
6uOuCUQP5vK5BeVxyC5NfIF+DewkNng11kLa/PKAeDf9Xln9Uyv4r5lflRq1lZdp
c5y5ZAMXHlVZMqx0hEXid67n7+YWVkiiHBj9Z5gevighvsRYY85Rf3+idg1GibE3
X2QLBMjSRuQrVyljEG5n5bqKTtZj682yPQ8JRJyjDVzKWawCmfpB3j9wruPpdyD/
sf3dBNcJlm/8XyCMVyTp47QPRRZ9O0LLu7rA97oYscJAuUkDKCFS7ZJ+1A4PGumk
36xvhR60og/eC0Hm08rFh7e5V+IRiE6YXCmOCJnx6WbSu/y1FfkhxnmZnNNeuThC
oWKm/rAt04dkgh7H8pgWJt6MWdqJSDfVea7aGiN+MOJg4UG2GcE=
=LoLo
-----END PGP SIGNATURE-----

--r0nydQz1qVKuRnSqIhnSItZIS2sShDhFS--


--===============3670834188574528679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3670834188574528679==--

