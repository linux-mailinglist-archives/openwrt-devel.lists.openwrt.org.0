Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D281EFF62
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 15:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cJXUVyjMKDcbEbwK0cgdHwRLpyLLFKp/bzbjxn5n+bc=; b=j+f
	NSyhEetgfC4z6X9B2BqP7sbIJuiSvMK3I7srx9rfhRrVDlmYOZuIT1QqwAen9lmdMT8wxkoe55/qt
	E+KQIo10nMr6/Dwrxou7DKp/SG3I+Y9iZcTjVWCgLmweLbiXstJ0Ln4vPhrMMTauS3wyVU3eU7s5R
	GwzFbB9pdG2uDqbbPOIlfWPSF3eb+SdUolT0VYOv6w+bh5Iexy/9wAbSO+FnaQZFG3cA/A8lBkVri
	ku1+/tF02G5zTjVYOwmUcUUO7rHa5ZGPDuN545qdrh7MjP8YD/pIOidXgx6JhpFlrstCR8AgxGT24
	CLofrJ/6hjg6/AoELKVm+c8jjsJuHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRzT2-0008N5-0n; Tue, 05 Nov 2019 14:05:56 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRzSu-0008MQ-5z
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 14:05:50 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MybCV-1hiZuU1nLB-00z1YS
 for
 <openwrt-devel@lists.openwrt.org>; Tue, 05 Nov 2019 15:05:43 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 5 Nov 2019 15:05:43 +0100
Message-ID: <012e01d593e2$1ced66b0$56c83410$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AdWT4Fx/7+9yQotUSbO97mLoLnh1+A==
X-Provags-ID: V03:K1:HeZroBpDArte1ht0/k0qU/vnmjlCf83zFLjmjLDg04gtVn45bL6
 Ss3/goyAmVOuiguoxBYyjLP9/OLyc6s2D0acCCmqR00aUGrG8dtiFcYkOVC9eChBLvxBpjJ
 MA71py/thP1tdJ5N+J3SCEg/10fyVDFcKJBwi3RvedT0ISdlQb0/JTWkmJnCFSoHkA+ir1j
 WsWL3rl1Z+lpkGi8jP17g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P2gvZFjgLRo=:VhwZGd287QcJkFap3gk47G
 bcl5Mv2n4sbvSfRhno3MnLVrUVdwn/sr+KxRwnInYkKiASRJzo2NAK5cJ/AYSe1dw2aODO+HX
 n01WqnoViAkO5rVs32WffbOZt4pvJFZ7f9/cNub3pVMz556cmwN4A86m8IlqqpNWER0i+x61u
 1IH9gcN8qEvhv0r+AQvMB0/egoTWekvKtAjSG0wd0jJFpDeQMTwBtRhr+FtORUek4OWNgivH9
 67Q+2EmUyWYh9jzr95ZNlnv8g1nEikdn8Oz4sL6Ncdj87DTCGxptwRuFOonXDsBN2jhMpyOtF
 N6QVILV3hzpe9JWi6JGKcrNUBYZjoqIaqbTLia1a6AXKQafZZ/KdYZfVrRX7rx0PdBjT+JgBj
 BKczmXEH+2x5AMwM371joHZK8r5DePL3Cjb00uQ0+yO4sYUaM/mMGzVylNBtlLB9TsvzhvAmT
 LHkDYhA6WOVdjnP7fa0jAPQwm/RkWcX/i7vQIDlV9LTOKSNO3BiUHHv7OCKRDwBnp6bmztMlw
 3PVLbuvqMpqmkkGhVsvzt/mfHIG78jCtSWX0Alu4mtnUtLWIEYMMkUYphpRt+zgvdzrpBb4DS
 9waiSNs6Mes8SqIII+JeRfTJkSOKrZJdfI9OspfA9cpsZlESUKAcdyReEJ3efLLe0b0vDiif0
 c9v1PTpopVX6fnoiRyNOZhWju9onNBO2NFrSRaBXOj3XdINshMrvo6NfpqMdZ2Kk7bDK85f66
 6bHqc1bLJzJNOoA477KgV890rhto6Igk9+vfN3eeydd2vsgpSJEO+HUGkvG6R7tmK1vXJveWZ
 TtAOpfAFCO/gZn9xfDS8PP395DkcWBdJUZdjk8RVvCPLvEnDDrQbkieZYYDwClocf0vnEscPl
 HTHMZepudve5UiUQYQTcQ6fPvf2kJ2NPEnImWL1wE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_060548_516409_E90D1F2C 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Broken WiFi on QCA9533 rev. 2
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
Content-Type: multipart/mixed; boundary="===============6040260728909543152=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6040260728909543152==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=/dJf5J0Og8leCY=-="

This is a multipart message in MIME format.

--=-=/dJf5J0Og8leCY=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

for quite some time already we are struggling with broken WiFi on some TP-L=
ink CPE devices having QCA9533 rev. 2 (QCA9533-BL3A SOC) in common.

I'd be happy on some help here, since I've exhausted my debugging capabilit=
ies.


1. Symptoms: WiFi looks up on the device, some TX traffic is shown in ifcon=
fig, RX is zero. The AP cannot be found by clients. "iw dev wlan0 scan" ret=
urns nothing.

2. Affected devices: TP-Link CPE210 v2/v3, CPE220 v3 (all QCA9533 rev. 2?);=
 no other QCA9533 devices known to be affected (specific to CPE or to QCA95=
33 rev. 2?)

3. For a certain model, there are devices which are working correctly and o=
thers which don't. There is no known indicator to find out whether a device=
 works or not. The state of a device does not change as far as we know (alw=
ays working or never working).

4. So far, only 2.4 GHZ-only devices were affected

5. There is no diagnostic output that indicates a WiFi problem. dmesg/logre=
ad look normal, there is no difference when compared between working and no=
t-working devices (despite RX=3D0/scan as stated above)

6. The problem seems to be present from the beginning (device support patch=
es), it just has been overlooked since it's not occurring on every device.

7. The ar71xx firmware for all devices works flawlessly, so it is an ath79-=
specific problem.


Other findings that might be connected or not:

a. On ath79 phy0 uses irq=3D11/irq=3D12 and on ar71xx irq=3D47. eth0 uses i=
rq=3D4 on both targets.

b. The following gpio is only found on ar71xx: gpio-495 ( |ath9k-phy0 ) in =
lo


I currently own a CPE210v2 with the bug and can test suggestions (if I'm ca=
pable of implementing them).
There is a device support PR for the CPE220 v3 suffering from the same prob=
lem: https://github.com/openwrt/openwrt/pull/2514

Despite, further reading may be found in forum discussion and bug report:
https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2333
https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2478
https://forum.openwrt.org/t/ath79-tp-link-cpe210-v2-0-wifi-not-working/40666

Initial support for CPE210 v2/v3 was done by me and bluelineXY, both alread=
y involved in the discussion. ;-)

Thanks for any hints!

Adrian

--=-=/dJf5J0Og8leCY=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3BgbMACgkQoNyKO7qx
AnCzxw/+JzjRzbgYxhqDx7uT5+BDK3eGSiBMaq+pfbhOxSoJ7Kaa7in5a+IDc5fu
pIQmHn2uQ3S49q4es5XoTK/JSrzl7EID0TdsrjMe/RdIydMhjVt8O2PuUjht0zke
UW2ur0p4EHPHXsq/hDL/2aCe8sAF1jDqGOn61eui4O84ceSmG0MD9L4nv/DDJcVw
fFuO3+703rRFiTohSNwP1Mu3nMQ0dB/Un53HV/qc/asUt/sjMKXxB6fNAtCI9Pfp
DgnNRiq9Rz4tetKlTeCRnBrpqYC5p0wLMBzEvxpA8tJ03tiBUqZAiYicLM2XC8Gx
pSWBafJWKYF2ZRHz1U0dkt9VRb401SNc1ZX4C9+J/TtuyAA7jbxSP1Qtnh5uyfTJ
XTDqQbL0vdCP/hS2OHPbe6vo3Ajv8cd86LZtL5/CYiQLWueG32dmHZeZNMjzjGbg
mBH6PkqVJ+SWR8IDo+9X66MgZ+M8PCJJwglMPvYh53IIw7HrSC3P9dqZkwC62PPa
5zVFCCLg4Kj0P/PlpJT8vBOmSrh9PCvzJALnNdMOSJgl08ABzUZ9ZBaJ5mcPP20Q
TWNM/uYZdOdvs9MKfehrgP5jWrq/XCPfqzbudiev6906IycObZEeteWXKFjG0q5Q
7/rlg73wSi0NNvN3lhVCOw5NXKYC9z3KcVWQpN0vHr0MOPxgL1w=
=DAGM
-----END PGP SIGNATURE-----


--=-=/dJf5J0Og8leCY=-=--



--===============6040260728909543152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6040260728909543152==--


