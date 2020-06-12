Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F1B1F777C
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 13:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m388T9lBpVI53ZUi7jCC1UAKTs0fIoS6GaqrzvLESdE=; b=ke0ufur8s5EmBToYCG9DZROD6
	x907O/vgHNH8txsuNvVn5vFOf8imdhRNCs6zwntYEybZOgnnWCFB2MGUjHkFRwqm6/XQRnC9ParXa
	zPE+TJkO0pBMmdrzX5LEg6d4bVqRsc7tUlJtZAZThDccfgpfHsZoQu7rG/2rJXOL0oua+82MTsiDt
	JpngrtInzRXwecbRIZIZy6bgUeH+0HE2T6k4IUOtyO/OlVgqij/uWMy6b89+Tp1WWCTMhpbvcJX73
	iZQrePBPAeFlwRHD0DtaYXLnYJyO8GKIxUO4Q/InJT0Wcqw3e5FbImgvASzmMEz2lnyrQ4eRi0sgK
	k1WOL4q5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiCi-0003Ga-Q1; Fri, 12 Jun 2020 11:50:36 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiCO-0003AG-It
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jun 2020 11:50:18 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mail@adrianschmutzler.de>) id 1jjiCL-0006cO-Fb
 for openwrt-devel@openwrt.org; Fri, 12 Jun 2020 07:50:13 -0400
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N1feo-1imOU60tGi-011wE5; Fri, 12 Jun 2020 12:42:42 +0200
From: <mail@adrianschmutzler.de>
To: "'Heppler, J. Scott'" <shep971@centurylink.net>,
 <openwrt-devel@openwrt.org>
References: <20200612023654.GA37114@centurylink.net>
In-Reply-To: <20200612023654.GA37114@centurylink.net>
Date: Fri, 12 Jun 2020 12:42:41 +0200
Message-ID: <005001d640a6$333cf4f0$99b6ded0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHqrhbhDKltCXi70+/ldCz9OLzoDKir7SPA
Content-Language: de
X-Provags-ID: V03:K1:KxqeNXmjPYO3lPUvx2mzFEaLWdoIU5qPlUc1M1mk0Jolcj50spr
 hcm4MSKdrPG5txykXV2kSYNQg3vONSAyROjIctSAbPDP5uDQmmI02Pi29t+/T34Rr6kXqlV
 eXn5Hv7ooFUUUX7P4y8Ss8+Z7YcGxIOxSlJgedBBFsfwzcTuby158uS7NPeh6L9F77GweIm
 pnQkboMplrAAKb8JkClgw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NaKrbNqcvbs=:YYajUwQe40WsuQkP1npLaA
 tW+E74lN/ZSzzUveIxTUabzHvl0WLN5qOERqIKB49Wp6LliitWzrV5J+eLZIgrEL7guQu7BSw
 atF/SS4ELdplu5yQdGs94m2JZN77A7L5lZyMODDuVng527ZsSaFPXsyNK/FshEzZMVwS8uepC
 6WhVfrEqysmitO8vOxt7+6kv+a9/UzJQlAfzKdKxYt5J2tbW5tBYez1t83HrHW15HcO29sHuF
 52PoU5LLGJ2LlsZjVfXmKTNPrR1zENkR+UY6cBOzCX9ZMitDuLLRVWRRbYlCbDZJfo2d8591c
 4rgaSpAC6kW3liTZvZ+1mW2i32OUB4eBC9EhLplGQcrf6u2TYySJoAWEBxHsx2ydWuN+tZj15
 ncI82c3FfwN8rhwGyDON+KnLMeMbXlThjnV/ZW+QURyQmajrg8pWyWMocP8jwUhcs0GpEdj3o
 XwOyS9iRoI8wdu53J0oEbpIFi4uY5TnJs8zhnZdyo008t8SqR2RkksYygj+72US2nO0uIkcMV
 xZ9SNN5I2AreCs35FggWXCibtu36CZNFgx65Z8GwT0sqDbdJzmrDMjGqwk8uzYlKOHqgP/Ny+
 6cKbZpFsYkSzF5rv54n+uco0k9fuB4SVGBAS9Fi7xrrx6QHut2qPfvFI5AbzdkM242y6su25z
 v72P/2x6f7c1zBI4kWSesP4NLVjdU7Rdbl3QBWzDVI7T1ojcGA/p8DkLfuY29wyvSRGp/dIAv
 c9HeOYeByFaScibpxU8nSTNkngoEXjt+dI0hS8DBzPBFcNSb3YLKXjX2GzTNziq5YkX0keFWo
 bvdKjtiEsEMO6rxb5PAWACkHz58b/5iqJ7TtFQA2WVTf48PK/fufwFLd+FErsz0msh3kdAh
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details. Content preview:  Hi, > 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_045016_805627_2633B904 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix port display for TRENDnet
 TEW-810DR
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
Content-Type: multipart/mixed; boundary="===============6774001357536109751=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6774001357536109751==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=uygaQuA429SJy2=-="

This is a multipart message in MIME format.

--=-=uygaQuA429SJy2=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Heppler, J. Scott
> Sent: Freitag, 12. Juni 2020 04:37
> To: openwrt-devel@openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: fix port display for TRENDnet
> TEW-810DR
>=20
> Was unable to communicate TEW-810DR port order was inverted similar to
> the D-Link DIR-810L.  Tested - Patch corrects port order.

just to make the history clear, so we do it right this time:

patchstate "1":
Your initial device support. Both devices had a "Portorder A", which Roger =
reported to be inverted.

patchstate "2":
I provided two patches in my staging area, where the port order (for LuCI) =
was inverted for _both_ devices; let's call it "Portorder B".
Roger confirmed that this port order is correct on the DIR-810L.

patchstate "3":
I pushed a different patch to master, where only the port order for DIR-810=
L was inverted. This is the current state of the OpenWrt master, i.e.
DIR-810L: portorder B
TEW-810DR: portorder A

=46rom your e-mail from two/three days ago, I was under the impression that=
 you tested with patchstate 2 and told me that the port order B is inverted=
 for your device. So I kept it at portorder A.

This patch, in contrast, will change your device to portorder "B", matching=
 the one of DIR-810L in master.

So, taking this history into account, please confirm (either just to me or =
to the list) that your patch is actually doing the right thing and then we =
may finally settle this :-)

Best

Adrian

>=20
> Signed-off-by: J. Scott Heppler <shep971@centurylink.net>
> ---
>   target/linux/ramips/mt7620/base-files/etc/board.d/02_network | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> index c70e4ff8e4..f85b7cfed1 100755
> --- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> @@ -25,7 +25,6 @@ ramips_setup_interfaces()
>   	ralink,mt7620a-mt7610e-evb|\
>   	ralink,mt7620a-v22sg-evb|\
>   	sanlinking,d240|\
> -	trendnet,tew-810dr|\
>   	youku,yk1|\
>   	zbtlink,zbt-ape522ii|\
>   	zbtlink,zbt-we826-16m|\
> @@ -109,6 +108,7 @@ ramips_setup_interfaces()
>   			"0:lan" "6@eth0"
>   		;;
>   	dlink,dir-810l|\
> +	trendnet,tew-810dr|\
>   	zbtlink,zbt-we2026)
>   		ucidef_add_switch "switch0" \
>   			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan"
> "6@eth0"
> --
> 2.20.1
>=20
>=20
> --
> J. Scott Heppler
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=uygaQuA429SJy2=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7jXBwACgkQoNyKO7qx
AnBy4A//dvNVMsGTy7IQfmZx2XTPPovDqoya4zCX/X99wCDqxY5SYHK04++1Aaeu
wXwkf5NobVeRVZVG+lUVqTd48o0jC87f/24Ig4r0AlX9kxwORMEC/hbW2mzjPayC
7Bv7EKv4UAXeijGD52hJs9qLIxIzK1ZUXYMeEI6F7I41AMNNuYF70Z+Odqle3leQ
7lgWzfwpY8y77CTi2tJtaKW1wI6bteeCJSRZNseTr0a9gXwYcL3DwaM5DDyE9reT
woHpEjxihHnSvDx8BuOellrf/QqF08AsBhWYKw59Yk8lNeKBfj1tkI341stLEVmT
Z9OvRyE+4ZQaUJ2rTLRYGRWXzjh3HlXAV9cejpz+DUFn4hGcdO8AYB80VsbZELn6
DBHJCKJURTtvu7QdHsUg9Tw839Zfv2fD6eMULNzdeJ/t6k+jAMuD5gvhaVVkleFc
8vEx0BLU3CKxeoT0GC6tZ8ABDu7lHlTWn1VyaMVoulpi90+xUm/M+JTI71CWQhCN
W+7LG43OfDLybGaPbu/imxajMR74pvdRWo2iGW5YeRxJm0uZadjDru0wpXkC0s/+
0dSkY2gOrw3Na9yPG7Zl45llxJjJzx3NyZKGhPqwPzcT+iDPWFfT/n5og9E3AyFC
GVFD+cEX1azIp3QOdJd5vDqSvDdOOd/sfBirxHa7/vXUbhdZaCk=
=96K1
-----END PGP SIGNATURE-----


--=-=uygaQuA429SJy2=-=--



--===============6774001357536109751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6774001357536109751==--


