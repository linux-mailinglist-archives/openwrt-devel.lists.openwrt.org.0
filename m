Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E4E102D85
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 21:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XDSHtNX59bdEdP9LBk+xx4YYBVPXDHyTAw/iqssR6j4=; b=IbQ7lFcbWeufIidvUkHVhu3YF
	Ve0sbfRfkQcHX4KpTyKmh701hArLXDXe7BeSss1joFunjMNlY39jYPerAwcHUjQX+gLelR+orwWMP
	gNqqImVX6LgqsMeDAhdcZJMEocsJJMTkNYJdaTu7yqdU4avTAWdA1Z0sWzSHybMzgO+Rg/ojL8fqb
	k1fD2do1MG/PXvZ4VjWg5bfFk5sZB0KcRNOkHW2gxX2Sq7vhQjcdyWjmcdASoCH4PWZVecNkmwrR2
	0bMDLsPeigfvqjMuIEkYNiISMMJzyHSmNJo2P4g/Owq1GwKTcww80jZ225wfSSQgdVoYShZyesKv4
	QHsivSAwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXA2z-0004pB-E0; Tue, 19 Nov 2019 20:24:25 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXA2o-0004od-Hp
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 20:24:16 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MMXcP-1iFD7T0qhD-00Jc9N; Tue, 19 Nov 2019 21:24:12 +0100
From: <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20191030123221.7a0af3ea@kosmio.komorska>
 <20191030123408.5e8dd3fe@kosmio.komorska>
In-Reply-To: <20191030123408.5e8dd3fe@kosmio.komorska>
Date: Tue, 19 Nov 2019 21:24:11 +0100
Message-ID: <007f01d59f17$4e324840$ea96d8c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQE4ZxIgITOci8A20peAqGYj3ww1IQIrK1RVqLwGqGA=
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:rInxdB5xq39txI1fFO72vvJInFcr0Y2oCHbK2P2V4wFTSrPjKU1
 OdECxRG7vpZa6rCjBCS0yeiQ1uaYs6WFkwF8VQWQ7BwBQB4ZifkNNEAMU0kqaBgc4s3bF5s
 VpiVhRMhkoQ4fPDKeMSsk+b0+DWebyjcr7UV/Ru2j/DyMy/taj+tq2g2bT6jhVRHwGdFRH8
 CoP0Nis6YARxh6S5icplA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ubDGI5M528Q=:wNnFjbn1HrR5H6Dn0fsB+o
 VW/gqVQH3yRgh8WDO8YiopXuxWi+CEwCg6Cc1tTNs6Izoep3HqVPOBa9IKLEiZOOi7R0SABU9
 T2AJ91Sd4OVZy4IQLKIcWKfbtEs7mYjk4LHjPSY6AymAIlYUdFykutKwOEmJrmSqAesKbnI5b
 YWM7ocdtM9hykOTNOnz8+d28smWoGvQqe6pCYG2ydyGl9keMAP7+yc8126V50Bwbkfdu7fffZ
 O4LnJ9vm2IbRSi9iw5hEmtdWUhQsZPRks0n/L2+aTbCIP3MYbXpwlcBso3oRMMVtJlgRQHcf6
 toHjXzHw0603ZWPN+WyRrbNYjomC3bk6kUtLAvPJ2tyCs6BMS2p0q4CfenpNstQngJjTntAmJ
 y+FGI8645ZbCv4hrzxA4rOrIXqYetxf2HcSEwV98uN00Vn9wDZAusVZD0jqVGN6n2Cb0J+0nN
 hSgLV521L69wSz658dRsr8HO5NMM/0yDil/M0jijK4emwYVAzlG6KwjrSUk0k6nu8934ARBxW
 +JK9EgOvIQIqnQzAE4/IkXybxNqeT4B6TOhFrbXkCLxpCOLGt2a2GZWYQ8cnMwkkNxEcqntYp
 4CRmubPGflSpcJOnwqIZpmZfhhlEw8kf1szGBykFqANSlTIRbD7NoICFysRIgr0BQOXIDPwYp
 blIQyBoqeXInAzc3GWTopgT+uuhsbn5hfstRYcdBpwd3JKO4yTBnvxam3rwV2S6uoBj+qHhbT
 yxuYN4No2KodRBuK5cnoafkP6Rfx3laom/Kquz5DXw+19M0IPWGncuI2AiYHDttXifcCCEN2s
 j84FS20HrCEF8rGtznJ9t/zI/1tL9T7YgmgJwTaZ5hFXAYH7QMekH5f6UQ7I30sYFGAOsVx0G
 ucPl0UGYRkX7fQr2AW83BO8S08mvGDw7IYCNlDHfM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_122414_877706_095ADCC5 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for Netgear
 WNDR4300
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
Content-Type: multipart/mixed; boundary="===============8042020871122724752=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8042020871122724752==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=KZC5ydJsA+FZVp=-="

This is a multipart message in MIME format.

--=-=KZC5ydJsA+FZVp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> * 10-ath9k-eeprom: extract 0x440 instead of 0x800 bytes from caldata

due to https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2612 I had=
 another look at this device.

What is/was the reason for that change and do we have to backport it to ar7=
1xx?

Best

Adrian=20

--=-=KZC5ydJsA+FZVp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3UT2YACgkQoNyKO7qx
AnDczxAAlPiNNWLMpRHcobr9wV0+VQt0xdzaR4ueeep+0IjpA9V3IPI1MIb7OaW8
D/Uvxz3iCnqrHHeDsV8gcRVWgZgnu57y7qeShc/l3EswHAZoYVx97j1wXhMGuODF
iVincLZObTBn3Wyb4Re8O3XJ9vJ97O4V5oaPtXUj1l7VOsftKoUoPwiOvXzYDqT5
OyqLG1mqPsX2J0vTJx+leJuQiT2kYT4qkbMKcV+8uW2PgB0yQoNjdnbcJDB9NY0j
uaN7xX/eSX9S7HprqvzuhGN1KzbrVuSE5FWdx854J/Yf3NqDoX92tPjknC+xMv5U
KdXZSP7exUX1YSt2n1JDFrg6v/E7V6y7SE1yTe+CdNkuzBPDTgGEHPFi4uglK/r6
uWoG6wlwkeRtXAnF8pCpo839AMP6dzv3xNWL5PbCHvlFFejCrcFWaAQkrsakx0RK
8crN/v3JNqmFYRpc++IoLalZRHPS8gaWNstJucEjYl+IxNC1ROnX/fK2tBaHhIpd
j/OZZu8tkUlI1NFKGubiDZ492Ni/JDzZh1YWLLfkMj3cxhd8uvtFp23xYA+ZWuv/
ywUj8htH007Y5+QUem4No68rUGiYXbX0yexrEh9GGvfLwHvOuSyREIYr6UlknTzn
uckCUx+AYOTI8pEEVZ6qaBjqcXgjrtC2uoHkE8tQRLEvKLAcdwY=
=MMxo
-----END PGP SIGNATURE-----


--=-=KZC5ydJsA+FZVp=-=--



--===============8042020871122724752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8042020871122724752==--


