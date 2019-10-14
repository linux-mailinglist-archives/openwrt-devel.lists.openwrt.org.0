Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E0FD621A
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WnaI/5UlaAychhYgSpSUxjOKS99BdobIOSk/7E+G0dI=; b=VNtK3anvZnRTY17BHftKOVwul
	EGKQodYedBtQ5sa6ZZ9nR8ynEWgsBe5greE1RIm1WsZcWIvUJ8jegq+Dlhzia39pIfQBnfLFR0MAL
	haKVZHppu+dE6iktqrTnWXJd+pqfhyRjg//yovD/sZfttdOuepE72g/buKVdn5B3z0MEUI+mFb0dV
	yLQ0Xdf93GBD46FJfG8vyeuHtWCNPX+R17HAXaQC0NPzi2HfWi7uEKbXlokA8grltbMUW9FTY2InG
	UP6CDMI9DLRkzIAI4qxh7Kdqz2KVBmsk26NoxCECTkm2GShXfem4/rlcLQB9Md/Fkyy8JIQS1IOgI
	6eI6DUNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzCd-0008T8-3s; Mon, 14 Oct 2019 12:11:55 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzCV-0008Sd-7D
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:11:48 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M42zo-1iJzCQ3A80-0005VL; Mon, 14
 Oct 2019 14:11:42 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20191014104701.207324-1-mail@david-bauer.net>
In-Reply-To: <20191014104701.207324-1-mail@david-bauer.net>
Date: Mon, 14 Oct 2019 14:11:42 +0200
Message-ID: <00a001d58288$8a7d7aa0$9f786fe0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHvpjY86j1/DP94kfwinZ8alhrMWKclxHWw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:LUJ+jo3nxlFiWCp19TMEZ9bjlu/a0+FnQth8+LAQ4n4BIphoLPX
 0xthr4p/Owx4Fd0ht0V0nzHlZIGUZaFDu6RhASqm2VNt/EtlhwYeEAhV9ip7OKUQWzNSy7v
 6yisYu7ws6ByLokl5fC9RDRfOY03PDg6CE9jCJ3W+a/uXmgDeeCcUv99U1OY1X3G7VvYVAU
 kv3Ua5q9Upx5BR2fM4QRw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MWxQEy0ZjTc=:SPsfvcOPNj1QsjpPEXiY5H
 kHizBD7/2uG20kVBBxiNxVSpKQkXFQybVv8mjEQvw37FdIA3KDALfe9O59DmxsLBRsf18JnCn
 Uoemo1PmKVIMf7BCL4wQPaFM5OknH26sULUsTCHyjEvoHZ+5n8fcMg04ENuzBRRePy5pUhkUp
 30YfWEtEGgA7tTLXYsO73ECuO2pbzmtdWMyQDbmbY1cJEh2EBVDhObqL3RsEneKFT8TGVvuhs
 WDAmAZUCHViTAirsT6DLsjIAN9wIza/eULtQQ3iraIL1wCMilMfgkgn5nwJIHCSv/2IB8m2rZ
 RlafcoxtK6G7RNZQrGP6IfILnfaloTiKqFFvhyQ2aZipXAYH3nXDwGB8UiGHsKMRUq3LaD17E
 qLbIhZzoc5pDt+YTde8FYJzXH0aeUAC9Tsv3orT5yXXLfBGkLYAmK8l6krFvlwXsgGbWi7xol
 sum/53xFJGUzu/sDIv3pCOag8GyrCURWFEaz5Sn0MeiLMRnMfXPfuC0PzZtxEEWK+VtCkc+k/
 BgkVYr+byCXrBiBIv2g+1lyDCMnIBNDLvYh5XxHVJSerlu+HHD6qZuw747v1eVDxLB2z08flw
 Sm2+KkN9wUGyVyn2/jl99uCsm0fe2wWwqOtJjBdP8YqrvDYqzCLJvg9ARt4kdc13YYTj13AX0
 V9w8OyNuZfMXxLM8Rq9AzQIPIfGHeIosnn0jrhy0HA7zGUcQTKMtfBX/PEvs7hDlCtDB5h/2Y
 bRpSpP0bUAebPEM/7Mf7cQBTrnasDo7DTRKHLJsG1/nncDX6sZYI5dUjuk51FH7Scet2iJyoi
 B4rU5u4P6LRojiY04J4Gqd6iUeNi0f94ZD/4gQ0rHHBn2FUlxyCWajkatyVK6aGIVIGaxmr9q
 W9wX9WzXEG0SE6xRT/on4XeiOHtCxnTKReLGEA+Is=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051147_557403_9E99CFCC 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: correct ar71xx boardname for
 UniFi AC Lite
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
Content-Type: multipart/mixed; boundary="===============0075508949036288433=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0075508949036288433==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=PUFlbohJFnsOG2=-="

This is a multipart message in MIME format.

--=-=PUFlbohJFnsOG2=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of David Bauer
> Sent: Montag, 14. Oktober 2019 12:47
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ath79: correct ar71xx boardname for UniF=
i AC Lite
>=20
> This corrects the additional boardname for the image metadata to the one
> used in ar71xx. The previously present additional entry was never used
> on a running system.
>=20
> Signed-off-by: David Bauer <mail@david-bauer.net>

Reviewed-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Best

Adrian

--=-=PUFlbohJFnsOG2=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2kZfoACgkQoNyKO7qx
AnB5ERAAvJ7u0dx0Vs3yP2/jyzcl+1XeY5LTCDrRbJZmdxr6GRropyxngffMlr9n
uu+HjTTtQh8LcXZxz0Andq2qyTJ3DZC7rr9aSpHySKXGCNwFn9fofgBN6N/I8WXV
zq26f77MbvXtMCBT1QTpyuclZQZ3GC3nFGg10scbg09QDB2X36h1Xk1DBYsLiz03
ralP6gJB0KGjIXDi/OB0lQS2of8tf28rMVtJY8AWSW0MKQSsXNh73v3J2Ga/E83A
Il7Hb7VU8ohfivX5/GPn8cV2lnF68SbC0yZTl15WXkjMIEXoHdVn4se/MTTXSK/6
Hdef1v2kDFpl5ObREARsDhv/TjygOPuhjhNWgaBHNDLyFdnIqQqbbyPIOQSZPPgY
fuWD1SYVgepacUmi4Yqtkb62mbqnXYAk5Km2wmWfpH55VJROW4VlBK+kIhqxr4o+
POtmYWI7MZbLOoZ7LCx+g8J/zC5f1ISMM71l+E8sLv1LAt0lP70UKXorWVVyHGt9
TGhJOIu30sZuJJ0l8hR8qKQXubfOxtV5KfB14Q7KudUtCWnck+TiBiNmHv8w1Xrh
BZio2mWn7NH6zZpl0qcG6quWc2DIKV5WUf8qe+Eg7ucX5uQkgRDfi6AZ6PnKZgSn
E0R/ejFgtB5Riky01gMTisappb3BD0/PUBkh4VYGMV7luCjZgCQ=
=QOX+
-----END PGP SIGNATURE-----


--=-=PUFlbohJFnsOG2=-=--



--===============0075508949036288433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0075508949036288433==--


