Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EE41D21B6
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 00:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adBiW/Ma/OHwHaq8IhrrTy3tRF+Tk3x/eq7TeQQp91M=; b=ENWqSAfythRoK1pWM7P03ZrG2
	htVoNJrjUOjROC1606R3KI/5SaNVuSYbipOQxPPcHaN3qt2ZIBbyav81LilQ3DUkM2apBBeOkXyBB
	PMADDEr/BD1lRwtafnXFaWYq3Q+q547IzgNMghH2waspSqgYo6RAqS233BvyPs1hxzD2LRrUEEXz2
	2bkSNMYlJEDSVpmpiC9ZjFAUULfvuloIKIplC4bM+lXTfTOJVQvsoKgSS276A3GU8rktRqmLulVBN
	NTaPo2jUZozaGnZKERfejSrujC2VD4TmHXRm0VBNQiTtaONiLhZy6qiJy9GjYymCBS+jLTsRgKkRL
	MsunD8snA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzXg-0002v2-5W; Wed, 13 May 2020 22:07:56 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzXU-0002u2-6V
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 22:07:46 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mow4E-1ijwvd3CVa-00qQdL; Thu, 14 May 2020 00:07:39 +0200
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
	<openwrt-devel@lists.openwrt.org>
References: <20200513214215.4808-1-hauke@hauke-m.de>
In-Reply-To: <20200513214215.4808-1-hauke@hauke-m.de>
Date: Thu, 14 May 2020 00:07:39 +0200
Message-ID: <01ed01d62972$eae3b350$c0ab19f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQG6Rztn+1y31bLEDoF6pRs5VCtNd6jeVqzA
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:NT2V5Eum3WwsYjUSD/xz588Agj6/CwUqMIpaNEiVqzV+IRGWQdV
 525P8tUeHSfv5RLQFb7onmJZ3ople249hK7rzIum6GdtpjmRFQp1srESzO1sMVNtFKqu8Ho
 jzZEI2QuH8lwUI0/mtMrsLfgZsSmp8KiWsoFckj1rF068OtSF1oTyHFxu6fWzeD1aK7NjbY
 UMqW1gnosulH8YEQ8XvMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nxzgsH6CSWM=:GdOkrydEFdUURLkYNqAomL
 g4XZSAaXMZvHnevzVuhRp2rzajPCtS/VdeBEQTSCKqHekY6RjqDoyi+lrWVDv4aHKHXB/PDeH
 JvupbI5mLZD1xvIa1CmmrO9pVkZRI229nDxe9nJkxoKNYlI1dr5H7Jimlb/EN+NnAx2+Kt4rA
 /vuofy+mY23VRHTEfhYjN0TUCu12NTUj/6UhXKCo/LRSzZCGVPmknTe5h9rh9Rt+xE2PiZAB5
 N2g2V68zQLfsNCrImIZdp549MiKEcGH4Pz/kHEuYK2XWLetqZcAn94372qO3k0kW3fhSKICtP
 YahTydW20Se0CzLNMtP0nvW3tsiU6+X9XFGd+xbE6PDUeLavq8H8xIO11Dh+TV0awkFL8kBDT
 M+WYcSGwKobbrcWlqrrBadrMLF1AvCeyWPt8lU5mMU1mqEmIcxabwv+bHNKrKTfzZEWQ5jcUP
 BiL6UTQE78Oog4A/yYyB2OMW9Mtc6pyr+8edBZ2NkDZu26Xm8tHPi+/w72myEyH34gQ+/TneT
 GbbpRvQX6PTCu41RkIXY093md3X26qtKlwHiCI7JtJdamV7xxss5yQsIzfOUnMl5obKXCDsJz
 gb/xqDEcyOyDonS8FyGJ+N6tTBEQzP4LfOsPngL07GkBfQZ5LZV+as/iwl+/7I0HZPKFqnfCV
 OdYmNik7P/r2y8q2e5UKSldSr2eS0mA+3RVNRvkn1fLnK62u70MDYq9CZfQ0r68agqfA29jIb
 Jb0aCcPm3cBcZsGAPGVTvqWUGkFCxfVFQIWSQYVqAG8PY1hZNqdw8T6p+Z/jnhe9E+JEM5e4t
 HGIp1/458M7E+hdhyTwt0FL6xf/ctA6pCVm2Pho2DhP/UIO2xaZbEN4ps7/Lk6eadgy/95B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_150744_536325_01707CCF 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Fix ubnt_edgeswitch-8xp
 DEVICE_PACKAGES
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
Cc: 'Tobias Schramm' <tobleminer@gmail.com>
Content-Type: multipart/mixed; boundary="===============1786227945930051798=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1786227945930051798==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=lKLrYZwLIWOyRB=-="

This is a multipart message in MIME format.

--=-=lKLrYZwLIWOyRB=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Hauke Mehrtens
> Sent: Mittwoch, 13. Mai 2020 23:42
> To: openwrt-devel@lists.openwrt.org
> Cc: Hauke Mehrtens <hauke@hauke-m.de>; Tobias Schramm
> <tobleminer@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: Fix ubnt_edgeswitch-8xp
> DEVICE_PACKAGES
> 
> switch-bcm53xx-mdio does not exists, use kmod-switch-bcm53xx-mdio
> instead.

If it worked well without it so far, we should remove it :-)

Joke aside, LGTM.

> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> Cc: Tobias Schramm <tobleminer@gmail.com>
> ---
>  target/linux/ath79/image/generic-ubnt.mk | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ath79/image/generic-ubnt.mk
> b/target/linux/ath79/image/generic-ubnt.mk
> index d056ab6783cc..de2c18becd3d 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -150,7 +150,7 @@ TARGET_DEVICES += ubnt_edgeswitch-5xp  define
> Device/ubnt_edgeswitch-8xp
>    $(Device/ubnt-sw)
>    DEVICE_MODEL := EdgeSwitch 8XP
> -  DEVICE_PACKAGES += switch-bcm53xx-mdio
> +  DEVICE_PACKAGES += kmod-switch-bcm53xx-mdio
>  endef
>  TARGET_DEVICES += ubnt_edgeswitch-8xp
> 
> --
> 2.20.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=lKLrYZwLIWOyRB=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl68b6UACgkQoNyKO7qx
AnCaWRAAjXS0Qg0m57qVwbgsDdCnGhUoUkDhDis0qFIXOnhrcoRd+2xDnFEh3Mmp
cqpn37J0pryYl9QVuXl5K0n/ZLm7GWLkoCGDFPCxpN7SXZaVS7g+9YsYkca9RUHt
3f3vaUPHRuOyTg/FwLTmlkUzQwWtxeNbxK3CJeGLgeAY1eu0zZ3hs6esIiiZlaGe
I9/6u/5S0PXucY3PGQEOkrYfyqqGXXVYOmoizyulUTm4WQi4wXSU7a+v+E2Y3S4Q
Xo2noIXFqy7ZnM2Gx5oyMLrDHhG9Wms+6AqVSaGC1jfH7R0qwhJZdSIFz6MPVDt3
HafHzjNgXWlXsO9WZ2cxoNPJaKlVuPSnPCNEV9NQT3NgbZg+3wDTWqOqgtqk+giZ
klDtwa1u0JgIpr3zhZ0u7+Y7pNrbZKzICfnx9p4GIISwx1Lyhqc/X8T9Ycd+dEDp
eemqpX7qDOMkhVymO2i93qPtUxvji9aIV5z7cX6eXkry9b7q3iltykGSGE1K9T1b
WISHUXomjKpIgiAsg0xaLBxQfVuTrAMWI2z4NLtRoajvhkgamqTJ3ATWMP+W3k5S
bHIWUhq0iOaDJHEckhHgNR61crrE+Nh7Gy9ioe4qUiVzMVn7fxw7NMre7mzwcbME
jI3jm3VxD27vvADFdflQuBAH7COZQrzuvTFONYXnnxBj9xP4Pc0=
=YpyG
-----END PGP SIGNATURE-----


--=-=lKLrYZwLIWOyRB=-=--



--===============1786227945930051798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1786227945930051798==--


