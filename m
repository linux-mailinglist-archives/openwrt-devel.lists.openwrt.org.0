Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E45B10852F
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 Nov 2019 22:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z4IwYEn75ZOmcluwOH52JLtMdfMHpL+MOMzyf5+yofo=; b=kqz0lW5FSGKR/z
	azNzHvemRuv/MkpBauaiUs0hxaR7OiR4kMuh+dE1AzKt4J/u0cMxF76uzVvBxdeG3rqtWo1IiGf6y
	BvAOHrXVQn4w2+BoX2cvn07/jpxmAGAuzfKQ3iE6+B///XfxTZ9BtynlUCF2VccEEfr3sbVJbbgVB
	CgqWinhBUgZWGnxC02SkWkoEsZnaylrWq+uAohTxIWVGFpn4s11vygFmCbMZFcXxitNHy/rwvmESE
	egXvICPk7N30kpNTPCQ6sTln1BeNLzes7AVAOdFOgQbNqGdxiAEqJ8ug7vRU+RthTTesNAbhxRaq6
	9oSBMaQpb0kw4eaJiicA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYzpb-0000zk-EC; Sun, 24 Nov 2019 21:54:11 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYzpQ-0000yj-Hk
 for openwrt-devel@lists.openwrt.org; Sun, 24 Nov 2019 21:54:03 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N30VJ-1hpvXf2gUH-013Qmt for <openwrt-devel@lists.openwrt.org>; Sun, 24
 Nov 2019 22:53:50 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 24 Nov 2019 22:53:01 +0100
Message-Id: <20191124215301.1424-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:gWOVucVNJzKs7WWjPLKTshApvxzmMQLmEiHvmcJs2FScGmhSdPI
 f82YIBb9x3aGSBMFFHizB6/lndB3hE1EWDmv2MUxEiXTzq4FE2aOjzjnG5mJL+LQLxrhRe2
 GtxbsAxFTNYD/l7xTkqCA2N313KJB3uadl8ikOOIFrI9jh4wM72ydOi5kcKQEBPXokyl56n
 W0VNZR68cDEtmEViICLsg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XecnSf/k/Mg=:eox3g7A0yvvR4tCB7TfoBN
 dPzip6e66EB8S6hFuUmPJBrAXVUhmfTT2C+P8Wmc2oVRzoJ0tyCPbEoq7Ex8Cy/tTPtWaCQjJ
 839PVMdZcFL+XzHydcFYbDIZ4xEYqHeEV9ib3hfFCfP5ARSVh2gzRhp7C12WCHacO8zYqmPfb
 RjGCt4Jcdzu8VnMN85Z7EDjExFjBe3UK9/1aWTrpk6vqMZx5UScYuzfPcMKz9S4S47Sy/nNcJ
 CMjgcIiLme/uKj/4Tewq8wSGeSY9Pe7s+XhGnz5d0nj2WHZvJZcOXne+ozbQ5rlZNDZtNDD1+
 6GFrsNR8qsUGY2WImlWcv1mLUO+07wCvER7ZJvrms/flC0BMtPe0YgmXuM8ZS5eliqaDkqdNV
 m6PyGjoo+TI2P77IqkDLPC7+4KxIw4PrXJXt6yHt3LXF2iIu7wK2+FX2YJbzJfB5BYof52vT6
 30FnGnUIQoLU25vzdt6ihuP6bSetNi4CxbbR+vo5L1y+uvdBlEcXKdrRVnNox8wE/XPqIjQxt
 K3wBXmeGEw2hq7i+3PHLqYcQu8qQdL6dgvsIdLeL2GIY87GaSIu3xQzFEwC1gvxTmyFoUPW7K
 KAJKmEnx5HFwhcrmO1Mx0GUUo4NfexeXGPz/lXPsZCfj4iokjmyuQ8I9Ny4hYvEairBxGOIbM
 2B2W+SIO5KVTYPH5KZ0+h1UtjyAROtR/HdiS+cK/NYq4/+s1ybRjZa8Odg9LtFkn1cgdqaOP4
 DWWcTPrGWFKh4Pktk1sDMidlHccrdFAAmHaMdumwDesIsVmhh/EaAB9j0m0KdXZRck3+vbHdi
 oDa8SFsp+cYyTTbytufhdzRzDU2gB+bjUj/75foDBpjqAb9+1U1XVK/2unh7DoPZ1fkCM4Xf+
 vWJmIlElol+B0oZUMRnr4qC4BfJ2Rtm7vm2+b4nYk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_135401_028586_4AB4F4E5 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] treewide: remove dts-v1 identifier from
 DTSI files
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

The "/dts-v1/;" identifier is supposed to be put once at the beginning
of a device tree file. Thus, it makes no sense to provide it a second
time in to-be-included DTSI files.

This removes the identifier from all DTSI files in /target/linux.

Most of the DTS files in OpenWrt do contain the "/dts-v1/;". It is
missing for most of the following targets, though:
mvebu, ipq806x, mpc85xx, ipq40xx

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar7161_adtran_bsap1880.dtsi              | 1 -
 target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi             | 1 -
 target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi           | 1 -
 target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi            | 1 -
 target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi              | 1 -
 target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi              | 1 -
 target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi    | 1 -
 target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi         | 1 -
 target/linux/ath79/dts/ar9341_tplink.dtsi                       | 1 -
 target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi                | 1 -
 target/linux/ath79/dts/ar9344_netgear_wndr.dtsi                 | 1 -
 target/linux/ath79/dts/ar9344_tplink_cpe.dtsi                   | 1 -
 target/linux/ath79/dts/ar9344_tplink_cpe_1port.dtsi             | 1 -
 target/linux/ath79/dts/ar9344_tplink_cpe_2port.dtsi             | 1 -
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi            | 1 -
 target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi               | 1 -
 target/linux/ath79/dts/qca9533_tplink_cpexxx.dtsi               | 1 -
 target/linux/ath79/dts/qca9533_tplink_tl-wr841-v11.dtsi         | 1 -
 target/linux/ath79/dts/qca9533_tplink_tl-wr841.dtsi             | 1 -
 target/linux/ath79/dts/qca953x_tplink_tl-wr810n.dtsi            | 1 -
 target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi            | 1 -
 target/linux/ath79/dts/qca9558_comfast_cf-wr650ac.dtsi          | 1 -
 target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi              | 2 --
 target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi              | 1 -
 target/linux/ath79/dts/qca9558_tplink_archer-c.dtsi             | 1 -
 target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi                | 1 -
 target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi          | 1 -
 target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi           | 1 -
 target/linux/ath79/dts/qca9563_dlink_dir-842-c.dtsi             | 1 -
 target/linux/ath79/dts/qca9563_elecom_wrc-ghbk2-i.dtsi          | 1 -
 target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi            | 2 --
 target/linux/ath79/dts/qca9563_tplink_archer-x6-v2.dtsi         | 1 -
 target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi         | 1 -
 target/linux/ath79/dts/qca9563_tplink_tl-wr1043n.dtsi           | 1 -
 target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi          | 1 -
 target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi              | 1 -
 .../ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064.dtsi      | 1 -
 target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi     | 1 -
 target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi             | 2 --
 target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi       | 1 -
 target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi               | 1 -
 target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi               | 1 -
 target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi              | 1 -
 target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi             | 1 -
 target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi         | 1 -
 target/linux/ramips/dts/mt7628an_hiwifi_hc5x61a.dtsi            | 1 -
 target/linux/ramips/dts/mt7628an_iptime.dtsi                    | 1 -
 47 files changed, 50 deletions(-)

diff --git a/target/linux/ath79/dts/ar7161_adtran_bsap1880.dtsi b/target/linux/ath79/dts/ar7161_adtran_bsap1880.dtsi
index f5dfa77912..b60718dd7f 100644
--- a/target/linux/ath79/dts/ar7161_adtran_bsap1880.dtsi
+++ b/target/linux/ath79/dts/ar7161_adtran_bsap1880.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
index 7d842af060..370e2c1c58 100644
--- a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
index 4f52e3cc40..35f3442b29 100644
--- a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
+++ b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
index 4ce7a0ec3d..a7e6b49c1f 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi
index 4c5ae697d6..49b869f718 100644
--- a/target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
index 4a848cb896..589896d9f8 100644
--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
index a8e0331f08..2bacd08245 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi b/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
index 4fb06494a4..4f11d5d7a4 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar9341_tplink.dtsi b/target/linux/ath79/dts/ar9341_tplink.dtsi
index f99b6da67e..0a950bd1a6 100644
--- a/target/linux/ath79/dts/ar9341_tplink.dtsi
+++ b/target/linux/ath79/dts/ar9341_tplink.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi b/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi
index 2dd2297e87..9d9af23bab 100644
--- a/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi
+++ b/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
index 16a4e3f6e8..18b9ae1778 100644
--- a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar9344_tplink_cpe.dtsi b/target/linux/ath79/dts/ar9344_tplink_cpe.dtsi
index d002dfeb3c..27a8d0aa13 100644
--- a/target/linux/ath79/dts/ar9344_tplink_cpe.dtsi
+++ b/target/linux/ath79/dts/ar9344_tplink_cpe.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/ar9344_tplink_cpe_1port.dtsi b/target/linux/ath79/dts/ar9344_tplink_cpe_1port.dtsi
index 653efdee17..057ba4572f 100644
--- a/target/linux/ath79/dts/ar9344_tplink_cpe_1port.dtsi
+++ b/target/linux/ath79/dts/ar9344_tplink_cpe_1port.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "ar9344_tplink_cpe.dtsi"
 
diff --git a/target/linux/ath79/dts/ar9344_tplink_cpe_2port.dtsi b/target/linux/ath79/dts/ar9344_tplink_cpe_2port.dtsi
index e97e49d718..8a1332c9c5 100644
--- a/target/linux/ath79/dts/ar9344_tplink_cpe_2port.dtsi
+++ b/target/linux/ath79/dts/ar9344_tplink_cpe_2port.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "ar9344_tplink_cpe.dtsi"
 
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
index 72bc2a6466..f06305c47f 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
@@ -1,4 +1,3 @@
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi b/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
index cb329a9a66..5edd2adc83 100644
--- a/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
+++ b/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "qca9533_tplink_cpexxx.dtsi"
 
diff --git a/target/linux/ath79/dts/qca9533_tplink_cpexxx.dtsi b/target/linux/ath79/dts/qca9533_tplink_cpexxx.dtsi
index 50d34c7c90..e0505e5724 100644
--- a/target/linux/ath79/dts/qca9533_tplink_cpexxx.dtsi
+++ b/target/linux/ath79/dts/qca9533_tplink_cpexxx.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9533_tplink_tl-wr841-v11.dtsi b/target/linux/ath79/dts/qca9533_tplink_tl-wr841-v11.dtsi
index ca95981008..a0d0afcccf 100644
--- a/target/linux/ath79/dts/qca9533_tplink_tl-wr841-v11.dtsi
+++ b/target/linux/ath79/dts/qca9533_tplink_tl-wr841-v11.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "qca9533_tplink_tl-wr841.dtsi"
 
diff --git a/target/linux/ath79/dts/qca9533_tplink_tl-wr841.dtsi b/target/linux/ath79/dts/qca9533_tplink_tl-wr841.dtsi
index e3d244ee7b..9f1bef3d4d 100644
--- a/target/linux/ath79/dts/qca9533_tplink_tl-wr841.dtsi
+++ b/target/linux/ath79/dts/qca9533_tplink_tl-wr841.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca953x_tplink_tl-wr810n.dtsi b/target/linux/ath79/dts/qca953x_tplink_tl-wr810n.dtsi
index c5fd7166a0..d08b4d65a5 100644
--- a/target/linux/ath79/dts/qca953x_tplink_tl-wr810n.dtsi
+++ b/target/linux/ath79/dts/qca953x_tplink_tl-wr810n.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi b/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
index 970a144dbc..b43ab2c6b6 100644
--- a/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
+++ b/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac.dtsi b/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac.dtsi
index 39fae74b83..8ee967ab9f 100644
--- a/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac.dtsi
+++ b/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi b/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
index ea752661ba..2cdb1b8373 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
@@ -10,8 +10,6 @@
  * antennas and number of spatial streams.
  */
 
-/dts-v1/;
-
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
diff --git a/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi b/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi
index 170563b6a7..bbb43354c4 100644
--- a/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi
+++ b/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9558_tplink_archer-c.dtsi b/target/linux/ath79/dts/qca9558_tplink_archer-c.dtsi
index 3defa554de..9f5d7a6fcf 100644
--- a/target/linux/ath79/dts/qca9558_tplink_archer-c.dtsi
+++ b/target/linux/ath79/dts/qca9558_tplink_archer-c.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi b/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi
index 2bc0f38f02..17e172d547 100644
--- a/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi
+++ b/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi b/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi
index 4c3a3230fe..a3f2b11212 100644
--- a/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi
+++ b/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi b/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi
index 719a9d065a..cee30a13b6 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9563_dlink_dir-842-c.dtsi b/target/linux/ath79/dts/qca9563_dlink_dir-842-c.dtsi
index ac8fe3ae0a..2482874c99 100644
--- a/target/linux/ath79/dts/qca9563_dlink_dir-842-c.dtsi
+++ b/target/linux/ath79/dts/qca9563_dlink_dir-842-c.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9563_elecom_wrc-ghbk2-i.dtsi b/target/linux/ath79/dts/qca9563_elecom_wrc-ghbk2-i.dtsi
index f04304ee4c..9395c7b26f 100644
--- a/target/linux/ath79/dts/qca9563_elecom_wrc-ghbk2-i.dtsi
+++ b/target/linux/ath79/dts/qca9563_elecom_wrc-ghbk2-i.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
index 8250db55ad..3e30a0fd0b 100644
--- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 
-/dts-v1/;
-
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-x6-v2.dtsi b/target/linux/ath79/dts/qca9563_tplink_archer-x6-v2.dtsi
index f1a1f5673d..6a1edd8d2b 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-x6-v2.dtsi
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-x6-v2.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi b/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi
index 3049c8bc20..8d6e1ed9f9 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/qca9563_tplink_tl-wr1043n.dtsi b/target/linux/ath79/dts/qca9563_tplink_tl-wr1043n.dtsi
index ba56cf23b8..47480481fa 100644
--- a/target/linux/ath79/dts/qca9563_tplink_tl-wr1043n.dtsi
+++ b/target/linux/ath79/dts/qca9563_tplink_tl-wr1043n.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi b/target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
index f5543e4f89..dcb450a2d3 100644
--- a/target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
+++ b/target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "tp9343_tplink_tl-wr94x.dtsi"
 
diff --git a/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi b/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi
index c6bb8a2417..fb5941657d 100644
--- a/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi
+++ b/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
diff --git a/target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064.dtsi b/target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064.dtsi
index 8387460d27..dc2034560a 100644
--- a/target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064.dtsi
+++ b/target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064.dtsi
@@ -1,4 +1,3 @@
-/dts-v1/;
 
 #include "skeleton.dtsi"
 #include <dt-bindings/clock/qcom,gcc-ipq806x.h>
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi
index 57033eb4a9..f58a414a28 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "vr9.dtsi"
 
diff --git a/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi b/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi
index b7d8087d5a..52c0ac0925 100644
--- a/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi
+++ b/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 
-/dts-v1/;
-
 #include "mt7620a.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi
index 800e8e6e03..f8f9bc754a 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "mt7620a_zbtlink_zbt-we1026.dtsi"
 
diff --git a/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi b/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi
index eb5a60bcdc..db83f99c3a 100644
--- a/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi
+++ b/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi
@@ -1,6 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 
-/dts-v1/;
 #include "mt7621.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi b/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi
index e8b11e5d59..8eaf55dbc7 100644
--- a/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi
+++ b/target/linux/ramips/dts/mt7621_asus_rt-acx5p.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "mt7621.dtsi"
 
diff --git a/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi b/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi
index 1776db8fc0..b4aaec46fc 100644
--- a/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi
+++ b/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0
-/dts-v1/;
 
 #include "mt7621.dtsi"
 
diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi b/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
index 7cff51a090..980dfe1e1d 100644
--- a/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
+++ b/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0
-/dts-v1/;
 
 #include "mt7621.dtsi"
 
diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
index d09585a753..5bf4eb0ac7 100644
--- a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
+++ b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0
-/dts-v1/;
 
 #include "mt7621_netgear_sercomm.dtsi"
 
diff --git a/target/linux/ramips/dts/mt7628an_hiwifi_hc5x61a.dtsi b/target/linux/ramips/dts/mt7628an_hiwifi_hc5x61a.dtsi
index c236a7a6f5..7a6631d2e4 100644
--- a/target/linux/ramips/dts/mt7628an_hiwifi_hc5x61a.dtsi
+++ b/target/linux/ramips/dts/mt7628an_hiwifi_hc5x61a.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "mt7628an.dtsi"
 
diff --git a/target/linux/ramips/dts/mt7628an_iptime.dtsi b/target/linux/ramips/dts/mt7628an_iptime.dtsi
index 05d6aa533a..bbd8642f2a 100644
--- a/target/linux/ramips/dts/mt7628an_iptime.dtsi
+++ b/target/linux/ramips/dts/mt7628an_iptime.dtsi
@@ -1,5 +1,4 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include "mt7628an.dtsi"
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
