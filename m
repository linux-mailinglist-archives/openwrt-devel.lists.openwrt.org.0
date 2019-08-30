Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6BDA3B1D
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 17:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QUo02Lv9OzVvqMY6dd1WhnL3Wjcof+nDMsb+FRZo2dk=; b=W7e/sukoUGXD6bgR5Uqw4GZUt
	OIh+yeg3N6G9KlQ0H4ip5+5PVhZBtN3hgZsKUo38qN/5Q+jafKfrpKeolkdoIlLTGqOoJ82lHHIjY
	PptINOsSRFq/7wpL18gxFA9pN6M0S46mWInB2Eh1OcIKqTQZY5t6LPlSl4s9CsCXmbW0YNltx+EFH
	mz3qr8liGS9x6zDPcMEq2jpMxUFjN7UugpVGULRN3NyZxrRYoaJQH1HzTbCIBc2TeyY9g3nOSIiCQ
	iAOk5hYugU3WciU++GAHp/jaLJdP7WoJ1lMtPR1LzNu4HnTK6fJAS6YrLvGs5oyXtdyymLrfXUzSC
	YRSgrUj0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jH2-0000uC-EJ; Fri, 30 Aug 2019 15:57:16 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jGs-0000tl-Vh
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 15:57:08 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id F303A5031D; Fri, 30 Aug 2019 17:57:01 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id B597850318
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 17:57:01 +0200 (CEST)
Received: (qmail 18814 invoked from network); 30 Aug 2019 17:57:01 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 30 Aug 2019 17:57:01 +0200
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 openwrt-devel@lists.openwrt.org, John Crispin <john@phrozen.org>
References: <20190830154607.6463-1-zajec5@gmail.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 yxsOKc06fSVm
Message-ID: <ecd3f99a-fab6-f109-ce4a-b7e1ba467231@wwsnet.net>
Date: Fri, 30 Aug 2019 17:56:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830154607.6463-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_085707_179691_DF5CEA95 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of
 broken firmware images
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: multipart/mixed; boundary="===============6927563865205343883=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6927563865205343883==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="GCiaJCN5C50yKXhtn51C14PXMI11uY0Zj"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--GCiaJCN5C50yKXhtn51C14PXMI11uY0Zj
Content-Type: multipart/mixed; boundary="E56IOHI0jjWxw9f2hNzR2oEeM5ry6wdIu";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 openwrt-devel@lists.openwrt.org, John Crispin <john@phrozen.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <ecd3f99a-fab6-f109-ce4a-b7e1ba467231@wwsnet.net>
Subject: Re: [PATCH procd] system: reject sysupgrade of broken firmware images
References: <20190830154607.6463-1-zajec5@gmail.com>
In-Reply-To: <20190830154607.6463-1-zajec5@gmail.com>

--E56IOHI0jjWxw9f2hNzR2oEeM5ry6wdIu
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

> [snip]
> +	blobmsg_parse(validation_policy, __VALIDATION_MAX, validation, blob_d=
ata(b.head), blob_len(b.head));
> +
> +	valid =3D validation[VALIDATION_VALID] && blobmsg_get_bool(validation=
[VALIDATION_VALID]);
> +	forceable =3D validation[VALIDATION_FORCEABLE] && blobmsg_get_bool(va=
lidation[VALIDATION_FORCEABLE]);
> +
> +	if (!valid && !forceable) {
> +		fprintf(stderr, "Firmware image is broken and cannot be installed\n"=
);
> +		return UBUS_STATUS_UNKNOWN_ERROR;

Maybe UBUS_STATUS_NOT_SUPPORTED could make sense here.

> +	}
> +
>  	sysupgrade_exec_upgraded(blobmsg_get_string(tb[SYSUPGRADE_PREFIX]),
>  				 blobmsg_get_string(tb[SYSUPGRADE_PATH]),
>  				 tb[SYSUPGRADE_COMMAND] ? blobmsg_get_string(tb[SYSUPGRADE_COMMAND=
]) : NULL,
>=20


--E56IOHI0jjWxw9f2hNzR2oEeM5ry6wdIu--

--GCiaJCN5C50yKXhtn51C14PXMI11uY0Zj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl1pR00ACgkQQuLLvzou
ZtP66g/6A3X7DEMT3AaXh7TnKt6OAcOBV5+aVj1tB+BBXqWtxWKNlog2Sji+qpIt
986ipAVw9px26j+vWdGzCkvrg001Sv0yf0o5xnyUk7vh/AdTeU5i3/0qj/OJnS7o
7jmGgJHxIn5dMDuwi8q24Y966VjWVak+nC4T3x2P7a+zq/4XTLzrSzF/4FDew0EZ
15xc3QW0Lk/E6b/uanjO7RdvJdfljsmlSP6npATXaL6grwNSpfOZ5BxJecTNJExN
DPZ27x7mGu57qM0TJFZGyS9Xvweq/LdnuNCv6TEYrOp5Dq/NcxsqhpBbldHqNE6v
lZpjWKM5EJIFKbMBleUt4421WGfuSmIxQhmxbhVokMAj5OeY1N7YLfBOTfdCAO23
EuWXo/TBM7bZ5CDMnvJGZnM2H+zMjVyTw5AtInRD/NZFwVFbuDZWUdq7afDoeLU9
W13FYRjJX8PTaye+zNh5JOElMFcuvlu+R0qu1/7473DthUuzwUIJWkHMtyOmvtK5
tu1hFcRpBaUvDFPFeJofGiL0/KkHtgUR+gC/pSKrcRXrHVNcHujRYJuoS/8fyNSg
LKl3ZCYNNhrWdHPmr+gqAtUuFY3qvuxIFp9YC8DKaVGfKNTpX2INdLn/0NW21bMa
ZhzBNvqEM7d+ghNpNub67jpEKJ7i6D1/aAXTx3yp4mIwMCs9SQo=
=nr7E
-----END PGP SIGNATURE-----

--GCiaJCN5C50yKXhtn51C14PXMI11uY0Zj--


--===============6927563865205343883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6927563865205343883==--

