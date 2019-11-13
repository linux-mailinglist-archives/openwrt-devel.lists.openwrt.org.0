Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15085FB5CA
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 17:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YtDRqY8AcUK2QDTsC1VNH15YxaSNLD05gszCMIOBUgQ=; b=GGL
	ErMJl7RYLOu6DlUf0tZXWBHAyEnyCj4dP+hjGiYXVJ6+pmmZn6qotzPDtlCLMKI1e7QpwrgF4VMeU
	B5OVvBztpHHFvJvDOIMjA6XAwNSVjS3rh/99Rcd1VFlUjwtxGjKylWljqX66BCz4F8Ua3lAzUgBwf
	dgVtSdpHcijZ2SQzkFEtEAcFJJTYLRaOsP6yKtHAt+rNqeqUiss2GpnSucWOdFw0m6ltKPTJIhHtn
	f3pPpWp3O4D1QCAmF8No3GVa5az5ZgLqemF+lqna7lHGg2N/BhOrfOrE5woDoO6buT8CWV9IK2MJY
	9XBGdDsxNqzORs6f5Fq/iHMwdzBo7tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvxT-0007rM-D3; Wed, 13 Nov 2019 16:57:31 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvx7-0007i6-DE
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 16:57:11 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M9nlN-1iYUBO17vp-005tRV
 for
 <openwrt-devel@lists.openwrt.org>; Wed, 13 Nov 2019 17:57:03 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 13 Nov 2019 17:57:02 +0100
Message-ID: <002001d59a43$5f7d4830$1e77d890$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdWaQlYHncEXPaQOT92tlYzwAqCEyg==
Content-Language: de
X-Provags-ID: V03:K1:64D0kBKXLdtA4mzMLMxlEmUJ/ACtEQXZquNlGBmfzO59Qr3ezMb
 z8hroI2xS0Pykg1wp32gXVkZqEo9oqb555YyHbVPvCsvqVWHxszsCQ7lw/XpGgXiax7LzZc
 4OIiQW+tmFtwk19eVVaRLSMBs+KY2Q0E3U8+vVsiqv7qTRujCexyvRCTDj6cmG0LX8jYYlZ
 gnODAU4LLUxxpsWMz+G9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HqAo30wH3Ws=:qBKIqoLEdG/gtqm4ve02ID
 hveKM4c2kxvJ7iEV44Ep36cnKaw4vx48Nw+zBbdiztzNKcLJo2YY3VjEX3NOI74cMr97C+XY5
 o8whRwhanFWXx++P9O5qu7ndfwOPOpi5MKuI3fb5L0LTazhiEDS9B6p8WLlIzDCQfJZm3pL7e
 o8cRMEv2usTOzgMHC7a8NlYpI73qbzopU0G8E3+LmRtdWn3v2tU7b1hdFkHphwgh20hPnSnly
 vjJTNrbwUcFXY6HpkRpyqczDdILxsvvb2TU2w4HCvHvSnHbWppIOucT+xFIQkbm8rztHG2VpJ
 D9CzdQ+s+I7jaboiaVrvUWzpDJ6sUML0B79qmoSgS2UJAoUxsguh7f65jNW+XhBpcwb7OZuIJ
 bPwF2SWwjLVCM7360IvhFTk9L+koY+z9gX6eaVGhnXAEqNHxoWyAyv6jOZGcLvze7y+kaZlfF
 fmy6x1c7wslkKYrfmPZbEUbXPYIvwc1aqd7w29zUS52wkw+6CCTb0uUffR01e4TjbJTpKMlvU
 kA5bCXbzWIJASA3ac8UVLWvdh5myfYlBRFOUiZsOaqk75andFm9Z6dRGf41t4spe/27ultm45
 uO6fbuZGo4FNNy5bFMef9HkiFIF4r18zjS8xFVlyCzkyCiIvNNT+tbtNmnfNHJUELZjOg5H8n
 2vdlc0OlA5qJgs8f9NEc1aQHHKdLaax3EicmAqZf0M3VYgpEP1+3REgrqwJcISibgWXGge/EE
 VAK+K1xIGBsrh+0TouZnr3GedcW31LitaZFEyA41xvq3mNiD7u8gMKZXTbT3SQ7j8xMIu+klS
 q19K2FXWYfJz79SS9UVkaCXhthFRCW+XmKA1BZhUJ/ZIBTF9M14ftAOefuT1lelhuz28H5MhP
 llf313cqycfyhmeRAfYv9GSTWkPKxv7vYmvXEMRZU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_085709_759344_532A5E62 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] ipq40xx progress on GitHub
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
Content-Type: multipart/mixed; boundary="===============8270042741998707247=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8270042741998707247==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=UJq5lIhAUx7qlR=-="

This is a multipart message in MIME format.

--=-=UJq5lIhAUx7qlR=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

there are several ipq40xx device support PRs on GitHub being already two mo=
nths old that haven't even received initial reviews so far (despite some fo=
rmal nitpicks).

In case someone familiar with that target is interested in having a look:

https://github.com/openwrt/openwrt/pulls?q=3Dis%3Apr+is%3Aopen+label%3Atarg=
et%2Fipq40xx


Despite, note that I'm now more aggressively using the "needs reviewer" tag=
 for stuff that hasn't been looked at by committers for some time/at all:

https://github.com/openwrt/openwrt/pulls?q=3Dis%3Apr+is%3Aopen+label%3A"nee=
ds+reviewer"

There is also a lot of very old "packages" stuff there.

Best

Adrian

--=-=UJq5lIhAUx7qlR=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3MNdkACgkQoNyKO7qx
AnDkSBAAqjEQUZ2GyvyNY+CsgCfqvivY61dw2Qy0V2Iqk/hldK/EqHQA3vJncLBM
6JnyGLZJ/cUo2tDRH6V/K/cMAe6gJoHZLvC6h2mpCyJ4MmeoK6MKcLOjCI2BFXhi
MIWmlx73IIDwWaV9HL794NrJeocutaNbpY8NmpEYQfVroZWuDAHP6eSi0nqg3wKg
1tSzdPTFGzff3Sk6IRZAVSNKCDDuJ9DhQRbVE+e9fHcm0lrf53oUPr+i1bfDDGaY
X+OYhRP3+eagX1lXF8BboFDrBRKftgctToGc2lgukhV9ZaBPJyiLtoIPIpTaKsVl
fF5Nja9FlA/YOjSvx1jxbP+eMmx1EbBP1nAElEFkCqf547jC4i4/+L0FYeFYJF+n
1t0sJW9ilOzHz+pOemqF3IXi9wPDrU3fGom27yGpQqlGcT4DutOm+B7N0KVknsl1
pk1qZLP8QlJN9TKNpkNZ9lT2Mtvr4gL6ug28O85+bJWOLjIv4zoAafF7hg2axQND
ahBM8Bm6O7vltCxBZGcbZwSiBeM1zZKSLVgyJN0O4brIKVGv6eUwqLrEo/McLSRQ
BtS5hCquVns8ofsTVbcodhJ9dujWqCVlbC99jJneheh39Yp2UoJ60tZsjticy2R4
JfTRaOb+2pOUeu477/4jgv+hWW8dDEwSmXWkVB+2W9303ucEWRI=
=JqVY
-----END PGP SIGNATURE-----


--=-=UJq5lIhAUx7qlR=-=--



--===============8270042741998707247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8270042741998707247==--


