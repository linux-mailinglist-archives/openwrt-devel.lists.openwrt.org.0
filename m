Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BE891002
	for <lists+openwrt-devel@lfdr.de>; Sat, 17 Aug 2019 12:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F/l/rhaQv8+iNF6B+5WVLWgzh5SOXpEF3akdXZmQbm0=; b=GeS7XL4tZ0N3lMEtV3UlG/TV7
	fsmgCjkXI75g7gNP4TFeMgRI9b+g9C+pzBOds0bb9VKAkln8EDCqnQ5TGpf2LqWrjReLV6Avf1ndf
	KaIyYTEMNHop8JSR2YtAWYxS/nZ35KpU3lJRgTsm09ev3Gy3Pdp39r+/ax7H80E/J8J25I0zZsl8+
	U6WUUypIZ53G//PnVZtmtAH6VvBrQhL6d0SBhsOuRQyXGvRLe2chBxu4a6+Rjf6TMk+1o5vAKH+gM
	5tPxVceJaffZbFGTRnYEIacXJovwnQCxrx0uX7Icu985Aj5J9t6Jet2mdDgXdKkbIQ1SMwSe2lSZ9
	ZA+TByEtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyvzd-0003lU-B3; Sat, 17 Aug 2019 10:31:29 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyvzG-0003jc-U8
 for openwrt-devel@lists.openwrt.org; Sat, 17 Aug 2019 10:31:08 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 262B550949; Sat, 17 Aug 2019 12:31:02 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id E165A50947
 for <openwrt-devel@lists.openwrt.org>; Sat, 17 Aug 2019 12:31:01 +0200 (CEST)
Received: (qmail 21818 invoked from network); 17 Aug 2019 12:31:01 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 17 Aug 2019 12:31:01 +0200
To: openwrt-devel@lists.openwrt.org
References: <20190816142848.14412-1-zajec5@gmail.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 yxsOKc06fSVm
Message-ID: <93bb5faa-0505-5948-c990-4b88d7ff95e0@wwsnet.net>
Date: Sat, 17 Aug 2019 12:30:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816142848.14412-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_033107_276831_1AD3698F 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: support passing "options"
 to the "sysupgrade" ubus method
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
Content-Type: multipart/mixed; boundary="===============1867378679756588156=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1867378679756588156==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ZG2Fg0bAGtBylvwWXEyQwMb1vQHv3H1ID"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ZG2Fg0bAGtBylvwWXEyQwMb1vQHv3H1ID
Content-Type: multipart/mixed; boundary="MEI1JUDWMivKjUqjQmjmZStw0T4Cgrtfd";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <93bb5faa-0505-5948-c990-4b88d7ff95e0@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: support passing "options"
 to the "sysupgrade" ubus method
References: <20190816142848.14412-1-zajec5@gmail.com>
In-Reply-To: <20190816142848.14412-1-zajec5@gmail.com>

--MEI1JUDWMivKjUqjQmjmZStw0T4Cgrtfd
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

> [...]
> +
> +	blobmsg_for_each_attr(option, options, rem) {
> +		const char *prefix =3D "UPGRADE_OPT_";
> +		char *name =3D malloc(strlen(prefix) + strlen(blobmsg_name(option)))=
;
> +		char value[11];
> +		char *c;
> +		int tmp;
> +
> +		if (!name) {
> +			continue;
> +		}
> +		sprintf(name, "%s%s", prefix, blobmsg_name(option));
> +		for (c =3D name + strlen(prefix); *c; c++) {

I'd propose some more sanity checking here:
                     if (isalnum(*c) || *c =3D=3D '_') {
> +			*c =3D toupper(*c);

                     }
                     else {
                        c =3D NULL;
                        break;
                     }
> +		}

                if (!c) {
                     fprintf(stderr, "Option \"%s\" contains invalid
characters\n", blobmsg_name(option));
                     free(name);
                     continue;
                }

> +
> +		switch (blobmsg_type(option)) {
> +		case BLOBMSG_TYPE_INT32:
> +			tmp =3D blobmsg_get_u32(option);
> +			break;
> +		case BLOBMSG_TYPE_INT16:
> +			tmp =3D blobmsg_get_u16(option);
> +			break;
> +		case BLOBMSG_TYPE_INT8:
> +			tmp =3D blobmsg_get_u8(option);
> +			break;
> +		default:
> +			fprintf(stderr, "Option \"%s\" has unsupported type: %d\n",
> +				blobmsg_name(option), blobmsg_type(option));
> +			free(name);
> +			continue;
> +		}
> +		snprintf(value, sizeof(value), "%u", tmp);
> +
> +		setenv(name, value, 1);
> +
> +		free(name);
> +	}
> +
>  	execvp(argv[0], argv);
> =20
>  	/* Cleanup on failure */
> diff --git a/sysupgrade.h b/sysupgrade.h
> index 8c09fc9..c84e494 100644
> --- a/sysupgrade.h
> +++ b/sysupgrade.h
> @@ -14,8 +14,10 @@
>  #ifndef __PROCD_SYSUPGRADE_H
>  #define __PROCD_SYSUPGRADE_H
> =20
> +struct blob_attr;
> =20
> -void sysupgrade_exec_upgraded(const char *prefix, char *path, char *co=
mmand);
> +void sysupgrade_exec_upgraded(const char *prefix, char *path, char *co=
mmand,
> +			      struct blob_attr *options);
> =20
> =20
>  #endif
>=20


--MEI1JUDWMivKjUqjQmjmZStw0T4Cgrtfd--

--ZG2Fg0bAGtBylvwWXEyQwMb1vQHv3H1ID
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl1X12QACgkQQuLLvzou
ZtM3tRAAkVDfBgr8YXdOxDmJGXpHcTcU/lWXQ7iPW1rCIopZdFssQGwF3F7QH3g6
6xOckwbsUv0LNmX7QZCzX6UzEweuEjxjl0xVSHVJefXIW1pz8gAFvSnbuopu0LDm
yeejbNJHy/2mk52x3e3zyhUFtj8LS5KWeH4vdnirFo32hJiv1EwTjGTdAYRwNJZF
MPGifKRTrebMu4xGdzyS/sCO3IlLnlVGTrsJ7i8EB8nP21pnCUj3+f4qFxyfIU2x
FPfXzLjVYQqi+32tiADtKSxykBFNJNHcq18osSh8D0mxjLnN0mLY05QQGNEMvJnA
CrV/ArCFwqwa1uC/gFKkLJ3I430wb8ncLgujaog/sN5aWaaGR42avZ8AE7AksdjE
rFk5GuKW9giO+XEvOLI2y0rM+8wnArBgv/1hqln/BXBPy3DDKielsuC+ZblSuwxj
D4FUdkTL3b8V3FBn1DF3CWZ209GJQMNX6fMzd5GpzNt69hUMZDXDx0wBYUqdihUD
FUhzZ3ZjEb5PfLg/qCtv1s9UylOwNurxWdWbEOfVz0pH+yHuAQuCe+AM2PONZ7F9
+xWT8f6FsKNfM+7PW1TOAjj+j2UegD+eCM4fbYh3W8qS3fbkqSLkuKG8BHgsZBEt
L5stvSLF7zK2aZ3uQre2oxBa3lKloEhvONBx/hRLcydgG44npQQ=
=eb34
-----END PGP SIGNATURE-----

--ZG2Fg0bAGtBylvwWXEyQwMb1vQHv3H1ID--


--===============1867378679756588156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1867378679756588156==--

