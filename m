Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F4310A161
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 16:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3XUcYcFZJixsSAQ/KTZIv6Mz3jBqnCZdxhQb7Yodmt0=; b=PLKzM4HKBwTMmtSbRTHQ3COw7
	6Cr7P8bLP92y7Kx/8Rlakvr6a6M0JaQ6/tHhHW0kPlQnvcFGpzcFm8TfOx9CAdIAnF9dlbynQOv2/
	G3zw0txCN00vJMuKOoRKABOLGIJlKSFcXjgCikZwPwLoiV4I9bNagkhK/qBj0p6uK1U8+ZNORWlpt
	fIpwGunVaO3f0rfqgXn70DLDHKMgl20PhSGsp5f0NGrjooUEf9ofAw0vjWZEM2/Izi3KPIP2iTMqE
	76MGzh5jjgMR8FrgW2q2BKFv1lVhEb2tLdaJ2xBd03ZaEEC31Wd0/SVeu1RXYnHmMBe8h8bS6/Ut+
	zqRr2jblg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZd1o-0004DN-8W; Tue, 26 Nov 2019 15:45:24 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZd1S-0002qH-5t
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 15:45:04 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MbC5g-1hyMOc1dGK-00ba27; Tue, 26
 Nov 2019 16:44:54 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20191126130111.31134-1-fercerpav@gmail.com>
In-Reply-To: <20191126130111.31134-1-fercerpav@gmail.com>
Date: Tue, 26 Nov 2019 16:44:53 +0100
Message-ID: <003001d5a470$72a2c520$57e84f60$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKVJrBooM0WQyxUl7ZYHaPKeVAAkqYekmOA
X-Provags-ID: V03:K1:gsSHITli1PoP8QZ4h/5o8gYvJvACVQizOh5CX03vKeYpfC3yFDM
 CT5yuCoeQ9SFDncXUxzH+VvNvaEYSAhyWXKx5oA0DQPvsgjNJIwOHaNGg3rk76eBwB6IbWM
 chzFSnI9PUSHTVWweLwDUi5GP3alTDX1NT02vOFGKFI/rI6yM5ruY49+wd1KyF4tlT67/tS
 jhTAJo5f65HZ2r4y122zw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZJFbKHid5NU=:YjOK4AehMH+anFZHIeeuRb
 JTzBFY6Ox2eyEhselYwhnm2ZVnnMg9zreByw410Wxgq2iMvU2VCnc4BeJx4/F0ltmNPSREF3/
 GRzYwT7o28nYOMqTk1kP3NlA0CCwxJlVccloiO+CoqfSVa+YN4WrxBLrhmUystz6qOl2s+a9O
 f9QdH/9XLPnMomfQpPpcu15OVJtluYHMbdBlnteAMPD83YDDPKhsxkddIa8z+yXaB6+JpjKWv
 Kxskq9GyWwen1X9aySPRh2c1KY2kqNnOEGg+ryrhrE0wbTiTtYf3YrEJtFX05k0aeDI7fdA7k
 9suLwbAdyE8Pf6wxN3a2yeOunNgPn9V8hG/SBJoqIhR9n3DAxPXNMd/H3DW1inQmOBxCvp2g5
 A6yNbMum8FR8IYYP2+LEhVguKKhxBNIAj74iMJ8s8K6y6hanuY/39Q8YCEgzBFEVOItJllqek
 +bIp+Qhmz49h4Lq8HglMtTLyPoWv/qUZ0D9SRbGDE5hr2/4DTV7VohstsRQKzWFAr9RW6GM/M
 HRxVuZEy0o3Ev6NbZUfuecy3D3+7tHsETzGEXIFhLHxGzy+970sd8P/NlpluHCNr2Bar1iuCA
 i5RHFTlQaHiuO+/qlfzbwFfnPLifSHYXhbggwSxMEasnso5sfCI7iCCsdw+aAjPu7PQjWIXDR
 srw4zvfFewsMmc8T+2uw/o72RLxopciYZ8VP9/cpUBpznyWGNs8STPuXOd2fmcPWN9IzI0MEM
 AoALI+o3hvCslG43TAPubNB73ILS/OdFik7sqiQyRhqwPdVhVWefz+zOq9Uh2l9igKOp52M8b
 4wMeS3Kb/5gfYf6WScAtTew7rxAaLlJ3x93Q6R371V2EDc0mgHA1PyIRu1OhGp2IJ8bCwPZyl
 P8iR0yt/wpyFCvIWT11m3Ti06k6X39FZ0ImBHjw98=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_074502_635454_509936C9 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC][PATCH] ath79-tiny: enable 4k sectors
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
Content-Type: multipart/mixed; boundary="===============8503647237008362918=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8503647237008362918==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=W+tcOmDvXJh/pP=-="

This is a multipart message in MIME format.

--=-=W+tcOmDvXJh/pP=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Paul Fertser
> Sent: Dienstag, 26. November 2019 14:01
> To: openwrt-devel@lists.openwrt.org
> Cc: Paul Fertser <fercerpav@gmail.com>
> Subject: [OpenWrt-Devel] [RFC][PATCH] ath79-tiny: enable 4k sectors
>=20
> This enables using 4kiB sectors as erase blocks for 4MiB NOR flash ICs
> that support it.
>=20
> Writeable jffs2 overlay used to store settings requires a partition with
> at least 5 erase blocks, so using small sectors is essential for devices
> with 4MiB flash.
>=20
> Sysupgrading a device running firmware without this feature will likely
> not allow to preserve configs automatically but since ath79 is
> considered to be in a "technology preview" state it shouldn't be a
> problem.

Because of this reason, we should ask ourselves whether we want to backport=
 this to 19.07, so all (non-RC) released ath79-tiny images have 4k sectors,=
 while we still can.
Otherwise, with 20.xx having different sectors than 19.xx, users will be mo=
re confused than with us now changing behavior during rc-period.

Best

Adrian=20

--=-=W+tcOmDvXJh/pP=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3dSHEACgkQoNyKO7qx
AnBWmhAAtgDQtVA/q4G0PfaibwVz6XbxBllAAs2jDBmU1brs+OHq+TsQFA1MieMq
niF6ShSoo0BRJ9VCCiCZ87QnG+b4RJ1F4+HebI3tUuRUQJPvFR2KSnNTWQBhDr22
Ngh/FrcJoV/jhpsSTdxQ4DklAhH1dfdW3kMOCl5Ew2IOsxbYpmwr6qmMyCeNIZ9I
qd1BuYU374274+zeDjL/1YmCV1MB7b+1T3D4N55wUmem49j6/x8VtAkSpVzcLQS9
jeeZIiSdj/LhQiHBidSnlSctfzLB5fxQMlyTtSVZpq/sf/0M2i3ao1s+rIBrxY34
RYWNg8Bbv9EaN4x7LcmMVPJhk3POYFjJk0V6kUP+fDkNl9t9IDEfXXsHTjq+Skco
7tS5DDuePm0AnZvi5ythoYZe2XsKw5jQ1LZLL1tvbl9i6bXA8zVdJiaT2Aa7D51k
KgyUyW3QoeuDvP/zjzBMCjhnZgh2Vywr4la/Vt0In8FbqEE5dZe8qIwIjkoOQ2sl
zIp7nZ8f/LlyawP33fQ4IYUNwtt/T2v1IWsoBOIvvbHsxh+nBpffcLvXWi9Pnnvt
3KZoqL/7V5LYL2NpqYyKvbDoLw5ZcHn9wyu+ylkB5BJr94Pky+ieLhUWY3tSYhIC
pXPNXncI7V0cGCDGNgYfXWbKqIKsdNJFKp9TgRsoLBcyybZ+YiU=
=pdZd
-----END PGP SIGNATURE-----


--=-=W+tcOmDvXJh/pP=-=--



--===============8503647237008362918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8503647237008362918==--


