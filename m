Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A048BF88
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 19:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UoWYUlkjRDjcm/+kMsHdp161cWYylC4ONHjvi5bcvRo=; b=kBLedKEGNih2UGZHr90tNgDYn
	m/peJn8+IJBl4qsPijKyKEvaUFzqG98J2gpt7MtTCyWZzspBsAVkQrzr/DuGCdeIuUrNJdgmcCU5L
	mfA6teBfeLNX1HxNZWTIYaqs+6heH02SipWjOVqp4UQzqnOPSiJ4C6fI69DUf5lfRFQ4zDaO6nAvm
	uIFHOG7cD6gLQEKg/JhT8IkdBinXnipBAavjnXPvTjxcx147NnKqu0wSKx5hHcdxVN4iXNg3hRvT/
	+9YoJ7QBR8ENsY/UGkRWPPHvwAm4NBhOiCpQNyZdOsRuFBsDbQPOFJcDSSClRGJTc+9Sct8euhABE
	meVSEH4EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaU0-00025y-JG; Tue, 13 Aug 2019 17:21:16 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaTm-00025U-9Q
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 17:21:08 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MZCKd-1hkXcp0C5B-00V8Dz; Tue, 13
 Aug 2019 19:20:58 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, "'John Crispin'" <john@phrozen.org>
References: <20190813165904.1988-1-fercerpav@gmail.com>
In-Reply-To: <20190813165904.1988-1-fercerpav@gmail.com>
Date: Tue, 13 Aug 2019 19:20:57 +0200
Message-ID: <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJGTuvU5TPUP3BJ7aVufPNy3iqCAKYXVyOw
Content-Language: de
X-Provags-ID: V03:K1:WLomUPlxZzkTbVrZcQGGnD8QFwqRnnPKgPUhn2gWwbZWfsl3khE
 hcP4y7TSEGa/O0uifBvz1J7cGFJvrGSV5koM3KCR/3G5bizf3UfZOH6PCxyzjLvACEsqV6K
 fdqjqv68RTXdrhwpFBuFYthxGDXTLqc8sKQdm9BndGT5eE5JtWBGQlMH3CpRhW+Fg6pUIaW
 ZcV2U8fghmww9Ab7RJLJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qufp8pFEvo8=:5r0t0NF3twem2y/a25+9mT
 /Q+9ROQ+RqXpeYPB3L7CusWH+vA6UmMEbpPiX0OzrEjAaI/A6IpXKxfuQOFXjsZucat8Vq1r+
 p+bJBP2oS3D04vLPXiCKCHYcBzFiJKWc+M38Xri4CuEDb2CKnnY/y3aFd1GgaXpjYFx72Ze91
 5pRKcpoP5OVSqDyXd0BCJR52ss7vJYkR0dBMWJN2+OcjunMdhg95I3c3eIoCWrt576ZecuHW+
 atVFGXkxy54eZQQ2JyoqXXTAfGWOUJ5AdnFbsIS9llStX80iQYX0PyvuvheoS0uViKxU36RJs
 3d7mgmSszr0QpmMFnaW/YSQTs7NqiAr7fp3JHwJvmtSwiHOpDr0svI7yFrKavS0h54w9/PZI2
 CnPWTancYxv5Yy788WybLhCpC/iWXXj+vABaiAoiW7hJrLIg2+w3tY8NnnyTiuPoal4OEDQxd
 6XhE1zhatto2nJRTFo3uQEfkOqLAdZfKSbKVQNSwHr3F9nPBM3vCEljvNE9RFdjcFVz3c+h/W
 /8uRHfoJ90gML5rsTP0wnUsHi/sn6rhR/jvcvyE4qVhRQqy8mVEJMC70vBE+7tetYgiXZTd8j
 7Kti+txbt83QzQVF3xiuFotDrJnu1eD42XZvAFIg+OkpgwIwOOCmYFsqZ99t9zN9HLNyp4NpQ
 0MCSf35zXL49bItqN9gxEfOCBIy1gPT4t+2cbzWPMI5DORQ6hKkOk6F/WePnyrSxtL7PMHLVu
 jP//As9T/woteRiZDEPsPajZNN3SLgbBHL0PuWnyBuikavLgUrjMshn7rZI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_102102_624464_87E47D62 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi Wi-Fi
 Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7904204750566562923=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7904204750566562923==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=RTKkH9wGkYHHUx=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=RTKkH9wGkYHHUx=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Paul Fertser
> Sent: Dienstag, 13. August 2019 18:59
> To: John Crispin <john@phrozen.org>
> Cc: Paul Fertser <fercerpav@gmail.com>; openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi Wi-Fi =
Router 3G v2
>=20

Hi,

just some comments without deeper review:

> diff --git a/target/linux/ramips/dts/mt7621_xiaomi_mir3gv2.dts b/target/l=
inux/ramips/dts/mt7621_xiaomi_mir3gv2.dts
> new file mode 100644
> index 0000000000..81f6d20ae8
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_xiaomi_mir3gv2.dts
> @@ -0,0 +1,147 @@
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "xiaomi,mir3gv2", "mediatek,mt7621-soc";
> +	model =3D "Xiaomi Mi Router 3G v2";

Please separate the version with a minus, so "xiaomi,mir3g-v2" for compatib=
le and "xiaomi_mir3g-v2" for device node in .mk file. (Update 02_network, t=
oo ...)

> +	button {
> +		compatible =3D "gpio-keys-polled";
> +		poll-interval =3D <20>;

Try "gpio-keys" here and remove poll-interval ...

> +&ethernet {
> +	mtd-mac-address =3D <&factory 0xe000>;

Is there also a second MAC address for WAN in 0xe006 or somewhere else near=
by? Can the WAN MAC address be read somewhere else from flash?
I would like to avoid setting wan_mac by the default case in 02_network.

> +define Device/xiaomi_mir3gv2
> +  MTK_SOC :=3D mt7621
> +  IMAGE_SIZE :=3D 14848k
> +  DEVICE_VENDOR :=3D Xiaomi
> +  DEVICE_MODEL :=3D Mi router 3G v2

Capitalize "router". Despite, use DEVICE_VARIANT, so:

+  DEVICE_MODEL :=3D Mi Router 3G
+  DEVICE_VARIANT :=3D v2

> +  SUPPORTED_DEVICES +=3D mir3gv2

Drop this line.

Best

Adrian

--=-=RTKkH9wGkYHHUx=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1S8XYACgkQoNyKO7qx
AnDWCBAApb5qIXEdXdSpswnOjkf6u8kt+vF5iFfX7R7UcgAfADVoVvOHPmBrrHsN
J7GIsDZxVns4SC57W7OjX0xlSkfFTTwh1LCL/9k1BGV127HADj/DPrlA5EQC9yug
jp4RP29HaK22/O1qDCcX7f2pZr8Ym8TPq8gbIcMYthJmRlTZWQyXJUry/TPaSCy6
yDwax7DkcDO/ErhWZdFJUeJr60r8VZ0byoWbdIkur5Kc5LsT90q6f+KXrH/yaj5A
+Gli0yjqD9vDJxnGK3zdPI3dOqfAdBXoz3cOXqeoKl7ND8J0QUT9TCvnHNY9sy4t
LbGPp7jYIAyPcpJXSaH9TwanrrViQiAtOqqm78gtPVdR6rRQ014ODaItZJr2Lty9
JQxHeRopgH0Oxk5Sq/GKVx9skHsv5O2p05KJgkQlWIcitrhllYyEjF8dCAlswn9D
UmpfSdsTAM/eGKZ9a9xiJUDXd4kIavzU3qsld0PiXkdeudz2kPnHAOYSCdLCce1Q
bAbyNAcJ7w8YCGxWjElzq26lu9CxKlKcN0F+cfh0MaG37bgtBedqm5fy+bqrPdHq
lMteCnmj82Y+zllKssT7FvpM7m4Kah1O274Sit1LFbIReHSeg0Sch2TynGuaHQh8
Su9gggc+of4n8F96Tl6KVA9OmX3Njjhqm5I8jEA0extLRI16cw8=
=GX+4
-----END PGP SIGNATURE-----


--=-=RTKkH9wGkYHHUx=-=--



--===============7904204750566562923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7904204750566562923==--


