Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A6B44651
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 18:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aBgIMihQJUDtXpQEcHRrjxj0c3BEf4JTCPnj++lIXpQ=; b=Ev3HbITo4x05fgNYr4xNAbrIY
	SdfjX5uVBKhLbJ11BQLs3RRtxIL+TzA6bn+ux7UlvFn9a4X/rmtAaYDx+eAG6dbkLricf36BV4FO3
	Q59ERfZjpo2HYoKxHl2IAFyjFxSjvTTqgMwYr7BlNRpVWjrMudibT+COoL1bMpuIm4+k4CZk1YxzP
	XXRndJeO5uajgvxtnSOjC+J8B6LLRvrT+OVugF+vNgDiqhMsxafGywA0n0dHt3UQ9R8UAxEbHguu2
	3ftDtWP9MX/+5Td6AGWk2jnCmXU78wy9r1Q3bOmVjCPspB8LG/r3AbRWgy0g+hkz7eQxinQOPBDTx
	i9DxmzAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSvr-000391-Ah; Thu, 13 Jun 2019 16:50:35 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSvh-00037G-G8
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 16:50:27 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 9BB295416C; Thu, 13 Jun 2019 18:50:21 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 795DD5416A
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Jun 2019 18:50:21 +0200 (CEST)
Received: (qmail 54717 invoked from network); 13 Jun 2019 18:50:21 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 13 Jun 2019 18:50:21 +0200
To: openwrt-devel@lists.openwrt.org
References: <20190613163133.40306-1-zhouyousong@yunionyun.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 Xx5IapIyoA==
Message-ID: <e087e1a0-6745-ad56-5829-c84106082336@wwsnet.net>
Date: Thu, 13 Jun 2019 18:50:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613163133.40306-1-zhouyousong@yunionyun.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095025_699808_A9E11082 
X-CRM114-Status: UNSURE (   8.62  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v2 opkg] alternatives: special-case
 busybox as alternatives provider
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
Content-Type: multipart/mixed; boundary="===============0166658944712095691=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0166658944712095691==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0iK5oczvMtXwTQu9OoZdU308Yf3jWhbvp"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--0iK5oczvMtXwTQu9OoZdU308Yf3jWhbvp
Content-Type: multipart/mixed; boundary="IP9jtgIoGgqY8qFUEX7lQayQOknXWPKKe";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <e087e1a0-6745-ad56-5829-c84106082336@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [PATCH v2 opkg] alternatives: special-case
 busybox as alternatives provider
References: <20190613163133.40306-1-zhouyousong@yunionyun.com>
In-Reply-To: <20190613163133.40306-1-zhouyousong@yunionyun.com>

--IP9jtgIoGgqY8qFUEX7lQayQOknXWPKKe
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Yousong,

> From: Yousong Zhou <yszhou4tech@gmail.com>
>=20
> Almost all busybox applets are alternatives to some other existing
> "full" utilities.  To lift the maintenance burden of enumerating CONFIG=

> symbols, symlink path of each applet, we special case busybox here as a=

> known alternatives provider.
>=20
> All file pathes provided by busybox will serve as fallback alternatives=

> with -inf priority.  Packages intending to switch to using alternatives=

> mechanism will also not need to depend on the same kind of change be
> applied on busybox in base system
>=20
> Signed-off-by: Yousong Zhou <zhouyousong@yunionyun.com>

Acked-by: Jo-Philipp Wich <jo@mein.io>


--IP9jtgIoGgqY8qFUEX7lQayQOknXWPKKe--

--0iK5oczvMtXwTQu9OoZdU308Yf3jWhbvp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl0CfskACgkQQuLLvzou
ZtMpog/6A/5f1vSa/T85xw7j90M8K+GyblPxTyvODILTeBgg1QkPXVM0spHJM41r
4GUOmbzjrzr/azeDRwT5wWBgzzEA9NRkaJk3hSmi0KEdBnECDmzktOn+JNz6g3VN
fwZeNfo2R+vhXYypGs/XWjwatB5JAe7F79R8FzUS0yq9vszSCZZlUiE1KbRIr1cS
h4ERszq0ex/DfPaqXolJs4mFHqZpx/LVC2wxBxCJFHaBIRCo1n5QluyVYhjIqc6B
EzEhUUBJKA7fFRD7mcOB8XhR5L4U+R5J132gBZLQMTwEocHW4n4WYPteG/t+qlCR
Dfbh6UDBve0254PfdL34/wa4TVgI4DzL4RVX6UM5KyViSLDGW3wvb2vPeKJhFQmK
UgJaH8CTuuwUg50CbB+JVZpBCq/p+YhZiadenuhMhJE/i1hidZ7PZYOKMNBfvU2b
0yUk6bP66XEKtjZalsWtGRzbSKsPiadLwPkxvVg+uCBDPFwjSLAz8jyBTWnFSsIh
9nwtnafUoSm+ZHOpg4l6MsnSr88erKu+aKKc+pm02TvwlOEVamoIAVxBYw84eJhT
CtdG/lWQLfLiP6Z1QpuAdJE9jI237fAuzbxx+ties2SaapLUttDzmk8kUTd881K1
Av0vdTOdY8jDmuVlJYZpqFITkSlyfJwrdZTLrO3IQPTO8OQL74E=
=mia4
-----END PGP SIGNATURE-----

--0iK5oczvMtXwTQu9OoZdU308Yf3jWhbvp--


--===============0166658944712095691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0166658944712095691==--

