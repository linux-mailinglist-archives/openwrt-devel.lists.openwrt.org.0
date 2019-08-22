Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42261992E9
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 14:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oxf/SZTtO+BmeukM90dEqNvIk6qSntNRh5eS59nheqs=; b=PBQSbtmrdThb47
	mPF0KxGzLQqm/J9SBTfER2AnqRXj19nABlSi7B4Tr7LFBx3inJeLivc6U8xJ092NAS9YQNFD6fjZx
	OGIdz+u6rQBym99lpfmm9sgWn2l8EkbnEZzVYr5yYCRxnl79Yct+akCszjEiTlsyGw1dwhK7Rrofy
	cJkZ7MFCJ4wMGY2ZCXRll6gTY6Chbb8l2Qu5uge6H1bJL2F7kbNp14QbAPQKMhivM2S2Hdur7ioBC
	wVEOB6sn2nOZWBgvCMQ6IUeMhfmtxoHvTmkJ+cSTHdUrjFRHP5vXw4n77GW3Z6AVpWAnHKvOw9GCe
	d0/Mcn47i331Hpyg2/jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lv5-0008FF-1t; Thu, 22 Aug 2019 12:10:23 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0luk-0007QW-31
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 12:10:05 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N2BQM-1iNHzD1wfW-013d3T for <openwrt-devel@lists.openwrt.org>; Thu, 22
 Aug 2019 14:09:53 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 14:09:50 +0200
Message-Id: <20190822120950.1193-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6L+w7DKlXaPWV6NmISQvW80ewkKLyZv8mM50Y/cvMCBTognX2nG
 eRYHMkLVdsDnURbN8krVYLA1uiVz3n9DhNr12wUxe5/qcxsdOnSnwFsn5unGXV2w/ZToA2Q
 dBkvU+Dn/u6aheWu+z53Am1hxfWfRPlcN9zZEepz5IQvxo73mugZRci1b+8KvKHeKhpQHLJ
 j0kPNAt/b86TpyOL9RtYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SsSW2FQ5+mI=:amuTV4CkiAtB+x0g9zsZRi
 L9XRDDB7Ep8pxc9+XS61wBXA6UBFJfm4BYIXGdt+XsAzpfgudVJrdh+FcQKgIqS7aYd5FDCEs
 4waQelbHsvNB5zEWpIfLeAiyGqq1wjqKPsEoyUDspNNHTKtl7feESe5K1zG54qvB155pf5gR8
 +ELbLj1Ar0BZbkgwxS+33IvFFR15UWSp4WeJXQRWEpbMKPQ60eHM1enMK3911qYyFZMaktPfX
 Aaj49xzL50DKQYHy02kb3WgDymkL1eFK3v3+zMkJbYv+EiElivUoWpsvuPnCXG+ryXBgnh0Ga
 zFMRRBU0qFuSaWzxmKbCYqO8k2QIDxu7OPUrjRyXJv7txUmduoWO5LhGUF26e4jhUsCL03VRj
 QkZkPX0IxLnuAp+dxT9Vk9vWeihl//r2JUHXW0KB6mNKpY+UwH59nS9fTkrtVeMIWdSTJiRbi
 061vb4UDsB6lxo4DC09mNXHqtN109i/W3UvGUd9FqpH3psWp6IRio4ygtExuB9WxSQs8IsXSw
 Ngm7+LoU6x1osOBt0g5z8+Ka5+pPvqrxKWCQ92yMBzMnStTe5Ap6RsqEJ8OPuIzuUaPnNpC+b
 caH0rJsZ0Ni13ep92Ss//EPvBXsuN5+lS66uJQcSmiUkhAVddjII9l5ZwfzruVC+zVv5DRRQP
 GldiyI2k40GiiRT9VSMuzElFUXFaqqABJCDDbWrRl6l9xGI4q+ZDqF4KJznR+pv3atDR7sHSS
 DoWYuyrw5EP7uxjQNg5YdJa525vcbzjW1RjZ3wzE6u73b4DhVxuwqSs3pSqE8it3JdQfpf/+c
 So/W2yK6rSJltCr/quT+E5FuzbPZjYbaT8iBrcCU1Gb42Tsdbs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_051002_593188_2FFD800E 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] lantiq: sort device definitions in
 image/Makefile
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

This sorts the device definitions in image/Makefile alphabetically
for each subtarget/block.

The order of blocks has not been touched.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

During updating lantiq to DEVICE_VENDOR/DEVICE_MODEL scheme, it
became obvious that there is almost no sorting left in this file.

In the long run, one might want to also rearrange the blocks or
create subfiles like the sole one for tp-link.
---
 target/linux/lantiq/image/Makefile | 711 ++++++++++++++---------------
 1 file changed, 355 insertions(+), 356 deletions(-)

diff --git a/target/linux/lantiq/image/Makefile b/target/linux/lantiq/image/Makefile
index 4cacaccba9..a583dd09d7 100644
--- a/target/linux/lantiq/image/Makefile
+++ b/target/linux/lantiq/image/Makefile
@@ -136,6 +136,34 @@ endif
 
 ifeq ($(SUBTARGET),xway_legacy)
 
+define Device/arcadyan_arv4518pwr01
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV4518PWR01
+  IMAGE_SIZE := 3776k
+  DEVICE_DTS := ARV4518PWR01
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath5k wpad-mini
+  SUPPORTED_DEVICES += ARV4518PWR01
+endef
+TARGET_DEVICES += arcadyan_arv4518pwr01
+
+define Device/arcadyan_arv4518pwr01a
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV4518PWR01A
+  IMAGE_SIZE := 3776k
+  DEVICE_DTS := ARV4518PWR01A
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath5k wpad-basic
+  SUPPORTED_DEVICES += ARV4518PWR01A
+endef
+TARGET_DEVICES += arcadyan_arv4518pwr01a
+
 define Device/arcadyan_arv4520pw
   DEVICE_VENDOR := Arcadyan
   DEVICE_MODEL := ARV4520PW
@@ -186,81 +214,12 @@ define Device/arcadyan_arv452cqw
 endef
 TARGET_DEVICES += arcadyan_arv452cqw
 
-define Device/arcadyan_arv4518pwr01
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV4518PWR01
-  IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4518PWR01
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath5k wpad-mini
-  SUPPORTED_DEVICES += ARV4518PWR01
-endef
-TARGET_DEVICES += arcadyan_arv4518pwr01
-
-define Device/arcadyan_arv4518pwr01a
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV4518PWR01A
-  IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4518PWR01A
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath5k wpad-basic
-  SUPPORTED_DEVICES += ARV4518PWR01A
-endef
-TARGET_DEVICES += arcadyan_arv4518pwr01a
-
 endif
 
 ifeq ($(SUBTARGET),xway)
 
 # Danube
 
-define Device/bt_homehub-v2b
-  $(Device/NAND)
-  DEVICE_VENDOR := British Telecom
-  DEVICE_MODEL := Home Hub 2
-  DEVICE_VARIANT := Type B
-  BOARD_NAME := BTHOMEHUBV2B
-  DEVICE_DTS := BTHOMEHUBV2B
-  DEVICE_PACKAGES := kmod-usb-dwc2 \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	kmod-ltq-deu-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath9k kmod-owl-loader wpad-basic
-  SUPPORTED_DEVICES += BTHOMEHUBV2B
-endef
-TARGET_DEVICES += bt_homehub-v2b
-
-define Device/lantiq_easy50712
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Danube (EASY50712)
-  DEVICE_DTS := EASY50712
-  IMAGE_SIZE := 3776k
-endef
-TARGET_DEVICES += lantiq_easy50712
-
-define Device/audiocodes_mp-252
-  DEVICE_VENDOR := AudioCodes
-  DEVICE_MODEL := MediaPack MP-252
-  IMAGE_SIZE := 14848k
-  DEVICE_DTS := ACMP252
-  DEVICE_PACKAGES :=  kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	kmod-ltq-tapi kmod-ltq-vmmc \
-	kmod-usb-ledtrig-usbport kmod-usb-dwc2 \
-	kmod-rt2800-pci \
-	ltq-adsl-app ppp-mod-pppoa \
-	wpad-basic
-  SUPPORTED_DEVICES += ACMP252
-endef
-TARGET_DEVICES += audiocodes_mp-252
-
 define Device/arcadyan_arv4510pw
   DEVICE_VENDOR := Arcadyan
   DEVICE_MODEL := ARV4510PW
@@ -278,22 +237,6 @@ define Device/arcadyan_arv4510pw
 endef
 TARGET_DEVICES += arcadyan_arv4510pw
 
-define Device/arcadyan_arv7525pw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV7525PW
-  DEVICE_ALT0_VENDOR := Telekom
-  DEVICE_ALT0_MODEL := Speedport W303V
-  DEVICE_ALT0_VARIANT := Typ A
-  IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4510PW
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa -swconfig
-  SUPPORTED_DEVICES += ARV4510PW
-endef
-TARGET_DEVICES += arcadyan_arv7525pw
-
 define Device/arcadyan_arv4519pw
   DEVICE_VENDOR := Arcadyan
   DEVICE_MODEL := ARV4519PW
@@ -376,6 +319,22 @@ define Device/arcadyan_arv7519pw
 endef
 TARGET_DEVICES += arcadyan_arv7519pw
 
+define Device/arcadyan_arv7525pw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV7525PW
+  DEVICE_ALT0_VENDOR := Telekom
+  DEVICE_ALT0_MODEL := Speedport W303V
+  DEVICE_ALT0_VARIANT := Typ A
+  IMAGE_SIZE := 3776k
+  DEVICE_DTS := ARV4510PW
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa -swconfig
+  SUPPORTED_DEVICES += ARV4510PW
+endef
+TARGET_DEVICES += arcadyan_arv7525pw
+
 define Device/arcadyan_arv752dpw
   DEVICE_VENDOR := Arcadyan
   DEVICE_MODEL := ARV752DPW
@@ -426,6 +385,47 @@ define Device/arcadyan_arv8539pw22
 endef
 TARGET_DEVICES += arcadyan_arv8539pw22
 
+define Device/audiocodes_mp-252
+  DEVICE_VENDOR := AudioCodes
+  DEVICE_MODEL := MediaPack MP-252
+  IMAGE_SIZE := 14848k
+  DEVICE_DTS := ACMP252
+  DEVICE_PACKAGES :=  kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	kmod-ltq-tapi kmod-ltq-vmmc \
+	kmod-usb-ledtrig-usbport kmod-usb-dwc2 \
+	kmod-rt2800-pci \
+	ltq-adsl-app ppp-mod-pppoa \
+	wpad-basic
+  SUPPORTED_DEVICES += ACMP252
+endef
+TARGET_DEVICES += audiocodes_mp-252
+
+define Device/bt_homehub-v2b
+  $(Device/NAND)
+  DEVICE_VENDOR := British Telecom
+  DEVICE_MODEL := Home Hub 2
+  DEVICE_VARIANT := Type B
+  BOARD_NAME := BTHOMEHUBV2B
+  DEVICE_DTS := BTHOMEHUBV2B
+  DEVICE_PACKAGES := kmod-usb-dwc2 \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	kmod-ltq-deu-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath9k kmod-owl-loader wpad-basic
+  SUPPORTED_DEVICES += BTHOMEHUBV2B
+endef
+TARGET_DEVICES += bt_homehub-v2b
+
+define Device/lantiq_easy50712
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Danube (EASY50712)
+  DEVICE_DTS := EASY50712
+  IMAGE_SIZE := 3776k
+endef
+TARGET_DEVICES += lantiq_easy50712
+
 define Device/siemens_gigaset-sx76x
   DEVICE_VENDOR := Siemens
   DEVICE_MODEL := Gigaset sx76x
@@ -443,6 +443,35 @@ TARGET_DEVICES += siemens_gigaset-sx76x
 
 # AR9
 
+define Device/avm_fritz7312
+  $(Device/AVM)
+  DEVICE_MODEL := FRITZ!Box 7312
+  DEVICE_DTS := FRITZ7312
+  IMAGE_SIZE := 15744k
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-deu-ar9 -swconfig
+endef
+TARGET_DEVICES += avm_fritz7312
+
+define Device/avm_fritz7320
+  $(Device/AVM)
+  DEVICE_MODEL := FRITZ!Box 7320
+  DEVICE_ALT0_VENDOR := 1&1
+  DEVICE_ALT0_MODEL := HomeServer
+  DEVICE_DTS := FRITZ7320
+  IMAGE_SIZE := 15744k
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-deu-ar9 kmod-usb-dwc2 -swconfig
+  SUPPORTED_DEVICES += FRITZ7320
+endef
+TARGET_DEVICES += avm_fritz7320
+
 define Device/bt_homehub-v3a
   $(Device/NAND)
   DEVICE_VENDOR := British Telecom
@@ -461,6 +490,36 @@ define Device/bt_homehub-v3a
 endef
 TARGET_DEVICES += bt_homehub-v3a
 
+define Device/buffalo_wbmr-hp-g300h-a
+  DEVICE_VENDOR := Buffalo
+  DEVICE_MODEL := WBMR-HP-G300H
+  DEVICE_VARIANT := A
+  IMAGE_SIZE := 31488k
+  DEVICE_DTS := WBMR
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath9k kmod-owl-loader wpad-basic
+  SUPPORTED_DEVICES := WBMR buffalo,wbmr-hp-g300h
+endef
+TARGET_DEVICES += buffalo_wbmr-hp-g300h-a
+
+define Device/buffalo_wbmr-hp-g300h-b
+  DEVICE_VENDOR := Buffalo
+  DEVICE_MODEL := WBMR-HP-G300H
+  DEVICE_VARIANT := B
+  IMAGE_SIZE := 31488k
+  DEVICE_DTS := WBMR
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath9k kmod-owl-loader wpad-basic
+  SUPPORTED_DEVICES := WBMR buffalo,wbmr-hp-g300h
+endef
+TARGET_DEVICES += buffalo_wbmr-hp-g300h-b
+
 DGN3500_KERNEL_OFFSET_HEX=0x50000
 DGN3500_KERNEL_OFFSET_DEC=327680
 define Device/netgear_dgn3500
@@ -518,79 +577,20 @@ define Device/netgear_dgn3500b
 endef
 TARGET_DEVICES += netgear_dgn3500b
 
-define Device/buffalo_wbmr-hp-g300h-a
-  DEVICE_VENDOR := Buffalo
-  DEVICE_MODEL := WBMR-HP-G300H
-  DEVICE_VARIANT := A
-  IMAGE_SIZE := 31488k
-  DEVICE_DTS := WBMR
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+define Device/zte_h201l
+  DEVICE_VENDOR := ZTE
+  DEVICE_MODEL := H201L
+  IMAGE_SIZE := 7808k
+  DEVICE_DTS := H201L
+  DEVICE_PACKAGES := kmod-ath9k-htc wpad-basic \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath9k kmod-owl-loader wpad-basic
-  SUPPORTED_DEVICES := WBMR buffalo,wbmr-hp-g300h
+	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoe \
+	kmod-ltq-deu-ar9 kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-tapi kmod-ltq-vmmc
+  SUPPORTED_DEVICES += H201L
 endef
-TARGET_DEVICES += buffalo_wbmr-hp-g300h-a
-
-define Device/buffalo_wbmr-hp-g300h-b
-  DEVICE_VENDOR := Buffalo
-  DEVICE_MODEL := WBMR-HP-G300H
-  DEVICE_VARIANT := B
-  IMAGE_SIZE := 31488k
-  DEVICE_DTS := WBMR
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath9k kmod-owl-loader wpad-basic
-  SUPPORTED_DEVICES := WBMR buffalo,wbmr-hp-g300h
-endef
-TARGET_DEVICES += buffalo_wbmr-hp-g300h-b
-
-define Device/avm_fritz7312
-  $(Device/AVM)
-  DEVICE_MODEL := FRITZ!Box 7312
-  DEVICE_DTS := FRITZ7312
-  IMAGE_SIZE := 15744k
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-deu-ar9 -swconfig
-endef
-TARGET_DEVICES += avm_fritz7312
-
-define Device/avm_fritz7320
-  $(Device/AVM)
-  DEVICE_MODEL := FRITZ!Box 7320
-  DEVICE_ALT0_VENDOR := 1&1
-  DEVICE_ALT0_MODEL := HomeServer
-  DEVICE_DTS := FRITZ7320
-  IMAGE_SIZE := 15744k
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-deu-ar9 kmod-usb-dwc2 -swconfig
-  SUPPORTED_DEVICES += FRITZ7320
-endef
-TARGET_DEVICES += avm_fritz7320
-
-define Device/zte_h201l
-  DEVICE_VENDOR := ZTE
-  DEVICE_MODEL := H201L
-  IMAGE_SIZE := 7808k
-  DEVICE_DTS := H201L
-  DEVICE_PACKAGES := kmod-ath9k-htc wpad-basic \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoe \
-	kmod-ltq-deu-ar9 kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-tapi kmod-ltq-vmmc
-  SUPPORTED_DEVICES += H201L
-endef
-TARGET_DEVICES += zte_h201l
+TARGET_DEVICES += zte_h201l
 
 define Device/zyxel_p-2601hn
   DEVICE_VENDOR := ZyXEL
@@ -607,7 +607,6 @@ define Device/zyxel_p-2601hn
 endef
 TARGET_DEVICES += zyxel_p-2601hn
 
-
 endif
 
 
@@ -615,30 +614,15 @@ ifeq ($(SUBTARGET),xrx200)
 
 # VR9
 
-define Device/zyxel_p-2812hnu-f1
-  $(Device/NAND)
-  DEVICE_VENDOR := ZyXEL
-  DEVICE_MODEL := P-2812HNU
-  DEVICE_VARIANT := F1
-  BOARD_NAME := P2812HNUF1
-  DEVICE_DTS := P2812HNUF1
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
-  KERNEL_SIZE := 3072k
-  SUPPORTED_DEVICES += P2812HNUF1
-endef
-TARGET_DEVICES += zyxel_p-2812hnu-f1
+include tp-link.mk
 
-define Device/zyxel_p-2812hnu-f3
-  $(Device/NAND)
-  DEVICE_VENDOR := ZyXEL
-  DEVICE_MODEL := P-2812HNU
-  DEVICE_VARIANT := F3
-  BOARD_NAME := P2812HNUF3
-  DEVICE_DTS := P2812HNUF3
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2
-  SUPPORTED_DEVICES += P2812HNUF3
+define Device/alphanetworks_asl56026
+  DEVICE_VENDOR := BT Openreach
+  DEVICE_MODEL := ECI VDSL Modem V-2FUb/I
+  DEVICE_DTS := ASL56026
+  IMAGE_SIZE := 7488k
 endef
-TARGET_DEVICES += zyxel_p-2812hnu-f3
+TARGET_DEVICES += alphanetworks_asl56026
 
 define Device/arcadyan_arv7519rw22
   DEVICE_VENDOR := Arcadyan
@@ -655,64 +639,78 @@ define Device/arcadyan_arv7519rw22
 endef
 TARGET_DEVICES += arcadyan_arv7519rw22
 
-define Device/alphanetworks_asl56026
+define Device/arcadyan_vg3503j
   DEVICE_VENDOR := BT Openreach
-  DEVICE_MODEL := ECI VDSL Modem V-2FUb/I
-  DEVICE_DTS := ASL56026
-  IMAGE_SIZE := 7488k
+  DEVICE_MODEL := ECI VDSL Modem V-2FUb/R
+  IMAGE_SIZE := 8000k
+  DEVICE_DTS := VG3503J
+  SUPPORTED_DEVICES += VG3503J
 endef
-TARGET_DEVICES += alphanetworks_asl56026
+TARGET_DEVICES += arcadyan_vg3503j
 
-define Device/bt_homehub-v5a
-  $(Device/NAND)
-  DEVICE_VENDOR := British Telecom
-  DEVICE_MODEL := Home Hub 5
-  DEVICE_VARIANT := Type A
-  BOARD_NAME := BTHOMEHUBV5A
-  DEVICE_DTS := BTHOMEHUBV5A
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader \
-	kmod-ath10k-ct ath10k-firmware-qca988x-ct wpad-basic kmod-usb-dwc2
-  SUPPORTED_DEVICES += BTHOMEHUBV5A
+define Device/arcadyan_vgv7510kw22-brn
+  $(Device/lantiqBrnImage)
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := VGV7510KW22
+  DEVICE_VARIANT := BRN
+  DEVICE_ALT0_VENDOR := o2
+  DEVICE_ALT0_MODEL := Box 6431
+  DEVICE_ALT0_VARIANT := BRN
+  IMAGE_SIZE := 7168k
+  DEVICE_DTS := VGV7510KW22BRN
+  SIGNATURE := BRNDA6431
+  MAGIC := 0x12345678
+  CRC32_POLY := 0x04c11db7
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
+  SUPPORTED_DEVICES += VGV7510KW22BRN
 endef
-TARGET_DEVICES += bt_homehub-v5a
+TARGET_DEVICES += arcadyan_vgv7510kw22-brn
 
-define Device/netgear_dm200
-  DEVICE_VENDOR := NETGEAR
-  DEVICE_MODEL := DM200
-  DEVICE_DTS := DM200
-  IMAGES := sysupgrade.bin factory.img
-  IMAGE/sysupgrade.bin := append-kernel | \
-	pad-offset 64k 64 | append-uImage-fakehdr filesystem | \
-	pad-offset 64k 64 | append-uImage-fakehdr filesystem | \
-	append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/factory.img := $$(IMAGE/sysupgrade.bin) | netgear-dni
-  IMAGE_SIZE := 7872k
-  NETGEAR_BOARD_ID := DM200
-  NETGEAR_HW_ID := 29765233+8+0+64+0+0
+define Device/arcadyan_vgv7510kw22-nor
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := VGV7510KW22
+  DEVICE_VARIANT := NOR
+  DEVICE_ALT0_VENDOR := o2
+  DEVICE_ALT0_MODEL := Box 6431
+  DEVICE_ALT0_VARIANT := NOR
+  IMAGE_SIZE := 15232k
+  DEVICE_DTS := VGV7510KW22NOR
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
+  SUPPORTED_DEVICES += VGV7510KW22NOR
 endef
-DEVICE_VARS += NETGEAR_BOARD_ID NETGEAR_HW_ID
-TARGET_DEVICES += netgear_dm200
+TARGET_DEVICES += arcadyan_vgv7510kw22-nor
 
-define Device/lantiq_easy80920-nand
-  $(Device/lantiqFullImage)
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := VR9 EASY80920
-  DEVICE_VARIANT := NAND
-  DEVICE_DTS := EASY80920NAND
-  IMAGE_SIZE := 64512k
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+define Device/arcadyan_vgv7519-brn
+  $(Device/lantiqBrnImage)
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := VGV7519
+  DEVICE_VARIANT := BRN
+  DEVICE_ALT0_VENDOR := KPN
+  DEVICE_ALT0_MODEL := Experiabox 8
+  DEVICE_ALT0_VARIANT := BRN
+  IMAGE_SIZE := 7168k
+  DEVICE_DTS := VGV7519BRN
+  SIGNATURE := 5D00008000
+  MAGIC := 0x12345678
+  CRC32_POLY := 0x2083b8ed
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
+  SUPPORTED_DEVICES += VGV7519BRN
 endef
-TARGET_DEVICES += lantiq_easy80920-nand
+TARGET_DEVICES += arcadyan_vgv7519-brn
 
-define Device/lantiq_easy80920-nor
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := VR9 EASY80920
+define Device/arcadyan_vgv7519-nor
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := VGV7519
   DEVICE_VARIANT := NOR
-  DEVICE_DTS := EASY80920NOR
-  IMAGE_SIZE := 7936k
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_ALT0_VENDOR := KPN
+  DEVICE_ALT0_MODEL := Experiabox 8
+  DEVICE_ALT0_VARIANT := NOR
+  IMAGE_SIZE := 15360k
+  DEVICE_DTS := VGV7519NOR
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
+  SUPPORTED_DEVICES += VGV7519NOR
 endef
-TARGET_DEVICES += lantiq_easy80920-nor
+TARGET_DEVICES += arcadyan_vgv7519-nor
 
 define Device/avm_fritz3370
   $(Device/AVM)
@@ -754,6 +752,17 @@ define Device/avm_fritz7360sl
 endef
 TARGET_DEVICES += avm_fritz7360sl
 
+define Device/avm_fritz7362sl
+  $(Device/AVM)
+  $(Device/NAND)
+  DEVICE_MODEL := FRITZ!Box 7362 SL
+  KERNEL_SIZE := 4096k
+  IMAGE_SIZE := 49152k
+  DEVICE_DTS := FRITZ7362SL
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 fritz-tffs
+endef
+TARGET_DEVICES += avm_fritz7362sl
+
 define Device/avm_fritz7412
   $(Device/AVM)
   $(Device/NAND)
@@ -766,27 +775,18 @@ define Device/avm_fritz7412
 endef
 TARGET_DEVICES += avm_fritz7412
 
-define Device/avm_fritz7362sl
-  $(Device/AVM)
+define Device/bt_homehub-v5a
   $(Device/NAND)
-  DEVICE_MODEL := FRITZ!Box 7362 SL
-  KERNEL_SIZE := 4096k
-  IMAGE_SIZE := 49152k
-  DEVICE_DTS := FRITZ7362SL
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 fritz-tffs
-endef
-TARGET_DEVICES += avm_fritz7362sl
-
-define Device/arcadyan_vg3503j
-  DEVICE_VENDOR := BT Openreach
-  DEVICE_MODEL := ECI VDSL Modem V-2FUb/R
-  IMAGE_SIZE := 8000k
-  DEVICE_DTS := VG3503J
-  SUPPORTED_DEVICES += VG3503J
+  DEVICE_VENDOR := British Telecom
+  DEVICE_MODEL := Home Hub 5
+  DEVICE_VARIANT := Type A
+  BOARD_NAME := BTHOMEHUBV5A
+  DEVICE_DTS := BTHOMEHUBV5A
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader \
+	kmod-ath10k-ct ath10k-firmware-qca988x-ct wpad-basic kmod-usb-dwc2
+  SUPPORTED_DEVICES += BTHOMEHUBV5A
 endef
-TARGET_DEVICES += arcadyan_vg3503j
-
-include tp-link.mk
+TARGET_DEVICES += bt_homehub-v5a
 
 define Device/buffalo_wbmr-300hpd
   DEVICE_VENDOR := Buffalo
@@ -798,113 +798,74 @@ define Device/buffalo_wbmr-300hpd
 endef
 TARGET_DEVICES += buffalo_wbmr-300hpd
 
-define Device/arcadyan_vgv7510kw22-nor
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := VGV7510KW22
+define Device/lantiq_easy80920-nand
+  $(Device/lantiqFullImage)
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := VR9 EASY80920
+  DEVICE_VARIANT := NAND
+  DEVICE_DTS := EASY80920NAND
+  IMAGE_SIZE := 64512k
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+endef
+TARGET_DEVICES += lantiq_easy80920-nand
+
+define Device/lantiq_easy80920-nor
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := VR9 EASY80920
   DEVICE_VARIANT := NOR
-  DEVICE_ALT0_VENDOR := o2
-  DEVICE_ALT0_MODEL := Box 6431
-  DEVICE_ALT0_VARIANT := NOR
-  IMAGE_SIZE := 15232k
-  DEVICE_DTS := VGV7510KW22NOR
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
-  SUPPORTED_DEVICES += VGV7510KW22NOR
+  DEVICE_DTS := EASY80920NOR
+  IMAGE_SIZE := 7936k
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
 endef
-TARGET_DEVICES += arcadyan_vgv7510kw22-nor
+TARGET_DEVICES += lantiq_easy80920-nor
 
-define Device/arcadyan_vgv7510kw22-brn
-  $(Device/lantiqBrnImage)
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := VGV7510KW22
-  DEVICE_VARIANT := BRN
-  DEVICE_ALT0_VENDOR := o2
-  DEVICE_ALT0_MODEL := Box 6431
-  DEVICE_ALT0_VARIANT := BRN
-  IMAGE_SIZE := 7168k
-  DEVICE_DTS := VGV7510KW22BRN
-  SIGNATURE := BRNDA6431
-  MAGIC := 0x12345678
-  CRC32_POLY := 0x04c11db7
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
-  SUPPORTED_DEVICES += VGV7510KW22BRN
+define Device/netgear_dm200
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_MODEL := DM200
+  DEVICE_DTS := DM200
+  IMAGES := sysupgrade.bin factory.img
+  IMAGE/sysupgrade.bin := append-kernel | \
+	pad-offset 64k 64 | append-uImage-fakehdr filesystem | \
+	pad-offset 64k 64 | append-uImage-fakehdr filesystem | \
+	append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/factory.img := $$(IMAGE/sysupgrade.bin) | netgear-dni
+  IMAGE_SIZE := 7872k
+  NETGEAR_BOARD_ID := DM200
+  NETGEAR_HW_ID := 29765233+8+0+64+0+0
 endef
-TARGET_DEVICES += arcadyan_vgv7510kw22-brn
+DEVICE_VARS += NETGEAR_BOARD_ID NETGEAR_HW_ID
+TARGET_DEVICES += netgear_dm200
 
-define Device/arcadyan_vgv7519-nor
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := VGV7519
-  DEVICE_VARIANT := NOR
-  DEVICE_ALT0_VENDOR := KPN
-  DEVICE_ALT0_MODEL := Experiabox 8
-  DEVICE_ALT0_VARIANT := NOR
-  IMAGE_SIZE := 15360k
-  DEVICE_DTS := VGV7519NOR
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
-  SUPPORTED_DEVICES += VGV7519NOR
+define Device/zyxel_p-2812hnu-f1
+  $(Device/NAND)
+  DEVICE_VENDOR := ZyXEL
+  DEVICE_MODEL := P-2812HNU
+  DEVICE_VARIANT := F1
+  BOARD_NAME := P2812HNUF1
+  DEVICE_DTS := P2812HNUF1
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  KERNEL_SIZE := 3072k
+  SUPPORTED_DEVICES += P2812HNUF1
 endef
-TARGET_DEVICES += arcadyan_vgv7519-nor
+TARGET_DEVICES += zyxel_p-2812hnu-f1
 
-define Device/arcadyan_vgv7519-brn
-  $(Device/lantiqBrnImage)
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := VGV7519
-  DEVICE_VARIANT := BRN
-  DEVICE_ALT0_VENDOR := KPN
-  DEVICE_ALT0_MODEL := Experiabox 8
-  DEVICE_ALT0_VARIANT := BRN
-  IMAGE_SIZE := 7168k
-  DEVICE_DTS := VGV7519BRN
-  SIGNATURE := 5D00008000
-  MAGIC := 0x12345678
-  CRC32_POLY := 0x2083b8ed
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
-  SUPPORTED_DEVICES += VGV7519BRN
+define Device/zyxel_p-2812hnu-f3
+  $(Device/NAND)
+  DEVICE_VENDOR := ZyXEL
+  DEVICE_MODEL := P-2812HNU
+  DEVICE_VARIANT := F3
+  BOARD_NAME := P2812HNUF3
+  DEVICE_DTS := P2812HNUF3
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2
+  SUPPORTED_DEVICES += P2812HNUF3
 endef
-TARGET_DEVICES += arcadyan_vgv7519-brn
+TARGET_DEVICES += zyxel_p-2812hnu-f3
 
 endif
 
 
 ifeq ($(SUBTARGET),falcon)
 
-define Device/lantiq_easy98000-nor
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := EASY98000 Falcon Eval Board
-  DEVICE_VARIANT := NOR
-  IMAGE_SIZE := 3904k
-  DEVICE_DTS := EASY98000NOR
-  DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
-endef
-TARGET_DEVICES += lantiq_easy98000-nor
-
-define Device/lantiq_easy98000-nand
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := EASY98000 Falcon Eval Board
-  DEVICE_VARIANT := NAND
-  IMAGE_SIZE := 3904k
-  DEVICE_DTS := EASY98000NAND
-  DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
-endef
-TARGET_DEVICES += lantiq_easy98000-nand
-
-define Device/lantiq_easy98000-sflash
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := EASY98000 Falcon Eval Board
-  DEVICE_VARIANT := SFLASH
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98000SFLASH
-  DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
-endef
-TARGET_DEVICES += lantiq_easy98000-sflash
-
-define Device/lantiq_falcon-mdu
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon / VINAXdp MDU Board
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := FALCON-MDU
-endef
-TARGET_DEVICES += lantiq_falcon-mdu
-
 define Device/lantiq_easy88388
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := EASY88388 Falcon FTTDP8 Reference Board
@@ -921,13 +882,31 @@ define Device/lantiq_easy88444
 endef
 TARGET_DEVICES += lantiq_easy88444
 
-define Device/lantiq_falcon-sfp
+define Device/lantiq_easy98020
   DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFP Stick
+  DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
+  DEVICE_VARIANT := v1.0-v1.7
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := FALCON-SFP
+  DEVICE_DTS := EASY98020
 endef
-TARGET_DEVICES += lantiq_falcon-sfp
+TARGET_DEVICES += lantiq_easy98020
+
+define Device/lantiq_easy98020-v18
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
+  DEVICE_VARIANT := v1.8
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY98020V18
+endef
+TARGET_DEVICES += lantiq_easy98020-v18
+
+define Device/lantiq_easy98021
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Falcon HGU Reference Board (EASY98021)
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY98021
+endef
+TARGET_DEVICES += lantiq_easy98021
 
 define Device/lantiq_easy98035synce
   DEVICE_VENDOR := Lantiq
@@ -947,31 +926,51 @@ define Device/lantiq_easy98035synce1588
 endef
 TARGET_DEVICES += lantiq_easy98035synce1588
 
-define Device/lantiq_easy98020
+define Device/lantiq_easy98000-nand
   DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
-  DEVICE_VARIANT := v1.0-v1.7
+  DEVICE_MODEL := EASY98000 Falcon Eval Board
+  DEVICE_VARIANT := NAND
+  IMAGE_SIZE := 3904k
+  DEVICE_DTS := EASY98000NAND
+  DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
+endef
+TARGET_DEVICES += lantiq_easy98000-nand
+
+define Device/lantiq_easy98000-nor
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := EASY98000 Falcon Eval Board
+  DEVICE_VARIANT := NOR
+  IMAGE_SIZE := 3904k
+  DEVICE_DTS := EASY98000NOR
+  DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
+endef
+TARGET_DEVICES += lantiq_easy98000-nor
+
+define Device/lantiq_easy98000-sflash
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := EASY98000 Falcon Eval Board
+  DEVICE_VARIANT := SFLASH
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98020
+  DEVICE_DTS := EASY98000SFLASH
+  DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
 endef
-TARGET_DEVICES += lantiq_easy98020
+TARGET_DEVICES += lantiq_easy98000-sflash
 
-define Device/lantiq_easy98020-v18
+define Device/lantiq_falcon-mdu
   DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
-  DEVICE_VARIANT := v1.8
+  DEVICE_MODEL := Falcon / VINAXdp MDU Board
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98020V18
+  DEVICE_DTS := FALCON-MDU
 endef
-TARGET_DEVICES += lantiq_easy98020-v18
+TARGET_DEVICES += lantiq_falcon-mdu
 
-define Device/lantiq_easy98021
+define Device/lantiq_falcon-sfp
   DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon HGU Reference Board (EASY98021)
+  DEVICE_MODEL := Falcon SFP Stick
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98021
+  DEVICE_DTS := FALCON-SFP
 endef
-TARGET_DEVICES += lantiq_easy98021
+TARGET_DEVICES += lantiq_falcon-sfp
 
 endif
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
