Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C332DB9899
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 22:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2JJN9nXqIPQ4LocMmwBV3XJdQdFdpiSPOM9HumKyMyI=; b=bFDYVTHJznev/PJrzCH/FLzOm
	FZymIKRuvLQzF3Pm4Hn8SLdofUnr30GuMNggmCVJYSqZ8uHqmXiN+EdZIbvy6dOSuwug7rfPMW+C4
	NboyLZ3huxOLNI1kMg7EiLdiSK7FeavIgtFga+rTNmdfuq3w6mbrItIiT3ceDuA67Q6WdWMNplvCo
	8S7z7hB36PCC59nm8d5xp36PaO9hTRiXe1bcQx9zfhTEMrDEBSX2aCkmSYBCuOIhUTpJ0YDXIgW+0
	SMA+zyqRl+/BNFfLjEdh31DiuxnIn8+tLkBK2duxEbM8BZ90VbM+Q9eQVHxQti1WEo+yoM0PN9ldO
	Y0qll9gQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBPlC-0005E9-HL; Fri, 20 Sep 2019 20:44:10 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBPl3-0005DX-Gc
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 20:44:04 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id B506BA3231;
 Fri, 20 Sep 2019 22:43:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id BqYEgFKaerpw; Fri, 20 Sep 2019 22:43:49 +0200 (CEST)
To: Eneas U de Queiroz <cotequeiroz@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
 <20190919021803.31271-4-cotequeiroz@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <1d144b1f-fc95-0688-6140-356c14383d42@hauke-m.de>
Date: Fri, 20 Sep 2019 22:43:42 +0200
MIME-Version: 1.0
In-Reply-To: <20190919021803.31271-4-cotequeiroz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_134401_853743_AA381B74 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH ustream-ssl v2 3/3] wolfssl: enable CN
 validation
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
Content-Type: multipart/mixed; boundary="===============5665025251586860459=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5665025251586860459==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="BrBcsLA6G5XYcDkwfRTGjGdwl9SeWl5Z5"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--BrBcsLA6G5XYcDkwfRTGjGdwl9SeWl5Z5
Content-Type: multipart/mixed; boundary="H2Fpx3EauQCwNSGe80JyLQkjmSzrqKQe4";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 openwrt-devel@lists.openwrt.org
Message-ID: <1d144b1f-fc95-0688-6140-356c14383d42@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH ustream-ssl v2 3/3] wolfssl: enable CN
 validation
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
 <20190919021803.31271-4-cotequeiroz@gmail.com>
In-Reply-To: <20190919021803.31271-4-cotequeiroz@gmail.com>

--H2Fpx3EauQCwNSGe80JyLQkjmSzrqKQe4
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 9/19/19 4:18 AM, Eneas U de Queiroz wrote:
> WolfSSL added a wolfSSL_X509_check_host function to perform CN
> validation in v3.10.4, depending on the build-time configure options:
> --enable-nginx enables it for all supported versions;
> --enable-opensslextra, since v3.14.2.
>=20
> If the function is unavailable, then SSL_get_verify_result will be
> called, and 'valid_cert' will be true if that call suceeds and we
> have a peer certificate, just as it happens with openssl. Only
> 'valid_cn' will not be set.
>=20
> Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
>=20
> diff --git a/CMakeLists.txt b/CMakeLists.txt
> index 6b3fc8c..86e1b07 100644
> --- a/CMakeLists.txt
> +++ b/CMakeLists.txt
> @@ -21,6 +21,12 @@ ELSEIF(WOLFSSL)
>    IF (NOT HAVE_WOLFSSL_SSLSETIORECV)
>      ADD_DEFINITIONS(-DNO_WOLFSSL_SSLSETIO_SEND_RECV)
>    ENDIF()
> +  CHECK_SYMBOL_EXISTS (wolfSSL_X509_check_host
> +		       "wolfssl/options.h;wolfssl/ssl.h"
> +		       HAVE_WOLFSSL_X509_CHECK_HOST)
> +  IF (NOT HAVE_WOLFSSL_X509_CHECK_HOST)
> +    ADD_DEFINITIONS(-DNO_X509_CHECK_HOST)
> +  ENDIF()
>  ELSE()
>    SET(SSL_SRC ustream-io-openssl.c ustream-openssl.c)
>    SET(SSL_LIB crypto ssl)
> diff --git a/ustream-openssl.c b/ustream-openssl.c
> index 21abf61..c830618 100644
> --- a/ustream-openssl.c
> +++ b/ustream-openssl.c
> @@ -203,7 +203,7 @@ static void ustream_ssl_error(struct ustream_ssl *u=
s, int ret)
>  	uloop_timeout_set(&us->error_timer, 0);
>  }
> =20
> -#ifndef WOLFSSL_OPENSSL_H_
> +#ifndef NO_X509_CHECK_HOST
> =20
>  static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
>  {
> @@ -212,10 +212,15 @@ static bool ustream_ssl_verify_cn(struct ustream_=
ssl *us, X509 *cert)
>  	if (!us->peer_cn)
>  		return false;
> =20
> +# ifndef WOLFSSL_OPENSSL_H_
>  	ret =3D X509_check_host(cert, us->peer_cn, 0, X509_CHECK_FLAG_NO_PART=
IAL_WILDCARDS, NULL);
> +# else
> +	ret =3D wolfSSL_X509_check_host(cert, us->peer_cn, 0, 0, NULL);
> +# endif
>  	return ret =3D=3D 1;
>  }
> =20
> +#endif
> =20
>  static void ustream_ssl_verify_cert(struct ustream_ssl *us)
>  {
> @@ -235,11 +240,12 @@ static void ustream_ssl_verify_cert(struct ustrea=
m_ssl *us)
>  		return;
> =20
>  	us->valid_cert =3D true;
> +#ifndef NO_X509_CHECK_HOST
>  	us->valid_cn =3D ustream_ssl_verify_cn(us, cert);
> +#endif
>  	X509_free(cert);
>  }
> =20
> -#endif
> =20
>  __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl=
 *us)
>  {
> @@ -252,9 +258,7 @@ __hidden enum ssl_conn_status __ustream_ssl_connect=
(struct ustream_ssl *us)
>  		r =3D SSL_connect(ssl);
> =20
>  	if (r =3D=3D 1) {
> -#ifndef WOLFSSL_OPENSSL_H_
>  		ustream_ssl_verify_cert(us);
> -#endif
>  		return U_SSL_OK;
>  	}

I am getting this error message with this patch:

[ 12%] Building C object CMakeFiles/ustream-ssl.dir/ustream-ssl.c.o
In file included from
/home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl=
-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-internal.h:27:0,
                 from
/home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl=
-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-ssl.c:25:
/home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl=
-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-openssl.h:
In function '__ustream_ssl_set_server_name':
/home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl=
-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-openssl.h:48:2:
error: implicit declaration of function 'SSL_set_tlsext_host_name'; did
you mean 'SSL_set_tlsext_debug_arg'? [-Werror=3Dimplicit-function-declara=
tion]
  SSL_set_tlsext_host_name(us->ssl, us->server_name);
  ^~~~~~~~~~~~~~~~~~~~~~~~
  SSL_set_tlsext_debug_arg
cc1: all warnings being treated as errors
make[6]: *** [CMakeFiles/ustream-ssl.dir/build.make:63:
CMakeFiles/ustream-ssl.dir/ustream-ssl.c.o] Error 1


and this config:
CONFIG_WOLFSSL_HAS_AES_CCM=3Dy
CONFIG_WOLFSSL_HAS_ARC4=3Dy
CONFIG_WOLFSSL_HAS_CHACHA_POLY=3Dy
CONFIG_WOLFSSL_HAS_DH=3Dy
CONFIG_WOLFSSL_HAS_NO_HW=3Dy
CONFIG_WOLFSSL_HAS_OCSP=3Dy
CONFIG_WOLFSSL_HAS_SESSION_TICKET=3Dy
CONFIG_WOLFSSL_HAS_TLSV10=3Dy
CONFIG_WOLFSSL_HAS_TLSV13=3Dy
CONFIG_WOLFSSL_HAS_WPAS=3Dy


Hauke




--H2Fpx3EauQCwNSGe80JyLQkjmSzrqKQe4--

--BrBcsLA6G5XYcDkwfRTGjGdwl9SeWl5Z5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl2FOf4ACgkQ8bdnhZyy
68cWmwgAmEonECyZIdJ5XYtSOQu0HcTjIyuYJNwE36XD5kQXMcMNLKriETKUflST
7DcyYylP1a+m38I5jgoF2HvPBaNXXLYTnBaU/uU3BNc1SuzFIi/hvyCldxA7Q4s4
xkqIac2q3BsQFh2lWxaBkWJ59EVAH4fGjkciM5CS0YtEsMFyPUJizQFILlelnGd9
9UWEUFnUbgV3ndTPq7Q0PjnZGky85/T8kITRYuFU/omJ1U0NEHnDm/Y9k2TIObqV
VoUBDEekPeS7yRNUdchgJ7eleBBYJ2rDJMVOruCehDclMesssiOt2PD6IVxApdgZ
jL1RSZmTxf8PRdGV3QxULdJnFpTwrg==
=SBO2
-----END PGP SIGNATURE-----

--BrBcsLA6G5XYcDkwfRTGjGdwl9SeWl5Z5--


--===============5665025251586860459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5665025251586860459==--

