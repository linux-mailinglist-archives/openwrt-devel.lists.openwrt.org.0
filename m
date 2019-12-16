Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA6D1205C8
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 13:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UBdc8linah6b3G7xzNqO3a5oLuZeC7zDjWI+dr2Y714=; b=fQqfIhSmq0cT/D6b9z7dGdr48D
	XIiYHzfALFFMjDYl9uREbIA+CuUpRBeGJxUFe2X5dNc1e2BnQTAACFAnTKYUPKx4beg2IEA1p2DtY
	lpH7TqxMT3Syl3NH+9+L4qYZkDqFwINK/cu7NKWHFhg7vjJwoL7o19H0MhCFAyQSoiouim6x/dkfn
	00auwt3CV9oIRkwf1kJzOZoZhAVD9XoOHgX4aqEMc0XlwoO2pCAZuPMOBs2rYstblJSYMamvhsGEL
	QFmiWcnP+o3nIcH8Crfw0HrduGjbPX2Ak+mbs1YAIJg+zAHW59UuBKM5hgGZhyBlpB+Oem6OpfqKT
	ZJ67HCEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpX0-0000wU-Gk; Mon, 16 Dec 2019 12:31:22 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpW9-00008z-MG
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 12:30:36 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MdNHa-1i7lkP1tuS-00ZSLz for <openwrt-devel@lists.openwrt.org>; Mon, 16
 Dec 2019 13:30:25 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Dec 2019 13:28:14 +0100
Message-Id: <20191216122817.22628-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
References: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:fRPL9hSkupcAowf4DnHL9M1ol6oE8r4aEeOdgQIyF3rsuI5hws4
 OyZ4KW0Z9ZHgynR0FvzWDBEAonjwEc59tcyME6LlQY7NGPUldY8x5czUuxq0T7dEZanbpNW
 hXt11G4IWUDGT2rg2fq8/R3eC7Nb3YXZ2WZMUtZFgmBfDE1+QC2yI8k6ZGhropbx5cxi6qR
 aD1SMZa0JyTlONYS1HlRA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pmdxhXVDff8=:dLdxouI23bI8m4JmhW+wMh
 rL1RL03so/0s6JCQqGqF/6GRak/65roEG4SNOdXO7sZPrIhv4qyAJaPirQ5essxpZc1HjMWbC
 zkAxb5MZNnUABJtj7sBc8SVbfhu1HIIQUYJyU+FGzVx2QvaiwmbE1UzxJNB7EYdGieXh8RL19
 DtFCOYgABgiPYbP4CmtWBxpa7c3lYdvY32W5J4FWM63up7JIddM/eq8l7cQGalwZSijkM4RT6
 peXDR5SqGJJRIb+bWjXCATCmTYiqWL+BTWIQbxihuJ4B3WaZAGPuo9B231LO/KrQb5tcIv7x7
 Xrhz/DLuZH6WjQiswHn1UNwYxBxjbilx9rLeFR1tGFBgh7YUtCAEZWU33tJuQsTfFDy+AKCAm
 kGNkBzPiOuy1D/scRX2CxEJvYTgilI3zGaoSaAFYv78FAP8a8FKZ7/wnVDuQMJnXsez2Lwi3i
 OTc4CaOkV8HzdJqbH1ZY9niDTbDDw8XBQgrgLeJqaZn69eHFh4NrwQpMCQtcZwH8yaiDqxs4p
 HbxufoCuD19q2VhHKxuDRN2Rnl9Zi3m7epRzpqd6jnK2oE8MTEpIPE8KgfQMmTRM/6HFDxqN+
 Wwvi0GtvKLjoKuK2cqNCA8Lmt2GA/a/+eoZhhajw4y4YWFE90ARlU6IgVBqH+QFIUQPrif2vT
 tDihH9+myYff47C2sLrDF+A0vKvpFDLidokMTxvms8etU+n3f4KGeqfyx6J0gHASngwTM5iPR
 PMbXXyN3IkATsZj6flD4AMG6biZUUBheKpV7ccvfHMeo9fGL+vZRlzUlOrWyvRY59E7C+W/cg
 m4OebFg7wINppB9AIeH2QR14aSeqkg2gs57F/IJAk/yevOf/XnvtWt9xkyE59p5GIUTfYJrqW
 FiRuqk78KvVW1ydJek87UJ2GDwWdPvooBEnyYVuKQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043030_336620_F7E2E6E9 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/4] lantiq: split device definitions into
 files
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

This splits device definitions into several *.mk files to increase
overview.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/lantiq/image/Makefile       | 857 +----------------------
 target/linux/lantiq/image/amazonse.mk    |  22 +
 target/linux/lantiq/image/ar9.mk         | 163 +++++
 target/linux/lantiq/image/danube.mk      | 219 ++++++
 target/linux/lantiq/image/falcon.mk      | 105 +++
 target/linux/lantiq/image/vr9.mk         | 246 +++++++
 target/linux/lantiq/image/xway_legacy.mk |  77 ++
 7 files changed, 838 insertions(+), 851 deletions(-)
 create mode 100644 target/linux/lantiq/image/amazonse.mk
 create mode 100644 target/linux/lantiq/image/ar9.mk
 create mode 100644 target/linux/lantiq/image/danube.mk
 create mode 100644 target/linux/lantiq/image/falcon.mk
 create mode 100644 target/linux/lantiq/image/vr9.mk
 create mode 100644 target/linux/lantiq/image/xway_legacy.mk

diff --git a/target/linux/lantiq/image/Makefile b/target/linux/lantiq/image/Makefile
index bfb5390465..a2052ef924 100644
--- a/target/linux/lantiq/image/Makefile
+++ b/target/linux/lantiq/image/Makefile
@@ -108,872 +108,27 @@ define Device/AVM
 endef
 
 ifeq ($(SUBTARGET),ase)
-
-define Device/allnet_all0333cj
-  DEVICE_VENDOR := Allnet
-  DEVICE_MODEL := ALL0333CJ
-  IMAGE_SIZE := 3700k
-  DEVICE_DTS := ALL0333CJ
-  DEVICE_PACKAGES := kmod-ltq-adsl-ase kmod-ltq-adsl-ase-mei \
-	kmod-ltq-adsl-ase-fw-b kmod-ltq-atm-ase \
-	ltq-adsl-app ppp-mod-pppoe
-endef
-TARGET_DEVICES += allnet_all0333cj
-
-define Device/netgear_dgn1000b
-  DEVICE_VENDOR := NETGEAR
-  DEVICE_MODEL := DGN1000B
-  IMAGE_SIZE := 6000k
-  DEVICE_DTS := DGN1000B
-  DEVICE_PACKAGES := kmod-ltq-adsl-ase kmod-ltq-adsl-ase-mei \
-	kmod-ltq-adsl-ase-fw-b kmod-ltq-atm-ase \
-	ltq-adsl-app ppp-mod-pppoe
-  SUPPORTED_DEVICES += DGN1000B
-endef
-TARGET_DEVICES += netgear_dgn1000b
-
+include amazonse.mk
 endif
 
 ifeq ($(SUBTARGET),xway_legacy)
-
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
-define Device/arcadyan_arv4520pw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV4520PW
-  DEVICE_ALT0_VENDOR := Vodafone
-  DEVICE_ALT0_MODEL := Easybox 800
-  DEVICE_ALT1_VENDOR := Airties
-  DEVICE_ALT1_MODEL := WAV-281
-  IMAGE_SIZE := 3648k
-  DEVICE_DTS := ARV4520PW
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-rt61-pci wpad-mini
-  SUPPORTED_DEVICES += ARV4520PW
-endef
-TARGET_DEVICES += arcadyan_arv4520pw
-
-define Device/arcadyan_arv4525pw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV4525PW
-  DEVICE_ALT0_VENDOR := Telekom
-  DEVICE_ALT0_MODEL := Speedport W502V
-  DEVICE_ALT0_VARIANT := Typ A
-  IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4525PW
-  DEVICE_PACKAGES := kmod-ath5k wpad-mini \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa -swconfig
-  SUPPORTED_DEVICES += ARV4525PW
-endef
-TARGET_DEVICES += arcadyan_arv4525pw
-
-define Device/arcadyan_arv452cqw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV452CQW
-  DEVICE_ALT0_VENDOR := Vodafone
-  DEVICE_ALT0_MODEL := Easybox 801
-  IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV452CQW
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ath5k wpad-mini \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa
-  SUPPORTED_DEVICES += ARV452CQW
-endef
-TARGET_DEVICES += arcadyan_arv452cqw
-
+include xway_legacy.mk
 endif
 
 ifeq ($(SUBTARGET),xway)
-
-# Danube
-
-define Device/arcadyan_arv4510pw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV4510PW
-  DEVICE_ALT0_VENDOR := Wippies
-  DEVICE_ALT0_MODEL := BeWan iBox v1.0
-  IMAGE_SIZE := 15616k
-  DEVICE_DTS := ARV4510PW
-  DEVICE_PACKAGES := kmod-usb-ledtrig-usbport kmod-usb2-pci kmod-usb-uhci \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-tapi kmod-ltq-vmmc \
-	kmod-rt2800-pci kmod-ath5k wpad-basic
-  SUPPORTED_DEVICES += ARV4510PW
-endef
-TARGET_DEVICES += arcadyan_arv4510pw
-
-define Device/arcadyan_arv4519pw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV4519PW
-  DEVICE_ALT0_VENDOR := Vodafone
-  DEVICE_ALT0_MODEL := NetFasteR IAD 2
-  DEVICE_ALT1_VENDOR := Pirelli
-  DEVICE_ALT1_MODEL := P.RG A4201G
-  IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4519PW
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa
-  SUPPORTED_DEVICES += ARV4519PW
-endef
-TARGET_DEVICES += arcadyan_arv4519pw
-
-define Device/arcadyan_arv7506pw11
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV7506PW11
-  DEVICE_ALT0_VENDOR := Alice/O2
-  DEVICE_ALT0_MODEL := IAD 4421
-  IMAGE_SIZE := 7808k
-  DEVICE_DTS := ARV7506PW11
-  DEVICE_PACKAGES := kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-rt2800-pci wpad-basic
-  SUPPORTED_DEVICES += ARV7506PW11
-endef
-TARGET_DEVICES += arcadyan_arv7506pw11
-
-define Device/arcadyan_arv7510pw22
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV7510PW22
-  DEVICE_ALT0_VENDOR := Astoria Networks
-  DEVICE_ALT0_MODEL := ARV7510PW22
-  IMAGE_SIZE := 31232k
-  DEVICE_DTS := ARV7510PW22
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-tapi kmod-ltq-vmmc \
-	kmod-rt2800-pci wpad-basic \
-	kmod-usb-uhci kmod-usb2 kmod-usb2-pci
-  SUPPORTED_DEVICES += ARV7510PW22
-endef
-TARGET_DEVICES += arcadyan_arv7510pw22
-
-define Device/arcadyan_arv7518pw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV7518PW
-  DEVICE_ALT0_VENDOR := Astoria Networks
-  DEVICE_ALT0_MODEL := ARV7518PW
-  IMAGE_SIZE := 7872k
-  DEVICE_DTS := ARV7518PW
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath9k kmod-owl-loader wpad-basic
-  SUPPORTED_DEVICES += ARV7518PW
-endef
-TARGET_DEVICES += arcadyan_arv7518pw
-
-define Device/arcadyan_arv7519pw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV7519PW
-  DEVICE_ALT0_VENDOR := Astoria Networks
-  DEVICE_ALT0_MODEL := ARV7519PW
-  IMAGE_SIZE := 15488k
-  DEVICE_DTS := ARV7519PW
-  DEVICE_PACKAGES := kmod-usb-dwc2 \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-rt2800-pci wpad-basic
-  SUPPORTED_DEVICES += ARV7519PW
-endef
-TARGET_DEVICES += arcadyan_arv7519pw
-
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
-define Device/arcadyan_arv752dpw
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV752DPW
-  DEVICE_ALT0_VENDOR := Vodafone
-  DEVICE_ALT0_MODEL := Easybox 802
-  IMAGE_SIZE := 7872k
-  DEVICE_DTS := ARV752DPW
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-tapi kmod-ltq-vmmc \
-	kmod-rt2800-pci wpad-basic
-  SUPPORTED_DEVICES += ARV752DPW
-endef
-TARGET_DEVICES += arcadyan_arv752dpw
-
-define Device/arcadyan_arv752dpw22
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV752DPW22
-  DEVICE_ALT0_VENDOR := Vodafone
-  DEVICE_ALT0_MODEL := Easybox 803
-  IMAGE_SIZE := 7616k
-  DEVICE_DTS := ARV752DPW22
-  DEVICE_PACKAGES := kmod-usb2-pci kmod-usb-uhci kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-tapi kmod-ltq-vmmc \
-	kmod-rt2800-pci wpad-basic
-  SUPPORTED_DEVICES += ARV752DPW22
-endef
-TARGET_DEVICES += arcadyan_arv752dpw22
-
-define Device/arcadyan_arv8539pw22
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV8539PW22
-  DEVICE_ALT0_VENDOR := Telekom
-  DEVICE_ALT0_MODEL := Speedport W504V Typ A
-  IMAGE_SIZE := 7616k
-  DEVICE_DTS := ARV8539PW22
-  DEVICE_PACKAGES := kmod-usb-dwc2 \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath9k kmod-owl-loader wpad-basic
-  SUPPORTED_DEVICES += ARV8539PW22
-endef
-TARGET_DEVICES += arcadyan_arv8539pw22
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
-define Device/siemens_gigaset-sx76x
-  DEVICE_VENDOR := Siemens
-  DEVICE_MODEL := Gigaset sx76x
-  IMAGE_SIZE := 7680k
-  DEVICE_DTS := GIGASX76X
-  DEVICE_PACKAGES := kmod-usb-dwc2 \
-	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
-	ltq-adsl-app ppp-mod-pppoe \
-	kmod-ath5k wpad-basic
-  SUPPORTED_DEVICES += GIGASX76X
-endef
-TARGET_DEVICES += siemens_gigaset-sx76x
-
-
-# AR9
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
-define Device/bt_homehub-v3a
-  $(Device/NAND)
-  DEVICE_VENDOR := British Telecom
-  DEVICE_MODEL := Home Hub
-  DEVICE_VARIANT := Type A
-  BOARD_NAME := BTHOMEHUBV3A
-  DEVICE_DTS := BTHOMEHUBV3A
-  DEVICE_PACKAGES := kmod-usb-dwc2 \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
-	kmod-ltq-deu-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath9k kmod-owl-loader wpad-basic \
-	uboot-envtools
-  SUPPORTED_DEVICES += BTHOMEHUBV3A
-endef
-TARGET_DEVICES += bt_homehub-v3a
-
-define Device/buffalo_wbmr-hp-g300h-a
-  DEVICE_VENDOR := Buffalo
-  DEVICE_MODEL := WBMR-HP-G300H
-  DEVICE_VARIANT := A
-  IMAGE_SIZE := 31488k
-  DEVICE_DTS := WBMR
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ath9k kmod-owl-loader wpad-basic
-  SUPPORTED_DEVICES := WBMR buffalo,wbmr-hp-g300h
-endef
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
-DGN3500_KERNEL_OFFSET_HEX=0x50000
-DGN3500_KERNEL_OFFSET_DEC=327680
-define Device/netgear_dgn3500
-  DEVICE_VENDOR := NETGEAR
-  DEVICE_MODEL := DGN3500
-  DEVICE_DTS := DGN3500
-  IMAGE_SIZE := 16000k
-  IMAGES := \
-	sysupgrade-na.bin sysupgrade.bin \
-	factory-na.img factory.img
-  IMAGE/sysupgrade-na.bin := \
-	append-kernel | append-rootfs | dgn3500-sercom-footer 0x0 "NA" | \
-	pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/sysupgrade.bin := \
-	append-kernel | append-rootfs | dgn3500-sercom-footer 0x0 "WW" | \
-	pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/factory-na.img := \
-	pad-extra $(DGN3500_KERNEL_OFFSET_DEC) | append-kernel | append-rootfs | \
-	dgn3500-sercom-footer $(DGN3500_KERNEL_OFFSET_HEX) "NA" | pad-rootfs | \
-	check-size 16320k | pad-to 16384k
-  IMAGE/factory.img := \
-	pad-extra $(DGN3500_KERNEL_OFFSET_DEC) | append-kernel | append-rootfs | \
-	dgn3500-sercom-footer $(DGN3500_KERNEL_OFFSET_HEX) "WW" | pad-rootfs | \
-	check-size 16320k | pad-to 16384k
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ath9k kmod-owl-loader wpad-basic \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-deu-ar9
-  SUPPORTED_DEVICES += DGN3500
-endef
-TARGET_DEVICES += netgear_dgn3500
-
-define Device/netgear_dgn3500b
-  DEVICE_VENDOR := NETGEAR
-  DEVICE_MODEL := DGN3500B
-  DEVICE_DTS := DGN3500B
-  IMAGE_SIZE := 16000k
-  IMAGES += factory.img
-  IMAGE/sysupgrade.bin := \
-	append-kernel | append-rootfs | dgn3500-sercom-footer 0x0 "DE" | \
-	pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/factory.img := \
-	pad-extra $(DGN3500_KERNEL_OFFSET_DEC) | append-kernel | append-rootfs | \
-	dgn3500-sercom-footer $(DGN3500_KERNEL_OFFSET_HEX) "DE" | pad-rootfs | \
-	check-size 16320k | pad-to 16384k
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
-	kmod-ath9k kmod-owl-loader wpad-basic \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoa \
-	kmod-ltq-deu-ar9
-  SUPPORTED_DEVICES += DGN3500B
-endef
-TARGET_DEVICES += netgear_dgn3500b
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
-
-define Device/zyxel_p-2601hn
-  DEVICE_VENDOR := ZyXEL
-  DEVICE_MODEL := P-2601HN
-  DEVICE_VARIANT := F1/F3
-  IMAGE_SIZE := 15616k
-  DEVICE_DTS := P2601HNFX
-  DEVICE_PACKAGES := kmod-rt2800-usb wpad-basic \
-	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
-	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
-	ltq-adsl-app ppp-mod-pppoe \
-	kmod-ltq-deu-ar9 kmod-usb-dwc2
-  SUPPORTED_DEVICES += P2601HNFX
-endef
-TARGET_DEVICES += zyxel_p-2601hn
-
+include danube.mk
+include ar9.mk
 endif
 
 
 ifeq ($(SUBTARGET),xrx200)
-
-# VR9
-
 include tp-link.mk
-
-define Device/alphanetworks_asl56026
-  DEVICE_VENDOR := Alpha
-  DEVICE_MODEL := ASL56026
-  DEVICE_ALT0_VENDOR := BT Openreach
-  DEVICE_ALT0_MODEL := ECI VDSL Modem V-2FUb/I
-  DEVICE_DTS := ASL56026
-  IMAGE_SIZE := 7488k
-endef
-TARGET_DEVICES += alphanetworks_asl56026
-
-define Device/arcadyan_arv7519rw22
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := ARV7519RW22
-  DEVICE_ALT0_VENDOR := Orange
-  DEVICE_ALT0_MODEL := Livebox
-  DEVICE_ALT0_VARIANT := 2.1
-  DEVICE_ALT1_VENDOR := Astoria Networks
-  DEVICE_ALT1_MODEL := ARV7519RW22
-  IMAGE_SIZE := 31232k
-  DEVICE_DTS := ARV7519RW22
-  DEVICE_PACKAGES := kmod-usb-dwc2
-  SUPPORTED_DEVICES += ARV7519RW22
-endef
-TARGET_DEVICES += arcadyan_arv7519rw22
-
-define Device/arcadyan_vg3503j
-  DEVICE_VENDOR := BT Openreach
-  DEVICE_MODEL := ECI VDSL Modem V-2FUb/R
-  IMAGE_SIZE := 8000k
-  DEVICE_DTS := VG3503J
-  SUPPORTED_DEVICES += VG3503J
-endef
-TARGET_DEVICES += arcadyan_vg3503j
-
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
-endef
-TARGET_DEVICES += arcadyan_vgv7510kw22-brn
-
-define Device/arcadyan_vgv7510kw22-nor
-  DEVICE_VENDOR := Arcadyan
-  DEVICE_MODEL := VGV7510KW22
-  DEVICE_VARIANT := NOR
-  DEVICE_ALT0_VENDOR := o2
-  DEVICE_ALT0_MODEL := Box 6431
-  DEVICE_ALT0_VARIANT := NOR
-  IMAGE_SIZE := 15232k
-  DEVICE_DTS := VGV7510KW22NOR
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
-  SUPPORTED_DEVICES += VGV7510KW22NOR
-endef
-TARGET_DEVICES += arcadyan_vgv7510kw22-nor
-
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
-endef
-TARGET_DEVICES += arcadyan_vgv7519-brn
-
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
-endef
-TARGET_DEVICES += arcadyan_vgv7519-nor
-
-define Device/avm_fritz3370
-  $(Device/AVM)
-  $(Device/NAND)
-  DEVICE_MODEL := FRITZ!Box 3370
-  DEVICE_VARIANT := Rev. 2
-  DEVICE_DTS := FRITZ3370
-  KERNEL_SIZE := 4096k
-  UBINIZE_OPTS := -E 5
-  IMAGES += eva-kernel.bin eva-filesystem.bin
-  IMAGE/eva-kernel.bin := append-kernel
-  IMAGE/eva-filesystem.bin := append-ubi
-  DEVICE_PACKAGES := kmod-ath9k wpad-basic kmod-usb-dwc2 fritz-tffs
-endef
-
-define Device/avm_fritz3370-rev2-hynix
-  $(Device/avm_fritz3370)
-  DEVICE_MODEL := FRITZ!Box 3370
-  DEVICE_VARIANT := Rev. 2 (Hynix NAND)
-  DEVICE_DTS := FRITZ3370-REV2-HYNIX
-endef
-TARGET_DEVICES += avm_fritz3370-rev2-hynix
-
-define Device/avm_fritz3370-rev2-micron
-  $(Device/avm_fritz3370)
-  DEVICE_MODEL := FRITZ!Box 3370
-  DEVICE_VARIANT := Rev. 2 (Micron NAND)
-  DEVICE_DTS := FRITZ3370-REV2-MICRON
-endef
-TARGET_DEVICES += avm_fritz3370-rev2-micron
-
-define Device/avm_fritz7360sl
-  $(Device/AVM)
-  DEVICE_MODEL := FRITZ!Box 7360 SL
-  IMAGE_SIZE := 15744k
-  DEVICE_DTS := FRITZ7360SL
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2
-  SUPPORTED_DEVICES += FRITZ7360SL
-endef
-TARGET_DEVICES += avm_fritz7360sl
-
-define Device/avm_fritz7362sl
-  $(Device/AVM)
-  $(Device/NAND)
-  DEVICE_MODEL := FRITZ!Box 7362 SL
-  KERNEL_SIZE := 4096k
-  IMAGE_SIZE := 49152k
-  DEVICE_DTS := FRITZ7362SL
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 fritz-tffs
-endef
-TARGET_DEVICES += avm_fritz7362sl
-
-define Device/avm_fritz7412
-  $(Device/AVM)
-  $(Device/NAND)
-  DEVICE_MODEL := FRITZ!Box 7412
-  BOARD_NAME := FRITZ7412
-  DEVICE_DTS := FRITZ7412
-  KERNEL_SIZE := 4096k
-  IMAGE_SIZE := 49152k
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic fritz-tffs-nand fritz-caldata
-endef
-TARGET_DEVICES += avm_fritz7412
-
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
-endef
-TARGET_DEVICES += bt_homehub-v5a
-
-define Device/buffalo_wbmr-300hpd
-  DEVICE_VENDOR := Buffalo
-  DEVICE_MODEL := WBMR-300HPD
-  IMAGE_SIZE := 15616k
-  DEVICE_DTS := WBMR300
-  DEVICE_PACKAGES := kmod-mt7603 wpad-basic kmod-usb-dwc2
-  SUPPORTED_DEVICES += WBMR300
-endef
-TARGET_DEVICES += buffalo_wbmr-300hpd
-
-define Device/lantiq_easy80920-nand
-  $(Device/lantiqFullImage)
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := VR9 EASY80920
-  DEVICE_VARIANT := NAND
-  DEVICE_DTS := EASY80920NAND
-  IMAGE_SIZE := 64512k
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
-endef
-TARGET_DEVICES += lantiq_easy80920-nand
-
-define Device/lantiq_easy80920-nor
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := VR9 EASY80920
-  DEVICE_VARIANT := NOR
-  DEVICE_DTS := EASY80920NOR
-  IMAGE_SIZE := 7936k
-  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
-endef
-TARGET_DEVICES += lantiq_easy80920-nor
-
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
-endef
-DEVICE_VARS += NETGEAR_BOARD_ID NETGEAR_HW_ID
-TARGET_DEVICES += netgear_dm200
-
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
-
-define Device/zyxel_p-2812hnu-f3
-  $(Device/NAND)
-  DEVICE_VENDOR := ZyXEL
-  DEVICE_MODEL := P-2812HNU
-  DEVICE_VARIANT := F3
-  BOARD_NAME := P2812HNUF3
-  DEVICE_DTS := P2812HNUF3
-  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2
-  SUPPORTED_DEVICES += P2812HNUF3
-endef
-TARGET_DEVICES += zyxel_p-2812hnu-f3
-
+include vr9.mk
 endif
 
 
 ifeq ($(SUBTARGET),falcon)
-
-define Device/lantiq_easy88388
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := EASY88388 Falcon FTTDP8 Reference Board
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY88388
-endef
-TARGET_DEVICES += lantiq_easy88388
-
-define Device/lantiq_easy88444
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := EASY88444 Falcon FTTdp G.FAST Reference Board
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY88444
-endef
-TARGET_DEVICES += lantiq_easy88444
-
-define Device/lantiq_easy98020
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
-  DEVICE_VARIANT := v1.0-v1.7
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98020
-endef
-TARGET_DEVICES += lantiq_easy98020
-
-define Device/lantiq_easy98020-v18
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
-  DEVICE_VARIANT := v1.8
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98020V18
-endef
-TARGET_DEVICES += lantiq_easy98020-v18
-
-define Device/lantiq_easy98021
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon HGU Reference Board (EASY98021)
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98021
-endef
-TARGET_DEVICES += lantiq_easy98021
-
-define Device/lantiq_easy98035synce
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFP Stick (EASY98035SYNCE)
-  DEVICE_VARIANT := with Synchronous Ethernet
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98035SYNCE
-endef
-TARGET_DEVICES += lantiq_easy98035synce
-
-define Device/lantiq_easy98035synce1588
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFP Stick (EASY98035SYNCE1588)
-  DEVICE_VARIANT := with SyncE and IEEE1588
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98035SYNCE1588
-endef
-TARGET_DEVICES += lantiq_easy98035synce1588
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
-define Device/lantiq_falcon-sfp
-  DEVICE_VENDOR := Lantiq
-  DEVICE_MODEL := Falcon SFP Stick
-  IMAGE_SIZE := 7424k
-  DEVICE_DTS := FALCON-SFP
-endef
-TARGET_DEVICES += lantiq_falcon-sfp
-
+include falcon.mk
 endif
 
 $(eval $(call BuildImage))
diff --git a/target/linux/lantiq/image/amazonse.mk b/target/linux/lantiq/image/amazonse.mk
new file mode 100644
index 0000000000..77afaa8bed
--- /dev/null
+++ b/target/linux/lantiq/image/amazonse.mk
@@ -0,0 +1,22 @@
+define Device/allnet_all0333cj
+  DEVICE_VENDOR := Allnet
+  DEVICE_MODEL := ALL0333CJ
+  IMAGE_SIZE := 3700k
+  DEVICE_DTS := ALL0333CJ
+  DEVICE_PACKAGES := kmod-ltq-adsl-ase kmod-ltq-adsl-ase-mei \
+	kmod-ltq-adsl-ase-fw-b kmod-ltq-atm-ase \
+	ltq-adsl-app ppp-mod-pppoe
+endef
+TARGET_DEVICES += allnet_all0333cj
+
+define Device/netgear_dgn1000b
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_MODEL := DGN1000B
+  IMAGE_SIZE := 6000k
+  DEVICE_DTS := DGN1000B
+  DEVICE_PACKAGES := kmod-ltq-adsl-ase kmod-ltq-adsl-ase-mei \
+	kmod-ltq-adsl-ase-fw-b kmod-ltq-atm-ase \
+	ltq-adsl-app ppp-mod-pppoe
+  SUPPORTED_DEVICES += DGN1000B
+endef
+TARGET_DEVICES += netgear_dgn1000b
diff --git a/target/linux/lantiq/image/ar9.mk b/target/linux/lantiq/image/ar9.mk
new file mode 100644
index 0000000000..272227bdb3
--- /dev/null
+++ b/target/linux/lantiq/image/ar9.mk
@@ -0,0 +1,163 @@
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
+define Device/bt_homehub-v3a
+  $(Device/NAND)
+  DEVICE_VENDOR := British Telecom
+  DEVICE_MODEL := Home Hub
+  DEVICE_VARIANT := Type A
+  BOARD_NAME := BTHOMEHUBV3A
+  DEVICE_DTS := BTHOMEHUBV3A
+  DEVICE_PACKAGES := kmod-usb-dwc2 \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
+	kmod-ltq-deu-ar9 \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath9k kmod-owl-loader wpad-basic \
+	uboot-envtools
+  SUPPORTED_DEVICES += BTHOMEHUBV3A
+endef
+TARGET_DEVICES += bt_homehub-v3a
+
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
+DGN3500_KERNEL_OFFSET_HEX=0x50000
+DGN3500_KERNEL_OFFSET_DEC=327680
+define Device/netgear_dgn3500
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_MODEL := DGN3500
+  DEVICE_DTS := DGN3500
+  IMAGE_SIZE := 16000k
+  IMAGES := \
+	sysupgrade-na.bin sysupgrade.bin \
+	factory-na.img factory.img
+  IMAGE/sysupgrade-na.bin := \
+	append-kernel | append-rootfs | dgn3500-sercom-footer 0x0 "NA" | \
+	pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := \
+	append-kernel | append-rootfs | dgn3500-sercom-footer 0x0 "WW" | \
+	pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/factory-na.img := \
+	pad-extra $(DGN3500_KERNEL_OFFSET_DEC) | append-kernel | append-rootfs | \
+	dgn3500-sercom-footer $(DGN3500_KERNEL_OFFSET_HEX) "NA" | pad-rootfs | \
+	check-size 16320k | pad-to 16384k
+  IMAGE/factory.img := \
+	pad-extra $(DGN3500_KERNEL_OFFSET_DEC) | append-kernel | append-rootfs | \
+	dgn3500-sercom-footer $(DGN3500_KERNEL_OFFSET_HEX) "WW" | pad-rootfs | \
+	check-size 16320k | pad-to 16384k
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ath9k kmod-owl-loader wpad-basic \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-deu-ar9
+  SUPPORTED_DEVICES += DGN3500
+endef
+TARGET_DEVICES += netgear_dgn3500
+
+define Device/netgear_dgn3500b
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_MODEL := DGN3500B
+  DEVICE_DTS := DGN3500B
+  IMAGE_SIZE := 16000k
+  IMAGES += factory.img
+  IMAGE/sysupgrade.bin := \
+	append-kernel | append-rootfs | dgn3500-sercom-footer 0x0 "DE" | \
+	pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/factory.img := \
+	pad-extra $(DGN3500_KERNEL_OFFSET_DEC) | append-kernel | append-rootfs | \
+	dgn3500-sercom-footer $(DGN3500_KERNEL_OFFSET_HEX) "DE" | pad-rootfs | \
+	check-size 16320k | pad-to 16384k
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ath9k kmod-owl-loader wpad-basic \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-deu-ar9
+  SUPPORTED_DEVICES += DGN3500B
+endef
+TARGET_DEVICES += netgear_dgn3500b
+
+define Device/zte_h201l
+  DEVICE_VENDOR := ZTE
+  DEVICE_MODEL := H201L
+  IMAGE_SIZE := 7808k
+  DEVICE_DTS := H201L
+  DEVICE_PACKAGES := kmod-ath9k-htc wpad-basic \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoe \
+	kmod-ltq-deu-ar9 kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-tapi kmod-ltq-vmmc
+  SUPPORTED_DEVICES += H201L
+endef
+TARGET_DEVICES += zte_h201l
+
+define Device/zyxel_p-2601hn
+  DEVICE_VENDOR := ZyXEL
+  DEVICE_MODEL := P-2601HN
+  DEVICE_VARIANT := F1/F3
+  IMAGE_SIZE := 15616k
+  DEVICE_DTS := P2601HNFX
+  DEVICE_PACKAGES := kmod-rt2800-usb wpad-basic \
+	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
+	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
+	ltq-adsl-app ppp-mod-pppoe \
+	kmod-ltq-deu-ar9 kmod-usb-dwc2
+  SUPPORTED_DEVICES += P2601HNFX
+endef
+TARGET_DEVICES += zyxel_p-2601hn
diff --git a/target/linux/lantiq/image/danube.mk b/target/linux/lantiq/image/danube.mk
new file mode 100644
index 0000000000..8171900a6f
--- /dev/null
+++ b/target/linux/lantiq/image/danube.mk
@@ -0,0 +1,219 @@
+define Device/arcadyan_arv4510pw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV4510PW
+  DEVICE_ALT0_VENDOR := Wippies
+  DEVICE_ALT0_MODEL := BeWan iBox v1.0
+  IMAGE_SIZE := 15616k
+  DEVICE_DTS := ARV4510PW
+  DEVICE_PACKAGES := kmod-usb-ledtrig-usbport kmod-usb2-pci kmod-usb-uhci \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-tapi kmod-ltq-vmmc \
+	kmod-rt2800-pci kmod-ath5k wpad-basic
+  SUPPORTED_DEVICES += ARV4510PW
+endef
+TARGET_DEVICES += arcadyan_arv4510pw
+
+define Device/arcadyan_arv4519pw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV4519PW
+  DEVICE_ALT0_VENDOR := Vodafone
+  DEVICE_ALT0_MODEL := NetFasteR IAD 2
+  DEVICE_ALT1_VENDOR := Pirelli
+  DEVICE_ALT1_MODEL := P.RG A4201G
+  IMAGE_SIZE := 3776k
+  DEVICE_DTS := ARV4519PW
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa
+  SUPPORTED_DEVICES += ARV4519PW
+endef
+TARGET_DEVICES += arcadyan_arv4519pw
+
+define Device/arcadyan_arv7506pw11
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV7506PW11
+  DEVICE_ALT0_VENDOR := Alice/O2
+  DEVICE_ALT0_MODEL := IAD 4421
+  IMAGE_SIZE := 7808k
+  DEVICE_DTS := ARV7506PW11
+  DEVICE_PACKAGES := kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-rt2800-pci wpad-basic
+  SUPPORTED_DEVICES += ARV7506PW11
+endef
+TARGET_DEVICES += arcadyan_arv7506pw11
+
+define Device/arcadyan_arv7510pw22
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV7510PW22
+  DEVICE_ALT0_VENDOR := Astoria Networks
+  DEVICE_ALT0_MODEL := ARV7510PW22
+  IMAGE_SIZE := 31232k
+  DEVICE_DTS := ARV7510PW22
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-tapi kmod-ltq-vmmc \
+	kmod-rt2800-pci wpad-basic \
+	kmod-usb-uhci kmod-usb2 kmod-usb2-pci
+  SUPPORTED_DEVICES += ARV7510PW22
+endef
+TARGET_DEVICES += arcadyan_arv7510pw22
+
+define Device/arcadyan_arv7518pw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV7518PW
+  DEVICE_ALT0_VENDOR := Astoria Networks
+  DEVICE_ALT0_MODEL := ARV7518PW
+  IMAGE_SIZE := 7872k
+  DEVICE_DTS := ARV7518PW
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath9k kmod-owl-loader wpad-basic
+  SUPPORTED_DEVICES += ARV7518PW
+endef
+TARGET_DEVICES += arcadyan_arv7518pw
+
+define Device/arcadyan_arv7519pw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV7519PW
+  DEVICE_ALT0_VENDOR := Astoria Networks
+  DEVICE_ALT0_MODEL := ARV7519PW
+  IMAGE_SIZE := 15488k
+  DEVICE_DTS := ARV7519PW
+  DEVICE_PACKAGES := kmod-usb-dwc2 \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-rt2800-pci wpad-basic
+  SUPPORTED_DEVICES += ARV7519PW
+endef
+TARGET_DEVICES += arcadyan_arv7519pw
+
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
+define Device/arcadyan_arv752dpw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV752DPW
+  DEVICE_ALT0_VENDOR := Vodafone
+  DEVICE_ALT0_MODEL := Easybox 802
+  IMAGE_SIZE := 7872k
+  DEVICE_DTS := ARV752DPW
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-tapi kmod-ltq-vmmc \
+	kmod-rt2800-pci wpad-basic
+  SUPPORTED_DEVICES += ARV752DPW
+endef
+TARGET_DEVICES += arcadyan_arv752dpw
+
+define Device/arcadyan_arv752dpw22
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV752DPW22
+  DEVICE_ALT0_VENDOR := Vodafone
+  DEVICE_ALT0_MODEL := Easybox 803
+  IMAGE_SIZE := 7616k
+  DEVICE_DTS := ARV752DPW22
+  DEVICE_PACKAGES := kmod-usb2-pci kmod-usb-uhci kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ltq-tapi kmod-ltq-vmmc \
+	kmod-rt2800-pci wpad-basic
+  SUPPORTED_DEVICES += ARV752DPW22
+endef
+TARGET_DEVICES += arcadyan_arv752dpw22
+
+define Device/arcadyan_arv8539pw22
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV8539PW22
+  DEVICE_ALT0_VENDOR := Telekom
+  DEVICE_ALT0_MODEL := Speedport W504V Typ A
+  IMAGE_SIZE := 7616k
+  DEVICE_DTS := ARV8539PW22
+  DEVICE_PACKAGES := kmod-usb-dwc2 \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-ath9k kmod-owl-loader wpad-basic
+  SUPPORTED_DEVICES += ARV8539PW22
+endef
+TARGET_DEVICES += arcadyan_arv8539pw22
+
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
+define Device/siemens_gigaset-sx76x
+  DEVICE_VENDOR := Siemens
+  DEVICE_MODEL := Gigaset sx76x
+  IMAGE_SIZE := 7680k
+  DEVICE_DTS := GIGASX76X
+  DEVICE_PACKAGES := kmod-usb-dwc2 \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoe \
+	kmod-ath5k wpad-basic
+  SUPPORTED_DEVICES += GIGASX76X
+endef
+TARGET_DEVICES += siemens_gigaset-sx76x
diff --git a/target/linux/lantiq/image/falcon.mk b/target/linux/lantiq/image/falcon.mk
new file mode 100644
index 0000000000..38ba856cf8
--- /dev/null
+++ b/target/linux/lantiq/image/falcon.mk
@@ -0,0 +1,105 @@
+define Device/lantiq_easy88388
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := EASY88388 Falcon FTTDP8 Reference Board
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY88388
+endef
+TARGET_DEVICES += lantiq_easy88388
+
+define Device/lantiq_easy88444
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := EASY88444 Falcon FTTdp G.FAST Reference Board
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY88444
+endef
+TARGET_DEVICES += lantiq_easy88444
+
+define Device/lantiq_easy98020
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
+  DEVICE_VARIANT := v1.0-v1.7
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY98020
+endef
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
+
+define Device/lantiq_easy98035synce
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Falcon SFP Stick (EASY98035SYNCE)
+  DEVICE_VARIANT := with Synchronous Ethernet
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY98035SYNCE
+endef
+TARGET_DEVICES += lantiq_easy98035synce
+
+define Device/lantiq_easy98035synce1588
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Falcon SFP Stick (EASY98035SYNCE1588)
+  DEVICE_VARIANT := with SyncE and IEEE1588
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY98035SYNCE1588
+endef
+TARGET_DEVICES += lantiq_easy98035synce1588
+
+define Device/lantiq_easy98000-nand
+  DEVICE_VENDOR := Lantiq
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
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := EASY98000SFLASH
+  DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
+endef
+TARGET_DEVICES += lantiq_easy98000-sflash
+
+define Device/lantiq_falcon-mdu
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Falcon / VINAXdp MDU Board
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := FALCON-MDU
+endef
+TARGET_DEVICES += lantiq_falcon-mdu
+
+define Device/lantiq_falcon-sfp
+  DEVICE_VENDOR := Lantiq
+  DEVICE_MODEL := Falcon SFP Stick
+  IMAGE_SIZE := 7424k
+  DEVICE_DTS := FALCON-SFP
+endef
+TARGET_DEVICES += lantiq_falcon-sfp
diff --git a/target/linux/lantiq/image/vr9.mk b/target/linux/lantiq/image/vr9.mk
new file mode 100644
index 0000000000..dee4b0d161
--- /dev/null
+++ b/target/linux/lantiq/image/vr9.mk
@@ -0,0 +1,246 @@
+define Device/alphanetworks_asl56026
+  DEVICE_VENDOR := Alpha
+  DEVICE_MODEL := ASL56026
+  DEVICE_ALT0_VENDOR := BT Openreach
+  DEVICE_ALT0_MODEL := ECI VDSL Modem V-2FUb/I
+  DEVICE_DTS := ASL56026
+  IMAGE_SIZE := 7488k
+endef
+TARGET_DEVICES += alphanetworks_asl56026
+
+define Device/arcadyan_arv7519rw22
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV7519RW22
+  DEVICE_ALT0_VENDOR := Orange
+  DEVICE_ALT0_MODEL := Livebox
+  DEVICE_ALT0_VARIANT := 2.1
+  DEVICE_ALT1_VENDOR := Astoria Networks
+  DEVICE_ALT1_MODEL := ARV7519RW22
+  IMAGE_SIZE := 31232k
+  DEVICE_DTS := ARV7519RW22
+  DEVICE_PACKAGES := kmod-usb-dwc2
+  SUPPORTED_DEVICES += ARV7519RW22
+endef
+TARGET_DEVICES += arcadyan_arv7519rw22
+
+define Device/arcadyan_vg3503j
+  DEVICE_VENDOR := BT Openreach
+  DEVICE_MODEL := ECI VDSL Modem V-2FUb/R
+  IMAGE_SIZE := 8000k
+  DEVICE_DTS := VG3503J
+  SUPPORTED_DEVICES += VG3503J
+endef
+TARGET_DEVICES += arcadyan_vg3503j
+
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
+endef
+TARGET_DEVICES += arcadyan_vgv7510kw22-brn
+
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
+endef
+TARGET_DEVICES += arcadyan_vgv7510kw22-nor
+
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
+endef
+TARGET_DEVICES += arcadyan_vgv7519-brn
+
+define Device/arcadyan_vgv7519-nor
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := VGV7519
+  DEVICE_VARIANT := NOR
+  DEVICE_ALT0_VENDOR := KPN
+  DEVICE_ALT0_MODEL := Experiabox 8
+  DEVICE_ALT0_VARIANT := NOR
+  IMAGE_SIZE := 15360k
+  DEVICE_DTS := VGV7519NOR
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
+  SUPPORTED_DEVICES += VGV7519NOR
+endef
+TARGET_DEVICES += arcadyan_vgv7519-nor
+
+define Device/avm_fritz3370
+  $(Device/AVM)
+  $(Device/NAND)
+  DEVICE_MODEL := FRITZ!Box 3370
+  DEVICE_VARIANT := Rev. 2
+  DEVICE_DTS := FRITZ3370
+  KERNEL_SIZE := 4096k
+  UBINIZE_OPTS := -E 5
+  IMAGES += eva-kernel.bin eva-filesystem.bin
+  IMAGE/eva-kernel.bin := append-kernel
+  IMAGE/eva-filesystem.bin := append-ubi
+  DEVICE_PACKAGES := kmod-ath9k wpad-basic kmod-usb-dwc2 fritz-tffs
+endef
+
+define Device/avm_fritz3370-rev2-hynix
+  $(Device/avm_fritz3370)
+  DEVICE_MODEL := FRITZ!Box 3370
+  DEVICE_VARIANT := Rev. 2 (Hynix NAND)
+  DEVICE_DTS := FRITZ3370-REV2-HYNIX
+endef
+TARGET_DEVICES += avm_fritz3370-rev2-hynix
+
+define Device/avm_fritz3370-rev2-micron
+  $(Device/avm_fritz3370)
+  DEVICE_MODEL := FRITZ!Box 3370
+  DEVICE_VARIANT := Rev. 2 (Micron NAND)
+  DEVICE_DTS := FRITZ3370-REV2-MICRON
+endef
+TARGET_DEVICES += avm_fritz3370-rev2-micron
+
+define Device/avm_fritz7360sl
+  $(Device/AVM)
+  DEVICE_MODEL := FRITZ!Box 7360 SL
+  IMAGE_SIZE := 15744k
+  DEVICE_DTS := FRITZ7360SL
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2
+  SUPPORTED_DEVICES += FRITZ7360SL
+endef
+TARGET_DEVICES += avm_fritz7360sl
+
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
+define Device/avm_fritz7412
+  $(Device/AVM)
+  $(Device/NAND)
+  DEVICE_MODEL := FRITZ!Box 7412
+  BOARD_NAME := FRITZ7412
+  DEVICE_DTS := FRITZ7412
+  KERNEL_SIZE := 4096k
+  IMAGE_SIZE := 49152k
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic fritz-tffs-nand fritz-caldata
+endef
+TARGET_DEVICES += avm_fritz7412
+
+define Device/bt_homehub-v5a
+  $(Device/NAND)
+  DEVICE_VENDOR := British Telecom
+  DEVICE_MODEL := Home Hub 5
+  DEVICE_VARIANT := Type A
+  BOARD_NAME := BTHOMEHUBV5A
+  DEVICE_DTS := BTHOMEHUBV5A
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader \
+	kmod-ath10k-ct ath10k-firmware-qca988x-ct wpad-basic kmod-usb-dwc2
+  SUPPORTED_DEVICES += BTHOMEHUBV5A
+endef
+TARGET_DEVICES += bt_homehub-v5a
+
+define Device/buffalo_wbmr-300hpd
+  DEVICE_VENDOR := Buffalo
+  DEVICE_MODEL := WBMR-300HPD
+  IMAGE_SIZE := 15616k
+  DEVICE_DTS := WBMR300
+  DEVICE_PACKAGES := kmod-mt7603 wpad-basic kmod-usb-dwc2
+  SUPPORTED_DEVICES += WBMR300
+endef
+TARGET_DEVICES += buffalo_wbmr-300hpd
+
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
+  DEVICE_VARIANT := NOR
+  DEVICE_DTS := EASY80920NOR
+  IMAGE_SIZE := 7936k
+  DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+endef
+TARGET_DEVICES += lantiq_easy80920-nor
+
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
+endef
+DEVICE_VARS += NETGEAR_BOARD_ID NETGEAR_HW_ID
+TARGET_DEVICES += netgear_dm200
+
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
+endef
+TARGET_DEVICES += zyxel_p-2812hnu-f1
+
+define Device/zyxel_p-2812hnu-f3
+  $(Device/NAND)
+  DEVICE_VENDOR := ZyXEL
+  DEVICE_MODEL := P-2812HNU
+  DEVICE_VARIANT := F3
+  BOARD_NAME := P2812HNUF3
+  DEVICE_DTS := P2812HNUF3
+  DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2
+  SUPPORTED_DEVICES += P2812HNUF3
+endef
+TARGET_DEVICES += zyxel_p-2812hnu-f3
diff --git a/target/linux/lantiq/image/xway_legacy.mk b/target/linux/lantiq/image/xway_legacy.mk
new file mode 100644
index 0000000000..011de20914
--- /dev/null
+++ b/target/linux/lantiq/image/xway_legacy.mk
@@ -0,0 +1,77 @@
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
+define Device/arcadyan_arv4520pw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV4520PW
+  DEVICE_ALT0_VENDOR := Vodafone
+  DEVICE_ALT0_MODEL := Easybox 800
+  DEVICE_ALT1_VENDOR := Airties
+  DEVICE_ALT1_MODEL := WAV-281
+  IMAGE_SIZE := 3648k
+  DEVICE_DTS := ARV4520PW
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa \
+	kmod-rt61-pci wpad-mini
+  SUPPORTED_DEVICES += ARV4520PW
+endef
+TARGET_DEVICES += arcadyan_arv4520pw
+
+define Device/arcadyan_arv4525pw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV4525PW
+  DEVICE_ALT0_VENDOR := Telekom
+  DEVICE_ALT0_MODEL := Speedport W502V
+  DEVICE_ALT0_VARIANT := Typ A
+  IMAGE_SIZE := 3776k
+  DEVICE_DTS := ARV4525PW
+  DEVICE_PACKAGES := kmod-ath5k wpad-mini \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa -swconfig
+  SUPPORTED_DEVICES += ARV4525PW
+endef
+TARGET_DEVICES += arcadyan_arv4525pw
+
+define Device/arcadyan_arv452cqw
+  DEVICE_VENDOR := Arcadyan
+  DEVICE_MODEL := ARV452CQW
+  DEVICE_ALT0_VENDOR := Vodafone
+  DEVICE_ALT0_MODEL := Easybox 801
+  IMAGE_SIZE := 3776k
+  DEVICE_DTS := ARV452CQW
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
+	kmod-ath5k wpad-mini \
+	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
+	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
+	ltq-adsl-app ppp-mod-pppoa
+  SUPPORTED_DEVICES += ARV452CQW
+endef
+TARGET_DEVICES += arcadyan_arv452cqw
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
