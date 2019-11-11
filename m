Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DAAF7326
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 12:35:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RhOteEYfmPZnLakJeBaJSljzU+DbSBiqLyIvkgT1QVM=; b=I94
	xXBkmscngmaNMIANR+Vb1XIrKprD4ouGhpnhM+LDITmN+st/6XcU9pTfC+cW6rsakH+isMaDjmhg8
	qm9TwmyjH9yucxhg5o1K42IdL5IcK/sNvH/dgaQsSCbeYrNJNHqEK6tCesDgWLLu5C4jlcr73bIV9
	hrfJ6BCeivm4Yeg2dlUEDbiWY/5ezLSKiD5LxsiH4Y7YlE5ffO2uyYoihQkVCXY2o7fmMbl8VAWrZ
	C0j4oLS8uNmQQEkAKckUFV+p5YJyJ2MWhNEWhcjZoTEeVMxkeAtP1g0K6fxgOWXOLU8aqX76vVFdQ
	ZDtvSULy8ks8v3tf4qa9YvuJva1lfNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7wG-00015x-9Z; Mon, 11 Nov 2019 11:32:56 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7s1-00010L-2F
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 11:29:23 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MgNtR-1hyf7y3IMR-00htJZ; Mon, 11
 Nov 2019 12:28:29 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Karl Palsson'" <karlp@tweak.net.au>
Date: Mon, 11 Nov 2019 12:28:29 +0100
Message-ID: <014701d59883$24819ef0$6d84dcd0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdWYgkE/EUTCumcUQ5aNualj6M2H7gAABGeg
X-Provags-ID: V03:K1:QPxa2a5KBOCpFxu/ENdxXcKlhtFVokp0tx4R4riU/1Jvy5qEo9Z
 guiO9GVDbPJp1WQNasKsWRdtln2vJ+gGiMQR8Y3nnm+E6fRNia7ztMwdX3hWZ8JZnVPBoXh
 clt4pkfQjSVCI+7ClcLUIgwXYRN9yhy0TvBdKtBG1fuqPJI3vSvcVYqzF8OS/xoaSXSZggO
 FncItvgUIF2f+Jke5OByQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KpUSzcDjvaw=:xMHRLMpvXUTAF9WTwvZsHe
 +KdU3GEP7/xq4nWVNOlkNflAXtU5ju5NML/yGNUMDRhbyidqmWP85jGBjwwKRsPlsTa6LXRVh
 nGvejnZ654CqPL5BBOu1X801mcADzh1zWnqQZ+EipNktboTPn9TCt4nmJnlZ/I55vRvFi4m44
 QbezrxJ+x26acixAPwciOg1EXGpXIP7B+H1xDkkz0tzq2UJf9rXShdspljT2oEqAAoKHMMPSd
 8jka6G8/8JeFpndYwnmPMaQ6yvQfOTi4MUAPx5c7E6ABcSbLHmjCWdAbMRAzlA2sx9pZJRaRu
 eNTJyawPf27H/y33mm66/7nEV3+QY6xCB4L6BcSJWlm+OsdODFT1USa1KCFfg7UshM6fu/mVg
 KjGpjaFhCY0NUN3p2i26d7QyK5BiOIbLCQzyszgtWKs5d1euLhe7Wi3AWGAnpXse2Gyei3P3Y
 5E5s5DOCltpS+Ai9MBVgyApbuZ/LE60HMRV3qzquAIfwxKMbrlxiv4fNg+13AhNzPE9rEKO8f
 XehsykibZc5toalVODWgcElNLLv/X/oUNP2vrWBekufU9tyst5KCz0EcgamHXgSLOWU4Szvxa
 wtic8+QC0RK/3lOF5b5fxmDc2M1VYlNe2HguziMzeUYS6lgBf8WYV/2lZYlP9ueVkNNCidDxo
 L9J5A5BeCR5p58+LKhgsRBXggLOwbHL/n2vq7bTbXTaSbn5V55Gtu4hmb/PAGzvJe6mPO+aYb
 vaoyxqiKQxmZDQERklpMtCvI6f6PcyqMMVCAdkAprhKhxKYq9YWzHhfo5+3377wEr3EnJeFEk
 T+kvo2X3qf1Ua1Qh8sf9jZEjsM1GFdNJYbT3PAeD/56xD8wGUIK26h5FDu2dXNEZfHDxpnTzO
 T2PDaR2Oa19sw9lBxdD81QAuWGBpRXYNT/oM+iea8=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_032841_859788_511BA8D1 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: indicate initial setup
 by uci system config option
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
Content-Type: multipart/mixed; boundary="===============0114446157259343846=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0114446157259343846==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=hwc+ZxfiliMb0H=-="

This is a multipart message in MIME format.

--=-=hwc+ZxfiliMb0H=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Karl,

> Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:=20
> > This provides a uci system config setting that will be set only=20
> > during initial setup. This can be used by uci-defaults script=20
> > to determine whether they are run during initial setup or after=20
> > a sysupgrade.=20
> Given that it will be set again after every sysupgrade, I think=20
> the name is unclear. (I don't have a better one)=20

No, it won't! That's the whole idea behind this thing. At the beginning of =
config_generate, there is check whether /etc/config/system already exists (=
simplified for this argument), and in this case the script is terminated. S=
o, the option will _only_ be set after initial install or after "sysupgrade=
 -n ..." (or when someone deletes his/her /etc/config/system manually).

> You've also deleted it at 90-xxxx, so good luck anyone=20
using 99 or similar to "be at the end".

Well, I consider it good practice to _not_ use the last number. It will be =
easy to move a script before 90-xxx, but if for some reason I don't see (th=
ere always is one) it is required to run after, it will be easy to do. (One=
 could as well have chosen 95 ...)

> Having it baked in makes=20
> it hard to do the difference between _first_ install and=20
> upgrades/reinstalls.=20

See above. Achieving that is actually the goal.

> We solved this by having a uci-defaults script _set_ a flag.=20
> (_not_ baked in) This allows scripts to detect that flag and know=20
> whether it's truly a first boot or not.=20
> With your setup, as a script author, all you know is that it's=20
> the first boot since a sysupgrade, iff you run before 90_end.=20

I do not get your point here.

Best

Adrian=20

--=-=hwc+ZxfiliMb0H=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3JRdwACgkQoNyKO7qx
AnDF2w/+KFbIyLWISjsztI7EXnv5vsPn8e7m/AvMC/VfGCSFoaVha31R5qJEBB7L
Slv4rp8IFm7WPeVheMqGrTQRWS3zI2WP4SwVJMb6ipaoSkra549fZmR37sW7Cnus
wPAOLSrTwvSqBM1Bc2MkHpd7MSq9CUxzrUCs49XpYPjiIxCg31I+8tBIAqNUuWz6
Sc3bWM3P/VyNLwuHzc8yPVSZw+VMDBJThcMWq7pruRly3CyKV50fewUYx2OOurJF
IPL8qZCvfdEWDIYJqNF+NNsdIM9TV58XFfs96tLQooD1z8qGK0iGjz8/S0D6ihpM
UPSdjlNtNslytMH86zfJ40VuZKR81MeEHgZ43F9eYajFicIHpGLo3l5juAxRIeSK
NTog3gAnA3gYW31n1CD2cSgOTxbsAaGpQizVgDfIhwVD7jL6V37xLdfooB8azGKg
/osRGkmQLjAZZvKN6mXceBN/l0n8bUlvDzcGe6J8533yOo1DeFd+kKGsgwTFW2Hp
xNeFC3vTD78c3SnQPiP8cFek++9fNEZ4JCDE0pmMpkEIRoFWKeK9vqXklhprPDOb
kzV+mDs4/h/ER+Na66CSgduY2z3352SiUYQiJrJDRw2fcFCvjLONYIAly2X+CAPO
bMi7d4PndhnhH5OhdJvoVOWKx2sLax32cJwd3zBI6zw5q6VO8Vw=
=YFGP
-----END PGP SIGNATURE-----


--=-=hwc+ZxfiliMb0H=-=--



--===============0114446157259343846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0114446157259343846==--


