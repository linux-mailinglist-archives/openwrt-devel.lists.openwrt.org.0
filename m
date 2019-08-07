Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9AE84AF1
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 13:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=98s0OaZZyOao7LYpz2L315b+3abKQFzE4auCVfTsq2c=; b=ZwdE2voZCCyGpWZOgol6K3vaG
	Errg5QnnnTBLeTgY12NVt+6QNKx/t3lQQJYOiJXFO9a/QWtE1mJlcdadjHbkmCqR8Vu2HCrZq0uXB
	xNqQMGY3Kp5HPFZ630+ItFuxVhNGqXMFyhD/jEJlzSHJ2+ZL428WufuIfj0mQ2H4mw7Os5AL/xYp0
	b2+Y1NugQT4Q5E4k10Iflh5jgTyLLFTRg5iC14cyBG3c2KP1Jou/ZQyb5tXVqW0DugenVvwv+EtaA
	ju5KPwkWHiFCcZ/+EA0azJKiWwVV0YxZCbtNwD0NXI/JmKRjaWsWiozRbmeOXIcMElXGuyGUS/M1Z
	csqsWeG5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKNo-0006Ud-IP; Wed, 07 Aug 2019 11:45:34 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKNb-0006Tz-W8
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 11:45:21 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MmQUL-1idQVN1eGf-00iW8O; Wed, 07
 Aug 2019 13:45:12 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>
References: <1564114882-63441-1-git-send-email-wurobinson@qq.com>	<00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
 <tencent_599CEF7667E63EBDE4896D3CC7EBA9D68A05@qq.com>	<00ac01d546cc$1359c2a0$3a0d47e0$@adrianschmutzler.de>	<tencent_CC467618EF234A1AD97E72589FEEAC58F909@qq.com>
 <tencent_75E229CDEA804F6D87F6FEAEA4924D232705@qq.com>
In-Reply-To: <tencent_75E229CDEA804F6D87F6FEAEA4924D232705@qq.com>
Date: Wed, 7 Aug 2019 13:45:12 +0200
Message-ID: <008301d54d15$9274ae70$b75e0b50$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGmEYIKNlPSkHsokS68AJ07ljPyogHCxAqOArnD+iQBoHV09AI5lDGyAVnf/MenAIKYYA==
Content-Language: de
X-Provags-ID: V03:K1:CBMCNYnndilux9L4TIr5hDjReUL5XIGASmXPmSSwcPSXjDLhQvW
 w5AVJiR/eiMieSE3bqcOPUJsiAnLosyIOkPww2No/k72/2TKhhrlDXcj8jyt4/ndJvsQOXh
 PoEVL1EjVvoIX7BZupFNpR2cweqcfFdl+TZf00aBbBYx5d3Dpcg4VpJnWlFitqeD08JWEaR
 kUlK0p12YWU4z4XI54Xcg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pM9PCU2g7gY=:V8JoYg7h+pdiOgowXIJcqi
 ZIfJUs18FZs9Pp/OR+/lrVKMErrvsRJV5tVORIhds+BKo1Y2z7kIsIXvLMTfkoUi/N0c6/Q8J
 PfnrjPO8YcWzH6IKEV7OUMqjg2XMOk4mW4zZm4E53iTyGw2j2Go6j8r3DS7z06DOvRN2b/pfy
 C6KLVhuTtzAPd5xYtHRTwq5DNWfPQfbuxDDRaYuN+g3B+iIcqDBqIkDDA/vLvq8U4TxWVBGYv
 el0wsPbVrnnsLZqXfcczu3dgf8bKLmpparbRXONNalIqfV+F2IsWK/9D9Bdb7qcSZGSR2lAsk
 7H+nrlw/AkoNgMckAwtWoBikbsbw6aUFrDqAC6cnK4coJ1mK4NcvUwvsxmko/6Nbq1cyhfp6W
 PfwMUl6wwvhc18F3ThjCUBxHIaYaP2cTsdI+jKOUIZMf0ovU4/xX81fyGJSPtYEz+0B7XpkDo
 aKy2GbOryrX6Y5uuJKAYRWcErEqpj1Rjf43KYxWrFBD1EawysoAuNBLn8Zq7+AflCYnCr38pp
 4WYRF62Ibb8O4Fu0Edh2Jk68l56Nc1QnTTbQR8pYa238m/n/7Ng+dwL5ub6j2gl85ina0d+XJ
 O3FJ9DvQvLbo9D7EOO8ZfzBHl6YRHh3WW4VtEhm9sSL9fHOko9R1XV4h9hZs4ETJtqGy4KPdB
 +hXbTmwPO6Kzb9J5QabF8DHCeSbUdE2kiOa1TPRvXS3Gvnvml2PSS/AOb8SYObZMGX+u1nwvu
 FSr3Ke6TqepM3RNGIjYUK7PHcMpbjdFm+PH06IvkJGGaFRDpKpV54RL3I/Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_044520_324232_288DB15B 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] 
	=?utf-8?b?UkXvvJpSRe+8mlJFOiBSRe+8mlJFOiAgW1BB?=
	=?utf-8?q?TCH=5D_ramips=3A_add_support_to_JS7628_development_board?=
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
Content-Type: multipart/mixed; boundary="===============1239338831167956258=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1239338831167956258==
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=mZdqlA3r4BHEOf=-="
Content-Language: de

This is a multipart message in MIME format.

--=-=mZdqlA3r4BHEOf=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> I would like to know how the patch I submitted is going? Should I submit =
it again?

I=E2=80=99m only a developer, too, so I cannot speak with authority and als=
o cannot push this forward myself.

If you ask for my _opinion_, I=E2=80=99d send a v2 with the RAM-removal ren=
ames (as this introduces several changes), and then you will have to wait.
Typically device support patches take quite some time =E2=80=A6

> Or will you help me to fix it?

Do you look for any specific help here or this meant as a general statement?

Best

Adrian

--=-=mZdqlA3r4BHEOf=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1KucIACgkQoNyKO7qx
AnADZw//VNTndtZj5ypo1AOhKqMD0Uva4FCyrMZO/zKX9hXwsAJy6YLQXX73oTJR
GH4+czP47KTNngDNaMJbDS+NqV9k2IhmG/kD7TskA3U+CNgQ94Cid/tIbIwKxrWz
FELYjXL5/8GHQuBA7jR/FTiiwW1VfKBjQycCtVRoiPl5Ms9n7z4mrBTJxQ0vfS3k
Ugzg/KsuwliU8uwW9ubF/qsd0OInaK1ig135GAxS1LOANlRcDZLhaJPmyWcc/eFc
4+oqkDZUhBT384dWECyuB4qwuv2Xt99I1FAL9sYQpViWvsL91R1EgYDXhn8FKLTY
hz8usI5j+ch7JpneYjNQ4OFDD4avOnYR1k0gcYW+6AgetrGXXFYD4P8pMDiauSgH
285s4NlcYTYBnW9mvU6lyyb5G9V/QpELTwcqZ7+XY3QmVUvg13Hj6D//MQS5AI9h
nI2QKh6S6B9PXklpLbq06m9QN8JQbQTJ3g4mRplXfWrit11MnkuWZRZD532zaHZQ
FZyUX3PsShap2eNFiB4z4ZGYmiwQMQJzpK3klviVm9kRgbhEUbhtfXrwYXdjj+zS
PZepOQLnNb9yAa0k/6T/TnqDhRL51fqWTtP/MfkJMOwB/f0v3i5kOEJ4RbWeXCYM
kXV+xgmLfxeqBqP+0ux+9CDC7eRxTR+xkIm5XMlWDcP1n0Z/KF8=
=wjCI
-----END PGP SIGNATURE-----


--=-=mZdqlA3r4BHEOf=-=--



--===============1239338831167956258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1239338831167956258==--


