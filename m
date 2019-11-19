Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B96F102514
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 14:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3Sw1TW12USg5K+xMxXa8eJFgga2hPqQ6JA/5nH7nMq4=; b=n7s
	OGLTpXYSW/hkHOQyA+GuYZ8NX9zFTuXYDJDvWfbxUHCxEXtn9iLvV5wwkqkBQrqYJjhJUkjOXAh9O
	KsjyCnPhIVG86C5NnTT6sMcQjpDMLDYVCJn/1vaETwaKKy3qxsyaVAf9oyGHH0c8Ox4rihG1Okbe8
	CYRgH9S8BmsJe9XYr7HoKnUd9jA3JKeHT/eBjiTt0PVyk3R+f2jfkoBURyHVqgyNV5fq7c/63staz
	5tPY/jq6lsU+FpGpN3YF9tPicerPAo0iIf0EWErFrRW0z7Qr5qwsKo41rPkz/lb117iTx6nLUnoUT
	l3jDgITzEk1kdcWt4OrQUIiHERejLMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX39z-00040e-J7; Tue, 19 Nov 2019 13:03:11 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX39p-000408-Qq
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 13:03:04 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MHX3R-1ib9u53x9l-00DUlY
 for
 <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 14:02:56 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 19 Nov 2019 14:02:56 +0100
Message-ID: <001001d59ed9$a9b3ea90$fd1bbfb0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdWe2ZlZnqA91PS5Si+OPDtj8nyv3Q==
Content-Language: de
X-Provags-ID: V03:K1:sTw0J2otBY2XbL6EcnXLMUg7PdlnYq7GVm91chM0SFQK4qr2n09
 fLo0bxnmdu7ES+obu3epTRtSF/KtbL6Ua5IHSPtTQPJAQdEH9jT3ng02qb+AxFalsCy+jZ7
 aNVWD38mIfQszLew8AJ5WY0dR6MG3ftY86FceUuybUlU9prNTN4rRGAVTlQWlWOykrf/VPt
 78XkrHDRMi4tmXTkLglkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wXM18f+sd5c=:Yq6juNWT2joOqCfOz2u4wF
 oUXX1ysJk8qy082NVBGNVzqRNR4UWFVStCGqzbW65iO17uBbNLrENsHkmljfzHS727o2M7vEs
 Rrv1OPCAAy8+UHVJi8U6ZYFEyRDy2ftyyu9fFHPEGi1tTv5mv5DbkONLnOZ02w4q5nhZVSG7h
 fnEuJ5ecCCXv/dHyEfZ3pcbr/xb4Kef92j/fTQrXTbe4i993I4HAVi1XaU5CP139QYM/g6elO
 EXeOvmOdX51wP1M2HNcH+YiTEhBf5b5XzEPh6r78YoA9Vz91IHDXZV8ZDtuGlMfJKvYP2K/qy
 56ZHb4EI2VVf4C2rf3sDXIIcNPYcBd2WSoweABu6sBu3RGMWKCsbsTVi3uO6O+6TW33qpJotP
 aH/GdgnotWen5//jwjEXwpHtxtpxNpTDtlrJwcw8urZr8DpdWcOJ9OKlLHmLFPyCrOyk9RZzk
 sy//kW8KetgpS/5WYyHAtkNJB5y13Bd5ecgBSXs/y7qcLCXTJ8j0M1TnTcVh+WkTaQ41Uf99C
 atQuUSnSfLLNavNIL7qTksolPPi7ncjgfkObqZMAsoSNoZdXAf82N9kOXUvkU3vayvC4QAFvZ
 Ul6X2p9pt/MHytacWkuKu9Cw8GgpF29mitwNVmKGBVK5gg+8O5DkQzlUZmzfMSLhorsPezAWC
 leAjgRJYacz0vPDRf+PhwgpLqbh2Y2ctDRefdwV1A0G8ODP/O3jEqIvD4KVlt719V6873VG9V
 fovyGMIr7uhkWepsy/4sVPnpqABdT5Gpx/Ewvr29Y683VNr8WtJfgT4LqK2zm1Eq7i9pUYs7S
 hHwHAvClP68K/o1q5cDt4tCYnjRcNg22Dvsq5qaS71cFRwKA0Tw+1gXKL6MjTwqVQcJDz5PuO
 w96NlzIDUrw+2JQXgsC+ZETN2Ot9Ye7S/GJvBfy6Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_050303_436387_BB862A07 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] MAC address locations on Ubiquiti XM (ath9k)
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
Content-Type: multipart/mixed; boundary="===============5444026461166259727=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5444026461166259727==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=M0VUfUkZ+1Pyi0=-="

This is a multipart message in MIME format.

--=-=M0VUfUkZ+1Pyi0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

by coincidence, I've learned that label MAC addresses on Ubiquiti devices a=
ren't correct anymore after switching from phy0 to "expected" flash locatio=
ns in this patch:
https://github.com/openwrt/openwrt/commit/d421a8b9448968de0e3265f5beb469c21=
0a909ab

I've investigated that on a Ubiquiti Picostation M (ar71xx, I just happened=
 to have access to that):

The phy seems to get calibration data from EEPROM 0x1000 (note that bullet-=
m image is used):
ar71xx: https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/=
files/arch/mips/ath79/mach-ubnt-xm.c#L97
ath79: https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/ge=
neric/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom#L88

No explicit MAC address overwrite takes places. The phy0 MAC address on the=
 device is set up correctly.

However, when I manually try to find the address in the EEPROM partition, I=
 find it twice, with the following locations:
mtd_get_mac_binary EEPROM 0x120c
mtd_get_mac_binary EEPROM 0xa0bf

I expected it to be at 0x1002 where it is typically put by ath9k_patch_mac =
(offset +2).

However, I've found at least one reference to the first actual location in =
10-ath9k-eeprom, for dlink,dir-825-b1:
ath9k_patch_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c

So, can someone enlighten me what the correct location (offset 0x2 vs. 0x20=
c) depends on?

Thanks

Adrian

--=-=M0VUfUkZ+1Pyi0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3T5/0ACgkQoNyKO7qx
AnBaxQ/+KzFhiEZUPuDsNnnpcErTPcTh2ViPYiFHdr9mk/ptBWlT/UrycQC7JfNO
N6uSnQMokQdQeTCIp/OGioYrZfX5RRWwVMg1XvmfB8XKW5fyMxdHHoBtnaJB3rd4
BEmfUt6sVpJ3SWTDDSOCA9MLTA68UKl2g40cCgEJkRK87Ct+dLNkGM/G0KFknEFJ
U3OLXFF5xJ9jeomODCqoPBebuJk9dubX5eYsBVMjML7CN7f21JbBc1ns8NDelgmS
LKs0YsEG1dVhL4MeQJu7NSqp6OMQfynFZeUttlcLEfErA7qrwhZycmRzLsLmNkch
wzbESdbYegfh1p6EBTkQ2HKtoMQH9L4DvqLkpbOlUW0Vsojm6zhyVyqKPgM31yIv
ofp6zfhBYuMdQTlfcjqIZdzeFR54wJzyThWflqU43wJjBXqu7E0SMDXqx61Jg0q6
SzZAbf7QQJa/jBszjLDj7zYXGdw/j3CWJQNLWdWkErxd7fXloa4pifRx9Baw8Lsz
DzajzHx1oruKOTTSWkKQySS9DhQ7JodJHlVXAcHTUpQSutCnwr+mWUFWwk2EIqvB
7oQXkeGTi1peRvJcnuI/qSAy+y821OX5KckGd6r/16nh/xesAN8riDyHDxbvQ46V
AwkHCBoFBd9M7SJUDbPpsIf4AFaemnh+rXtEay4yl2rRrSTPd3M=
=dtSh
-----END PGP SIGNATURE-----


--=-=M0VUfUkZ+1Pyi0=-=--



--===============5444026461166259727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5444026461166259727==--


