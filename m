Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CE67057D
	for <lists+openwrt-devel@lfdr.de>; Mon, 22 Jul 2019 18:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qHhg5HnWSwPqhsUAJoTDkDHMyDkew/y1kvKxthbrANY=; b=P5+
	i2DXjl3Fba9vaNv8ga6WxYIFhmdn9dsR27xfDGBkQ0gbnOScOEnK3vRsjoOow5MPaemarLK8XBT7p
	/fWXn4otfngu14MuBkkSoV4fgUZ6+CSkJlSMrrePq44DxtPhNYxIQDKbVYlLZ/UHjkGVPiv3CFbdS
	b2YPLWcMp2J34nvTHoC53EUvL01h6s98rPJVSLbFTjFw3Ek5a0cCeAhR8Qwrm0R3O4ICH8VkqV6lD
	xmybrB5b+zct58DZBwi/LLAhdyBmeRGLt/h7JBvjv0yuXcKQlz2yLUBpcmqlJ7DfkB68JXSV/MSC0
	sFRC4kGjiApaVMXB+XnA30W2lQs5CLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbET-0003vm-7I; Mon, 22 Jul 2019 16:32:13 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbDx-0003uL-6z
 for openwrt-devel@lists.openwrt.org; Mon, 22 Jul 2019 16:31:43 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mgvev-1iL6gv0EpB-00hQlB
 for
 <openwrt-devel@lists.openwrt.org>; Mon, 22 Jul 2019 18:31:36 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 22 Jul 2019 18:31:35 +0200
Message-ID: <010501d540aa$ee252f50$ca6f8df0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdVAqb9biBHDqSdzTDybDQFqP8X+Vg==
Content-Language: de
X-Provags-ID: V03:K1:+12AohkfhEVGkdDqbVsgeRubdETdvA4kqwJIoRchY67UeDXAA1K
 s75kcEO3QYoBcVj86pwFS6wA7Cok+X7c2r3tfmOTGdQJHzfxzfIxYnMVPoQkvhJRpkSG6/R
 hRSMMON9ec4BvV1OWvM9sz7BI+Nb+UuMn3kYYJijKltf1kHyGH1YMZLh6+BtyGK1rskuY/a
 uq3Z5monzMFr4QgPWExSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OssLvLfIq0A=:7NNjvvApXQOEhka7PAmvDr
 SLEJjmIV90+kCH+XeUkRIlD8WckoNiacCpnshRNVRDGGdzZcUMUj/U/M/FilUeXHDB0RIvCy6
 L+wE1csHoAEA5h4YNrFriZZSkBzHLvNfRXFHPQVx7FP4ITj4S0ZA2RplNlX/vWZMmRgateLpr
 CKWo9QDeiwSImkMVTS2pyk2pxu38mAnh9yvi72u0sfpX8EiDtboKyrTlyvCuNnZd3R0RrLmfH
 KAH3lE0sQJs7yFfJfi5J3ZuesU84SxTSonCU0c20vbEZ4kRTfAV24HZ78B0b7KgNIOaj4nfZ+
 SzgE5gG8xE0idQQ20nMVdYroQuEiqYSL0tEjPtmCi2S2r9JTX5WQlyTcEJvBq98YBth0SIlbo
 ca/oKlKvk6PdpsDo2sFuUq2tU7B5kcxHlCA6RX+BgHCGdY6+ZiIDWRZF8OvAdMWP/57WLgkg2
 2vvRndnn/9EaFuAoOgEA5Ncz7kB1jG/yo+Fg4zrq1rp9MUPgIqG+nfit8yYt0Kga/b6pd8MaH
 s2FF4WgHhvMC8y2lShObR9FVefDJnvIIMF4BidjfleXDVJHNX2gcgquBlic2BWsN8dFVWJMUv
 YqtBUZE4gLIX24muRZErWpVDO/xxcLzRQiAqFVdSjyrGCoP/Cg+krr2Vbb5KvxEOaZaz4bTh5
 61/GgzRFqmDTDiZX4hF+FzUzKV3LQbiTDfzUT/NqQh5uDV1dKMTRGU3E1EtmF3WZWg3sFO8zq
 83+AlEh/LiV/UqEgqrKaid8TOMzNYKqn/mGrRaCYFM30QKJJIzJlOquzgog=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_093141_786131_E771C972 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] Remove ralink_default_fw_size_xxx variables
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
Content-Type: multipart/mixed; boundary="===============1274743525821536332=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1274743525821536332==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ZMNqmtVOAEZr43=-="

This is a multipart message in MIME format.

--=-=ZMNqmtVOAEZr43=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've recently made an effort to check and fix IMAGE_SIZE variables in ramip=
s target:

https://github.com/openwrt/openwrt/pull/2226

The target has four predefined variables ralink_default_fw_size_4M, ralink_=
default_fw_size_8M, ralink_default_fw_size_16M, ralink_default_fw_size_32M.

When checking/fixing IMAGE_SIZEs, I've encountered many cases where the IMA=
GE_SIZE was just set to a predefined $(ralink_default_fw_size_xxx) roughly =
matching the flash size, no matter what the actual firmware partition size =
was.
I've felt the same when looking at some recent PRs adding devices.

The more I think about this topic and the more I look at recent pull reques=
ts, the bigger my desire grows to remove ralink_default_fw_size_xxx variabl=
es completely. If they are not based on some inherent board property, but j=
ust on frequent choice of partitioning (and that's how it looks to me), it =
might be better to remove them.
This way the user is not tricked into assuming he can just put a variable w=
ithout thinking.

Replacing variables by numbers is an easy sed job, so each device bears its=
 IMAGE_SIZE in kiB (unless there is some common definition).

I've already done that in the second-to-last patch of my linked PR ("ramips=
: Remove ralink_default_fw_size_xxx variables").

Does anyone have an opposite opinion on this one?

Best

Adrian

--=-=ZMNqmtVOAEZr43=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl015NkACgkQoNyKO7qx
AnA45w//VXF/uQex4bH8dumZBbNVX9g7up+8evNbIyLw488JUsYGsS8dbymHuj1V
mm/gS1xf4L7KaJ1PIlrFZmgWYyNUUS8ERBe8AUx8FLdP/Wry7x6zJ9MIdmtXkc5Q
haecB1v89RezW1Gf+njTq3Ziov1Klz6hPLyQVuhdv8rBC5z4fyJdIKJS1+ErRj/6
wi66oYKwxGcg5gmVk/5HwVcZ/6q3NWdA87siDU+B82yAoHTXVWcdX+YTjeL1lxkF
q2upesk8Q88lbvw8dm5qk7+l1HLnBdl+51grhUyLV9BcnQveev4JkPA1aLGZpDMJ
R1EzzSF2gtAxP4RwLW5hDAzTE9v6YxiCBtGYfp2dG3ElQ173nVLzPwlRIv4JwSE1
DQiCVFnZHbHezH3orlwEsJfaFcwJDdWz6x3lUH0LrLCoO5qYSKfhZjTcHnN7bYa1
1oRmsalh0ErfUKDPaVDQCNYlDr7+7GY/a3gFl+F83Cm98G2gpchNqrWq+lT4thVu
AFHySg2THK07t97RlADPfoeqW2EoP9koNCLl2UmPtAkj4sQffysCimGRE0NAW+Xo
ZlwOEOebe6wBfFFyR6YC36R+G38iHVvUfLQjr6WI0Htj2ghHJxouCwFUy14h+alC
tDWPiv6g3jwoPiGibyIPuw62ZEp2k3HzPYWWePcke2u0YkZJDV4=
=Mk9O
-----END PGP SIGNATURE-----


--=-=ZMNqmtVOAEZr43=-=--



--===============1274743525821536332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1274743525821536332==--


