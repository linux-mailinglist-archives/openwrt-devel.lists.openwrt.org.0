Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A02419DE72
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 21:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0s6P91dwI53Wp0RqKYCA1UdhfuVt9D5eAf3NM3oxyVk=; b=ehG
	SxzYpxMXZRoRNq+Es8FR1T96NhH1928yjdoz7fW99/+voMKE04l7iM0Y9LgsXtM5cfl0R1BaJeMNX
	Gx+OtFgsQIPS8XBWFVj5W1sPABk1yiDoW8Gjyr/3nSftX59sojpbqXAEH6K7lJ6PRLq6ligIhX7H1
	G/qsCFsviL/Yp0YIImlbaX9C0trxOaro4ES+PQaq/Hm0PW2CsxH0ADGFyOYtN99sToZxlMlg6VKQn
	xjwSZ2wP0jjVzuHJ1d8NDGR/w0RiY0LdPy4aogCyR7tgUQS3YDEJypjZM+LBjB6eNcZqpNGRTJLp3
	N4xXpVZAFW1lvpfXc8E9cYOS1II8fIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKRly-0008Hq-P3; Fri, 03 Apr 2020 19:14:34 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKRlr-0008Be-K8
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 19:14:29 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MtOSu-1j3K7c2PhG-00uqTq for <openwrt-devel@lists.openwrt.org>; Fri, 03 Apr
 2020 21:14:22 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 3 Apr 2020 21:14:22 +0200
Message-ID: <01db01d609ec$152b7630$3f826290$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdYJ69yuGZgn0QLWTtqSn08ck0Q0Rg==
Content-Language: de
X-Provags-ID: V03:K1:FqD13NgNH3fxUOPGEmwwSJ4hlzfnGPYH2Pf6DJL2XOzwxWTuNsw
 1pM6AvwdWMSZgNfDtj5Nto2fJB8pcBaYe0ZVapbrN9Bv7v8JeXZT1Ti4IGzdnd3ClMar/oV
 yRxhNqKxQfi3sQ3b2oNGXFmmvyqdMW3ELUyLA4WDthB6/OR15mtK5b558ukwSfU6Li3AP7N
 1sESjJuBIiStSCgAoktGQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Tz+xEK9lFks=:mKIerTTXnDRM2VvRAI0m9l
 zkZNMFHBiJVyJxPPRXqDkrwWSy3TLhOUCIwkka+o26nflGrcAwG78bZA6CMh5ouXp5isO+Ny9
 I8hkzcIgbejPre1bXqygZeyiRosNlzopOuTQ/3pZBCVhQzeQqiAcWobs0d4Rs+mSJ3TnL+6Tf
 nOShJqJA/OrluUGXeUvknYeUsd+gzsIjnF1obTcpSnygPrPniOScLZTJqg8XFx9/dNGCBkDuO
 fKGtcz8oKdHXsTtbsriCt/hERkwgVNYU3KR/odOtYoM6ckwYtZtC+vnfgU7wbqY4iOXh8KTVl
 dwodLD3tXlqzADvpjbvDd4yPPrw6a8qEaPE8tVMASc+suXHN+W5UThotBSsG8q+umW+yDOI+v
 Es/cQhCywlUm1eo+bmFzPDArzqXEId4FC75AnD3jI3V4a7g8bQR8P25Obt7CIDQgkpO1Nb781
 W/Wuf/nJu48Vlg5RKPR62ZytdGW5FifBerq7iTXbqS9IVckuXY/KbvC5uuf1gfx/6n5NUE4Qz
 swaf+Qk3wGwefsB3Biv+IEwtMSQdkNYijP6Rb9svLuwyr4Iy+SB3vIElvCi1P3CTSgb1tcZEz
 YyuZl64b2YE7c/qqHrTriA8KzjuKVWlcSISjA2WIuynu2h3f/J8QmItmewfHjzchiofhEEouA
 AaAflX8uHy1bt9vt58+eKIES/lx+ZOjk5belpu87BXiQ5lm5CWXUda/k7gk4nKSlMHXRdbd+G
 xLXOJv/X9EYqx+ZtodLLDcVp7XVGdtYnHP4SG1s/lJJEzUdybrqGkztfBEAtY1zru1wBc474C
 K+3VDQv3I1bxUOAb7F65uyAQd2HuACG0ojBly3i3ywA+csaVqVtO/OwRUWsL8LOkhSaXbfi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_121427_957122_84779F70 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC/RFT] bcm63xx: add testing support for kernel
 5.4
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
Content-Type: multipart/mixed; boundary="===============9043189274237938875=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9043189274237938875==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=x8Y/KTmVCAgiol=-="

This is a multipart message in MIME format.

--=-=x8Y/KTmVCAgiol=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I've created a GitHub PR for bumping bcm63xx to kernel 5.4:

https://github.com/openwrt/openwrt/pull/2887

I have made this compile, but I do not own a bcm63xx device, so I would be =
happy about testers.

Despite, this is my first kernel bump, I mainly did it to learn how to do.
So, I'd also be interested in feedback and assume the Kernel config needs s=
ome care beyond just running kernel_oldconfig.

Best

Adrian

--=-=x8Y/KTmVCAgiol=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6HiwoACgkQoNyKO7qx
AnARfxAAj3QfIQT1SPw/Xi59lu2pmy0HbLIFSGRVN3iPxRxYpzCxOeEcozTnsMH4
cYbFUjU+iQ/dfTolxNybdxVuSqcvP2EOdXEEhoM+r89yolR9KMoYcgz2IcwlweUm
0sbnAYrwiFXEWK6H/fHP9/OIVJb5ZfNnqSO24usHl4nxO2HbZUU3yasBBpHCUDxp
SMYfCq1H2BabBjY194eq/N/sJHWdCsadrdgilQcFWwkTQqM3ag2XbC7ZI4cTdsX4
j2kDdxyIKP17A5+tMzYHqPoRWEyzwXZ+BE/qOLB6d9evwzaeClPinRYTIvf0otk+
+zugH/Pr1mgqkthrcrQM9fMoEqs0LqQ6TMTJY4fNAG65d8dkEnOwa4HNqooPj9lW
JYMWFUWwRbGIl8zfhsO2K811RqSfH6do84oMJbN9K5A57UYtfAkv5ho5CrDhSo5P
GU302k10ltnk5/h3S1oG6vxsE+R4j9LDR4EEajHKHmy/lKnIlNg8kmC13aLqPc4x
KnrL5ztw6AmZwPk1YZkFSAQL4//K5/DelfJk9S/gm7bo47oSgsM/QyY5L50ooovZ
kQdu7e58MvmGTLKz+st87ezH6fdLZveKzh2mgHu4iTjm1tGHMpSJ+sbhNsQHfF8m
CuiylXEd0xmeRw4+Bl4t0fLJ3ng7hBOJypOIjvEBfcf8BT0GBQs=
=MI6l
-----END PGP SIGNATURE-----


--=-=x8Y/KTmVCAgiol=-=--



--===============9043189274237938875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9043189274237938875==--


