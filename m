Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805D3D9C6B
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 23:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EhP18t8lW/9IAM5HBHjW5Hx5eXZP8AFbjO4WOkMBtcA=; b=Cuturn2Bl3sZU53uf7jd6RN73
	i+mlr8ODuo8k53VqF8DA9At1rEJ6SVLLQSepp6eOTKBgaFdCMkSlBIONlQYMQEKe6P1WC9QvVuCqi
	KAaLOlCz7XpzpaA2a3TD8HU1j3VW8sz7SPf6V0MWwtmZkOZVjxAi8FOM4IF73lUs7goR+qNipVQz1
	ocVbMfCqNS2Wd4GUushxy7Ex/Di7R9A7bXzxRe/y/yL7h8AYycngih4vnvV2dHGO7vCk6H3nXetLc
	e4N1iuCwNqJ7zD8nmGRANJjq0RrWI7dn9aGsbsh1Zxv50Ishetf39WHo562wIoRZ100e06fmY8kwQ
	4R8LUudcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqkJ-0004ZL-GQ; Wed, 16 Oct 2019 21:22:15 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqkC-0004Yy-1s
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 21:22:09 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mo6zD-1hiX6V2dwZ-00pZZn; Wed, 16 Oct 2019 23:22:04 +0200
From: <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20191016123722.70774de1@kosmio.komorska>
 <20191016181936.19ebdbbd@kosmio.komorska>
In-Reply-To: <20191016181936.19ebdbbd@kosmio.komorska>
Date: Wed, 16 Oct 2019 23:22:04 +0200
Message-ID: <009c01d58467$c1df9150$459eb3f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHEB4j9R3vp6W1iBwY5dRX5ebxvfAJ5nRRKp2zyqqA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:sZqDqP9tzz3FxFhXi5Y5DSjReReu1lJQEhLI6DWZoI6LqDBy6y9
 ExdV64qjPjxV+xyKtdqn3tXBPy0RmpBVHEA5g5sCbOtbNrm9MF7D887/LaN8sFYavXILdyn
 Tx5fXVsxhjHHMH+2Lv/0CTgWvBGRJLjrF28j6gvKmQf340L0d0SvJUvEvs9A60615O9LMyH
 LKgG8cyr2FhA00LN+/JFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gEhXeMni5rg=:v3qT7SFMps/5m2q+TUd+jV
 N0P7pC9N1OM75g6FhTME7PkSgnwon5ZlrlqrGYaPN8R6jEvvcqOOhdIvxngmipfrOMqycA7/9
 WCcqYTfeKK6JDwCELvwc8uDVLLUpuX7R2j9n3tnGOgdUs69FMssgBmqeIWEJXduS2AsdNi6Gs
 bNDn0rYhyyGiH02sqG/4p4u3eomS9H4dNCtX/ZuJvkwEq802d68rUyhAIJYlc+V32TzK2ghc9
 WlXM1ORBlDpObVjRsRoaLsPA+k67JNwEsA3kPIxNKfasf8iFPoBgs6mbnNZjYkG5t+D2xigSI
 8I8BkC3KLpVbkglu6fuVzBnHXG8Kan6PRphv3CVUfYA94VBgXF98/G5/FdwbVTGp5V3gON374
 xKc6ml5Bm1Z6DtkkEeNdyO4ZU9VcXxnfSFGD/G7JWqk+bZgaoYei5zUqsP3YDBXyNLxona3t5
 RreuSISPmjqMwiXpJzemuYeG43DzFLnVw5fnyvda05g4SAm+j8qnfsZp6ss1ikQ1b8iN4TG4i
 K0qP/VBltIYTqiHuMN+COB/OTVxoyF4G64BCdZq3CPgsiabYvbqjXzEtLS1bDlG7/2ZhzpthM
 Hc9gYLzm0ioWXCVEEVKTJDPwXEMiSR0RVjDBvrj64XHy75Z2OxD23eSd80QyzmUH04zmKmVG8
 YPBf7VkVQ9Q3IkLspOM03u9iBjPeliIt9DK+UJavRb2GCZrV9OuAvEYmiTrif8jEDFAlUNmta
 mjK9QjkvJfPNeS0WAeVUyXd7IhK9XhEuaeVURbsm6ubj7sHQWBDSTJ2M8ErilHOuIE8Ea4Mx1
 s1TsGTrSn3OK1aqi+WR/uG6CvxT+mzgYSwkN7T0t054ExugpmInZ6rT5Xn4wZkMGYMtFwfQHT
 0SocXff9UCWsEeqX6CUruI8c9jbnGR2gBZ7GqMm7M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_142208_390598_C8E74F4D 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v5 5/5] ath79: add support for Netgear
 WNR2200
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
Content-Type: multipart/mixed; boundary="===============8798939715123939494=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8798939715123939494==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=Q4oRZshmeOhwc+=-="

This is a multipart message in MIME format.

--=-=Q4oRZshmeOhwc+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> +define Device/netgear_wnr2200-8m
> +  $(Device/netgear_wnr2200_common)
> +  DEVICE_VARIANT :=3D 8M
> +  IMAGE_SIZE :=3D 7808k
> +  IMAGES +=3D factory-NA.img
> +  IMAGE/factory-NA.img :=3D $$(IMAGE/default) | netgear-dni NA | \
> +	check-size $$$$(IMAGE_SIZE)
> +  SUPPORTED_DEVICES +=3D wnr2200-8m netgear,wnr2200 wnr2200 endef

You should only need wnr2200 here (from ar71xx).

> +TARGET_DEVICES +=3D netgear_wnr2200-8m
> +
> +define Device/netgear_wnr2200-16m
> +  $(Device/netgear_wnr2200_common)
> +  DEVICE_VARIANT :=3D 16M
> +  DEVICE_ALT0_VENDOR :=3D NETGEAR
> +  DEVICE_ALT0_MODEL :=3D WNR2200
> +  DEVICE_ALT0_VARIANT :=3D CN/RU
> +  IMAGE_SIZE :=3D 16000k
> +  SUPPORTED_DEVICES +=3D wnr2200-16m

You shouldn't need SUPPORTED_DEVICES for this one at all, as you add it her=
e for the first time.

Best

Adrian

--=-=Q4oRZshmeOhwc+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2nifYACgkQoNyKO7qx
AnA3lg//ZTyXfyFzNbLkuv2ump6t9ob2vu1SpGRfsBlkXVkdxpZwJhYqey4ck6pU
JEChB1iToHgNqoFOVrC+md0KXDXbYqmWRNvyonUWDpl5NYc5+wAKSJ2d5kfYIMsK
2JX2TeKHbA1n8l4maC/QLgx80PSyDILdJB/RdlYsrs0PyaKo8/NdLodnriAgMKxk
njVMWeeAxbqa1GPpChDukBP5hNLxmlFoCwAk21m8RaJ2R595ftVtXT9PnTeoa4NW
dmTezCfOPfgqFqlgLUvc3gq7Q42LycZgvfsBjtaoyHKJB/mXGuoREbDpozJzL/V7
cYDSE/TD4R4cb/P6oaHu6hNDzM8uvY9RK3GAY8C4ZJzVFBLIa5noLGqs1BF5yx32
CDgSwT903KLCg4ycXDU8F1LLJ2HF9lWDlBNakqo6rWa/4KN/p4fGaFgN2bC8cWW0
PFDMl3VBPqnYjCS+Nkgn2B1sIbGAxKP0EYedb2EJ6Wxv0mlGy2q+tBAPvc+wVmeA
857NbVsWj3thlVvSgvZC78cb/zoABFrDIgPPPAG8yzRjEWFznwi5U/c71Zlmw/9H
cbmgWTmtG3Ubm8QA7JbdHIWoK24PLS1usHjHuFCC9IQrJX0jq12SjTnUqVwDSgUf
VxkeDO/gnSuq8chbKpEzg4Jb9YoqPgBrhwPHHgJ16UMi/t2KIfU=
=WQ4Y
-----END PGP SIGNATURE-----


--=-=Q4oRZshmeOhwc+=-=--



--===============8798939715123939494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8798939715123939494==--


