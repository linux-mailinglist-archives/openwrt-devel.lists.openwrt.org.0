Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788181FD02A
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 16:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lSaC9SAn4gOyv34dVVrqCtNL4MI+zsy+OKvU5lflAH0=; b=hU0Gl6DAa7kf0sChZjbCBNG4u
	KOFT5kKoS7TElRNtwMTRCt+/ApY3+nrWZ2ByJqVYO9Wi3yPBDmDT5RWoXc5lfvGd7bBm+S5la1yJH
	H3SiD1AOjRIzcbdn4BRdKMef3qEaJQW0Zxps1zTJmPPF0JFwYcR/qECNfM8/NWoiEOm1ZAeQH+MsE
	M3BICc3suFcBRgEc6cW2kRyrGYsniim19LxOn/ji0y+d2nqvKnc7uhO82srI1ua0jjx5kVNJYwY8+
	D3+HBbIgxT3Bodqu9xkcO6nz64hkK1Qa+RnkoJ9EPjjwnBbq+CHs3nxgH5/Er42NFP1qY9igxD/mm
	aIvvuRTdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZWg-00035V-8p; Wed, 17 Jun 2020 14:58:54 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZWY-00034y-Bv
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 14:58:47 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 1CAC4433A9; Wed, 17 Jun 2020 16:58:45 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id D8E14433A7
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 16:58:44 +0200 (CEST)
Received: (qmail 10013 invoked from network); 17 Jun 2020 16:58:44 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 17 Jun 2020 16:58:44 +0200
To: openwrt-devel@lists.openwrt.org
References: <70c34171-a853-3adb-d1ff-3774ad28baa1@wwsnet.net>
 <20200617145451.GA19653@makrotopia.org>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; keydata=
 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
 y9XZa9+U/SZJW40nBzM3hUy+EVkvFg==
Message-ID: <38e8807e-1344-1685-e4ab-a962d6c7fc4f@wwsnet.net>
Date: Wed, 17 Jun 2020 16:58:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200617145451.GA19653@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_075846_711332_768259A3 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] uclient-fetch: add option to read
 POST data from file
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
Content-Type: multipart/mixed; boundary="===============6616873004902326484=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6616873004902326484==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="KaedPpTG5vIB3ysrW95g6mDACE9dCkyVh"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--KaedPpTG5vIB3ysrW95g6mDACE9dCkyVh
Content-Type: multipart/mixed; boundary="bzgQh1oZ1M7h66A2qw7kBinLjaWDWckgm";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <38e8807e-1344-1685-e4ab-a962d6c7fc4f@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [PATCH v3] uclient-fetch: add option to read POST
 data from file
References: <70c34171-a853-3adb-d1ff-3774ad28baa1@wwsnet.net>
 <20200617145451.GA19653@makrotopia.org>
In-Reply-To: <20200617145451.GA19653@makrotopia.org>

--bzgQh1oZ1M7h66A2qw7kBinLjaWDWckgm
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

> Passing post data in command line is convenient but has limited size,
> and may become tricky to correctly escape passed data especially in
> scripts.
> This patch add the option --post-file so the data to post can be read
> from a file or from /dev/stdin.
> Tested on x86/64.
>=20
> Signed-off-by: Gioacchino Mazzurco <gio@eigenlab.org>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>

Acked-by: Jo-Philipp Wich <jo@mein.io>

> ---
> v3: use 1024 bytes buffer instead of 1000, use sizeof()
> As original wget also only supports "application/x-www-form-urlencoded"=

> as Content-Type for the POST data, keep it that way in uclient-fetch
> as well for now. An additional option --post-type may be introduced at
> a later stage to allow setting "text/json" or
> "application/octet-stream".
>=20
> v2: make it compile, handle errors, add usage info, fix typos
>=20
>  uclient-fetch.c | 31 +++++++++++++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)
>=20
> diff --git a/uclient-fetch.c b/uclient-fetch.c
> index a06be5d..061f0fd 100644
> --- a/uclient-fetch.c
> +++ b/uclient-fetch.c
> @@ -43,6 +43,7 @@
> =20
>  static const char *user_agent =3D "uclient-fetch";
>  static const char *post_data;
> +static const char *post_file;
>  static struct ustream_ssl_ctx *ssl_ctx;
>  static const struct ustream_ssl_ops *ssl_ops;
>  static int quiet =3D false;
> @@ -334,7 +335,7 @@ static int init_request(struct uclient *cl)
> =20
>  	msg_connecting(cl);
> =20
> -	rc =3D uclient_http_set_request_type(cl, post_data ? "POST" : "GET");=

> +	rc =3D uclient_http_set_request_type(cl, post_data || post_file ? "PO=
ST" : "GET");
>  	if (rc)
>  		return rc;
> =20
> @@ -347,6 +348,26 @@ static int init_request(struct uclient *cl)
>  		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-=
urlencoded");
>  		uclient_write(cl, post_data, strlen(post_data));
>  	}
> +	else if(post_file)
> +	{
> +		FILE *input_file;
> +		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-=
urlencoded");
> +
> +		input_file =3D fopen(post_file, "r");
> +		if (!input_file)
> +			return errno;
> +
> +		char tbuf[1024];
> +		size_t rlen =3D 0;
> +		do
> +		{
> +			rlen =3D fread(tbuf, 1, sizeof(tbuf), input_file);
> +			uclient_write(cl, tbuf, rlen);
> +		}
> +		while(rlen);
> +
> +		fclose(input_file);
> +	}
> =20
>  	rc =3D uclient_request(cl);
>  	if (rc)
> @@ -460,6 +481,7 @@ static int usage(const char *progname)
>  		"	--password=3D<password>		HTTP authentication password\n"
>  		"	--user-agent|-U <str>		Set HTTP user agent\n"
>  		"	--post-data=3DSTRING		use the POST method; send STRING as the data=
\n"
> +		"	--post-file=3DFILE		use the POST method; send FILE as the data\n"
>  		"	--spider|-s			Spider mode - only check file existence\n"
>  		"	--timeout=3DN|-T N		Set connect/request timeout to N seconds\n"
>  		"	--proxy=3Don|off|-Y on|off	Enable/disable env var configured proxy=
\n"
> @@ -516,6 +538,7 @@ enum {
>  	L_PASSWORD,
>  	L_USER_AGENT,
>  	L_POST_DATA,
> +	L_POST_FILE,
>  	L_SPIDER,
>  	L_TIMEOUT,
>  	L_CONTINUE,
> @@ -532,6 +555,7 @@ static const struct option longopts[] =3D {
>  	[L_PASSWORD] =3D { "password", required_argument },
>  	[L_USER_AGENT] =3D { "user-agent", required_argument },
>  	[L_POST_DATA] =3D { "post-data", required_argument },
> +	[L_POST_FILE] =3D { "post-file", required_argument },
>  	[L_SPIDER] =3D { "spider", no_argument },
>  	[L_TIMEOUT] =3D { "timeout", required_argument },
>  	[L_CONTINUE] =3D { "continue", no_argument },
> @@ -598,6 +622,9 @@ int main(int argc, char **argv)
>  			case L_POST_DATA:
>  				post_data =3D optarg;
>  				break;
> +			case L_POST_FILE:
> +				post_file =3D optarg;
> +				break;
>  			case L_SPIDER:
>  				no_output =3D true;
>  				break;
> @@ -718,7 +745,7 @@ int main(int argc, char **argv)
>  		/* no error received, we can enter main loop */
>  		uloop_run();
>  	} else {
> -		fprintf(stderr, "Failed to establish connection\n");
> +		fprintf(stderr, "Failed to send request: %s\n", strerror(rc));
>  		error_ret =3D 4;
>  	}
> =20
>=20


--bzgQh1oZ1M7h66A2qw7kBinLjaWDWckgm--

--KaedPpTG5vIB3ysrW95g6mDACE9dCkyVh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl7qL6EACgkQQuLLvzou
ZtP/LhAAqRDkJeNv288RaiTYhkpFB0vZZy2c1Xyp8jHzB7fzc1EmnAkZPsoGPGFh
h4E2mLB5UNhrgcq3ylSoKarHqqcCN+vjGE6pTUAcvxYjaMOQHqDf6xWGnsO+ANuq
bHtqGPDw/MMLyofeBIgM2wkNb0zNlBVspcQkr2nW2FUCYh5+y1FTlrcr3j6+eWB9
RkGC6MH+f0xgXtWy99UhzS2kiBsizGqmNGgcrzQ07J4N+dn0h8Li4IPCiF21foIZ
ppmJf4VDIXZClN9geg5DgmAGyleK6bv5o3UCRYyqiotScH38LbTWI/Hi7yAgKNMU
zstsGfeEhoQlxhr2zVDIhpe284hVRRPEcga2mWfDrfAGzkIJDwMo0nk/E08RZaiE
qJSSrz2sXpt4JDbfNqc4ZE0CEocWnIp/LtCj7DGtDRtF4pN4IFaqHG2PGT6iZAzC
NIDbtAhYj9KecjZnWP9HeJsgtbiFC+XLLxFP5OaSLnVjjg9k49B9fZ7HGyHuY15f
yD0SvWgH8UxzfFPAKR4QXxqk1Z8L2/2E12bUcRgC1hAc8tK5ADGCv5xlOdEaeaZF
hZ8dqLGeVtwDVT6HZpC+VcNP/igeawF4GpfyvSSnZW+q8ldtF1VeLaFEQDoYOZVw
34hzvc/xYTdkPLKXJb666wmTcaBXU3viU+W/jnQ61NXkEyA+6Lo=
=7JJx
-----END PGP SIGNATURE-----

--KaedPpTG5vIB3ysrW95g6mDACE9dCkyVh--


--===============6616873004902326484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6616873004902326484==--

