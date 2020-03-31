Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B624219926A
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 11:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=alVBWHJ2D3nPkD0TpYLg7w7em4TsDFHJB6U3FLa/sH4=; b=NxWi7HtdNuH/8Ot4HX1pEq9u9
	/IjhKt3SQGV+hpXgU4juI/8pYsjcgoBo9WiFdI3EM9M6WuIBFNbUxTHagZCrDuYggwNdSUpuyG4Tj
	MPRKSUKT+lEN7X4lsFBbIjSbBH0/7vRp3t/2FlNDm3Pum+n8PYH1FFRjo+vh30Pw1ejUuOxpBe4D4
	8MelzkdNFgu0Mz0iVKnERZrp2W0qGaN7UE+dJEySPG1PdFhb79Dd3jbIcdD1yEVQOvMJkyt7grBqn
	mfGgt4j+SLsYtfhP1IBYGjEBAQ1KHQt1JS+ThNtCuL4Q7llWIFWmQuCbhXzo44utUPA9eZmy1kaY8
	kxzQP19bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDO3-0007p0-8F; Tue, 31 Mar 2020 09:40:47 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDNt-0007nt-Gj
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 09:40:40 +0000
Received: from desktop ([188.194.85.158]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MI5YN-1jWiJj0CCV-00F8Ft; Tue, 31 Mar 2020 11:40:32 +0200
From: <mail@adrianschmutzler.de>
To: "'Jo-Philipp Wich'" <jo@mein.io>,
	<openwrt-devel@lists.openwrt.org>
References: <20200331080757.188294-1-jo@mein.io>
In-Reply-To: <20200331080757.188294-1-jo@mein.io>
Date: Tue, 31 Mar 2020 11:40:31 +0200
Message-ID: <000001d60740$6bb90fc0$432b2f40$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIziy/ISkpTozarpEGb9euL368Tuaenahew
Content-Language: de
X-Provags-ID: V03:K1:LcDB0GeLstrZpr6M6mw7RpuJKb5oLkraLMIiLEpcRwd2WFG3Wcr
 vajEQkY/8QVsuLgyfspUmhJFd6zpISesFi583zg56822qUiFUj3VEC5Fq2noKyKTaC3Kwx2
 IDH4CYzcKHXfLUWW56imUuP+B1bXJVtw9TqJ18T6pnHEe2TqlGqjnJS1r3eARI4AxSp78U6
 518cAPB5mdZL8Mxjd7CYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zRyeX56QVZI=:WmdMXD3pwjfdHxbU4c05ns
 qvSiKYyXt1WkqWtrwptOyO42LIRDn0X+HMI/pPhJaJ/ulz5horMvPRmwtqifwv09EheEYVTGz
 l2LWm00IqXAHkOd1K8Zp6YKpX9LUjTAFx3kL9ALuxD1oMitV19YHTVtBLJXX3EaogcMDMdYzc
 HYoHOXwqtEPHfjU1fS/5z+tqMRENW10nW+YFSAT6o4RF3xP1y3cpej3rw0wKZ9xexLbzDZb8p
 nDiOff2sXvPdbKBxOtdpdVPFI5uv48JSO83Di+yZjn7UtLky6r/fa1mabIPfKIpuCdIi/R/YC
 KduoLkO9LzR9dAe+zp2JgGzIDz6fxy3fW6e5jBpSQSV2WcSzCzuRat6WbuBCviDEiytRpKUAR
 wutb2+R/9EBj3twsPZhXHwDjHvSvmCG7fbuJj/3IRj5LXOC//Opw7W1OEG2TDidZ3F6spRy3I
 DE/2M9US6sPAZSO+v1Q7wuWMmTYePq/Uy7INyuFFY3mXrIV17OUM/zZXyUCtjYoh5v8uajVQT
 ibmOfs25fpjjW7QbxN626aPkh8gMBx44nIwYipy6EKU4LLGVoNBoGdJ7PtJhWBy+cV8MBnqqc
 B+iOfMzfPcODjujo3cHCzZR1BxuTEi4MhG7JlMYqcntHg949Vm4nKQcBqJyZ5/aXN+NGM46OI
 1Qk7+lx+9cfr5bQqMqE8lEyA6jEQag361RHtbP/+NIz4F2HosfBqHt5T/EWpHRLA5H6Cv47sN
 L9yJQQQdo+LLtLP9uCfJyt0kUTlyxgVhlEbettS6UrJ2OXk2vYx1wtwnDHZtDIP9S2aRKbtNN
 AUZOvwmj6jPIB78ECpY97RzbdhvqyjonoXvisgm2h+PtFVsFwuW2nJfijjLzmZb4pDwQ6bm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_024037_856978_3E2B8B88 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] target: drop
 616-net_optimize_xfrm_calls.patch
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
Content-Type: multipart/mixed; boundary="===============8226217497377134808=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8226217497377134808==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=QrEw3y7hi2iRdh=-="

This is a multipart message in MIME format.

--=-=QrEw3y7hi2iRdh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jo-Philipp Wich
> Sent: Dienstag, 31. M=C3=A4rz 2020 10:08
> To: openwrt-devel@lists.openwrt.org
> Cc: Jo-Philipp Wich <jo@mein.io>
> Subject: [OpenWrt-Devel] [PATCH] target: drop 616-
> net_optimize_xfrm_calls.patch

shouldn't the commit title prefix be "generic:" or "kernel:" or do I just u=
nderstand something wrong here?

Best

Adrian

>=20
> The conditional check introduced by this patch may trigger a NULL pointer
> dereference in case the result of dev_net() is NULL.
>=20
> Since the purpose of this patch is neither sufficiently explained and sin=
ce this
> patch apparently has never been submitted upstream despite it being in the
> pending-* patch directory, I propose to drop it without replacement.
>=20
> If the performance implications of dropping this patch are found to be
> significiant, it should be reintroduced with proper description and bench=
mark
> results.
>=20
> Ref: https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2943
> Signed-off-by: Jo-Philipp Wich <jo@mein.io>
> ---
>  .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
>  .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
>  .../616-net_optimize_xfrm_calls.patch         | 20 -------------------
>  3 files changed, 60 deletions(-)
>  delete mode 100644 target/linux/generic/pending-4.14/616-
> net_optimize_xfrm_calls.patch
>  delete mode 100644 target/linux/generic/pending-4.19/616-
> net_optimize_xfrm_calls.patch
>  delete mode 100644 target/linux/generic/pending-5.4/616-
> net_optimize_xfrm_calls.patch
>=20
> diff --git a/target/linux/generic/pending-4.14/616-
> net_optimize_xfrm_calls.patch b/target/linux/generic/pending-4.14/616-
> net_optimize_xfrm_calls.patch
> deleted file mode 100644
> index c64694ea3c..0000000000
> --- a/target/linux/generic/pending-4.14/616-net_optimize_xfrm_calls.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -From: Felix Fietkau <nbd@nbd.name>
> -Subject: kernel: add a small xfrm related performance optimization
> -
> -Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ----
> - net/netfilter/nf_nat_core.c | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> ---- a/net/netfilter/nf_nat_core.c
> -+++ b/net/netfilter/nf_nat_core.c
> -@@ -90,6 +90,9 @@ int nf_xfrm_me_harder(struct net *net, s
> - 	struct dst_entry *dst;
> - 	int err;
> -
> -+	if (skb->dev && !dev_net(skb->dev)-
> >xfrm.policy_count[XFRM_POLICY_OUT])
> -+		return 0;
> -+
> - 	err =3D xfrm_decode_session(skb, &fl, family);
> - 	if (err < 0)
> - 		return err;
> diff --git a/target/linux/generic/pending-4.19/616-
> net_optimize_xfrm_calls.patch b/target/linux/generic/pending-4.19/616-
> net_optimize_xfrm_calls.patch
> deleted file mode 100644
> index 6a5801027c..0000000000
> --- a/target/linux/generic/pending-4.19/616-net_optimize_xfrm_calls.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -From: Felix Fietkau <nbd@nbd.name>
> -Subject: kernel: add a small xfrm related performance optimization
> -
> -Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ----
> - net/netfilter/nf_nat_core.c | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> ---- a/net/netfilter/nf_nat_core.c
> -+++ b/net/netfilter/nf_nat_core.c
> -@@ -110,6 +110,9 @@ int nf_xfrm_me_harder(struct net *net, s
> - 	struct sock *sk =3D skb->sk;
> - 	int err;
> -
> -+	if (skb->dev && !dev_net(skb->dev)-
> >xfrm.policy_count[XFRM_POLICY_OUT])
> -+		return 0;
> -+
> - 	err =3D xfrm_decode_session(skb, &fl, family);
> - 	if (err < 0)
> - 		return err;
> diff --git a/target/linux/generic/pending-5.4/616-
> net_optimize_xfrm_calls.patch b/target/linux/generic/pending-5.4/616-
> net_optimize_xfrm_calls.patch
> deleted file mode 100644
> index 952bf690d8..0000000000
> --- a/target/linux/generic/pending-5.4/616-net_optimize_xfrm_calls.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -From: Felix Fietkau <nbd@nbd.name>
> -Subject: kernel: add a small xfrm related performance optimization
> -
> -Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ----
> - net/netfilter/nf_nat_core.c | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> ---- a/net/netfilter/nf_nat_core.c
> -+++ b/net/netfilter/nf_nat_core.c
> -@@ -155,6 +155,9 @@ int nf_xfrm_me_harder(struct net *net, s
> - 	struct sock *sk =3D skb->sk;
> - 	int err;
> -
> -+	if (skb->dev && !dev_net(skb->dev)-
> >xfrm.policy_count[XFRM_POLICY_OUT])
> -+		return 0;
> -+
> - 	err =3D xfrm_decode_session(skb, &fl, family);
> - 	if (err < 0)
> - 		return err;
> --
> 2.25.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=QrEw3y7hi2iRdh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6DEAsACgkQoNyKO7qx
AnBwLhAAkLBUOYhbfLBp+xumQeQhGf5sexk3b28w5KtM9m/GUykjivBxoQOekcnM
GMQDNn8XAXwUHVAw9msRsCd+cCuc+FxYch28kZsWGyIusk8cSx4V2AtgQkH1PEAL
wRAdSI7QjgrX4Ca60Uju82WsmkXYQkrQn/Sc5blj9pOneBm/IitwWO6seWYKl+YE
bQjRfFMMHKbA8GIp02OwB4sISyYUXM4kifE1jo8F3XocdToD5yehA8kRdWGCwqW7
vcOciw7hf9pw267p7nw8afJtLovKLxP/OEMS2+tMsW8eQZigj1wrk5Vg6amNF1S1
5BdDAp5gIfv93TE/UMqAT1HnoHaZLMlhwAKZh4/2DhG3z0D56Kyz8JqzZEeb+/Bv
iqE/gRuIzEJACkm//MZ36dQ8XOHmXGPwbredais7m0f9sUAS4cBc2h9ziOLmtBeP
jhtWwYWMLytihd+j2m7ZV6OVqmSuMd9ORzZM+gY6dKJ0mUV1DsUVz/qEznmVzXG2
yoIdQXuZuglgMvgp1whyy+7TzH5iHl881r0ALQUPVAVofJ7JNo2EHpk7gP0aH9yP
iEOTLTY7/5XLFPsyghJ5upWThv0oXAVsLkqXIz3XEoyKZ+AY8ClCYN6DBBtpFUDv
quftGOVwm7slVOAGT0+kngBK58feUOETaNbFLBYZl4XlgQjvGH4=
=JTw8
-----END PGP SIGNATURE-----


--=-=QrEw3y7hi2iRdh=-=--



--===============8226217497377134808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8226217497377134808==--


