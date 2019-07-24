Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1157360C
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 19:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f+aN/XZo9augs1/Awor2ctJvp2i8ORShIfmWCht+hio=; b=JcDpsftXsMkh7nwNimey+GUNP
	1fHJJRGq55Fl6NzEUTksI5nQuMfVGbUf3KakJxJ1KOt4LnrubcYC//vIgdgq6g4lJ1Gr8Y/ZuFY7e
	8HLfPg/Y2XeyqwLcMJR+iOgqgqMTwcHDQJJaOfAty9QoStziJ6yfCGx2WDXvvSGFfmHuWzE7NFhoV
	Gbeqp8VkNfMeJYejaQ+exW0IVaExigupUvh6rElCJJG8JHrD/sfAO7Vu8c/75aGrUn8tbsf+HyGhy
	EN2Fs1UH9Abj+4FBDP9lGCfDOpkqjlPgIZ+/SdxbvJrFctoiePhTWvLcTayzmpwnje3W2IqbcwuKb
	hF3JER/Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLPI-000790-VP; Wed, 24 Jul 2019 17:50:29 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLNr-00057s-O0
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 17:49:01 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MNLZc-1i1vzT2HoA-00OmT8; Wed, 24
 Jul 2019 19:48:53 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Rosen Penev'" <rosenp@gmail.com>
References: <20190724133351.2283-1-freifunk@adrianschmutzler.de>
 <CAKxU2N8HPCaEb1WahtbfbVGnJ-XOcjWa5_2GU2Bn=3QV9fhBKA@mail.gmail.com>
In-Reply-To: <CAKxU2N8HPCaEb1WahtbfbVGnJ-XOcjWa5_2GU2Bn=3QV9fhBKA@mail.gmail.com>
Date: Wed, 24 Jul 2019 19:48:53 +0200
Message-ID: <011b01d54248$0f176e50$2d464af0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQI6Qp/15RHHZCub3l65VSwZPVemXQJTmCVIpf1sw2A=
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:mv29HIeITcDj2qYDD6NM5ygdEcK0kIckXG2c/ro+Op749WI/r5V
 byz7ccxut+/wikku5dvy2OhiImoo9lZwD9hqgvwtpnZpxIGTI05eJ7HCZD/G6QvDDjLl0q5
 +qpomB0kxqzsPsO4UBgG8ox1cARQPzXa6jTCNHyY9QVRICvRfZlDQmS8iSJ0R0P3ZT0IxbL
 fqAZ3DTGby4JiaxNtzLBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Phhht3nI+KM=:U3aELFa86aIIwU1sgoG4DY
 TNLTLlxuHCSxw/Y6n8PMVYAouIw3szrHBsSQNNe/VeHzW1hCokvsh5cI6XiEvrQizgV7RqjCG
 3jA2kmRZpFW8qyd6ehX+IMLTJTu8sC5KryZ+fT5SaDyp4vwrRp+UHZqxWGsfB3rsCml32qBpg
 vROvXKUTd//ltlzlRoenE39k9DtbnH8Fu7lnEBGFProHvtdmtH2FxoBrx8fW2rGUMaBmaEVt/
 e0/M3BO7HyvWIPnDPs897XmUfbGREma/osM0s7onmbJtV6wozGHWUc5cSpMKIPrVQWEgAV6KZ
 0IoLViVxcksCqH9B0qE39/cDS+uy95MJkjJr8QfDJGUwpX42vrd35FjZIS2Td1c+HAOQU8lF7
 X46cEx13rCkGGq3IH9cWMzQ8/nOjbKqaUUnLNMPKNJks+ifuyDw7mC/lBV+Vnuw+W3kZUrsTi
 ZgZtVAxMnh6ZReMlXERJuEQpHHt8dd6bxJOE/pLlFifZNmFyWmLpXSUNyGai5xRenOxazCgPt
 GYQ/yW8KYILLjS/QA9ZNmni1DM1bMcR03O9bx3lMf0kHC1S+vWwh/SOP2eQyla3/FI1FCVnHV
 HvO2kE2UqT/xzMvH3F98VsHM57LBOBQMigRPhBr9nZ6sknKn7qOqgcl6iUXnPTnumFc+xzfvd
 eEDFxadMT8yhCgLQJ89lCODnatHYDdp7/betMonMZE/K4qr+7AFZH3yp5Cffi52SZ1Ck8ngkn
 J1dYD1jJJZMU6LssgEGeXWDbvmr8qt5gnCac6QF+F9bFIofGXZo+gPHl5I0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_104900_102588_6252B26B 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Replace backticks by $(...)
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1022485372768774983=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1022485372768774983==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=93rV4ghgPu870b=-="

This is a multipart message in MIME format.

--=-=93rV4ghgPu870b=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Rosen Penev [mailto:rosenp@gmail.com]
> Sent: Mittwoch, 24. Juli 2019 18:54
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Replace backticks by $(...)
>=20
> On Wed, Jul 24, 2019 at 6:34 AM Adrian Schmutzler
> <freifunk@adrianschmutzler.de> wrote:
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >  target/linux/mvebu/base-files/lib/upgrade/linksys.sh | 2 +-
> >  target/linux/mvebu/base-files/sbin/fan_ctrl.sh       | 6 +++---
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> > index 3f45d6cac5..ddf24836bc 100644
> > --- a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> > +++ b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> > @@ -6,7 +6,7 @@ linksys_get_target_firmware() {
> >
> >         local cur_boot_part mtd_ubi0
> >
> > -       cur_boot_part=3D`/usr/sbin/fw_printenv -n boot_part`
> > +       cur_boot_part=3D$(/usr/sbin/fw_printenv -n boot_part)
> >         if [ -z "${cur_boot_part}" ] ; then
> >                 mtd_ubi0=3D$(cat /sys/devices/virtual/ubi/ubi0/mtd_num)
> >                 case $(egrep ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f=
 2) in
> egrep is deprecated as well. I'm assuming you're running these through
> shellcheck.

I indeed got this hint from shellcheck, suggesting "grep -E" as replacement.
However, I'm not familiar with the old egrep.
So, I was not sure whether I really can replace it without side-effects, an=
d since I cannot test on this target, I decided against changing that.

If you tell me it's okay, I can include it in a v2.

Best

Adrian

> > diff --git a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> > index 06e462119d..4234668317 100755
> > --- a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> > +++ b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> > @@ -1,8 +1,8 @@
> >  #!/bin/sh
> >
> > -CPU_TEMP=3D`cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input`
> > -DDR_TEMP=3D`cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input`
> > -WIFI_TEMP=3D`cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input`
> > +CPU_TEMP=3D$(cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input)
> > +DDR_TEMP=3D$(cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input)
> > +WIFI_TEMP=3D$(cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input)
> >
> >  CPU_LOW=3D85
> >  CPU_HIGH=3D95
> > --
> > 2.20.1
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=93rV4ghgPu870b=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl04mgQACgkQoNyKO7qx
AnC76w/+I+oP92l2+WeIkHjbJi0uPn3K8nTUJaIOWTaLh3q/icSedMCybsukLMuj
SSpK0e6EdYW1D4PhNmFuFGC2vLyNZSL/CDuBRnkFUU1DSBoiwSHrI+vqpt4mvFw+
Oy2N32KurQeI2rIOHTy8Ik5T1U2TY4H3xLXUMH5tPQMISaEFxOycZ9cq8pbOE2An
8rpW9z7I3r6X5XufE9gI6UHn4xpmFy0KO96zIKHPl8pv4eK+bqdgKu2SUBL1iIlF
hUctXJ9HZrAoLafIkKwlbfS35OQr+uNNWQ3ajCY49IA/EaQpx3UQlTOEZcyMQ/Wl
vNWqkY3rVmGjATZux359E5aQBQsRwEjuYo7ybHfIhWg9+uXZ5GgrxIZiQMxqQbSo
QGwPdf9rMESxzLUiOtN4jhOeZEopSGVyUBMaGaEtj9gjXyoI35a0nlGhDPTcmVWN
SkFPqgcV51iborKtMI5VXaNMGUtGW4TShCNb90GKOHMDdcw5+rpf8rFqON/134j/
CTIc5deHU6GeO08/+UexOVrSLbjj1DyFl8u4ppg2H/NGZO4n1JzvAu/u2epFLiXF
zZwEAsTiUQsnXjyeNPsts75Ay4szJpeE0bTOvj+3ZNDctMMOLSruzNHYx0XWv/lf
Q0L7ekeGa7P5aBFjAbJZTwfGSSSiPCOHwKXrt1Muvde/AykUNes=
=G4ao
-----END PGP SIGNATURE-----


--=-=93rV4ghgPu870b=-=--



--===============1022485372768774983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1022485372768774983==--


