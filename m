Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDB01446A2
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 22:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kzSKRCUF2pMVHLQI27E5BTxFyPZhN5ijx/+WIyblmGc=; b=ukBgLb2RjnPjEHquxZkCXQ94v
	2G8t4kY2v6adjKv7MMsltX7EB27jgwiOVUW3lJtf/CVocm7YBpB3bWrSuVqmztm0IFFtdoadjFs0k
	ev2gYndptiD4gEYxQJH85TMet2D4Pp2iK/Bv0L/L6Ut97KOwITblQJsd0Fz+vRIJ1uOW0cwmQr2o9
	37yZi+xvhqe6SWRyfmQE176SqJFoJGJnTDD/GTbboHH5exhWJUjfzdumlBmGYHsZWazfNg1uuBiWX
	RrEekJ2DxFW0/gXIL6dobdv4oRR0kvTgEW5tmMJJlRiNKy6qVZnLTLncGuwtkRQF14nyMGvHtEBOK
	VH7q5jgyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1O2-00008l-AY; Tue, 21 Jan 2020 21:48:38 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1Nv-00008R-0d
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 21:48:32 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MWRZr-1j8U7z3Ggd-00Xwgn; Tue, 21 Jan 2020 22:48:28 +0100
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <20200121205751.1810-1-freifunk@adrianschmutzler.de>
 <f882f1d1-a751-1bf7-6e16-d46e2ce1d00f@david-bauer.net>
In-Reply-To: <f882f1d1-a751-1bf7-6e16-d46e2ce1d00f@david-bauer.net>
Date: Tue, 21 Jan 2020 22:48:28 +0100
Message-ID: <00e801d5d0a4$842ad070$8c807150$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQH5t2+Tr3nKgbg0VLM7Mp1co7rsmANPK1upp5NgWcA=
Content-Language: de
X-Provags-ID: V03:K1:AOJDJQ6ATo++REtxL5FpQuRXkqBTNW1isOJMSJ9tDa+07zphQhX
 Nbxsarh2YoPDl43BjI+ZEV8QQvYCMWIUSB+5vKi4RKe0B15dIHNw2Gs2UXwtCb5LyD30SNQ
 vsG82kg8ViLvZFzyLdTIJWDK930fnpAkXeEleyCNIpJwRKUic+vTgg2zV9XqQSp9uMSCkw1
 VjJoZNeEQcqa0saMNanXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Smcm1PWKj/A=:LwgbYwWbxNOazTuH9+u1jr
 aLNzLzsil/4kxLmi0UplEB4btTsZqzws8vbZ/eq7JDtK6Pq0VaPmlFPUNyWkxJu4AX/Z1pIsI
 BmqsuKXMvZi6uZg7nunONDdxhCkXvRiKPA7AbMNF4FvIZGBNd3YFPPRAKgk/kuI/p+FgTPEAk
 z+h72bc/C+Cc9RwrxtMgDLsk3pFGL8Zp+b4a7JsNUYlT/ZdCCIngRj87Pf5fOIB7brYoGlNyX
 8Nkpd4jWDv1aZac/r3RJDAWZoPzO/swd2MA39WqCe8m8xkmvEfDNG/vd1vBuemE+7y+Ub3rQQ
 AovuxK4nTQI32ynR6sJZwH4JI4WWBHL0gfCpPEYClIWazIF9ijJ4p5cynu3d4LgUEU5zmOlxo
 mhDConIlW8f5ORts0Rbqu+2ZdFQ+b0Fl5hxPNQIWERULCh12HCn8Xouf/NzCMOO4WRtcr0efG
 vMTvd1l6wnw58metu+6RZHPQWCTynNIMv7s44YxvJivu2EqFc7mG0sIcrHPApq5oAVpfCbVhp
 si5eqU1i/Wjh89eYMN72D2GBway77bXAK+IdL7TlrGurZSdhBn7x7k/v7oe/BKtAV+OjG0oRL
 g31+jeApcMEOrtUfeH5GPVLTJxYPe/xLnz2tfuHCjpqFKmxJI35wUOKKVmp+HWwp8IMHzGIJf
 SnXIYQiXhyPInN6x/0RJwla34RTKQtMdQZ771jg10pVK6dhojJnecizfTZTFK8ZB9utzDeQti
 P59WuAv6BhPtZc5VBOivXNdoOgrlNe2eZjlKifWZ/ITCWdtSKm6HMvcjeZtNAsnAA48U6mnV3
 /zleVQgDVXVBMquDTNdX6zvoQPs0elE5Fog4yEb2uxy5LtcQCycRkL3OrpoWXphKHiUQIPlyj
 +eVPNo90HS60ytuAqvG4BDVdPsht6Xl+ZzxHhd/qE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_134831_347114_5C2A1F09 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: move lzma-loader to the end of
 available RAM
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5480997651633105725=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5480997651633105725==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=edcWyymdwEPK3C=-="

This is a multipart message in MIME format.

--=-=edcWyymdwEPK3C=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

> -----Original Message-----
> From: David Bauer [mailto:mail@david-bauer.net]
> Sent: Dienstag, 21. Januar 2020 22:19
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: move lzma-loader to the end
> of available RAM
>=20
> Hello Adrian,
>=20
> On 1/21/20 9:57 PM, Adrian Schmutzler wrote:
> > @@ -10,7 +11,7 @@ define Build/loader-common
> >  	$(MAKE) -C lzma-loader \
> >  		PKG_BUILD_DIR=3D"$@.src" \
> >  		TARGET_DIR=3D"$(dir $@)" LOADER_NAME=3D"$(notdir $@)" \
> > -		LZMA_TEXT_START=3D0x80a00000 LOADADDR=3D0x80060000 \
> > +		LZMA_TEXT_START=3D$(LOADER_LZMA_START)
> LOADADDR=3D$(KERNEL_LOADADDR) \
>=20
> To me it seems the LZMA_TEXT_START argument is overwritten to the old
> value by explicit declaration in
>=20
> target/linux/ath79/image/lzma-loader/src/Makefile

We've tested it for the Mikrotik PR, and it works with my patch.

I can't tell you why overwrite works this direction without further researc=
h though.

Best

Adrian

>=20
> Best wishes
> David

--=-=edcWyymdwEPK3C=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4ncaYACgkQoNyKO7qx
AnBxHhAAo2VtTGxdqhLaIeuA2RORa+9weSCKlahJgZe7QmZBtj5FGQ82XhgvruC1
+tM2BGvJV1Op0ehOz49kYGgCzlqSIitfVhtO020uCFcVnOCBVx7cqacfDLQAZ+cp
2VZQVxhk3bfCWrdRnQJx4nMNYVbMWsCLmFcHoQ5Bb8l6lPx8d4TYsqlVyqIFct5M
fXasUNcxq9nn7NTOhmRW+8D75HVz54olsfdBR5tz0w7P8r/YaONX3LL0ndRILI0/
zBzB3WO3UMzRM+OQUGfZIBuzPZ3aX4Sp+jTKWZyWQYpoxQczimIlE9mL/MhAlKUk
JOhWSWqlXBYiRulGaPyHfCgIEvnu2WgKFnzHWszxURSN5Y9TD0tX9VBNMOBZLYY5
A63oZ+irIMDypilLHPBO6b/z5GAd3R2yMvN/oWPB5JgB0uJwzsA6JTbjFqsx7EDL
Rv/fGxThuam3i6tHw1g+tl/21NPZAu3NCtKbod9WdcrWiUlfnWnwPSafNGD6uY+E
+P7xoRtDdqZfsDrqmml7B/mMZJFi62V+g5SGrYHW8yDHreL1mvnUIrhuAAPLPP/4
LUeJ5vC295K4JqmcsRUrjnMf5AQCo6xGRE1BRYGYQUMvEnovGy6W4Ky26VbDGfBh
JL6XQtzMh1HwTjQv1CDI4mLryxoISh6x3TvgFeXlxZDW525cakE=
=MGtm
-----END PGP SIGNATURE-----


--=-=edcWyymdwEPK3C=-=--



--===============5480997651633105725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5480997651633105725==--


