Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD7B1DB555
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 15:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QcRHOAHxVZyKgzh1Dg/q86xkKwImwTS41YUCJGZFuwk=; b=eX5t2xqu5PKkR4BDHNkbBCX0s
	8JxXStoeTS/G+FTP5466IhPsLhN8ysfmJkcVw0+2U/Crt/S9mPZeipPzezzDrq8qi/kqVbPyPv8E1
	FLAtv4WNjVZ5jcAoY9B2LQfyAg4Cg4j23iq8FCSbGMtAGc7I8JJEfMVQ6W7l0IdqtieWXzqHvSkh7
	a1jYez7Y8p6Uj3HLiMM44oqoJqEhDBUY2p+WOABeKSPqekxnAIc7nlM0vYRaIhn21c4rNlgFKQhJZ
	iaPtqMfHEL2w9gLqlUx6c66k50IYB9RCiLMnhksvRMPWo8eYL229btkNwmA2ZiKXeW4tnPgFLvr5Q
	IUJJDkfUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOyk-0003jr-Ai; Wed, 20 May 2020 13:41:50 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOyb-0003jJ-Ik
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 13:41:43 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N4eOd-1iskiO3vGx-011gTL; Wed, 20 May 2020 15:41:36 +0200
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20200519234551.6681-1-mail@david-bauer.net>
In-Reply-To: <20200519234551.6681-1-mail@david-bauer.net>
Date: Wed, 20 May 2020 15:41:35 +0200
Message-ID: <000d01d62eac$61861c80$24925580$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHfz2Kl3A82asFFC2MuogPHyMhYMaiduQBg
Content-Language: de
X-Provags-ID: V03:K1:cAXsnXsTQ3MsrqhRy5rc673OuJdXfbfCGs3sKZvSVsOmVIyNjNA
 vO1FGdcxC32rFd6Q+zWgnkVoCAVtlGcgvj4zXDxgOfFgzTRBRczTbnmUegeqNk7LJFg1IwG
 EnNZdGoihFPI2/pBqHbYh4Cs5ClMwk1ABU4NzfIlDxEzrh2rnpt29Iw3y0FD4iEekV9I7fd
 NkO42+UFwFoE3AR9ILSXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aefVIpssVAY=:o6EMxxXL3PgTRl8V47y1B8
 QzMtc0MnKVNYYT/05Rw5hy3oVEP1o0MlWKABKHIko8fA7wch+uMirY+S7ohbFGIt6TVOzlNi1
 ronojdvKSZLY0Rxula5TX/SPkNYqbwXTfmSjed0lWh/+akkEhIlv4awoneSQpcshk8MBe/49r
 tQ4QeaQ2q8JRY1tH8NRffQYX2WECZ/L3WEQ37Qy/848+pNQqVSN6xclM+sLy9lTgsS7yHkF+r
 A/jJIwqjT8E+aZ69Lf5EdPc291d5up0rIrQxkR62oGAmtr7sM/h3jcvETRqb2+qscdInYPTGO
 6tS7ULE3QwuAzfVw4oI1NHExahVQFutzqt0QIFu0BsGWpqDEl+q1bWYhPanjJUGeApYq6dbmD
 L1ZLeDZmJ+zQmmNE9HmsxXT8lsmFZvkQ9/LGxW01NO/GBTOem5MZt/B8K//sVfO5I9NtXyD3X
 +adHqqYH5hWE3AK7O6+E1aWz/QxP5Q8pmEcSlVFEuk1bjfTgfbnvqLpgSBYZh9wJJ/c+IMr/L
 lG+8Yq5H8iM2fRNZGoIqqxm1WLka/W+BHw8Z9D/qS19RP9qQ4lc5qCXErXpbElhgYr1pD9+av
 Bu99F4tLT49GVtRnG1a+7/C29MO0a0tRENhJTqSkSALnQCkbpi8jFh1zmGvCwxkO0BgGySDWX
 1setGiZGgKipZxTKvmrzZbaK2POQUHszN7AVZW/V8pMULfxKb9uyh8voIAETjixKOT/j9ZwcM
 n7zaL3mo7QoUcnpFVjmZsYuOFAHJshzSxIm87OF69vab8G1h9ljQEd6Iz4rmvg6e6UTdky7ol
 rMwX9mhrwGXKMBUcsAeIXZVlnHxkq4k8vOY+I/qqcQS4yWHXOtP3DelSC2MCFmRbjMRXSUZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_064141_913588_14FD353B 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Enterasys
 WS-AP3705i
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
Content-Type: multipart/mixed; boundary="===============1946859384438567584=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1946859384438567584==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=kZ+1Pyi0MPTQtI=-="

This is a multipart message in MIME format.

--=-=kZ+1Pyi0MPTQtI=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

> +		label-mac-device =3D &eth0;

this only works if you set mtd-mac-address in DTS.

In your case, you need to add

label_mac=3D$(mtd_get_mac_ascii u-boot-env0 ethaddr)

to the mac address section of 02_network.

Despite, is there a need for the DT labels flash0, flash1 and ath9k? If no,=
 I'd drop them.

Best

Adrian

--=-=kZ+1Pyi0MPTQtI=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7FM4sACgkQoNyKO7qx
AnAOxxAAuyVDUB19AIo0MTSZ4NM5eCbUvSwCdWTc3sOD9LsaQwgJYzYRtRCPBDhS
DF3p+dl9j4qZqDIF5wahs8Eglz6LTkAf8RlPkxPCPjuGK2ySF5oIY/PfLyTTLFn6
bK81w/nxU+Z5U0yMbN6r6mlZRzvGTr+HNB6IPUsb8xznDzbL1IBL2wvJnS5VWEMj
o9rV2PTjN9upihtQ/hne/ktC2bFKBJ/HsrFKdoVfrrszzNNKOsG28WbYfNV/SzrW
ANh95pt7kYlmBkBtkkh7V65DA6S+9OTjDnDPaSgaO4tdM9nU+hb4QuoeLMtTal76
Zu73bMJHVEiPitytNksKJp6vOm4GVuqctn13lmt5FkE4l5USKT4NIlFcORZJiPjV
5aMUjh05H+3R+tIcnbS5iFxCprCFsj1IV4ltmeuNHGoGvPCAwK/CUbmls5odAmyp
4A7NCUJ6O1AyyJGPHG9ye/1gC3sWkPkECoek+5mXb04STvln+Av8+D8CRpRUQJKr
0cE8ogBQQs2476QwvsWz/JZQqNgodIUitnGbGZMOddFHALbfOmrqCYbg4yM+oB49
/fFAMMMplTtcF8JcRNBUJP9eDohigx26YEEZ1yWRzLcEqB4M2JhSKYr5ZRBmpAug
rFSTnvfpec92NQoUDVxQKzqtVJJO5XH7a3Pzn1kaa+TKHLHf2Ao=
=/FHw
-----END PGP SIGNATURE-----


--=-=kZ+1Pyi0MPTQtI=-=--



--===============1946859384438567584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1946859384438567584==--


