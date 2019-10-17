Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BD0DB687
	for <lists+openwrt-devel@lfdr.de>; Thu, 17 Oct 2019 20:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	MIME-Version:Date:Message-ID:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4upf4Oh27OI97O656We/fA/Zd3buU4bX+FINTBVtWE0=; b=jqs1uoNaRMGEXV2kXNclkXEZ8/
	bgjh9491zzEeSsYVnLhfRghi4ocIZ83bNH5VJoi9pzeo+zFXeY36j5ScdShbT9rFTsHa1xX64fjBx
	vOIbugz4DmUCVFCbmRISRNVVsViN1tmpR6QyNG2LkcYHGf3JHtce2KOvP5p3Ilp/SUMT4yH7GFzOP
	0cvNO9oS05TtFmipatGQCoJcqk2eR54AxAKTs+PC3py9cIAE/J8eRUng59KC1v+iJfhpS4xTooo6o
	mP18jVGenzQsKt3kkSEkHIcDy5oojbfA0fwojjl/JV8zmdEvePTKGcxTQmVQ+dtMjkUD1ui2edhZX
	iBF9hYSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAp6-0001zP-Vl; Thu, 17 Oct 2019 18:48:33 +0000
Received: from masdeu.rogerpueyo.com ([5.134.119.116])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLAoy-0001yO-WA
 for openwrt-devel@lists.openwrt.org; Thu, 17 Oct 2019 18:48:27 +0000
Received: from [147.83.42.157] (dync-42-157.ac.upc.edu [147.83.42.157])
 by masdeu.rogerpueyo.com (Postfix) with ESMTPSA id 3058271D
 for <openwrt-devel@lists.openwrt.org>; Thu, 17 Oct 2019 20:48:16 +0200 (CEST)
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Openpgp: preference=signencrypt
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
To: openwrt-devel@lists.openwrt.org
Message-ID: <f71533ed-80c9-d17b-20de-57b4c1cb7e2a@guifi.net>
Date: Thu, 17 Oct 2019 20:48:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------1AE3E2E774836DB7A470F2CB"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_114825_310435_9178ACE0 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC] ath79: support for MikroTik wAP AC:
 vmlinux.elf + DTB file
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--------------1AE3E2E774836DB7A470F2CB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to port the "MikroTik RouterBOARD wAP G-5HacT2HnD", also
known as "wAP AC" to ath79 (it's already supported in ar71xx) and I got
stuck. I think I can't add the corresponding DTB to the kernel image,
which has to be in ELF format so that the bootloader accepts it.

So far, I get the device to boot the vmlinux.elf or the
vmlinux-initramfs.elf images and show some output on the console, but it
stops immediately. From what I have been able to find around, I suspect
that the line:

[=C2=A0=C2=A0=C2=A0 0.000000] OF: fdt: No valid device tree found, contin=
uing without

suggests that the DTB was not appended to the kernel, so it can not be
parsed and the device ends up stopping at:

[=C2=A0=C2=A0=C2=A0 0.000000] Failed to get CPU node
[=C2=A0=C2=A0=C2=A0 0.000000] sched_clock: 32 bits at 100 Hz, resolution =
10000000ns,
wraps every 21474836475000000ns


I would like to ask you for your advice on how to generate the ELF
images so that they include the dtb, since I am not able to make it and
I can't go beyond that on supporting the device.

Please find attached the complete boot log (28 lines) and the patch I
have been working on (also at
https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-wapg-5hact2h=
nd_wip).

Thank you very much,

Roger




--------------1AE3E2E774836DB7A470F2CB
Content-Type: text/plain; charset=UTF-8;
 name="bootlog.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="bootlog.txt"

WyAgICAwLjAwMDAwMF0gTGludXggdmVyc2lvbiA0LjE5Ljc5IChsZUBidWlsZGVyKSAoZ2Nj
IHZlcnNpb24gOC4zLjAgKE9wZW5XcnQgR0NDIDguMy4wIHIxMTIzNy1kMTA3MjA5NmY0KSkg
IzAgVHVlIE9jdCAxNSAyMTozMToxMyAyMDE5ClsgICAgMC4wMDAwMDBdIGJvb3Rjb25zb2xl
IFtlYXJseTBdIGVuYWJsZWQKWyAgICAwLjAwMDAwMF0gQ1BVMCByZXZpc2lvbiBpczogMDAw
MTk3NTAgKE1JUFMgNzRLYykKWyAgICAwLjAwMDAwMF0gU29DOiBRdWFsY29tbSBBdGhlcm9z
IFFDQTk1NTYgdmVyIDEgcmV2IDAKWyAgICAwLjAwMDAwMF0gRGV0ZXJtaW5lZCBwaHlzaWNh
bCBSQU0gbWFwOgpbICAgIDAuMDAwMDAwXSAgbWVtb3J5OiAwNDAwMDAwMCBAIDAwMDAwMDAw
ICh1c2FibGUpClsgICAgMC4wMDAwMDBdIEluaXRyZCBub3QgZm91bmQgb3IgZW1wdHkgLSBk
aXNhYmxpbmcgaW5pdHJkClsgICAgMC4wMDAwMDBdIE9GOiBmZHQ6IE5vIHZhbGlkIGRldmlj
ZSB0cmVlIGZvdW5kLCBjb250aW51aW5nIHdpdGhvdXQKWyAgICAwLjAwMDAwMF0gUHJpbWFy
eSBpbnN0cnVjdGlvbiBjYWNoZSA2NGtCLCBWSVBULCA0LXdheSwgbGluZXNpemUgMzIgYnl0
ZXMuClsgICAgMC4wMDAwMDBdIFByaW1hcnkgZGF0YSBjYWNoZSAzMmtCLCA0LXdheSwgVklQ
VCwgY2FjaGUgYWxpYXNlcywgbGluZXNpemUgMzIgYnl0ZXMKWyAgICAwLjAwMDAwMF0gWm9u
ZSByYW5nZXM6ClsgICAgMC4wMDAwMDBdICAgTm9ybWFsICAgW21lbSAweDAwMDAwMDAwMDAw
MDAwMDAtMHgwMDAwMDAwMDAzZmZmZmZmXQpbICAgIDAuMDAwMDAwXSBNb3ZhYmxlIHpvbmUg
c3RhcnQgZm9yIGVhY2ggbm9kZQpbICAgIDAuMDAwMDAwXSBFYXJseSBtZW1vcnkgbm9kZSBy
YW5nZXMKWyAgICAwLjAwMDAwMF0gICBub2RlICAgMDogW21lbSAweDAwMDAwMDAwMDAwMDAw
MDAtMHgwMDAwMDAwMDAzZmZmZmZmXQpbICAgIDAuMDAwMDAwXSBJbml0bWVtIHNldHVwIG5v
ZGUgMCBbbWVtIDB4MDAwMDAwMDAwMDAwMDAwMC0weDAwMDAwMDAwMDNmZmZmZmZdClsgICAg
MC4wMDAwMDBdIHJhbmRvbTogZ2V0X3JhbmRvbV9ieXRlcyBjYWxsZWQgZnJvbSBzdGFydF9r
ZXJuZWwrMHg5OC8weDRhOCB3aXRoIGNybmdfaW5pdD0wClsgICAgMC4wMDAwMDBdIEJ1aWx0
IDEgem9uZWxpc3RzLCBtb2JpbGl0eSBncm91cGluZyBvbi4gIFRvdGFsIHBhZ2VzOiAxNjI0
MApbICAgIDAuMDAwMDAwXSBLZXJuZWwgY29tbWFuZCBsaW5lOiAgIHJvb3Rmc3R5cGU9c3F1
YXNoZnMsamZmczIKWyAgICAwLjAwMDAwMF0gRGVudHJ5IGNhY2hlIGhhc2ggdGFibGUgZW50
cmllczogODE5MiAob3JkZXI6IDMsIDMyNzY4IGJ5dGVzKQpbICAgIDAuMDAwMDAwXSBJbm9k
ZS1jYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDQwOTYgKG9yZGVyOiAyLCAxNjM4NCBieXRl
cykKWyAgICAwLjAwMDAwMF0gV3JpdGluZyBFcnJDdGwgcmVnaXN0ZXI9MDAwMDAwMDAKWyAg
ICAwLjAwMDAwMF0gUmVhZGJhY2sgRXJyQ3RsIHJlZ2lzdGVyPTAwMDAwMDAwClsgICAgMC4w
MDAwMDBdIE1lbW9yeTogNTA3NTZLLzY1NTM2SyBhdmFpbGFibGUgKDQyNzNLIGtlcm5lbCBj
b2RlLCAxNzhLIHJ3ZGF0YSwgMTAwOEsgcm9kYXRhLCA4MDM2SyBpbml0LCAyMDZLIGJzcywg
MTQ3ODBLIHJlc2VydmVkLCAwSyBjbWEtcmVzZXJ2ZWQpClsgICAgMC4wMDAwMDBdIFNMVUI6
IEhXYWxpZ249MzIsIE9yZGVyPTAtMywgTWluT2JqZWN0cz0wLCBDUFVzPTEsIE5vZGVzPTEK
WyAgICAwLjAwMDAwMF0gTlJfSVJRUzogNTEKWyAgICAwLjAwMDAwMF0gRmFpbGVkIHRvIGdl
dCBDUFUgbm9kZQpbICAgIDAuMDAwMDAwXSBzY2hlZF9jbG9jazogMzIgYml0cyBhdCAxMDAg
SHosIHJlc29sdXRpb24gMTAwMDAwMDBucywgd3JhcHMgZXZlcnkgMjE0NzQ4MzY0NzUwMDAw
MDBucw==
--------------1AE3E2E774836DB7A470F2CB
Content-Type: text/x-patch;
 name="mikrotik_wap_ac.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="mikrotik_wap_ac.patch"

diff --git a/target/linux/ath79/dts/qca9556_mikrotik_rb-wapg-5hact2hnd.dt=
s b/target/linux/ath79/dts/qca9556_mikrotik_rb-wapg-5hact2hnd.dts
new file mode 100644
index 0000000000..9c86bd33c6
--- /dev/null
+++ b/target/linux/ath79/dts/qca9556_mikrotik_rb-wapg-5hact2hnd.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca9557.dtsi"
+
+/ {
+	compatible =3D "mikrotik,rb-wapg-5hact2hnd", "qca,qca9556";
+	model =3D "MikroTik RouterBOARD wAP G-5HacT2HnD";
+
+	aliases {
+		serial0 =3D &uart;
+	};
+
+	chosen {
+		bootargs =3D "console=3DttyS0,115200n8";
+	};
+
+	leds {
+		compatible =3D "gpio-leds";
+		pinctrl-names =3D "default";
+	};
+
+	keys {
+		compatible =3D "gpio-keys";
+
+		reset {
+			label =3D "reset";
+			linux,code =3D <KEY_RESTART>;
+			gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;
+			debounce-interval =3D <60>;
+		};
+	};
+};
+
+&spi {
+	status =3D "okay";
+	num-cs =3D <1>;
+
+	flash@0 {
+		compatible =3D "jedec,spi-nor";
+		reg =3D <0>;
+		spi-max-frequency =3D <25000000>;
+
+		partitions {
+			compatible =3D "fixed-partitions";
+			#address-cells =3D <1>;
+			#size-cells =3D <1>;
+
+			partition@0 {
+				label =3D "routerboot";
+				reg =3D <0x000000 0x00e000>;
+				read-only;
+			};
+
+			partition@e000 {
+				label =3D "hard_config";
+				reg =3D <0x000e000 0x00f000>;
+				read-only;
+			};
+
+			partition@f000 {
+				label =3D "bios";
+				reg =3D <0x000f000 0x010000>;
+				read-only;
+			};
+
+			partition@10000 {
+				label =3D "routerboot2";
+				reg =3D <0x010000 0x01f000>;
+				read-only;
+			};
+
+			partition@1f000 {
+				label =3D "soft_config";
+				reg =3D <0x001f000 0x020000>;
+				read-only;
+			};
+
+			partition@20000 {
+				compatible =3D "denx,uimage";
+				label =3D "firmware";
+				reg =3D <0x020000 0x1000000>;
+			};
+		};
+	};
+};
+
+&uart {
+	status =3D "okay";
+};
+
+&pcie0 {
+	status =3D "okay";
+
+	wifi@0,0 {
+		compatible =3D "qcom,ath10k";
+		reg =3D <0 0 0 0 0>;
+	};
+};
+
+&eth0 {
+	status =3D "okay";
+};
+
+&wmac {
+	status =3D "okay";
+};
diff --git a/target/linux/ath79/image/common-mikrotik.mk b/target/linux/a=
th79/image/common-mikrotik.mk
new file mode 100644
index 0000000000..24bc02a0f2
--- /dev/null
+++ b/target/linux/ath79/image/common-mikrotik.mk
@@ -0,0 +1,25 @@
+define Device/mikrotik
+	DEVICE_VENDOR :=3D MikroTik
+	DEVICE_PACKAGES :=3D kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+	BOARD_NAME :=3D routerboard
+	LOADER_TYPE :=3D elf
+	KERNEL_NAME :=3D vmlinux.elf
+	KERNEL_INITRAMFS_NAME :=3D vmlinux-initramfs.elf
+	MIKROTIK_CHUNKSIZE :=3D
+endef
+DEVICE_VARS +=3D MIKROTIK_CHUNKSIZE
+
+define Device/rb-nor-flash-16M
+	$(Device/mikrotik)
+	DEVICE_PACKAGES :=3D rbcfg rssileds -nand-utils kmod-ledtrig-gpio
+	IMAGE_SIZE :=3D 16000k
+	KERNEL_INSTALL :=3D 1
+	IMAGE/sysupgrade.bin :=3D append-kernel | kernel2minor -s 1024 -e | pad=
-to $$$$(BLOCKSIZE) | \
+	append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SI=
ZE)
+endef
+
+define Device/rb-nor-flash-16M-ac
+	$(Device/rb-nor-flash-16M)
+	DEVICE_PACKAGES +=3D kmod-ath10k-ct ath10k-firmware-qca988x-ct ath10k-f=
irmware-qca9887-ct kmod-usb-ehci
+	SUPPORTED_DEVICES +=3D rb-wapg-5hact2hnd mikrotik_rb-wapg-5hact2hnd
+endef
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/ima=
ge/generic.mk
index acb1ab4b0b..d88b8ed5a7 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -1,4 +1,5 @@
 include ./common-buffalo.mk
+include ./common-mikrotik.mk
 include ./common-netgear.mk
 include ./common-tp-link.mk
=20
@@ -684,6 +685,17 @@ define Device/librerouter_librerouter-v1
 endef
 TARGET_DEVICES +=3D librerouter_librerouter-v1
=20
+define Device/mikrotik_rb-wapg-5hact2hnd
+  $(Device/rb-nor-flash-16M-ac)
+  ATH_SOC :=3D qca9556
+  DEVICE_VENDOR :=3D MikroTik
+  DEVICE_MODEL :=3D MikroTik RouterBOARD wAP G-5HacT2HnD (wAP AC)
+	LOADER_TYPE :=3D elf
+	KERNEL :=3D kernel-bin | append-dtb
+	KERNEL_INITRAMFS :=3D kernel-bin | append-dtb
+endef
+TARGET_DEVICES +=3D mikrotik_rb-wapg-5hact2hnd
+
 define Device/nec_wg1200cr
   ATH_SOC :=3D qca9563
   DEVICE_VENDOR :=3D NEC

--------------1AE3E2E774836DB7A470F2CB
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------1AE3E2E774836DB7A470F2CB--

