Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25CF8ECC7
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 15:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z34Ku1yr638gua5yRkCP/ISA1GWOUls/ll99I6+vuck=; b=fAZ
	48jHpKCmDY3OCk0GlqEJ2mZh5qQE90lZWcxBjEhcVdMkjMAS1tEmrI/U8eLkvTz3K1OMWbhtBGIjW
	plJRzYNI5TXa38xHh1WrXYRJTb10hSJZ+sUzSDKIQlszQVnpmxoP0fYCRLdjFq6nRBMdro8Gt5qcH
	TgDNWHIAdkfdRhSiP7SCkY536hiYmE7RtQKGrS4k6S4+ZkBCOM3FgxqXXqD2ghm7Qh9kr4wxMdKxa
	pQLvcNWXiu8VkAlcsXPcSgRbZucVLlDbMrD906xi9nH+ifZLi4aj5zmCVturgnwF6YZBtBPoosmiR
	KopTuD+cmIB8khhwTgaMEtrTxFWkDAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFmt-00027w-2m; Thu, 15 Aug 2019 13:27:31 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFmg-000279-0v
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 13:27:21 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MUGRh-1hphD61avD-00RKwc
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 15 Aug 2019 15:27:15 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 15 Aug 2019 15:27:15 +0200
Message-ID: <01be01d5536d$275302f0$75f908d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AdVTa3E4C1ezXB/SR1+1SG/sQuh6Fg==
X-Provags-ID: V03:K1:F/JI5aKAoa8NQqV4dVwVZ3y5L2MNlO/9ldzhcBqTtkpt/TVUc4H
 xwwW7SmqCyLQsDxpJ69+fU5oAywE/nPhdB52jGlyP+QyWWAs/T6q9M9ZOH67LuA0sa384kN
 WIptlysxNo2Vm8if4hqFCL4UwXaSSEIe/Evd+b/w+1ItnKFmre9XBB4wy3wALBHTmeOUoab
 n+YhY0sO4GMsc+PyMiLww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ktddXAxhzuc=:gZxFo391OgmgqF9HE0CKDk
 Gq12rk6lF0aj/Zen8DwsOSn6Rnh6Vgx0sbSfvaJP0O+lgmFg9JHRzxre/8ramLPrYLGXuvHf3
 vjUMP0RN4QtEmME/8qnAueAN9/Oer/0xMj16m6g/uG4O/v9g1HmrOm3SE+rrdRxjJi+Kp3IpD
 docoGCRW4fgHVoOTzTcrduLUAtHZZFZAwU6J6C0BRrpR5j45FLsIVg87vk0Gv89y7jzAoXVYv
 ehgLfjymX/Eth7q9TdtdTJYvfWElg0L5typxBgKzt3ykRW+rLeBLX3hkO7Vo+UxIt2Dkv1Mpb
 CRDXFhz7h6KwV/+BWJDOk9ZONBEbjHjnBq9WJy2j3bwYIYWGxra1sb3rDZaUsqtQaTekNRzyP
 ZWtud276SC6W6RN/o/jEiOKojyQ4F+vKq/UCeCCL9GEmldGzq3Z+gipOtj91mfypkxm6sj6tk
 UW2BmarrPbbSW47qvckJxtiwbIE89YA/6aTsaIJZF9yfb9z0g3uQ7KC8rlnskags5nRcNfNeZ
 cihlj7koOKgGj7kDYPZpXMcuKF9ucAJudEg5YVDrzInssBCXpHqHIugcxhUnuJHJeh9ZUPVKA
 +pbc8+aDx32+H7VsVG4q4tVolL/Q94iLI8FdRPVn4/qD5t7W+O0wMWbPc/uHddy0IfZ7lgpU3
 pC8YHB4SxwYSXe8JJIuF0LcC7gSdJdpncvoWZBjdTWmPLXfyZ/j8mLccI8axKWeD3HBhpHSfh
 QF4wJu1l/ThCPiEcZflFi/PgAE7bj47k21wElhBU+m0RjabQk5q1tMQTCKQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_062718_361294_B0FC86A8 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Introduce label MAC address
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
Content-Type: multipart/mixed; boundary="===============7619483121394963641=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7619483121394963641==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=tQCJNoUJq5lIhA=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=tQCJNoUJq5lIhA=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

some time ago, I've started an attempt to bring MAC addresses typically fou=
nd on "router" device labels/stickers to OpenWrt.

As for the MAC address setup itself, this is based on DTS for all the devic=
es where it can be exploited, and on 02_network for the rest.

Since the patches are "ready" for quite a while and no major changes have b=
een done recently, I wanted to bring this topic to the list so it might be =
merged eventually:

https://github.com/openwrt/openwrt/pull/2159

The attempt has already received several positive comments from other contr=
ibuters :-)

Despite this initial PR, I've started another PR for ramips in the meantime=
, which due to the waiting should be in a mergeable state already, too:

https://github.com/openwrt/openwrt/pull/2253

However, the latter one is lower in priority from my point of view.

I would be happy if this was merged (and the feature was approved by that).=
 This would also ease implementation for open device support PRs and patche=
s, where it's currently really hard to keep track.

Best

Adrian

--=-=tQCJNoUJq5lIhA=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1VXa8ACgkQoNyKO7qx
AnCfsw//ejcSIvEtTMp0Ly14SNH4JGa9lGlUEtkZkXCmQxs4rrE96uCQsAvBEgF8
SoUPH06SCOEZK7GNcru8oeAs/zjXgYGVGpAr1wm4wSov9BybsaV8pxPYvOJ9JPhq
UCEjmHUm/tOsu3BpYVoqlHWmQG9dI8lmlog6M7/bnj5lSRGnqPxCTmztMNVVUeI0
eW8f+nJAwaXTz69u0Fptl6LLfMFuovbfXRcYYNd7qbeTBUyjv1P95lN4jRJX+VGz
MPi8U3nU7DT0Xup9z0xP/D5+smsw6xz4HR9Ra0dX9iKCYP9fGlYzizDVwfT9ZcX7
lalz3aMib8vnBV9NOmtrMIFEo5FTiA6aJlMdY435CRimLwLFekWXR8Y7T4ZAqZli
VrR7F/q5QTCBRScwWJBjT5hWW1KHa01QMLyIGFV9jVceZtC/hyR0w3630LPbOTuL
19chB/AB/Ho0Xg+7QqRIUlgbgI+7SYnTG+9bEkD960krjqvlyqhk+nZBihp+WJCU
YJQaB2iYkBN9Ci6xEEDJX9rsjdrihSkRs5TGgv9dZbfbRPDKgAXmhO1hAzqiMDAW
JCkS6OQCQFtPM7qNNQn2tHsmsA4PvEMMOoumgX+IAwITvd06InGWbWqY0ChYnXcv
4Q83GqVlPC0cJ6OjXERueDMG6cLm8S5dqVXBkgl6ENSi+nlZw6o=
=DN+C
-----END PGP SIGNATURE-----


--=-=tQCJNoUJq5lIhA=-=--



--===============7619483121394963641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7619483121394963641==--


