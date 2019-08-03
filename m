Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1728089F
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 01:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h41jdDw+b8YW3Aw1bueg4W2aGlj3Vxcen2Y4hMMsK6M=; b=CCI/6XtObvbRr+
	q7gxJNFqOACGvVYKWo/CAMLmeK7TA6MsnY/bNyoIXDcjV02ZqQoGx/1piZxUWrWS23Pg/Q0VSJrg7
	TbaxvknH48lVrPtqcuQwQ9siW5psXuSrwnB1VT0jFbOAqgvcTUDUBSEFyvXJa/PlQQs7qfUltYFjA
	cUt7HZSaWFnM3dSFadYz6haRVQLWO7S+RvLco/SWoZ7XA2TRGdHUS1kwWKVOr9dCMnbxAZKF6pgZJ
	qT2aq97Z9gC1eIY+YIG4mYIORJJPTISl7uEX5yQp4lo2vdWcpE93qlcwfTOoqBdGSsOgydOQxIgAS
	HkMslze5qMmyLyqXcdjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu3gU-0000zM-1H; Sat, 03 Aug 2019 23:43:34 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu3g5-0000qw-Ho
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 23:43:11 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MlfL0-1ibgEZ24NG-00io6g; Sun, 04 Aug 2019 01:43:01 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 01:42:55 +0200
Message-Id: <20190803234256.2880-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:DQJ5SLXJ3toJXnIbbN4VRb55ETd2Q64AR3Pguz/NFuRS9DcxBcl
 z7C4myZ6eLyGMx0FdPt2rSGn2UauG7Qa9DZkhYUGl7Az6pU4rwUmpLH12N9jBw6aseeTIYe
 mhiAILxOJVn7VA3k+sD7gCOhUZyHTQM7o6ABbB/ERUGx0WX8HRUyoHwxYoSvbbeKjs2poIe
 d/wJ0+ILprKAvi7WC02/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OVXQAxf/JPU=:cuBTCk9YDuMQGzzLYz3nb6
 fVQPqAC+y4O8ZijmoB9pr1YulCcYfS8pXuPSjEranrR6QGht42ixK86lcaTR6GYfxy3X8DsqD
 JxFdPwYxlHszsoU134xgkW9pG5/2fX5WuQ7TQEqFM0rq3c8+eNBQrGl/A7rk9cNNus/16fYVw
 cZ+bbdEfHJ34T0RTJgyQziMySXYyMGPiXzBt7qP7PTTdE+ML6qZVvw9lyQZ084imHUGleZTxF
 Ugz/Ji2X9u+rcsPJcbVbMdoAbfzQ2T3qSz1hQMeb1DXU9ZZIzB2DC+aM4yqgHQOCXWS3Hrdi+
 8m000cK2TfxmVOT6r4IOF/54JRs0wMozczEL15UnpozcSR/km+1auM+u7BctYxkeuKwaSfMXR
 vPxrKxtyIMxkKpv23G4ssegeHjm88vPPIZpmxjlNZOZRHvVvjkpIfT5gefWZ/1sy8Drr+sdiV
 yeEHs+IuEpDzNCTekqUNv7mKHSEjrjAeemyUhEWj3WQez9nlUb6mHZFtYQnmQCtEnlpF04Gz0
 Pl5ezrBcjZkyKuTuRouP4GV4tGhc8ps6RUAHb2Rm5FpRS3xEFTwCFGQHMu0bnyfuuPEoG23G6
 Xvjly6PZ11lUgLVtqsP2dfGrpcwunqZ6lYCWGMq8uoX5i69cBTpj4CtL/LyhoNkOLYNB+LcgE
 o9JfFO3kXFKB9LlgwE0qbcNUkz5lxhgv5s5XuRfKOpi+0a6WFNktemXyvkWcbn2gU6zkxITD7
 +SeT59/eMVJ6A/Q1uTU9fY2tpJWtA2Kn5qT9ZiMpkU5ZN5voFsyB6o/v47E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_164309_881053_BF88D6AF 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 1/2] mediatek: remove strange unnamed patch
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
Cc: Chen Minqiang <ptpt52@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When adding v4.19 support to mediatek in 66458c49aa14 ("mediatek:
add v4.19 support"), a strange patch without proper naming has
been added.

This looks like a mistake, so remove it.

Reported-by: Chen Minqiang <ptpt52@gmail.com>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../arch/arm64/boot/dts/mediatek/a.patch      | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 target/linux/mediatek/files-4.19/arch/arm64/boot/dts/mediatek/a.patch

diff --git a/target/linux/mediatek/files-4.19/arch/arm64/boot/dts/mediatek/a.patch b/target/linux/mediatek/files-4.19/arch/arm64/boot/dts/mediatek/a.patch
deleted file mode 100644
index 7312b476c0..0000000000
--- a/target/linux/mediatek/files-4.19/arch/arm64/boot/dts/mediatek/a.patch
+++ /dev/null
@@ -1,19 +0,0 @@
-[?25l[J[J[J[J[J[J[?2004h[?25h[?1049h[22;0;0t[?1h=[?2004h[1;76r[?12h[?12l[22;2t[22;1t[27m[23m[29m[m[H[2J[?25l[76;1H"mt7622-lynx-rfb1.dts" 605L, 11203C[1;1H/*
- * Copyright (c) 2017 MediaTek Inc.
- * Author: Ming Huang <ming.huang@mediatek.com>
- *[9CSean Wang <sean.wang@mediatek.com>
- *
- * SPDX-License-Identifier: (GPL-2.0 OR MIT)
- */
-
-/dts-v1/;
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/gpio/gpio.h>
-
-#include "mt7622.dtsi"
-#include "mt6380.dtsi"
-
-/ {[17;9Hmodel = "MediaTek MT7622 RFB1 board";[18;9Hcompatible = "mediatek,mt7622-rfb1", "mediatek,mt7622";[20;9Haliases {[21;17Hserial0 = &uart0;[22;9H};[24;9Hchosen {[25;17Hstdout-path = "serial0:115200n8";[26;17Hbootargs = "earlycon=uart8250,mmio32,0x11002000 swiotlb=512";[27;9H};[29;9Hcpus {[30;17Hcpu@0 {[31;25Hproc-supply = <&mt6380_vcpu_reg>;[32;25Hsram-supply = <&mt6380_vm_reg>;[33;17H};[35;17Hcpu@1 {[36;25Hproc-supply = <&mt6380_vcpu_reg>;[37;25Hsram-supply = <&mt6380_vm_reg>;[38;17H};[39;9H};[41;9Hgpio-keys {[42;17Hcompatible = "gpio-keys";[43;17Hpoll-interval = <100>;[45;17Hfactory {[46;25Hlabel = "factory";[47;25Hlinux,code = <BTN_0>;[48;25Hgpios = <&pio 0 0>;[49;17H};[51;17Hwps {[52;25Hlabel = "wps";[53;25Hlinux,code = <KEY_WPS_BUTTON>;[54;25Hgpios = <&pio 102 0>;[55;17H};[56;9H};[58;9Hgsw: gsw@0 {[59;17Hcompatible = "mediatek,mt753x";[60;17Hmediatek,ethsys = <&ethsys>;[61;17H#address-cells = <1>;[62;17H#size-cells = <0>;[63;9H};[65;9Hmemory {[66;17Hreg = <0 0x40000000 0 0x3F000000>;[67;9H};[69;9Hreg_1p8v: regulator-1p8v {[70;17Hcompatible = "regulator-fixed";[71;17Hregulator-name = "fixed-1.8V";[72;17Hregulator-min-microvolt = <1800000>;[73;17Hregulator-max-microvolt = <1800000>;[74;17Hregulator-always-on;[75;9H};[1;1H[?25h
- [?25l[76;1HType  :qa!  and press <Enter> to abandon all changes and exit Vim[2;2H[?25h[76;1H[?2004l[?1l>[?1049l[23;0;0tVim: Caught deadly signal TERM
-Vim: Finished.
-[76;1H[23;2t[23;1t[22;2t[22;1t[23;2t[23;1t
\ No newline at end of file
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
