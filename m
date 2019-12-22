Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BE3128EAC
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 16:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lqdV2eTOTNWy+CaPLw+YITwoA9/DEXKMsAGppfx+oXs=; b=db6/oIKG0sQGUM
	UorJzUbQj5mg2c+wOKTjTyCaL5Ir3IxBiKruWRs6r7bpzdilB8eCtfL4oVXxfVOYy/sOxarYAEee1
	o55vLdAvpZhRtrCxqHCNIz49uiOyEQ9WKkPA0AGetSkVP+A8GMQ+lfet1CYJ4fAXlPAAwT7jZ6kOj
	wlOiMDnW583u+Cwot9NaHmzL9JVFq7iPA328C7DWA/Kef1w9TN84ByhHYaYW3y+q3PcsujwnHJ/SV
	R1aq0X7A1yL40d+ijgI8sUgU2tR6hIr5EyYiQx+B0ZOUXxqzX7gAc9muHtSX+Oaox2iyEmpogS9i4
	hDeWdFWd0QT2h1ItjZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij3RY-00083D-LL; Sun, 22 Dec 2019 15:46:56 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij3RQ-00082L-Gf
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 15:46:51 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M8QFi-1iefiZ0kgi-004PAE for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Dec 2019 16:46:39 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Dec 2019 16:45:54 +0100
Message-Id: <20191222154555.1814-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:NWywKMDOPTLfpbcD7ZDMsd4Hfwy9ZX9PEh1jnf+MCdM8R3MFyvO
 xAlBLjS21m2DiaXtpjUZ7XAVyEdTKXgjwNrsLFYxZf1DLs0V3jYmVyphugze4g+wrR53ZbS
 JfpJSu7MGpRBEfxsuPd1j61otQqOAK1JuAgo7FRY7NNXMA1v0ZyTk0mOFiAWEXg6le9RNJF
 hG5bAHHkRQZ7c20t/HmLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XE/VRSvj2AU=:hrX4q2k1Cx7SXqcnJEpVTG
 isXdItb/TRO64QvDxdXYfoeu+S7mAFgpMahUhfB0S2xDzlE65mjbRuA08dAvJxNbAMVrQrKIO
 +y1SiM8SnWiNNRAPl5H/FWEvTcS4TTmAvIjMdhuex55LEKtYzTQf8awkKvYp9aQHaALXqCTQp
 qMawtE6sWcktGcwoR1TqNWTyJQsV81N7SBWG78I7qeVRDukx6cNbVRhtqw/pl/0BNFmNVGWTV
 iPa9T5hRdVTgqt9bZhM5Qij63Z8gHmAOS9xXmUgE2Uid/gv33e/WVwTiiZ5s6EI3yOCGX6tc9
 hNrnHGiNkxckNPdn8+Ac8O2Q5rQM6OaziSsD28XfSwTTrcACJ/CC5BaC1nDjOKi4e57NZb2Nt
 31gViOUU6BXhxIyWU+J70UuoDog0BmMDKl7PcslmxjpSaidOj+gNInQsaURp6L9l0BDdDwj6+
 yL7aCL5raVVfflryJrPvgnz6oVfMqgyALYLVhfSFB8OUy+69KI/3nL6sYoUf2s+xV5jk0kZjm
 jsAxqgF+NSLCa4wroZ0nlHcninGgumWI2xcNaUEb6RmCy8mEn/7okRYm5O+ewkOZnpAkzLe2X
 U6sO4UzES4e/BFaHGRaHXr9hj1VjO86fCu+ZwZ7aiZuCP8zvVX15ssQW+XItemXoxaxe+44FQ
 zqdhk6KH2pYnn5HgiLL9WNMUXyNjnlteNepIr2Z32lTjHwB3JJxHT2D8rbpALhJ8PKBURiXZy
 mq0Y4HHUPyv75Ott2l3I38d9bV1av4w+08x5JegNpEJncHkOXzIkK2IX++Bvo0hVhuzx+Fe6B
 GYAtS8W/h5pvVXHXVCuMkrJ8t+Ke+D+/GvKyzaL/aEuwoANALMPqbpcK8QHAbJJSuipfcq4uR
 dGzOydt3BxJ3piV2nd3yUky1MLEQh9tPh32OcQ6cU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_074648_855403_B10C98D1 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 1/2] ipq40xx: build DEVICE_DTS based on SOC
 and device name
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch uses the SOC variable to calculate DTS names automatically
based on the SOC and the device definition node name.

This reduces redundancy and (by having to choose DTS name
appropriately) will unify the naming of a device in different places
(image/Makefile, DTS name, compatible, image name). This is supposed
to make life easier for developers and reviewers.

Since the kernel uses a "soc-device.dts" scheme for this target, we
use this for the derivation of DEVICE_DTS, too, and rename the files
not having followed it so far.

Note that for some devices the kernel itself is inconsistent, leaving
us with a manual overwrite for ap.dk01.1-c1 and ap.dk04.1-c1.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 ...040.dts => qcom-ipq4018-fritzbox-4040.dts} |  0
 ...0ac-c1.dts => qcom-ipq4019-e2600ac-c1.dts} |  2 +-
 ...0ac-c2.dts => qcom-ipq4019-e2600ac-c2.dts} |  2 +-
 ...e2600ac.dtsi => qcom-ipq4019-e2600ac.dtsi} |  0
 ...sys_ea8300.dts => qcom-ipq4019-ea8300.dts} |  0
 ...040.dts => qcom-ipq4018-fritzbox-4040.dts} |  0
 ...0ac-c1.dts => qcom-ipq4019-e2600ac-c1.dts} |  2 +-
 ...0ac-c2.dts => qcom-ipq4019-e2600ac-c2.dts} |  2 +-
 ...e2600ac.dtsi => qcom-ipq4019-e2600ac.dtsi} |  0
 ...sys_ea8300.dts => qcom-ipq4019-ea8300.dts} |  0
 ...019-32m.dts => qcom-ipq4019-u4019-32m.dts} |  2 +-
 ...lec-u4019.dtsi => qcom-ipq4019-u4019.dtsi} |  0
 target/linux/ipq40xx/image/Makefile           | 55 ++++++++++---------
 .../901-arm-boot-add-dts-files.patch          |  8 +--
 .../901-arm-boot-add-dts-files.patch          | 10 ++--
 15 files changed, 42 insertions(+), 41 deletions(-)
 rename target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/{qcom-ipq4018-fritz4040.dts => qcom-ipq4018-fritzbox-4040.dts} (100%)
 rename target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/{qcom-ipq4019-qxwlan-e2600ac-c1.dts => qcom-ipq4019-e2600ac-c1.dts} (97%)
 rename target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/{qcom-ipq4019-qxwlan-e2600ac-c2.dts => qcom-ipq4019-e2600ac-c2.dts} (97%)
 rename target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/{qcom-ipq4019-qxwlan-e2600ac.dtsi => qcom-ipq4019-e2600ac.dtsi} (100%)
 rename target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/{qcom-ipq4019-linksys_ea8300.dts => qcom-ipq4019-ea8300.dts} (100%)
 rename target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/{qcom-ipq4018-fritz4040.dts => qcom-ipq4018-fritzbox-4040.dts} (100%)
 rename target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/{qcom-ipq4019-qxwlan-e2600ac-c1.dts => qcom-ipq4019-e2600ac-c1.dts} (97%)
 rename target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/{qcom-ipq4019-qxwlan-e2600ac-c2.dts => qcom-ipq4019-e2600ac-c2.dts} (97%)
 rename target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/{qcom-ipq4019-qxwlan-e2600ac.dtsi => qcom-ipq4019-e2600ac.dtsi} (100%)
 rename target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/{qcom-ipq4019-linksys_ea8300.dts => qcom-ipq4019-ea8300.dts} (100%)
 rename target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/{qcom-ipq4019-unielec-u4019-32m.dts => qcom-ipq4019-u4019-32m.dts} (97%)
 rename target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/{qcom-ipq4019-unielec-u4019.dtsi => qcom-ipq4019-u4019.dtsi} (100%)

diff --git a/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts b/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-fritzbox-4040.dts
similarity index 100%
rename from target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
rename to target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-fritzbox-4040.dts
diff --git a/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c1.dts b/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts
similarity index 97%
rename from target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c1.dts
rename to target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts
index d5ee068c9f..8db5588492 100644
--- a/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c1.dts
+++ b/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts
@@ -4,7 +4,7 @@
  *
  */
 
-#include "qcom-ipq4019-qxwlan-e2600ac.dtsi"
+#include "qcom-ipq4019-e2600ac.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
diff --git a/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c2.dts b/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts
similarity index 97%
rename from target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c2.dts
rename to target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts
index 09ebde99ca..d88de61379 100644
--- a/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c2.dts
+++ b/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts
@@ -4,7 +4,7 @@
  *
  */
 
-#include "qcom-ipq4019-qxwlan-e2600ac.dtsi"
+#include "qcom-ipq4019-e2600ac.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
diff --git a/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac.dtsi b/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac.dtsi
similarity index 100%
rename from target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac.dtsi
rename to target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac.dtsi
diff --git a/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-linksys_ea8300.dts b/target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-ea8300.dts
similarity index 100%
rename from target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-linksys_ea8300.dts
rename to target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-ea8300.dts
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritzbox-4040.dts
similarity index 100%
rename from target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
rename to target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritzbox-4040.dts
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c1.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts
similarity index 97%
rename from target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c1.dts
rename to target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts
index ab0ec76f16..df1df2529a 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c1.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts
@@ -4,7 +4,7 @@
  *
  */
 
-#include "qcom-ipq4019-qxwlan-e2600ac.dtsi"
+#include "qcom-ipq4019-e2600ac.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c2.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts
similarity index 97%
rename from target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c2.dts
rename to target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts
index 1c6e859951..9348ef4eec 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac-c2.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts
@@ -4,7 +4,7 @@
  *
  */
 
-#include "qcom-ipq4019-qxwlan-e2600ac.dtsi"
+#include "qcom-ipq4019-e2600ac.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac.dtsi b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac.dtsi
similarity index 100%
rename from target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-qxwlan-e2600ac.dtsi
rename to target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-e2600ac.dtsi
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-linksys_ea8300.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-ea8300.dts
similarity index 100%
rename from target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-linksys_ea8300.dts
rename to target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-ea8300.dts
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019-32m.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-u4019-32m.dts
similarity index 97%
rename from target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019-32m.dts
rename to target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-u4019-32m.dts
index 606ac165ba..63fbfb65c1 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019-32m.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-u4019-32m.dts
@@ -2,7 +2,7 @@
 
 /dts-v1/;
 
-#include "qcom-ipq4019-unielec-u4019.dtsi"
+#include "qcom-ipq4019-u4019.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-u4019.dtsi
similarity index 100%
rename from target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi
rename to target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-u4019.dtsi
diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index fada35a49d..6cbabf1979 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -9,6 +9,7 @@ define Device/Default
 	KERNEL_INITRAMFS_PREFIX := $$(IMG_PREFIX)-$(1)-initramfs
 	KERNEL_PREFIX := $$(IMAGE_PREFIX)
 	KERNEL_LOADADDR := 0x80208000
+	DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
 	SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
 	IMAGE/sysupgrade.bin = sysupgrade-tar | append-metadata
 	IMAGE/sysupgrade.bin/squashfs :=
@@ -65,13 +66,13 @@ define Device/8dev_jalapeno-common
 	$(call Device/UbiFit)
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
+	SOC := qcom-ipq4018
 endef
 
 define Device/8dev_jalapeno
 	$(call Device/8dev_jalapeno-common)
 	DEVICE_VENDOR := 8devices
 	DEVICE_MODEL := Jalapeno
-	DEVICE_DTS := qcom-ipq4018-jalapeno
 endef
 TARGET_DEVICES += 8dev_jalapeno
 
@@ -80,7 +81,7 @@ define Device/alfa-network_ap120c-ac
 	$(call Device/UbiFit)
 	DEVICE_VENDOR := ALFA Network
 	DEVICE_MODEL := AP120C-AC
-	DEVICE_DTS := qcom-ipq4018-ap120c-ac
+	SOC := qcom-ipq4018
 	DEVICE_PACKAGES := kmod-usb-acm \
 		kmod-tpm-i2c-atmel uboot-envtools
 	BLOCKSIZE := 128k
@@ -95,7 +96,7 @@ define Device/aruba_ap-303
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := Aruba
 	DEVICE_MODEL := AP-303
-	DEVICE_DTS := qcom-ipq4029-ap-303
+	SOC := qcom-ipq4029
 	DEVICE_PACKAGES := ipq-wifi-aruba_ap-303
 	IMAGES := sysupgrade.bin
 endef
@@ -105,7 +106,7 @@ define Device/asus_map-ac2200
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := ASUS
 	DEVICE_MODEL := Lyra (MAP-AC2200)
-	DEVICE_DTS := qcom-ipq4019-map-ac2200
+	SOC := qcom-ipq4019
 	IMAGES := sysupgrade.bin
 	DEVICE_PACKAGES := ath10k-firmware-qca9888-ct kmod-ath3k
 endef
@@ -115,7 +116,7 @@ define Device/asus_rt-ac58u
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := ASUS
 	DEVICE_MODEL := RT-AC58U
-	DEVICE_DTS := qcom-ipq4018-rt-ac58u
+	SOC := qcom-ipq4018
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
 	DTB_SIZE := 65536
@@ -136,7 +137,7 @@ define Device/avm_fritzbox-4040
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := AVM
 	DEVICE_MODEL := FRITZ!Box 4040
-	DEVICE_DTS := qcom-ipq4018-fritz4040
+	SOC := qcom-ipq4018
 	BOARD_NAME := fritz4040
 	IMAGE_SIZE := 29056k
 	UBOOT_PATH := $(STAGING_DIR_IMAGE)/uboot-fritz4040.bin
@@ -152,7 +153,7 @@ define Device/avm_fritzbox-7530
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := AVM
 	DEVICE_MODEL := FRITZ!Box 7530
-	DEVICE_DTS := qcom-ipq4019-fritzbox-7530
+	SOC := qcom-ipq4019
 	DEVICE_PACKAGES := fritz-caldata fritz-tffs-nand
 	IMAGES := sysupgrade.bin
 endef
@@ -162,7 +163,7 @@ define Device/avm_fritzrepeater-1200
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := AVM
 	DEVICE_MODEL := FRITZ!Repeater 1200
-	DEVICE_DTS := qcom-ipq4019-fritzrepeater-1200
+	SOC := qcom-ipq4019
 	DEVICE_PACKAGES := fritz-caldata fritz-tffs-nand ipq-wifi-avm_fritzrepeater-1200
 	IMAGES := sysupgrade.bin
 endef
@@ -172,7 +173,7 @@ define Device/avm_fritzrepeater-3000
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := AVM
 	DEVICE_MODEL := FRITZ!Repeater 3000
-	DEVICE_DTS := qcom-ipq4019-fritzrepeater-3000
+	SOC := qcom-ipq4019
 	DEVICE_PACKAGES := ath10k-firmware-qca9984-ct fritz-caldata fritz-tffs-nand
 	IMAGES := sysupgrade.bin
 endef
@@ -180,7 +181,6 @@ TARGET_DEVICES += avm_fritzrepeater-3000
 
 define Device/cilab_meshpoint-one
 	$(call Device/8dev_jalapeno-common)
-	DEVICE_DTS := qcom-ipq4018-meshpoint-one
 	DEVICE_VENDOR := Crisis Innovation Lab
 	DEVICE_MODEL := MeshPoint.One
 	DEVICE_PACKAGES := kmod-i2c-gpio kmod-iio-bmp280-i2c kmod-hwmon-ina2xx kmod-rtc-pcf2127
@@ -192,7 +192,7 @@ define Device/compex_wpj419
 	$(call Device/UbiFit)
 	DEVICE_VENDOR := Compex
 	DEVICE_MODEL := WPJ419
-	DEVICE_DTS := qcom-ipq4019-wpj419
+	SOC := qcom-ipq4019
 	DEVICE_DTS_CONFIG := config@12
 	KERNEL_INSTALL := 1
 	BLOCKSIZE := 128k
@@ -205,7 +205,7 @@ define Device/compex_wpj428
 	$(call Device/FitImage)
 	DEVICE_VENDOR := Compex
 	DEVICE_MODEL := WPJ428
-	DEVICE_DTS := qcom-ipq4028-wpj428
+	SOC := qcom-ipq4028
 	DEVICE_DTS_CONFIG := config@4
 	BLOCKSIZE := 64k
 	IMAGE_SIZE := 31232k
@@ -222,7 +222,7 @@ define Device/engenius_eap1300
 	DEVICE_MODEL := EAP1300
 	DEVICE_DTS_CONFIG := config@4
 	BOARD_NAME := eap1300
-	DEVICE_DTS := qcom-ipq4018-eap1300
+	SOC := qcom-ipq4018
 	KERNEL_SIZE := 5120k
 	IMAGE_SIZE := 25344k
 	IMAGES := sysupgrade.bin
@@ -234,7 +234,7 @@ define Device/engenius_ens620ext
 	$(call Device/FitImage)
 	DEVICE_VENDOR := EnGenius
 	DEVICE_MODEL := ENS620EXT
-	DEVICE_DTS := qcom-ipq4018-ens620ext
+	SOC := qcom-ipq4018
 	DEVICE_DTS_CONFIG := config@4
 	BLOCKSIZE := 64k
 	PAGESIZE := 256
@@ -261,7 +261,7 @@ define Device/glinet_gl-b1300
 	DEVICE_VENDOR := GL.iNet
 	DEVICE_MODEL := GL-B1300
 	BOARD_NAME := gl-b1300
-	DEVICE_DTS := qcom-ipq4029-gl-b1300
+	SOC := qcom-ipq4029
 	KERNEL_SIZE := 4096k
 	IMAGE_SIZE := 26624k
 	IMAGES := sysupgrade.bin
@@ -294,7 +294,7 @@ define Device/linksys_ea6350v3
 	DEVICE_VENDOR := Linksys
 	DEVICE_MODEL := EA6350
 	DEVICE_VARIANT := v3
-	DEVICE_DTS := qcom-ipq4018-ea6350v3
+	SOC := qcom-ipq4018
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
 	KERNEL_SIZE := 3072k
@@ -310,7 +310,7 @@ define Device/linksys_ea8300
 	$(call Device/FitzImage)
 	DEVICE_VENDOR := Linksys
 	DEVICE_MODEL := EA8300
-	DEVICE_DTS := qcom-ipq4019-linksys_ea8300
+	SOC := qcom-ipq4019
 	KERNEL_SIZE := 3072k
 	IMAGE_SIZE := 87040k
 	BLOCKSIZE := 128k
@@ -326,7 +326,7 @@ define Device/meraki_mr33
 	$(call Device/FitImage)
 	DEVICE_VENDOR := Cisco Meraki
 	DEVICE_MODEL := MR33
-	DEVICE_DTS := qcom-ipq4029-mr33
+	SOC := qcom-ipq4029
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
 	IMAGES = sysupgrade.bin
@@ -339,6 +339,7 @@ define Device/netgear_ex61x0v2
 	DEVICE_DTS_CONFIG := config@4
 	NETGEAR_BOARD_ID := EX6150v2series
 	NETGEAR_HW_ID := 29765285+16+0+128+2x2
+	SOC := qcom-ipq4018
 endef
 
 define Device/netgear_ex6100v2
@@ -346,7 +347,6 @@ define Device/netgear_ex6100v2
 	DEVICE_VENDOR := Netgear
 	DEVICE_MODEL := EX6100
 	DEVICE_VARIANT := v2
-	DEVICE_DTS := qcom-ipq4018-ex6100v2
 endef
 TARGET_DEVICES += netgear_ex6100v2
 
@@ -355,7 +355,6 @@ define Device/netgear_ex6150v2
 	DEVICE_VENDOR := Netgear
 	DEVICE_MODEL := EX6150
 	DEVICE_VARIANT := v2
-	DEVICE_DTS := qcom-ipq4018-ex6150v2
 endef
 TARGET_DEVICES += netgear_ex6150v2
 
@@ -363,7 +362,7 @@ define Device/openmesh_a42
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := OpenMesh
 	DEVICE_MODEL := A42
-	DEVICE_DTS := qcom-ipq4018-a42
+	SOC := qcom-ipq4018
 	DEVICE_DTS_CONFIG := config@om.a42
 	BLOCKSIZE := 64k
 	KERNEL = kernel-bin | lzma | fit lzma $$(DTS_DIR)/$$(DEVICE_DTS).dtb | pad-to $$(BLOCKSIZE)
@@ -379,7 +378,7 @@ define Device/openmesh_a62
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := OpenMesh
 	DEVICE_MODEL := A62
-	DEVICE_DTS := qcom-ipq4019-a62
+	SOC := qcom-ipq4019
 	DEVICE_DTS_CONFIG := config@om.a62
 	BLOCKSIZE := 64k
 	KERNEL = kernel-bin | lzma | fit lzma $$(DTS_DIR)/$$(DEVICE_DTS).dtb | pad-to $$(BLOCKSIZE)
@@ -397,6 +396,7 @@ define Device/qcom_ap-dk01.1-c1
 	DEVICE_MODEL := AP-DK01.1
 	DEVICE_VARIANT := C1
 	BOARD_NAME := ap-dk01.1-c1
+	SOC := qcom-ipq4019
 	DEVICE_DTS := qcom-ipq4019-ap.dk01.1-c1
 	KERNEL_INSTALL := 1
 	KERNEL_SIZE := 4096k
@@ -413,6 +413,7 @@ define Device/qcom_ap-dk04.1-c1
 	DEVICE_VENDOR := Qualcomm Atheros
 	DEVICE_MODEL := AP-DK04.1
 	DEVICE_VARIANT := C1
+	SOC := qcom-ipq4019
 	DEVICE_DTS := qcom-ipq4019-ap.dk04.1-c1
 	KERNEL_INSTALL := 1
 	KERNEL_SIZE := 4048k
@@ -428,7 +429,7 @@ define Device/qxwlan_e2600ac-c1
 	DEVICE_MODEL := E2600AC
 	DEVICE_VARIANT := C1
 	BOARD_NAME := e2600ac-c1
-	DEVICE_DTS := qcom-ipq4019-qxwlan-e2600ac-c1
+	SOC := qcom-ipq4019
 	KERNEL_SIZE := 4096k
 	IMAGE_SIZE := 31232k
 	IMAGES := sysupgrade.bin
@@ -443,7 +444,7 @@ define Device/qxwlan_e2600ac-c2
 	DEVICE_VENDOR := Qxwlan
 	DEVICE_MODEL := E2600AC
 	DEVICE_VARIANT := C2
-	DEVICE_DTS := qcom-ipq4019-qxwlan-e2600ac-c2
+	SOC := qcom-ipq4019
 	KERNEL_INSTALL := 1
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
@@ -457,7 +458,7 @@ define Device/unielec_u4019-32m
 	DEVICE_MODEL := U4019
 	DEVICE_VARIANT := 32M
 	BOARD_NAME := u4019-32m
-	DEVICE_DTS := qcom-ipq4019-unielec-u4019-32m
+	SOC := qcom-ipq4019
 	KERNEL_SIZE := 4096k
 	IMAGE_SIZE := 31232k
 	IMAGES := sysupgrade.bin
@@ -469,7 +470,7 @@ define Device/zyxel_nbg6617
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := ZyXEL
 	DEVICE_MODEL := NBG6617
-	DEVICE_DTS := qcom-ipq4018-nbg6617
+	SOC := qcom-ipq4018
 	ROOTFS_SIZE := 24960k
 	RAS_BOARD := NBG6617
 	RAS_ROOTFS_SIZE := 19840k
@@ -491,7 +492,7 @@ define Device/zyxel_wre6606
 	DEVICE_VENDOR := ZyXEL
 	DEVICE_MODEL := WRE6606
 	DEVICE_DTS_CONFIG := config@4
-	DEVICE_DTS := qcom-ipq4018-wre6606
+	SOC := qcom-ipq4018
 	IMAGES := sysupgrade.bin
 	IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
 endef
diff --git a/target/linux/ipq40xx/patches-4.14/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.14/901-arm-boot-add-dts-files.patch
index f7efd415f1..6c1ed49cde 100644
--- a/target/linux/ipq40xx/patches-4.14/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.14/901-arm-boot-add-dts-files.patch
@@ -21,7 +21,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4018-ens620ext.dtb \
 +	qcom-ipq4018-ex6100v2.dtb \
 +	qcom-ipq4018-ex6150v2.dtb \
-+	qcom-ipq4018-fritz4040.dtb \
++	qcom-ipq4018-fritzbox-4040.dtb \
 +	qcom-ipq4018-jalapeno.dtb \
 +	qcom-ipq4018-nbg6617.dtb \
 +	qcom-ipq4018-rt-ac58u.dtb \
@@ -32,10 +32,10 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4019-fritzbox-7530.dtb \
 +	qcom-ipq4019-fritzrepeater-1200.dtb \
 +	qcom-ipq4019-fritzrepeater-3000.dtb \
-+	qcom-ipq4019-linksys_ea8300.dtb \
++	qcom-ipq4019-ea8300.dtb \
 +	qcom-ipq4019-map-ac2200.dtb \
-+	qcom-ipq4019-qxwlan-e2600ac-c1.dtb \
-+	qcom-ipq4019-qxwlan-e2600ac-c2.dtb \
++	qcom-ipq4019-e2600ac-c1.dtb \
++	qcom-ipq4019-e2600ac-c2.dtb \
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
diff --git a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
index 52484b3dd3..8e97b3b51b 100644
--- a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
@@ -21,7 +21,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4018-ens620ext.dtb \
 +	qcom-ipq4018-ex6100v2.dtb \
 +	qcom-ipq4018-ex6150v2.dtb \
-+	qcom-ipq4018-fritz4040.dtb \
++	qcom-ipq4018-fritzbox-4040.dtb \
 +	qcom-ipq4018-jalapeno.dtb \
 +	qcom-ipq4018-meshpoint-one.dtb \
 +	qcom-ipq4018-nbg6617.dtb \
@@ -36,11 +36,11 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4019-fritzbox-7530.dtb \
 +	qcom-ipq4019-fritzrepeater-1200.dtb \
 +	qcom-ipq4019-fritzrepeater-3000.dtb \
-+	qcom-ipq4019-linksys_ea8300.dtb \
++	qcom-ipq4019-ea8300.dtb \
 +	qcom-ipq4019-map-ac2200.dtb \
-+	qcom-ipq4019-qxwlan-e2600ac-c1.dtb \
-+	qcom-ipq4019-qxwlan-e2600ac-c2.dtb \
-+	qcom-ipq4019-unielec-u4019-32m.dtb \
++	qcom-ipq4019-e2600ac-c1.dtb \
++	qcom-ipq4019-e2600ac-c2.dtb \
++	qcom-ipq4019-u4019-32m.dtb \
 +	qcom-ipq4019-wpj419.dtb \
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-ap-303.dtb \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
