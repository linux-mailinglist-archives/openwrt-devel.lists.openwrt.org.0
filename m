Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0A112D510
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 00:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=imQbuLLqeuaU4FM4Q65NkpDbEx+RF6NFQB+DZkNNmHQ=; b=bngJ93YeiKpPoV8acoy6vKkeHE
	Tv4+yG1XZUfDFivrT4uki5i4sDniQW1H3VQqiOa0R02Y6PRJays2ZbNSZngsP0mtS0nm3hz02nf+n
	ukoF7I6+kk4KlLSFW4BSxd5JKmnYtJnvWDqk4PIkSeRd/tCV55awL9gDhUW7558t0M7+1z0ovkbZD
	1JxHcf0GqqNSDgoxfU9H5GqNWalF+05wUgBTTDB8CGtHRBSu0kyYNds4WSrHEVa19nJUfv4WLA9nl
	X4hC8X+MAL/L7hOjLdrVUiUaVjg1sG9AB8fq3lL9+fRpASThhmBsgozmeef7t5ZZzEroJrgIMHw4+
	3SCgbLxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im4Sr-0000VB-5V; Mon, 30 Dec 2019 23:28:45 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im4Sg-0000Tt-JK
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 23:28:36 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MlO9r-1jT8aJ3lT3-00lqG9 for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 00:28:30 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 00:27:47 +0100
Message-Id: <20191230232747.5357-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
References: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:0Sj+mWeLi0MkoyZALCpRKOvbR56g8OkG2+bnC+oo7pGoWA4yjE6
 +CBhNOmwGxtITFRZHB22Vd6xi7wvyGWizT51f6NLK5Tm17LzxPbPVh8WiigIo2Gnt8/QAi3
 b0yqM460jvypQINqsy00bE/Nn40hcnu/lWINx97wqf9I0G5wZ+o2bq7EJEutR+Xg3vI+Iqc
 g5klM9fmjN1oElBqitMwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:POxWt3atGkQ=:CjQZyenWz6ePGZFniqB1ww
 tHhUv4gxGx9nDSWM+LwGdGYUCPZUnxk21a04/A7IZ41XI/D+6s961qUILZC1u5G//FcTwe84V
 fr/qrzhoKJCdxNRQ+4h+b7l0Lg+nECCKaNyypmR0yEVH/GoThcQXVmO0NRKuu+75lwZ/efoCP
 iXM1u2BYzV1E07JelnWJ/KezAR6TLZaPehp24peMFTmgmKvxBAiiaert6jlfnqdWTI+pQbt1a
 mjktAPB95CvUkie+l5zpYikcQMU2KEOi87s/G97rrQGjp/FnM29vN+nogfXDMdrywa/tZOAAA
 6knuAeyMr+iqk2I+ZvvHrKj9Jw6xFGnUgEDNamlilpBCrRDrtynQzMhCp9AZyEAh1shKkZ85X
 hMHqIxvPacp3IXwZVRVAkFd91eLEg9cahyMtNjwIfVopaCJh/vlYkz63916idIK0TjEbbUQZP
 2lj7KaMICIy8KzmePqGIDaUTnpJechh1tVpHJq5A9MP5WXn1/u3KlzqRe5Dx3n/JBP3ntxMeH
 ZXs0JihANHXHX06IR4wZUdqrjNBx+wlzSzNXdNjcbIqu3K76M45g95A0c9ZXX1Oar4XJU+y9W
 dj8JnY2tfWPN99fZoJKl41vRhUfErcXTbWw2cUIYQXGVhIv21V8Nv8+psMufbzifzlK7/htbi
 hC6GdiFlABBPbIhjorXH//460/O65mDe2q89+v8QhOkn8cdc57HOxtfdaJFgmVfNQYr/hI/7I
 VANThzXGWOpiRYzpwLlYWSwuEV2NPEtBzMD/w2WrG5ihEtLnZI8mkBlg1CmZ4GcccbksofjBn
 OKuOi1phzxznqHJls0SsKJxl/n2ycXY4Qs83FMnPekIHHtaeI+gxv+mdM6sBBnfC0ypqy789E
 tSdGQ/mesUboJx0jY+onTvCd2ZReGvllkjlYMJy8c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_152834_927461_0C43BD8A 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/4] brcm63xx: align DTS model with Makefile
 and compatible
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

Since the model string in DTS is not required to derive board name
anymore, we can now align it with the model name in Makefile and
the compatible.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts    | 2 +-
 target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts  | 2 +-
 target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts | 2 +-
 target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts     | 2 +-
 target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts     | 2 +-
 .../linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts | 2 +-
 target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts  | 2 +-
 .../brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts     | 2 +-
 .../brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts     | 2 +-
 .../linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts | 2 +-
 target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts    | 2 +-
 .../brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts     | 2 +-
 .../linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts  | 2 +-
 .../linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts | 2 +-
 target/linux/brcm63xx/image/bcm63xx.mk                    | 8 ++++----
 15 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts b/target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts
index 3ceddd09a2..f09310e2bb 100644
--- a/target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts
+++ b/target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "Sagem F@ST2704N";
+	model = "Sagem F@st 2704N";
 	compatible = "sagem,fast-2704n", "brcm,bcm6318";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts b/target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts
index 1fe0d44810..d00d8fb4e5 100644
--- a/target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts
+++ b/target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "Sagem F@ST2704V2";
+	model = "Sagem F@st 2704 V2";
 	compatible = "sagem,fast-2704-v2", "brcm,bcm6328";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts b/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts
index a77362f2f6..0975cffd65 100644
--- a/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "BT Voyager V2500V";
+	model = "BT Voyager 2500V";
 	compatible = "bt,voyager-2500v-bb", "brcm,bcm6348";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts
index 60b945555b..945fcc1f18 100644
--- a/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "Sagem F@ST2404";
+	model = "Sagem F@st 2404";
 	compatible = "sagem,fast-2404", "brcm,bcm6348";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts
index a3394dd70d..a2d2717575 100644
--- a/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "Sagem F@ST2604";
+	model = "Sagem F@st 2604";
 	compatible = "sagem,fast-2604", "brcm,bcm6348";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts b/target/linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts
index aa2f337253..8b0d1cacfd 100644
--- a/target/linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "T-Com Speedport W500 V";
+	model = "T-Com Speedport W 500V";
 	compatible = "t-com,speedport-w-500v", "brcm,bcm6348";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts b/target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts
index 35ce1b010d..366eaf3bcd 100644
--- a/target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "USRobotics 9108";
+	model = "USRobotics USR9108";
 	compatible = "usrobotics,usr9108", "brcm,bcm6348";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts
index e1a3046c7f..de22658843 100644
--- a/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "SFR Neuf Box 4 (Foxconn)";
+	model = "SFR Neufbox 4 (Foxconn)";
 	compatible = "sfr,neufbox-4-foxconn-r1", "brcm,bcm6358";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts
index b28aaa3fe7..db6c5f3306 100644
--- a/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "SFR Neuf Box 4 (Sercomm)";
+	model = "SFR Neufbox 4 (Sercomm)";
 	compatible = "sfr,neufbox-4-sercomm-r0", "brcm,bcm6358";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts b/target/linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts
index 68f8588f55..4aed5f0eb6 100644
--- a/target/linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "T-Com Speedport W303 V";
+	model = "T-Com Speedport W 303V";
 	compatible = "t-com,speedport-w-303v", "brcm,bcm6358";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts b/target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts
index d1bf98a2b1..db8ce7318f 100644
--- a/target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts
+++ b/target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "Sagem F@ST2504n";
+	model = "Sagem F@st 2504N";
 	compatible = "sagem,fast-2504n", "brcm,bcm6362";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts b/target/linux/brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts
index a5184ff555..031aff0748 100644
--- a/target/linux/brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts
+++ b/target/linux/brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "SFR neufbox 6 (Sercomm)";
+	model = "SFR Neufbox 6 (Sercomm)";
 	compatible = "sfr,neufbox-6-sercomm-r0", "brcm,bcm6362";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts
index 36598645a3..77ecc62abd 100644
--- a/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts
+++ b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "Huawei HG622";
+	model = "Huawei EchoLife HG622";
 	compatible = "huawei,echolife-hg622", "brcm,bcm6368";
 
 	chosen {
diff --git a/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts
index 10fdcc6fd1..3f855bf0c9 100644
--- a/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts
+++ b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts
@@ -5,7 +5,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	model = "Huawei HG655b";
+	model = "Huawei EchoLife HG655b";
 	compatible = "huawei,echolife-hg655b", "brcm,bcm6368";
 
 	chosen {
diff --git a/target/linux/brcm63xx/image/bcm63xx.mk b/target/linux/brcm63xx/image/bcm63xx.mk
index 8c58c25617..f6937d6787 100644
--- a/target/linux/brcm63xx/image/bcm63xx.mk
+++ b/target/linux/brcm63xx/image/bcm63xx.mk
@@ -974,7 +974,7 @@ TARGET_DEVICES += sercomm_ad1018-nor
 define Device/sfr_neufbox-4-sercomm-r0
   $(Device/bcm63xx)
   DEVICE_VENDOR := SFR
-  DEVICE_MODEL := Neufbox4
+  DEVICE_MODEL := Neufbox 4
   DEVICE_VARIANT := Sercomm
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
@@ -986,7 +986,7 @@ TARGET_DEVICES += sfr_neufbox-4-sercomm-r0
 define Device/sfr_neufbox-4-foxconn-r1
   $(Device/bcm63xx)
   DEVICE_VENDOR := SFR
-  DEVICE_MODEL := Neufbox4
+  DEVICE_MODEL := Neufbox 4
   DEVICE_VARIANT := Foxconn
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
@@ -998,7 +998,7 @@ TARGET_DEVICES += sfr_neufbox-4-foxconn-r1
 define Device/sfr_neufbox-6-sercomm-r0
   $(Device/bcm63xx)
   DEVICE_VENDOR := SFR
-  DEVICE_MODEL := Neufbox6
+  DEVICE_MODEL := Neufbox 6
   CFE_BOARD_ID := NB6-SER-r0
   CFE_CHIP_ID := 6362
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
@@ -1121,7 +1121,7 @@ TARGET_DEVICES += tp-link_td-w8900gb
 define Device/usrobotics_usr9108
   $(Device/bcm63xx)
   DEVICE_VENDOR := USRobotics
-  DEVICE_MODEL := 9108
+  DEVICE_MODEL := USR9108
   CFE_BOARD_ID := 96348GW-A
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := $(B43_PACKAGES) $(USB1_PACKAGES)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
