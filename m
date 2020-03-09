Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C1B17EC8A
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 00:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uGWMG0lwSRZrZ5PkB15XnsMff8P5Y7IRavW3GLPugps=; b=qr5Kby/u6eObha1N6m+xDaMk6
	VjQdJkIlZBI/ZZfAJH7dVroeI0/U0ybB7wtwtbKRiTtVbt9xghupakwvCbLdcdufupHQUCRID6b8v
	mKDeNI9hLrf1Fp4YjqFDSPObhvyXJo8ANTdOGL4JXOGBPCEvSxldzlHXbd2ZOOgWhQ2ucd2YNU7nn
	QP5VlHZhwqi3uboWv30sYJJkElTNqAgXui8UQijw9GOZUAmK19fDDJTHw9Aj8NJKoO+vFxBNMJFSu
	pDWkFV7GDq1E3r6vb3ioEShb4arXO0KHRCql8Fj7xX1d/kGWuxv2Ebt/l1KaH4to+d2USSR+SUhng
	zhksR5hLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBRe1-00029W-Fd; Mon, 09 Mar 2020 23:17:09 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBRdu-00028U-Es
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 23:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583795817;
 bh=WcE98Gak73piPdbJknJDQlnRjzqmL4YOdLIcKqRiq1k=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=YDh7Oydb94k5uo94uS09Kjfv0Fi9UJssN0CgaxGf+89BhgDh/ZBmQHIvoxwmpj/W1
 /UI7PHai/baEqqgIKeZBFKvzeOfygSvh7EuztNxz3f0i30TSRxkq756phEfSzw5FRG
 EpJpX84LeWMPHiLdEzt6tdfFIJBjG1tEKBOpSxgg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([84.149.34.208]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MIx3I-1ivPrH1c30-00KSFj; Tue, 10
 Mar 2020 00:16:57 +0100
Date: Tue, 10 Mar 2020 00:16:55 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20200310001655.185c2abe@mir>
In-Reply-To: <056201d5f62a$dc2354e0$9469fea0$@adrianschmutzler.de>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
 <008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>
 <20200228213033.7df0aacf@mir>
 <4ec68236-6677-f396-c7cb-291c5fac4247@phrozen.org>
 <20200228222052.25fa02f1@mir>
 <056201d5f62a$dc2354e0$9469fea0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:FCvAquGdA95izqVpLS69KHJwlJyH+dwZMH6LAdxmw6jGUxKa+mv
 A8UpEpMvtUeHNsplILHGF+iXuSOgj0kS3JExxb5qgO1mJKZZU203u2rCmQ3i45v5j2PkudT
 b3TLm8y0LTti+v7BS5FF+C3ihFirNpEXPaI4PPByy1opLjBaavNGfpcCx0Q7jhMJVcAhiCv
 TNFmZoShwZBivuBBSbbFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5UeWtP18ROY=:lkZ27x35fWu0fBZrjCf1Q/
 T8vigrXcy3b/BS1l5Rb4JBE/Ez70sWLqHNEIsVx2oK118uFZ9MA60nkt2HsY5tRBWqmXMQQ+7
 fKEP9BcbArEr6X+HX5BHS7DOSNRMgJCSpVMjDtS3DwLbV4km/iBKGSXTU8vvQFdk62hHHb/Dk
 359e5gGoellXyY7E7hwT8D2KUWmp0e1rWSeQm5Qw7zfzJlM8LmIJJS7fjdq2mAGM19k69EUxT
 lW5yIacgl3lqvAwpj7kLi4sqbAnrJk+OPdDUfq0JMB6aDfcjvwqanwTQGvJ+zILc8gaKPVRJ7
 IuCmOgyGL0e99QcH46raXKk/QtUpKcrEECCAyQZoILtXpH41MUiHj+YBsE7f+SI5LbMKzE/Ag
 pYDMolGEOL+wt+elthCr/5+J7+zC20VPwTJmi9oGJTLkjGDkA/ZdrRiBsdrOb7hjUyoK+V0wR
 JR170IahrepDJhBuclIdyiWqzXiqy/Fc27xwr8sL7Efwcc6z7PRrVYvUKCtVM7IkkZ4U+zUJb
 vLiU+SrJIk6QqdIapNpiUu52N4CP8+lCHqEpqMNKO2QGfFK3xe0nHu+DwHZeWyywhDcILFm60
 RGz2G+yBlSyZf3RKmNBzRRQR+g4SN01Y7MQZG1G96TPZMGv1tUubVXWSCqZOS98QYE8dZu2hP
 Qd01L+0svjFrn+vo9xqDqoEWOBYNN2ctHTrwwh4Bqti0YI6nn6HZDFM+TTPPEOnVDyqkobvj+
 UlMG8oHRfF/1+wIsIoZFFYWuZYpvSGCpr3B4igwxfKQDZr7buEbalMU4jC9x54M/vOmMm4Hiy
 oBgKxEHjs4PzZKXxmpRJVx4RWQoxlnixC3HsQcTJijrgsbVg+NnpFs4KBOYxjCjgHaJbsGIwm
 GYijOdOUIuz19BYiRiouzKqj0IqAmQGrgGzpcMv41YmfnSPUY+K171YI+5HzrYKKfQf7ZiwPc
 6tnc/2yiroa2YrBq0VqKVPlXkcuxY5tbHu+Vp4Y4gvS2ZSSiiixy4JRQlk7QLYAF9AifEMVM7
 SVfcGswaoK1NliaPZJdAhVjpOD94If7P6+jS+5Iku+lc6vH+LOF3Y5rwryZRn/rI5hqSJYryR
 7N4zMM7omM0Dt9MHZhRQcVacdXDKCoPJT6Mh43Y4/RBA0Keyi/TRjCzDJ1RmJUgOPFCVd3pvd
 HGg43fbRzHu/+OuogK9jK+3+u0Tad0uVvhcaYpS53L1hCwurd6/ZqUmj9m/kd8hNc5oscbwPm
 EdADwxLzGKnJLWccq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_161702_844508_5C3BD2D8 
X-CRM114-Status: GOOD (  30.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [s.l-h[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Chuanhong Guo' <gch981213@gmail.com>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>,
 'John Crispin' <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============6576933801851476341=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6576933801851476341==
Content-Type: multipart/signed; boundary="Sig_/jnygh/mD2C0bkARLR4k=vW=";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/jnygh/mD2C0bkARLR4k=vW=
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi

On 2020-03-09, Adrian Schmutzler wrote:
> > -----Original Message-----
> > From: Stefan Lippers-Hollmann [mailto:s.l-h@gmx.de]
[...]
> > On 2020-02-28, John Crispin wrote: =20
> > > On 28.02.20 21:30, Stefan Lippers-Hollmann wrote: =20
> > > > On 2020-02-28, mail@adrianschmutzler.de wrote: =20
> > > >>> On 2020-02-28, Koen Vandeputte wrote: =20
> > [...] =20
> > > > ath79 with kernel 4.14 has already been (mostly) broken by "ath79: =
add
> > > > new ar934x spi driver" (ebf0d8dadeca443121f4f597c51bf6591e341caf), =
which
> > > > does break the (shared between all kernel versions) DTS definitions=
 for
> > > > NAND based ath79 devices (breaking compilation with kernel 4.14).
> > > >
> > > > Because of "FS#2524 - ath79-tiny: TP-Link TL-WR941ND v2.4: Marvel
> > > > MV88E6060 regression between kernel v4.14 and v4.19"
> > > > https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2524 I st=
ill do
> > > > regularly build ath79 with kernel 4.14, but in order to finish the =
build
> > > > I do need to comment out the affected devices: =20
> > [...] =20
> > > >
> > > > Admittedly, the affected TL-WR941ND v2 (4/32) is barely worth the e=
ffort
> > > > anymore. =20
[...] =20
> > Neither, nor. It's merely a report that kernel 4.14 support (albeit
> > technically present in source) for ath79 isn't functional anymore (and
> > hasn't been for a few weeks) anyways, regardless of the introduction of
> > kernel 5.4 and its changes to ag71xx. Kind of answering Adrian's previo=
us
> > question "By moving ag71xx to files-4.19 on ath79, I suspect 4.14 is br=
oken
> > now on this target."
[...]

> thanks for you detailed explanation.
>=20
> Is there a specific reason why you build based on master and do not use t=
he
> 19.07 stable branch with working 4.14 support?
[...]

As mentioned previously, the device in question isn't really in active=20
use anymore, I mostly do semi-regular regression testing with it.=20
Therefore my pain threshold for it is limited,=20
- enough to patch it back into the generic subtarget and build it (thanks=20
  to TARGET_MULTI_PROFILE && TARGET_PER_DEVICE_ROOTFS) as part of the=20
  build for actually useful devices,
- enough to rebase the patchset to bring it back into generic,
- enough to fix the build if the image got oversized again,=20
- enough to spend some efforts on debugging new issues,=20
but I probably wouldn't start a dedicated build just for this particular=20
device (as part of dedicated debugging, sure, but not regularly). If it=20
can't keep up with master builds, it's fate will be entertaining the dust=20
bunnies, before finally meeting its maker.

If this regression with ag71xx and Marvell MV88E6060 can't be fixed, it
would be better to stop generating images for this particular device, as
it's hard to recover. Therefore I'd suggest to add either of these=20
patches to master:

https://github.com/pkgadd/openwrt/commits/tl-wr941ndv2-deactivate

--
=46rom 3aacb4b374ee76bf2b0d2e43fc450a6bab50ffd9 Mon Sep 17 00:00:00 2001
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
Date: Mon, 9 Mar 2020 23:56:34 +0100
Subject: [PATCH] ath79-tiny: disable image generation for the tl-wr941nd v2/
 v3

Since kernel v4.19 support for the Marvell MV88E6060 switch used in
this devices has been broken, leading to an inaccesible device without
an enduser compatible recovery method (no push-button tftp recovery,
requiring serial console access and adding quite tiny 0-ohm SMD
resistors to fix the cut serial rx traces).

Disable image generation for this device until this gets fixed.

Signed-off-by: Stefan Lippers-Hollmann <s.l-h@gmx.de>
---
 target/linux/ath79/image/tiny-tp-link.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/=
image/tiny-tp-link.mk
index 29fdfec1e58..f0eaefbee41 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -338,7 +338,7 @@ define Device/tplink_tl-wr941-v2
   TPLINK_HWID :=3D 0x09410002
   TPLINK_HWREV :=3D 2
 endef
-TARGET_DEVICES +=3D tplink_tl-wr941-v2
+#TARGET_DEVICES +=3D tplink_tl-wr941-v2
=20
 define Device/tplink_tl-wr941-v4
   $(Device/tplink-4m)

--

or https://github.com/pkgadd/openwrt/commits/tl-wr941ndv2-nuke

--
=46rom 8dbdd50dc732d429e4650d375b56fc72587c5f42 Mon Sep 17 00:00:00 2001
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
Date: Tue, 10 Mar 2020 00:05:16 +0100
Subject: [PATCH] ath79-tiny: drop support for the tl-wr941nd v2/ v3

Since kernel v4.19 support for the Marvell MV88E6060 switch used in
this devices has been broken, leading to an inaccesible device without
an enduser compatible recovery method (no push-button tftp recovery,
requiring serial console access and adding quite tiny 0-ohm SMD
resistors to fix the cut serial rx traces).

Drop support for this device.

Signed-off-by: Stefan Lippers-Hollmann <s.l-h@gmx.de>
---
 .../ath79/dts/ar9132_tplink_tl-wr941-v2.dts   | 168 ------------------
 target/linux/ath79/image/tiny-tp-link.mk      |  13 --
 target/linux/ath79/tiny/config-default        |   5 -
 3 files changed, 186 deletions(-)
 delete mode 100644 target/linux/ath79/dts/ar9132_tplink_tl-wr941-v2.dts

diff --git a/target/linux/ath79/dts/ar9132_tplink_tl-wr941-v2.dts b/target/=
linux/ath79/dts/ar9132_tplink_tl-wr941-v2.dts
deleted file mode 100644
index 1be4d6183ac..00000000000
--- a/target/linux/ath79/dts/ar9132_tplink_tl-wr941-v2.dts
+++ /dev/null
@@ -1,168 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/dts-v1/;
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-
-#include "ar9132.dtsi"
-
-/ {
-	compatible =3D "tplink,tl-wr941-v2", "qca,ar9132";
-	model =3D "TP-Link TL-WR941N/ND v2/v3";
-
-	aliases {
-		led-boot =3D &led_system;
-		led-failsafe =3D &led_system;
-		led-running =3D &led_system;
-		led-upgrade =3D &led_system;
-		label-mac-device =3D &eth0;
-	};
-
-	keys {
-		compatible =3D "gpio-keys";
-
-		reset {
-			label =3D "reset";
-			linux,code =3D <KEY_RESTART>;
-			gpios =3D <&gpio 3 GPIO_ACTIVE_LOW>;
-			debounce-interval =3D <60>;
-		};
-
-		qss {
-			label =3D "qss";
-			linux,code =3D <KEY_WPS_BUTTON>;
-			gpios =3D <&gpio 7 GPIO_ACTIVE_LOW>;
-			debounce-interval =3D <60>;
-		};
-	};
-
-	leds {
-		compatible =3D "gpio-leds";
-
-		led_system: system {
-			label =3D "tp-link:green:system";
-			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
-		};
-
-		qss_r {
-			label =3D "tp-link:red:qss";
-			gpios =3D <&gpio 4 GPIO_ACTIVE_HIGH>;
-		};
-
-		qss_g {
-			label =3D "tp-link:green:qss";
-			gpios =3D <&gpio 5 GPIO_ACTIVE_HIGH>;
-		};
-
-		wlan {
-			label =3D "tp-link:green:wlan";
-			gpios =3D <&gpio 9 GPIO_ACTIVE_LOW>;
-			linux,default-trigger =3D "phy0tpt";
-		};
-	};
-
-	dsa {
-		compatible =3D "marvell,dsa";
-		#address-cells =3D <1>;
-		#size-cells =3D <0>;
-
-		dsa,mii-bus =3D <&mdio0>;
-		dsa,ethernet =3D <&eth0>;
-
-		switch@0 {
-			#address-cells =3D <1>;
-			#size-cells =3D <0>;
-			reg =3D <0>;
-
-			port@0 {
-				reg =3D <0>;
-				label =3D "wan";
-			};
-
-			port@1 {
-				reg =3D <1>;
-				label =3D "lan1";
-			};
-
-			port@2 {
-				reg =3D <2>;
-				label =3D "lan2";
-			};
-
-			port@3 {
-				reg =3D <3>;
-				label =3D "lan3";
-			};
-
-			port@4 {
-				reg =3D <4>;
-				label =3D "lan4";
-			};
-
-			port@5 {
-				reg =3D <5>;
-				label =3D "cpu";
-			};
-		};
-	};
-};
-
-&uart {
-	status =3D "okay";
-};
-
-&spi {
-	status =3D "okay";
-
-	flash@0 {
-		compatible =3D "jedec,spi-nor";
-		reg =3D <0>;
-		spi-max-frequency =3D <25000000>;
-
-		partitions {
-			compatible =3D "fixed-partitions";
-			#address-cells =3D <1>;
-			#size-cells =3D <1>;
-
-			uboot: partition@0 {
-				label =3D "u-boot";
-				reg =3D <0x000000 0x20000>;
-				read-only;
-			};
-
-			partition@20000 {
-				compatible =3D "tplink,firmware";
-				label =3D "firmware";
-				reg =3D <0x020000 0x3d0000>;
-			};
-
-			art: partition@3f0000 {
-				label =3D "art";
-				reg =3D <0x3f0000 0x10000>;
-				read-only;
-			};
-		};
-	};
-};
-
-&mdio0 {
-	status =3D "okay";
-};
-
-&eth0 {
-	status =3D "okay";
-
-	phy-mode =3D "rmii";
-	mtd-mac-address =3D <&uboot 0x1fc00>;
-
-	fixed-link {
-		speed =3D <100>;
-		full-duplex;
-	};
-};
-
-&wmac {
-	status =3D "okay";
-	mtd-cal-data =3D <&art 0x1000>;
-	mtd-mac-address =3D <&uboot 0x1fc00>;
-};
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/=
image/tiny-tp-link.mk
index 29fdfec1e58..3428e5c11db 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -327,19 +327,6 @@ define Device/tplink_tl-wr940n-v6
 endef
 TARGET_DEVICES +=3D tplink_tl-wr940n-v6
=20
-define Device/tplink_tl-wr941-v2
-  $(Device/tplink-4m)
-  SOC :=3D ar9132
-  DEVICE_MODEL :=3D TL-WR941ND
-  DEVICE_VARIANT :=3D v2/v3
-  DEVICE_ALT0_VENDOR :=3D TP-Link
-  DEVICE_ALT0_MODEL :=3D TL-WR941N
-  DEVICE_ALT0_VARIANT :=3D v2/v3
-  TPLINK_HWID :=3D 0x09410002
-  TPLINK_HWREV :=3D 2
-endef
-TARGET_DEVICES +=3D tplink_tl-wr941-v2
-
 define Device/tplink_tl-wr941-v4
   $(Device/tplink-4m)
   SOC :=3D ar7240
diff --git a/target/linux/ath79/tiny/config-default b/target/linux/ath79/ti=
ny/config-default
index 42243cfc481..9b8ed872a2b 100644
--- a/target/linux/ath79/tiny/config-default
+++ b/target/linux/ath79/tiny/config-default
@@ -1,11 +1,6 @@
 CONFIG_LEDS_RESET=3Dy
 CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=3Dy
 CONFIG_NET_DEVLINK=3Dy
-CONFIG_NET_DSA=3Dy
-CONFIG_NET_DSA_MV88E6060=3Dy
-# CONFIG_NET_DSA_TAG_QCA is not set
-CONFIG_NET_DSA_TAG_TRAILER=3Dy
-CONFIG_NET_SWITCHDEV=3Dy
 CONFIG_PHYLINK=3Dy
 CONFIG_PHY_AR7100_USB=3Dy
 CONFIG_PHY_AR7200_USB=3Dy

--

Regards
	Stefan Lippers-Hollmann

--Sig_/jnygh/mD2C0bkARLR4k=vW=
Content-Type: application/pgp-signature
Content-Description: Digitale Signatur von OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEMQMcJCzZm4GSqVV4v+AtZbHRQu0FAl5mzmcACgkQv+AtZbHR
Qu3WMw/6A4nEjv9xY3PNItD4P/1DIulB2DnHOEAPk2s6gLRNtDsVYPIWAAbcRIOS
8FBd2oiGKGR2KI7AU2vyDXEiiYUlfm1erHkQTzKZOw0ZYqREjRxcOdjap2+FCKW9
+/VIP6xHr2wpIJbVrKC6UyGODjIosGnSJhbXU4Wbw4ODWGhhwxn+LLHysdsuqwT/
6VD0EVQj3kBBAFpMzpOSPv4TNXOiIYicyw54Gz6JFOMeCnlf0AZt5VyCWsdpVqRT
R9N9j5E+XnLXk2a3aMqLlsGb0ELSvItGf+Z2r2/U3I3sO0wgFZ9eO+KT9Oa0B38c
1aEj3iN6WVPTQIHOXz9NnB2yYR0brxeh7tuptpklA7Shaj7c9xwoRRDU/sY1ld4e
FpOeI2lIjRtHTcAzHJg7kYK6FHQBrhRlzPsQhShppK0oPRMOu+IFpFav4Jc+eEm3
rZuEH/4iAjEB83R/x2W9JjqsWUk0VT3ZYLD6CCDRyznio2FWW02QQO4aCtMEv4RS
Cxu10gzGDdqbURALMDkiowX27z+fNzNAR848/HokrFGeOuCU/5bmhpYZaTL/PMPE
XexUu0E78F6iJea+1Kjh3qfRySFfiSo3zwcq20sroKHEyCJVWZdAfjxJG7L8HwaO
WfPBTeNWCb9pfqI87SYUEe7aFMr705J4Mfg0IM+PtQa0gLHLS/s=
=2hd6
-----END PGP SIGNATURE-----

--Sig_/jnygh/mD2C0bkARLR4k=vW=--


--===============6576933801851476341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6576933801851476341==--

