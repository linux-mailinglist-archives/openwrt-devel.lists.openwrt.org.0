Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5612E1E893F
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 22:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b9zVcAKv2rjrbr2ESXJ5uCsPjU2U9rWvaslLnUX9Uws=; b=LmQIIsEGzBl4ZPRfrtENkcOWs
	4E1xZ/DM5Z+OWMKrso0za8HGs/ohMyHirLg/eNKM7CX8hF2s66bepPKOM/I40bAFdNWjnB5KNyoWy
	/Yi3sTRZRzgFitsNIN05Ha2hvTV2fbiLCvyuMs8ODscr9fSL0uCzHItXvKZzNKUo9/fM1yM7aaUqw
	qk3MSdL4YIhIEM1c7KKC1QKhJ2JbD1L3F5xFSsxsaa8UFJptySgQiM2k+jcSySavNQgr9Wr6YtcIz
	2vHKWVu+aCKt3DyYx1l8Ey+15g7YHy046o3iqL8r0XI6waSCAwmlCs+iFy0o1b/uIICHS3iC1hjuJ
	yNgKBri5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jelzn-0007E2-JE; Fri, 29 May 2020 20:52:51 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jelzh-0007Da-GF
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 20:52:47 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MhDN4-1j1qP22uuo-00eHzv; Fri, 29 May 2020 22:52:42 +0200
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>,
 "'Christian Lamparter'" <chunkeey@gmail.com>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
 <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net> 
In-Reply-To: 
Date: Fri, 29 May 2020 22:52:42 +0200
Message-ID: <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQExd1SFNnzajrRSninYrjkPzRaXTQGNh+MSAgy4bU4BS7qTm6nh1tcQ
Content-Language: de
X-Provags-ID: V03:K1:a7d8ouJkR4EOtDyM3Ap7DWDoyQbJYk2rCznWMt3QOBzfy+e++xu
 g4Q8Pb+OrrpfDnjkEQIYRtEUWgWL7KXN6bO5BPpr4BJ7jc7HbV5esZUswe4EsYeXtn5b3v+
 AGN5tb5aYlwf+HgA3rUdEOIZBcPOWO8edyRmqtfZxbtZL0P19cO5zmHwFrMgXcBdTf/Ylwr
 gK5XsPQ59ZNBhyxBKRrVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r/oTulLnFG0=:uMqsrhutjg+Ugk4eGxb5So
 +8VrAnPGh+ssRv7nzBUYbtAhwfnHWvg29QQs1TO9aU0J1MIP+YvagsOx/b6ta12G/8fflGVI+
 DpMKNnpOcraC/tM1Wi8tqksxN4/MGPecCEhVLTGJvghFegJJiaIxAZzoljPyN6DWgV1Tjoatw
 ZLmU47eSL+3mrVzBzs7i+U+x08vwSoSauZQUtKiJ91Hh2bKdztHyp0+QU76kEEy8F0qtQfPBm
 GPm++7lG7O15iJRTvAhXyyuVkPstmnHv6S3gt+3mfY2C4oDyXsc1nYzwShVHNs4bPUIc8zV6/
 u8dGL3axZpUg8fI+wsIMOMrITiHB+mcRe2eKYDpi6lPLNm86emptGM9Bvw8R1tZT+cMbzWlJQ
 NGsTZPUa4hO+xHk13n1JGROABm4VT6BIArs45dCIcbDvkDUap3or3SrzfmpqaDIeBtsJ6d41y
 Jf9nLAtVjfezbpDISODUYzU/Tau7CpJy5JOHEThMZ7j67eQRsmBlzsySWvnDCAyIoB2rlJtAj
 3NHGZ6w5WZA1fGXnLVBq79GUPHohij1H2+8Xj6CCwY6vKVTCO3Rjdb8wSmKGbVXl4sB2OLNFi
 FtFBEVwEEoBmYlb9TRsNH77Ga8zlonp3fvocPkRJzBlcSgXVHrccxU1fVALmboWjxDkk84zOh
 m+s+nJkdqX26ldVgyeXHMxFLrVw9Tvp2UY3vCxzlmQPPq+s+dA6ABpYjWMaoo0/QLJQ7cPU/r
 6N121f51Z92fAZTcE5vv4jTojXgZDWS/QKjR346M3aXoWHmX5DjNtOSmLtRxlww4R9wcYQ7p+
 rT9QiUfKtu4xe5hy+4ohIIYlngyTtxxiMWxTh2kl5Ol/liZPL778wjDLW/PeequahT4Qnzd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_135245_826376_AF714730 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============7451968163397836289=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7451968163397836289==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=ycPRuctal/yKe7=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=ycPRuctal/yKe7=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Or we just drop the variable at all, and do=20
> DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router=20
> at the beginning (!) of target.mk, so targets (effectively just 3 of them=
) can just overwrite it with=20
> DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.nas=20
> directly in the few cases where that is necessary (I'd rather use DEFAULT=
_PACKAGES_BASIC etc. as names then).=20

I've pushed a quick draft of this approach here:

https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/devicetypedrop

Only the most topmost patch is relevant. From "make menuconfig" it seems to=
 work as expected.

The if/else in busybox is not considered in this patch.

--=-=ycPRuctal/yKe7=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7RdhcACgkQoNyKO7qx
AnBnSRAArBbUqRUmditOTqe0JAGfcrWl2rjCcZu9HTCqdFQUzv8Vhu5dOdNPn971
rXfCAR4jHv+Dr7e3Yn2enYvYpXp3WlZR7hhpRk0ZZuixBpWzeuqgg4cP/qUFBrXB
Lz38yVfSD+zSQLJJVTtwjhJR0l4e05onc/JP1W9dOnV0OxzEJ+rnIzSYOgTEUX4o
hr/4cEFIOFL4tVjntj3G950AX4piABdMPq7941eQ3SwFExIxPObBy+46L2bvj1cV
fFq4P7aAVPiUtHpgwd5oKly3cTdHxxIUoKwNzdHKHjFMU3or4YYEKGkdzTR11ROa
YdCgn2RXRRnFO77t+HNhpShHi06CNio0FxLfkWSqOZZbjLwl6GHV9tEcjAVRLNmq
chAfRJHvFA//ueRMaFpbrBYm2MqtGMPjqcO0omwkpRf1itn9TuT3+cG1r6QN5SZ/
AzqEs97u/bZpKNZ4deJA/kUxlp6KkKzbKNlaz6IIt4CoJy6+yNbpEHWJjZnm6wNh
2smuM5rIoAE5Q7C3I2Dpd2ttHXh49iff8kblT2R3qFlJ8KOLlpP09/9DsOag1YJt
GRRchgrTMPY1TjCQnBFBYzzfhufUdcPfIRTsnXDvdd2tg3EFRBWXFJaC/q2uf6Ns
+iouSIo10tfIl3Qx7P2fDpBukjLdlopq20/CRRecQuiD2FgWQds=
=KUb+
-----END PGP SIGNATURE-----


--=-=ycPRuctal/yKe7=-=--



--===============7451968163397836289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7451968163397836289==--


