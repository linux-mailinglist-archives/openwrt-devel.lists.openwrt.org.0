Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7FCB9CE3
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Sep 2019 09:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:To:From:Message-ID:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OYBzv0uuujlUNhyC/9ijcfCRcFxGYuUvJLw63TrnM3Q=; b=OBH
	dxbB7dH1oXq8SSCHV2FXrGjcqXyHSUCud1PVJ5lD7sgjb/aEcBLSkECCtTEd27yvRcQxRsw6MlUrt
	ycNIh0pVf718KpDBZpW8SeidO6sLIRVyyHdA3I2SJqurJ28WwhBiBdJAyppXcO79vAeCnvxzti2aZ
	Eu3TAwSiyPEzZQ1/566LFa/hBE1j343yM1dnDY8Bo2b5eqQrE04T1X2336h75vGog6KAyKVHZlHA1
	DZAmEKSd4zD/uasrOtmxn6+w3g4s4dmVO2uqZOaetI14Jym/P3Rsv4UvObCLQ7NC05ZY2saX11g1u
	6jXPpcLEWwAuwdp1E/cFb+U3UcIIDCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBZdp-0000yO-Or; Sat, 21 Sep 2019 07:17:13 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBZcv-0000wy-1D
 for openwrt-devel@lists.openwrt.org; Sat, 21 Sep 2019 07:16:29 +0000
Received: from t480s.lan ([217.63.79.33]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M3Eqr-1iCO2W0ngT-003dIc for <openwrt-devel@lists.openwrt.org>; Sat, 21 Sep
 2019 09:16:01 +0200
Message-ID: <33816ee341ddf7d59aea750de63a57d5dc7ee355.camel@brenken.org>
From: Dirk Brenken <dev@brenken.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 21 Sep 2019 09:15:56 +0200
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:n8OF4C7+LlOWJWqZDrVAJygGOqoWBI+dE4UZF7je5Zx816z76M4
 NuQm/sDp0kXRAdLwRb92naDj78W3h6RLPc84ECs25mYbVpbZkHhd3M+eUrlnaggM+IQQizA
 h7qcV8Z1iJJ/yjYjYtWnnIye2zglzNEBROGlmYbpO96QEFD4/spgoLaUVSQ1L+i8DqfIVGZ
 WD0oIqFCC+uLQJgRczJxw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c4CgG58SqG8=:wQDhV2tAoOgwKmrtnPFf0g
 Idmk5r9Wb+7IUiCHN6mhRMxZ3dEOQ85ylY4tuiccSaYbvOkZRYfzi66aEo81oJeOT4njBHM5w
 cauNqz32d09Vvtar16xA8wgYvA8/Xc0Ug8Q6YNWwgEHj3qyM1BOCxdUrug+ppw5M+9a5Xfz7L
 8RCN6ivdas/M6xrU/A0Ap7gwE3bPT2RjbmskJfVbC7tHGyEea87g357tlaeH9ylO2m7nfne9R
 wjuKlOeIofUa56Q1PmYjClZMP0eAyW/+7cMKDHimu8c77OraasbUxaQQjRUDH+Y4pxpcGNWM5
 TudUUklHo9fDIbUPz2JPLLNFEA4diyCtM9o2gL/jRZxisyz8917JdgL0rJBEPJddSAcw1ep9F
 5jBSy/CXHOaE+GZIkyr4VNUxATx95Gzc7667dOkiIQYdI1Sgey328bYkM3hY66+eu8bK4j56l
 8mBVk1yz1oE+87/MDNmmqsg6OyeaA24YeIMHlibFeu4SRoOfYoF7X9IKsHfXo7l30Oso+CBBJ
 fIMEL2b/0pqBbJ4lt8wexkhIlM7tnKek9fJglu757hv4Cu8qmd2qDCu4t+E1AVjOZjTzUHTxI
 zA/NjFwqUHdyVlmbypJgi8ltNJHrhNyP45WsQNiie7k0xAsMY80hN1CFNUFHPXEQxGVv4VNYK
 5waoTBHtXRzWkfhOALYDA9oha7mERE5ZDiIdycRPvGQSvOWs65on68xMcLrJ57lP2zkbN9GPF
 dxrGFhFMAhwGfxgdI7YJwzu74cSqmghkFlMI3sCWdGevIlVMacbZuH6IFt98bl3QZ9+YrcSnU
 x3vpJzfTWU7IRKQMr0BEgfanEAyAAOsoTKg3Jr3FJQEwyjopoi4APV9NmWXejoPld7dNyD9FN
 CFyalgAV+4wEkJ2NxPhQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_001618_062387_4FC23ED1 
X-CRM114-Status: UNSURE (   3.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] the change 'base-files,
 procd: add generic service status' breaks several packages
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
Content-Type: multipart/mixed; boundary="===============7022892472145568798=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7022892472145568798==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-jsm5CEbkTxFz4BRsnE0M"


--=-jsm5CEbkTxFz4BRsnE0M
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

the above change breaks several standard packages, which already
implemented a 'status' function in their init, e.g.:

- simple-adblock
- wifidog
- adblock
- banIP
- travelmate
- postgresql
- [...]

How to proceed?

Thanks!
Dirk

--=-jsm5CEbkTxFz4BRsnE0M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvk9F2uJ4OsaK+T5unXHNVHv65oQFAl2FziwACgkQnXHNVHv6
5oTzgg//Yad9J/0Xc/7SCFZ2/Y69+JtGk+ocnSir5zeZxUout13ZqM7mZUg0Bqsu
fprIvNCsf3kgJpxz/+lNags1w3FEDqh/JeguWlwJtBaEfvpfHdM0GE/9fxRYCY6j
oS17FZJArPk7mCebabkBh91qfgpo4u1bIZZGmzDbciwceTf/kZ7OYS6u92Url5HA
tSlkzWby5D8/lZzRpmsWOjaKNK0kbhqzoQDr35sDaqhkpfHeKg4Nk9h0Ogq8oBRA
kjhhzo5s5QpISEKRJETbgwzeNNDkVPqqKnOZSEseVc5uhUGnQhyvMVn7FbHbkvxE
s84JdOg58biPAT+T2ZQRQT7cwYwc04VdDK9gWPzwbCaznEe6vpKxdA79+GSUveRl
Ph7kcNlsOILS3oeJL07uzaqxrzUFFAOAVPkGLo1Gkwf0OiL+1/EsFY1Bi6gvMO76
Q5SJhbIplZVPQPxGFsI8oaoIXYhQbW9hGazmYcY8E6zhytvbThLn3XjOS5kdExb6
Lsie7FvEt3x0GDHrkdst6nRZhyZ3DfF6f+kk8TgosfMlaJtJdOJsEEqNLwL+cEIo
rN67T+XraHeLQGaTGmBhx531M8qgnX3w4JvfekuMLHNXjnLkymmjNLU5qf+ipLOR
CQJyW8vxyJ3RDpcGjLtRePFXmoiPlFO+NwoHrZlIAzFRP83MEyg=
=CvOJ
-----END PGP SIGNATURE-----

--=-jsm5CEbkTxFz4BRsnE0M--



--===============7022892472145568798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7022892472145568798==--


