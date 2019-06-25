Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE75D55769
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 20:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C4pZxhs4MUF2jJb6ykkRB3PVz6yVGilNGLXm2L4F57c=; b=QilHexWhX4JwTwX2kpJvulmP7
	vhTenjK+BmhtCKdg/bZi/SBCM6fK2EQFkuC2Tp5OowXThsaZclLW3tZ5CEJ/UEMZMs1klvGq7ANq3
	0ipoxPgEhR7dZc+NMfyDUnkd/xL3/Gxeawvt+bXhjuwG95PG4gG6Bh0U8UXLoq+0gfs12hTm2FkgU
	GegPnGS++/YOAeNacvS9MMzsriWzqETp15a+3l9ZxnfJDzxyf/f/AcKLIUaUSo5rBK7Go9pdJCvwB
	lxYlXPDp6AvMHFB6LTwGfrhIMd7QZ+sMed2BjeKlAMo8I9/p6DEPJUlMT4q+cTgHO5SthYu5LNxxy
	qV/ie7BLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfqaO-0000oW-Py; Tue, 25 Jun 2019 18:54:33 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfqZz-0000mR-Fp
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 18:54:09 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 6F09F545D6; Tue, 25 Jun 2019 20:54:05 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 4B580545D1
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 20:54:05 +0200 (CEST)
Received: (qmail 12156 invoked from network); 25 Jun 2019 20:54:05 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 25 Jun 2019 20:54:05 +0200
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
 <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 Xx5IapIyoA==
Message-ID: <168b7d66-a94e-2425-00da-9ee7a6cc8e61@wwsnet.net>
Date: Tue, 25 Jun 2019 20:54:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_115407_686604_E17CE079 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Problem with "base" release repositories
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
Content-Type: multipart/mixed; boundary="===============9093705058398327289=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9093705058398327289==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="zhWcNFFFexihMBco4lI8rXz84eLnAx8In"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--zhWcNFFFexihMBco4lI8rXz84eLnAx8In
Content-Type: multipart/mixed; boundary="nQeNoZhsnKDfxspxbhKMxaI26q9CjVsD5";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <168b7d66-a94e-2425-00da-9ee7a6cc8e61@wwsnet.net>
Subject: Re: Problem with "base" release repositories
References: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
 <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
In-Reply-To: <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>

--nQeNoZhsnKDfxspxbhKMxaI26q9CjVsD5
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

another update.

I applied local workarounds to the phase2 builders to simply append the
proper branch specification where missing in order to avoid the need to
rebuild all SDKs first which will save some time.

Additionally I diverted all free resources to the builder so that all
targets should be built after at most two cycles.

I'll start to re-enable repaired repositories at tomorrow (Wed, 26th) at
around 04:00 UTC.

You can follow the build process at

http://release-builds.lede-project.org/18.06/packages/waterfall (the
purple exceptions are harmless in this case)


To make matters worse, we've noticed some network throughput troubles at
the OSUOSL gccfarm so there's still some chance that rsync uploads could
timeout but I hope things will work out...


~ Jo


--nQeNoZhsnKDfxspxbhKMxaI26q9CjVsD5--

--zhWcNFFFexihMBco4lI8rXz84eLnAx8In
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl0SbckACgkQQuLLvzou
ZtNK3Q/+O58ZqxSHeGD0rnzKBH86HPEZ3W4ZzUuQwnzQcARDc3kg0Gahb2+b2i2L
v1Uw55u4LsJ76HzpHrPalbleR0E3y+6bzTUsPYLgr2LfqkBlk9hiwt9dFDXtMeQ0
KOYyYDBKboEDX25mHsDfx50igttTVOARxEwYPctRW0np/d8OAmy31EpHq1xOPG0m
Qpi6lvgAxK6CGD90xp0TICG8fbSORAhZjvCNQWwOx1vhEDD/A70STc0/9ALjH/L8
swI4o81XUrgJpJv2VUfsuaZg5/uDtcIXRzY+JhWO+sOFWh3eNXq5KAbnUMrkQz8I
/JcEEuolrBlc/3L4NwjxvDi7ghj/1d7rgx0fqLXLytu7dEKfM/0jOT2Y5GPwYDUK
airJ07SBCqRVwgruDsgNezq0WTrAXcgA9xZF/HbgcVmCJ+WpLDuevhZN+NUkJwid
0kuM3QkNFYsAep0Cr2LbZW+35KJV9Z8EFQQfaM1fATUQTcEoXPNHYvbXRzeGR047
UQuBhAXZA3mMRuFpJMzwou0TiPOmUhVo7JbN6a9XCH/rVSHcGE5r11Si57KUTro4
dRyJUv+ZQyPqVtliwZEX6sTUTqSEJ+PDs4uwXuaQynxh+U3U0/LpgMDDqtwPNiC6
B7hIj2a+EXRzEyFSmVkf2b9SJYoFqoSCpV7CYeH5J6s4SO0haPk=
=aBmI
-----END PGP SIGNATURE-----

--zhWcNFFFexihMBco4lI8rXz84eLnAx8In--


--===============9093705058398327289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9093705058398327289==--

