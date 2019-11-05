Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E12AF08C5
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 22:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9KzkrC1+qDlHYdMRCy2I9Epfv4NqYE+L42EzPDmgLYk=; b=CV3KIWek/lb+Krhn8rpq406iD
	c9EVxhOerf1TVM3VaZrRqbwEA7fI6PGqRXgLyCcia++nRbSN+73Aa4mVg+LlUK8vzJHMMXGhNkpEa
	vts3pwHYX768LKtHbdmx7JCmw2aObQxRAFv9KVrDj3XigXE2RXS//Qz/io9Jrq3iCJdfxnuITpiZp
	+Qmp6/1fw97Mut0S/jCUMuMS9RSlG/Atin3lSknO2OcCTmWTDV7ZgPd7xVRwgbwpeuqUX6e4hVvLp
	KcPwtfLiNgDU2QN4W+PWE2YaGGmmSb6R2i3RrBfwjijaupwdSmG7MS3dj/3o39vxMGyCLhiTJxbe1
	IZ79vBBjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6mI-0002mp-4b; Tue, 05 Nov 2019 21:54:18 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6m7-0002m2-0Y
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 21:54:08 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N45th-1hjavN2l0r-0101yT; Tue, 05 Nov 2019 22:54:04 +0100
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <012e01d593e2$1ced66b0$56c83410$@adrianschmutzler.de>
 <25f488ab-9cc5-8393-8273-542b431a8368@david-bauer.net>
 <7389DC3B-0AFF-41EC-AD75-04370E606E7E@adrianschmutzler.de>
 <e66c76ac-b2c7-076d-9231-3a71e66500d5@david-bauer.net>
 <27e2d868-9dee-6112-142e-b1739c32cd33@david-bauer.net>
In-Reply-To: <27e2d868-9dee-6112-142e-b1739c32cd33@david-bauer.net>
Date: Tue, 5 Nov 2019 22:54:03 +0100
Message-ID: <00ec01d59423$8a90cf90$9fb26eb0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQITeIS4haWPB2gGUedJ+rG5YpM5ggHuU2i1AkNYNxYBw/n2pAJ+0QDipr2xpSA=
X-Provags-ID: V03:K1:/hbs9FKV4EiuyV6JJiXGPTXDXOq39xtEiMRxvqhcjU28wZXuUMG
 84+hubfld/bxX5MZikWaUYsRplAWNTwudERW5ulyCFfJ7w/bk1Bru8VJPHEvasw8bdhV2as
 Da/CG9EJhmRvtv6Hiwk9wspELTk3OF8Uuy2HZrfQ+qw1R8nOvFHZ3+/lt+QZ/p84Drg5aMe
 BwAeLQT6GfZf5hTRml2Bg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P+GHJujmESY=:efb4ymIvfoyfD2d64ecyaU
 CIuFo2f5hBORNOX9OJmjkGu6AQFtYB2Ess3T/bCwYDuLR0deKIlneBBjuS143Yr+KvcDssc5w
 7j2BNMclUDBpzT1Z4rocyOLwvIZFo/DZd94kiIUc9RGPad2Q/VzYAOz9v3K+j0SZ9mOOXsuib
 Y9ZfwtLUZ/QoErRqif+o9sl6ES44GJt3BQNkoNeyfm5Mg5eSIEVzePFSjWk/sRO34wnlMf3Fd
 bhzOvB7vFD633WqCQl56q6ooKE7ZB9QfX/3Pj56XxhcfV4C832TzmX3fKWQKw8t1upeAfF6LX
 c7utCPZiHuZyx50dYPpYMWcKjs3cdWJWfJFlVMdxMI1r/DwY/xc+8jqUYkf+0olHDS36mNik8
 +C5tBwB8HOT5JlFM4FIzWor/Wr1WLOPRkl09iUkgZ4sX0Cv26dDYlkib91Ge6TP9alXJlPA3c
 wO3W5RnRrkBvrTQe+fbfyW2ODwocZL36gu5X/iCOM6PQNOExhKcmqOYhUbCn4Z1TOVkAsh8TU
 9AmXFBiiBB+dQGMqAbR/M4R2D2hOsHYx1rf6DX4scLv+aut7K+SgNE1/Afvy77SG0CsK0ImkC
 LbOBN7EfEtudpP2NNzjtBx50vkGDaqb1M9yGWSjQcFaWMLKHs3mrKFD9kIPxXcYPoZXeeZAeg
 HX22uMdmEAv6DciCZM9ubPF4VqqStEHS3ExIOx/e2wAijjfMtFClufjx/oblXEhC7cQf38grr
 /HfOmWuO3O2h+7hgARiuQrlmX2CL6b5B52L6Ct/Ly88KyY/hd0UbeKrDYLzeX5ZRd0PNhVYwq
 ksIoEBgGLgl2moEen6Spwis/PqaB8LyDcW5h4nF/E2cJOK2StY92CJ+wnNwHtcc6iTDEjN5tn
 BejyEWULTUcem1FYV4zIHnt2/kIEqibEgXESyCiZI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_135407_358022_0AECAACC 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Broken WiFi on QCA9533 rev. 2
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============1939410555295421094=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1939410555295421094==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=o5sTLJSez0eM0V=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=o5sTLJSez0eM0V=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

I've just tested with the dump approach:

diff --git a/package/kernel/mac80211/patches/ath/552-ahb_of.patch b/package=
/kernel/mac80211/patches/ath/552-ahb_of.patch
index 1170fc64bd..57647e16fd 100644
--- a/package/kernel/mac80211/patches/ath/552-ahb_of.patch
+++ b/package/kernel/mac80211/patches/ath/552-ahb_of.patch
@@ -235,7 +235,7 @@
 +      if (data->bootstrap_reg && data->bootstrap_ref) {
 +              u32 t =3D ath79_reset_rr(data->bootstrap_reg);
 +              if (t & data->bootstrap_ref)
-+                      pdata->is_clk_25mhz =3D false;
++                      pdata->is_clk_25mhz =3D true;
 +              else
 +                      pdata->is_clk_25mhz =3D true;
 +      }

This enables me to see the AP and connect, so you are right about the reaso=
n for the problems.

I will test your patch in a minute.

Adrian

--=-=o5sTLJSez0eM0V=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3B73gACgkQoNyKO7qx
AnCIvhAAgN4W2Y4x/d/n8cup3b0yYPWivfUiXGpk/xs9rcJhAMTulyzKtYhWkDlZ
/sTP1xScrEO3CRKcYm8fNFzrD+HC2gDJxRjBWOwP/8qUBVXRs5pLtCVSeDp+ih+b
7kNtRzYj+3V2HRb0cVnMsw0QIZV8sL+mFH3HsFRs4HA37F4jA/kz2q1Flg3PAfyE
DvDuZBRmt2y17zMlS0Mna4S9iB6qhL+BZikMwb9EB2h5iqk9G+Ry1nzIaar8vY0L
FYZElyufKhKJD/DDSPueime59TsMk9snHlEVFub4sdUssMwTUxE+fJTmNv3hj10F
+oTg8QzemAyXQmDqvo5IkxKuBgzywp5FfKMQqjFpdPIaCYqYyAjgWo0VbOlQWSOS
WThT9saBpSQKS4XmbipL9RfveMAX6fqyWqAAbNonpMN/MXihrplXAO9XlwuofxUJ
PnscKRhcDJLx6zH3SHDyFezP2mYMDShLubXJu/ZjiREg/DCtiJ6nL/Rer8rUE+xQ
eIRrbl3ZVQiSMeqd+xOl50AEiJIJgUaJ74XqIrRfnbDQRPHhFYjZmjFfU0mF4MrQ
/SgV75bTp0hCEsmLZIBNWrZZHDvPB/uwXCZ/D/ja9XD16km7chJ5Jm5bfktqOksa
P6DC3McoT1mOwHpGRZZ43PRCIKUbNVvL+MWM34yzgR2j6TKy4UQ=
=qq+m
-----END PGP SIGNATURE-----


--=-=o5sTLJSez0eM0V=-=--



--===============1939410555295421094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1939410555295421094==--


