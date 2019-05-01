Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB0F10BC9
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JX5IQxAJmSlIJakjhSqMnCaY87NRADDnssJ10WbV0F0=; b=d/99a3bSc+zKasYbi23RhneXF
	unyJNFGwkDrB6jROQ3m3HsNH1JuAZ4a6MKc691NbBiHNytxn1oYvb9pbPUwM9J5+LPmap2DuCuZ99
	P710gbDqOshHJZ+rjzhP0NU3ZvLcYrPIF07uZcVVGAmX1Km4dGTXS//XpaUS8HxoRV0wyHz0GcJpC
	ZX7c+3Of5I7sX23JQ+u7Vn1DRhgZtY7Vq46HR17n/NdJg1bKuHt5qO5+C5KsNkuWPSLuxUHzs0TZm
	03gl72BxzG1MmUOI4y0qnyI9Bx8ezdAXcI3jdm7deZ9RXB5G9It17k2DvmrMbn8jcxggJdbhtQCEM
	knx6A/EPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsjM-0003OY-NW; Wed, 01 May 2019 17:09:16 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsjE-0003OF-Tf
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:09:10 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 2868654456; Wed,  1 May 2019 19:09:05 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id E63E454454
 for <openwrt-devel@lists.openwrt.org>; Wed,  1 May 2019 19:09:04 +0200 (CEST)
Received: (qmail 12706 invoked from network); 1 May 2019 19:09:04 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 1 May 2019 19:09:04 +0200
To: openwrt-devel@lists.openwrt.org
References: <20190501052321.11985-1-zajec5@gmail.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 Xx5IapIyoA==
Message-ID: <de57d2ea-3090-1f56-d4c1-9692b86707b1@wwsnet.net>
Date: Wed, 1 May 2019 19:08:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501052321.11985-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_100909_117961_5D806B8B 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] procd: add procd_running() helper for
 checking running state
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
Content-Type: multipart/mixed; boundary="===============3893711954783006476=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3893711954783006476==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="hIwxRUsqM7cx1veLpOnOiEWaTJmBDXbR7"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--hIwxRUsqM7cx1veLpOnOiEWaTJmBDXbR7
Content-Type: multipart/mixed; boundary="eBDdrLsjtUtqoEnmhUGMiatkiAfq6zFRx";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <de57d2ea-3090-1f56-d4c1-9692b86707b1@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [PATCH] procd: add procd_running() helper for
 checking running state
References: <20190501052321.11985-1-zajec5@gmail.com>
In-Reply-To: <20190501052321.11985-1-zajec5@gmail.com>

--eBDdrLsjtUtqoEnmhUGMiatkiAfq6zFRx
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

comment inline below.

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> This should be helpful for implementing service_running() in procd init=

> scripts.
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  package/system/procd/files/procd.sh | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/package/system/procd/files/procd.sh b/package/system/procd=
/files/procd.sh
> index 72f25fe0c0..ade55a344f 100644
> --- a/package/system/procd/files/procd.sh
> +++ b/package/system/procd/files/procd.sh
> @@ -26,6 +26,9 @@
>  # procd_close_instance():
>  #   Complete the instance being prepared
>  #
> +# procd_running(service, [instance]):
> +#   Checks if service/instance is currently running
> +#
>  # procd_kill(service, [instance]):
>  #   Kill a service instance (or all instances)
>  #
> @@ -398,6 +401,18 @@ _procd_add_instance() {
>  	_procd_close_instance
>  }
> =20
> +procd_running() {
> +	local service=3D"$1"
> +	local instance=3D"${2:-instance1}"
> +	local running
> +
> +	json_init
> +	json_add_string name "$service"
> +	running=3D$(_procd_ubus_call list | jsonfilter -e "@.$service.instanc=
es.${instance}.running")

Pass '{ "name": "'"$service"'" }' as argument to the list call to reduce =
the amount of output you
need to filter.

> +
> +	[ "$running" =3D "true" ]
> +}
> +
>  _procd_kill() {
>  	local service=3D"$1"
>  	local instance=3D"$2"
>=20


~ Jo


--eBDdrLsjtUtqoEnmhUGMiatkiAfq6zFRx--

--hIwxRUsqM7cx1veLpOnOiEWaTJmBDXbR7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAlzJ0qUACgkQQuLLvzou
ZtNvHxAArvM2Ey9hlfnh4VMlMrdu8pU6PNHGXhAIl00Gsqja4lk7K67EpAVEvGpG
WxLxwJmIadNAeGV2dd3Vr9PsI2299UWqtAx/6oAUpDfrmR0w5eL5Mm6ed4V1DesO
qiQV00VUjl0ETmJo3G0n+7GrIOssvdK0yQ/z+dF2HRF3L1nVSvvA5sTagK3IWJdQ
G8L2XZbfpMXggvIoiXGsZhguHXl/SPqvqT9lLNwsRZuS2Nuf+Gfd4YMfoi+ldCka
bykBGUHDihyV37dtV2EBUCwh42Ci+vw3A/Cb9vsp8BMQrRThBDuJkIbZHc3/gx6B
D+dmKzIp5KuXKunJBRNpp/fraKxfYBZuxt8Ck87TTWwafgYg1Rcb17py9gENSdo+
wKsTbUB0TAQWxoDEiXr+qCvsVFKl3QfDHj5JfgxlR6t7TrECRDtbddbvAV/zlZNr
Rj4b0xcomsS4dNkQH9PoMwKh9spg0Un79m6j2dSdcVqLABovXms+qmZO4acqYCnH
kOmBYPwLc1P03wJHsUPsE3mc4kFoRpjwnNwKHU+Sou6UrtcOwIauA44SBgqn7REJ
MXI/Qgd/sWKO42/Fr7l54HEX6RCPj54v6f6HVar2Vkyq7BSy2QQZqgJ63bNcZmGl
cYsVVWMls4IGG17zg6aaYG+SWelfzsEiPltIw0YA87bKgPIJqW8=
=WZZQ
-----END PGP SIGNATURE-----

--hIwxRUsqM7cx1veLpOnOiEWaTJmBDXbR7--


--===============3893711954783006476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3893711954783006476==--

