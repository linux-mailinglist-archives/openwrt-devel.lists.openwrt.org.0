Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD361E8BB4
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 01:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=plFYz4Pm4EGS54z9xGtNoQ/tkUOtHXXWJ723HmX/H6s=; b=dqK
	puLXrDjZuBMJTl9jHnEGMthgos4JBE8k7fKsvD8MGGCng6IPRMswUKSg062pkOjxQdkorgjhKbTjI
	PHI71M5cmE8XgnLKPpSigbunQZemJpWvDbhUybpKbYf/9bGH6ew94FqGBVBuqxFatxuccHum3ZjOP
	bh8eEAWs5KKmIuLSiaC0YYaL8wRXE33Y4TpyEPJhdfOIU3/jz3V7189y0l/eEIySEuwnZDl+myr5y
	AzUJn24Uin9Rv0tlHovK83KdDUDUVqOwe/mPHco0pkahZs/pcFSkPHG8GSrNTpoQDApBjwYson/v7
	5M7IB2+THju3IZziy2pLhvYM2XSKvqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeo3P-0005Od-Fh; Fri, 29 May 2020 23:04:43 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeo3K-0005OI-F2
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 23:04:39 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MiJIk-1j2hcK2HYc-00fO1D; Sat, 30 May 2020 01:04:34 +0200
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>
Date: Sat, 30 May 2020 01:04:33 +0200
Message-ID: <000001d6360d$84e01100$8ea03300$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdY2DTA12xaFQpEZRlWiuyIESalH2gAAAR3A
Content-Language: de
X-Provags-ID: V03:K1:JxXHPVOfrSoqxcjzhQF7uswq0tpxW23CnRXsJppj84Bol+V+ykg
 0NZAHeO46vWz8aRxL6lcG69iuudsxXqJzZvJ1EkZRfgVmGwEUmkYB0uafAxqFNVlmnwWdWx
 eIHigQct8EaC5Fky6XZQNoJFs9fgNCKUO2EuB6VaGNrHSx+wvL9+EoY1XTZXoDlKTSN7nmz
 tFG98grEpU1mXU4HtneSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MommyukUgY8=:DAc/Wix59hQyoeEtjqkVDS
 TF2kqSJNmnBSg5orl18e92lqbRE3av0RZiDeGpUgDf80RL0mS6l2XgTV65dYEx+aEJGC8srDP
 /pJ/LnroYCVpS7DtbHnK2PxoXih8/xgU73H6JWDwhrhj8e/NYzuZvdKtG0fN5qowJIP60toxv
 KcD60c6SvV3Dd2w2sc3cjp5T9Phr8/Vtt0ilr1uziYres2gi+6bBhvdCvOCkQ5L+vhMDiPdrF
 NcAqRFbpCdl3u2dyW/r/o/KxqKGbGYutUlps6gBLlWY7+Qx+mLISD05SI4wZ2E3Rw5lXajE1H
 HdbFJRdVIb9rDuYRj3CMNzzTEE5jwtWG7meL/eFn++altMJmlfj80KOt1V1V1BRTaZMaL+De1
 +zU9RGrAxJArdudwCdkE+acOldscIbX+pFVwAoNw1mKA5cKTsNaJHFOBx/Lau0La7yUkYoADx
 MyKO79tzz/G9Ip3Q9Uxdbe0rsGI4z4kg0OF+ZGLI2z7XM2ndfLViPrMstx00pd7AS+zjWYKam
 D13JeAC/bJGvz6vho94EUXICFzkRupWmIhlv2TeSUcwF0FJ/Joo9QdLhIHTU9Lg8T6PoJKxdb
 Ukim+aZWDBviyJuj+kL3YmfGf6TM195e9BTOHTA3zQgB0DcOtWbPEfHQ/oyYzd+EU84k1bdiS
 29jQubT+eZLVXznrZubj+taL8XZ0qcSAycd8K/aaWLwkPkfUuKkviGgglXttKDsa7nAtm4rhU
 6I8Fe7B5vENhuIlBCE0pHkovC4gEgnwP64TRB2rYvkM18HX3bCJf6CFXYl/xLXg3ooYp9CK0c
 NDYtCbkk0auTrhyoRYO18QSvz2YwNVv1ixDd9brxkPSBqoC3Lu7IqtMjHRjRq2omxufnEMd
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_160438_793447_88AC574E 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============6703072957372704924=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6703072957372704924==
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=dJsA+FZVpAyqJM=-="
Content-Language: de

This is a multipart message in MIME format.

--=-=dJsA+FZVpAyqJM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> The variable is used rarely enough that we could well make this a bit mor=
e=20
> verbose. "TARGET_DEVICE_TYPE"? If it weren't for the busybox config chang=
e=20
> (which seems hacky to me at best*), we could also go with something like=
=20
> TARGET_PACKAGEGROUP, as the package selection would be the only thing=20
> controlled by this variable...=20

Maybe just DEFAULT_PACKAGES_TYPE?

--=-=dJsA+FZVpAyqJM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7RlP4ACgkQoNyKO7qx
AnCI3RAAnb+0GnY4F0Q1Vs4RUS2Vl7mrOBRISe1g7RkoMv5HfvV4pWhKAT0uU4x5
c1/IJf3squRGnegsGPGjA91NU5507NNsm4xlFK8JOjpVxh8U3Y+RXJnhsw67Fxul
DHV8m6/y6I8Q3JWHrDs/V7i+32fsQJblSCJHkYU+W4cR//KqnGbMnRHsvK+HE6CH
ObaRgPxQU3ecXB0Y4/0vKzXRPBy7mmUNLhzMTQIfu0ZBvVkRAlrhfSp1JOjnlLEF
CqhvkRX9/1619dn63loL1khvofQW/O95ykwTHDyswIC05IcwpwBJM5l9ONBHhfSQ
vbYOy5pQfuGjb2eKzhK8JhejRbwFi6pOUoPkqbocaDHB+wEdP1B2IJtlmPOmXgBc
QB4jjobvW5g/H884KDo2tB243sVH6aq+j/RVs6IWtAjvvhrjGYjy0jqYVFiklw28
gnqgTMPx330G6rYhS4Erlm+vhV7e5By8EMR2IoyGmhDBRT+guJmc3ETG3maBSV8f
ateaeyKS6ykCp73IOVsh3ZUrbYhIU4aOKVcSHiwmaDRbMuycxrgYCkbHMuWTm82A
yfWnUnPU4QANrqL89LFrzKPcXaEfZFnS1ngXP0BcRup8FAsCkkHH1uIfchFwu67b
8t8TViRmDYPxFpG+NPvFLIOsIPVUFMg3ahI3lv8ODz7wVekSNkA=
=PBXg
-----END PGP SIGNATURE-----


--=-=dJsA+FZVpAyqJM=-=--



--===============6703072957372704924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6703072957372704924==--


