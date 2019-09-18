Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1DBB62F6
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 14:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tf+ahm1/IHeztWBAP6vCG/50yd9UbFRCf3pI1JCGg48=; b=O2M
	tY2p+NWjQqZFuQ+Yv8DNwMz4QcyZdhmfBYX0gprR4tQ9M5zG5uaN6xZAA0PbJBymur2eeLJXBWt1h
	mrW3b4Q1jtgB7uluhabTsOCB8jEgPUFzuKL5T6jE2HJTMEIQilyBjIH/tQdZbGMFePX0lZkA6A0ej
	i+LSX3sy3rZD0mirYEagaGQ2+ilzbJUJyfIIKUNdg8nE4dlSaQJqB0ztyAoLMBHInisYhsURA20YI
	VFeKb+qCkRmAQXqkHJlVu3HLoIfaIBa90IJm9U0vWUOwHZiir66s1y1EwmG0ndlB49BW+E6Tn+jv8
	UgeHsvK3eefpPEt+JQKqqOBa2caKk/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYun-0002dH-3w; Wed, 18 Sep 2019 12:18:33 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYuU-0002cx-GC
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 12:18:16 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MCayD-1iJ3U43lxr-009j3L; Wed, 18
 Sep 2019 14:18:07 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 18 Sep 2019 14:18:07 +0200
Message-ID: <008301d56e1b$214f38b0$63edaa10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdVuGMYs5Q/A6MKYQ3mzdPNChgpiQA==
Content-Language: de
X-Provags-ID: V03:K1:HW5R5OWBFRylUCctohn2GTVNOI27O/2q49LA8UifQT8Xz+G8bmH
 Qs/wJnOuHLF5PJPzYM1ATbibj2w5eZZl0GQNiPNBNW3bk/varCii+Bcwkd5eeAelVBS1f2u
 W8CcU0WZmMkAmYRf1WsZGilkuxOi3OYWI/XDiVQqDWgyLp8BY47PaOx6DrB0gCZM9KCTflF
 f8PtF1Q+gweviDMSmX3DA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EXpE+yV6/I4=:xQkS9NUk9TEuT2d69i6tj3
 IoXO/2rdP/yJhr15Zgcrt8+BdhZiZ8F/VC2g7eU6IWxGwSGPmPd7ky7k4MS89WLEpbFK9/0la
 0OYnDjVng+xdY972KYc1PPiYKzRRRajdDAm1zct4StNSQcqKcULZwOhZywwLLCC8TwWuD0PqT
 JJLvhcYIVUls8jcn2mU6k+PRK6uLZKZhmGUcaVg9g+c4M5pQGpvgAPnjsJz6gSPdLKrXOB2aI
 6Q0115DHq161yZ+Mk3gmIB/gb3BDUImgb6AER6YQXkwPKVcDEMqD3MiHMWG3WVb9fY9zLReFq
 NXD3fS0OXBQ15zS8ihQmlg8o3X4tA+Z1T59EV8O3KWjVSQ91GbH53wCX9NN5k6AKDaFVCbtXG
 hNKbFdPG9RfMtB0j0/WnMUcip27F4/VKTqbtL7Nc6ftzZz7JsF4N4QM9RuhL8ifxBU0EgqF4T
 b9ibegyvhX95rFp0bO5CHT8+2+fFWdjPycLHarTAR6P501zhr82D/f4awsWuJmsttBS3kFJVw
 nckJl/mYaLcUzz8j6+Y+MVHJKSa8VPcQXKrZmhBAQJmry24VIANkNIphHU/zVML1JhxW/9k8/
 L3JK7vPafpl9O2vsTs9bU3E5oRQBVbYLsek6/mPWfgCRCsrbFZzwYfAGThP32JNSAyyBxGdVu
 xPDpZDG2i8WaArsObLvbf57xRqGsHN55/fdKBzAeJhuCtOADGJcIzv1FtRfMus9aaIXSeG/BZ
 s4W+/RKL93Ik3plHRR64dxCU5NxPq8PezZhmpCmTvzjiru4sqX21LXBmBNUV9RFza7JNGD/YS
 Qda+cwEP/cQ0K7dZ/w+60I4V2hiNd+3hlbiO/snt9yFkXCwP4YK0LPl0ifOwEpubnq3e8Cc+w
 C5ujIeM5HC0YpT2gAoUMLyNXWvj/gXH07ldE0eqMo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_051814_837949_52DBE184 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] Negative offset for checksum in ath79's
 10-ath9k-eeprom
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
Cc: sebastian_ml@gmx.net, chunkeey@gmail.com
Content-Type: multipart/mixed; boundary="===============0158138768365275531=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0158138768365275531==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=gaQuA429SJy2e9=-="

This is a multipart message in MIME format.

--=-=gaQuA429SJy2e9=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've encountered the following issue, for which I would like a second opini=
on.

In ath79's 10-ath9k-eeprom, in addition to patching the firmware MAC addres=
s, some devices also need a checksum adjustment:
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/base-file=
s/etc/hotplug.d/firmware/10-ath9k-eeprom#L60

For this purpose, the function ath9k_patch_fw_mac_crc is used (below ath9k_=
patch_fw_mac), where the chksum_offset is calculated by subtracting 10 from=
 the mac_offset.
(For ath10k chksum_offset value is hardcoded to 2).

However, in ath79's 10-ath9k-eeprom, some devices call this function with a=
 mac_offset of 0x2, e.g.

dlink,dir-825-c1|\
dlink,dir-835-a1)
	ath9k_eeprom_extract "art" 0x1000 0x440
	ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2

This would result in a negative chksum_offset.

To me this looks like a misuse of ath9k_patch_fw_mac_crc where ath9k_patch_=
fw_mac should have been used.
Or does anyone see a reason for this?
(I've added the device support authors in Cc)

If not, I would send the following fixes:
- Change ath9k_patch_fw_mac_crc to ath9k_patch_fw_mac for the relevant cases
- Add a check for negative values of chksum_offset and display a warning

List of affected devices:
dlink,dir-825-c1
dlink,dir-835-a1
wd,mynet-wifi-rangeextender

Best

Adrian

--=-=gaQuA429SJy2e9=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2CIHgACgkQoNyKO7qx
AnDCLg//X0QCGkQAL8UZhC9Dd/q2giDDQC2r5QnmPWQS1n/1ErmNhKTgsxlQEAqX
cbxfEt5ox0WqwZ5kJ4efK11YqFwcWNMBtdulIeRf4h1tXCdziapDXcXd3FI5QxzH
ipQomBd9cZoA9RHuh7IL5vUK2JA6p2eOVDnK6GHGYqA5iPOI3doDXY3OVR1AI+5g
wKo53AJYdV57Fy6rRfXCzQZTqDvWzsoq3iC2AwQhqBBGyK3/WgZTVT6fztI6I3Zr
oBa9QuWwM0JZRL9xLdospY5gLtPYV0ZwhPll8DEH+8EAsKGXw+mcz8gFfcSJtPe+
/b5h88tfb30OfA5fIQqQzC9xMgOTv27u5b848wSxZvAsLTj1kJttoR7Bz6HjwnAG
xgDa6+egC+pcj7Xxh20T71cBL8pc04XYSBgUeEL/hkJVJzBQsK0AzqXZRjFT6zoO
Qo7PHbSKVlw8H2byKlIBNzNlLIG4plnIx6CqZ4wFJ4BURDrx+CO3FfxIgS1NZPeJ
Hnv9QcfVx7kpXUxme9oa16PBudXubM9v3DzsLdgw+nBgFSXMtkW6NkhaV1KipM+I
SIJXmC4LCbMwz+WYhIJi3ukkLJzxA8M8asDNPaI/lnHbmUqzyFB5AF7XDMb8Mlmt
yGm3cjJKjA+cQOGGFROamSYBEQp+1KRQcgeDxoUi9k7MQMbE+eI=
=x4im
-----END PGP SIGNATURE-----


--=-=gaQuA429SJy2e9=-=--



--===============0158138768365275531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0158138768365275531==--


