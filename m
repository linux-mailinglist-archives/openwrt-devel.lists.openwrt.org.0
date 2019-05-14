Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FC61C98B
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 15:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZwnggpbcZsoR1FhyM6rZDaAgz7JA5Hqgy6zcJrWgB2E=; b=qabeq04UeRv3Px
	ZxkcdNablUDnTMjaxxEc7KXP6O0vYehe3IoussKqaS9lw8lLLKxxOJeRENQoLBOxPEvO9CDicJ3pK
	qCq5RYJwRh6QPEV2pvVj1A/dTnk7OxcLExufTD+nDkBMEb7uexD/pp8mSmDaeO2BVOnENfu1iPwrf
	fkDWk26H5Bkik7ySBRqS+wQOTSm4kaLq8jDW4JQc+NA8u9dllpjKA/kHy0qhq6K3mGoFJf8/Oc6YF
	51toUV1HPhToGMUL/Vj/8cyk/UVHMTyfMpGDjk/CyMJ2sOrzpIbUkVJzI5mvZpceUI+vGKkiVQu66
	AVsG599hcgjbcYFlcXvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXiE-00046v-N2; Tue, 14 May 2019 13:43:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXhb-0003Pm-JF
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 13:42:45 +0000
Received: by mail-lj1-x241.google.com with SMTP id 188so14353380ljf.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 06:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+/zBssRb7pssIOpJZxkFvWdzK2+RYIEybkKscsUHezw=;
 b=Q0ZD+zygAycSGJIb/o+jDsqiw05C+0fzmKARW68DybmjFzUf7Vp5BqNoiiqvgHesJh
 UJsqH9knDl4hP+MBX6HhvxXhVeBZxhWC6nHLC6IMQ84oozRPNaYcg/zJ3wxHq6EAJUcX
 SWk/JCKXMqdhKnQwtu8DKBvhqwVsk3Qe8JLQcNb872qvM+z9abOAXfFx15OEFimlYKlZ
 qc3lVJPDkm+sV7LoW5D7enQQargn+vCFv4FWxepQ3Hy8VGoJen4zAGqKGexorO1dbYX2
 WOG8dedhemesxbGrTyTXyISDNqHHEm+2iCkfWNk4xDz8QvUpuPNfzXwDHgxgbTznASqF
 Le7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+/zBssRb7pssIOpJZxkFvWdzK2+RYIEybkKscsUHezw=;
 b=ueBS2iHbcQ9T1fEeWHKq8cXlnVTygN4JkKYiD8vt43bkOUvyR4YVkVZKNuhe39Nq2A
 1XbAhqLZLIrc0Bc3ge6REHJY5zwANR03Kpm7aUhKHIiB46iQfANPA92LqwgNHf9MbFcy
 09PEqjUA8EpQwb35D+khLZeUGbpyF6/O/S5x/F575BrjadkXB4XrqE0rT1uy4SlzANsS
 ig3J+4AIdU7j0yi8uFg5eUG3qRr6j4BQDm8HxP8EE7+my2wuZrs43HohtOwa8HypGG5k
 JRPGVHqmQUyXeSZTget1qOFlu2Vl1Mc0Hu3Ant5X8SRdWGCR+PuQyAoUlFAYbQ7BDNVY
 1P5A==
X-Gm-Message-State: APjAAAXPvqnlbpAdYfbMXUkYkWX4JayocNB1g8KAGgz/mE0rTGjSnCGS
 Osp6UZzmceEJVPrwlqn7RlHCsekU9LA=
X-Google-Smtp-Source: APXvYqxobmetJxcjf4Czm96q7pvAEmvRGrA/GQ++iwcUYhrkoY2HuWqdOXfb4Ys0+VzfFwiCXc+pRQ==
X-Received: by 2002:a2e:9116:: with SMTP id m22mr2109940ljg.12.1557841361664; 
 Tue, 14 May 2019 06:42:41 -0700 (PDT)
Received: from be1.dissentfirstbyte.example.com ([2a04:5200:fff5::d0])
 by smtp.gmail.com with ESMTPSA id u7sm1703920ljj.51.2019.05.14.06.42.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 06:42:40 -0700 (PDT)
From: Pavel Kubelun <be.dissent@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 16:42:20 +0300
Message-Id: <20190514134220.3626-4-be.dissent@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190514134220.3626-1-be.dissent@gmail.com>
References: <20190514134220.3626-1-be.dissent@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_064243_814033_15D02325 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 4/4] ipq40xx: add support for secondary
 cores bringup
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: chunkeey@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ipq40xx requires separate procedure.
Cherry-pick from QSDK.

Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
---
 ...x-add-support-for-secondary-cores-bringup.patch | 174 +++++++++++++++++++++
 ...x-Add-support-for-secondary-cores-bringup.patch | 174 +++++++++++++++++++++
 2 files changed, 348 insertions(+)
 create mode 100644 target/linux/ipq40xx/patches-4.14/091-ipq40xx-add-support-for-secondary-cores-bringup.patch
 create mode 100644 target/linux/ipq40xx/patches-4.19/087-ipq40xx-Add-support-for-secondary-cores-bringup.patch

diff --git a/target/linux/ipq40xx/patches-4.14/091-ipq40xx-add-support-for-secondary-cores-bringup.patch b/target/linux/ipq40xx/patches-4.14/091-ipq40xx-add-support-for-secondary-cores-bringup.patch
new file mode 100644
index 0000000000..798c740e3a
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.14/091-ipq40xx-add-support-for-secondary-cores-bringup.patch
@@ -0,0 +1,174 @@
+From 6126701397fa6c884fd78453d995e49df91a566a Mon Sep 17 00:00:00 2001
+From: Pavel Kubelun <be.dissent@gmail.com>
+Date: Mon, 13 May 2019 11:25:05 +0300
+Subject: [PATCH] ipq40xx: Add support for secondary cores bringup
+
+Cherry-pick QSDK patches to enable proper ipq40xx
+secondary cores bringup.
+
+https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/commit/?h=eggplant&id=f810b63c356bd72d9b89fb9c0b7e27c250c3540f
+
+Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
+---
+ Documentation/devicetree/bindings/arm/cpus.txt |  1 +
+ arch/arm/boot/dts/qcom-ipq4019.dtsi            | 16 +++----
+ arch/arm/mach-qcom/platsmp.c                   | 62 ++++++++++++++++++++++++++
+ 3 files changed, 71 insertions(+), 8 deletions(-)
+
+--- a/Documentation/devicetree/bindings/arm/cpus.txt
++++ b/Documentation/devicetree/bindings/arm/cpus.txt
+@@ -210,6 +210,7 @@ described below.
+ 			    "marvell,98dx3236-smp"
+ 			    "mediatek,mt6589-smp"
+ 			    "mediatek,mt81xx-tz-smp"
++			    "qcom,arm-cortex-a7acc"
+ 			    "qcom,gcc-msm8660"
+ 			    "qcom,kpss-acc-v1"
+ 			    "qcom,kpss-acc-v2"
+--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
+@@ -52,7 +52,7 @@
+ 		cpu@0 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc0>;
+ 			qcom,saw = <&saw0>;
+@@ -65,7 +65,7 @@
+ 		cpu@1 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc1>;
+ 			qcom,saw = <&saw1>;
+@@ -78,7 +78,7 @@
+ 		cpu@2 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc2>;
+ 			qcom,saw = <&saw2>;
+@@ -91,7 +91,7 @@
+ 		cpu@3 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc3>;
+ 			qcom,saw = <&saw3>;
+@@ -302,22 +302,22 @@
+ 		};
+ 
+                 acc0: clock-controller@b088000 {
+-			compatible = "qcom,kpss-acc-v2";
++			compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b088000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+                 acc1: clock-controller@b098000 {
+-			compatible = "qcom,kpss-acc-v2";
++			compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b098000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+                 acc2: clock-controller@b0a8000 {
+-			compatible = "qcom,kpss-acc-v2";
++			compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b0a8000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+                 acc3: clock-controller@b0b8000 {
+-			compatible = "qcom,kpss-acc-v2";
++			compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b0b8000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+--- a/arch/arm/mach-qcom/platsmp.c
++++ b/arch/arm/mach-qcom/platsmp.c
+@@ -89,6 +89,53 @@ static int scss_release_secondary(unsign
+ 	return 0;
+ }
+ 
++static int a7ss_release_secondary(unsigned int cpu)
++{
++	struct device_node *node;
++	void __iomem *base;
++	struct resource res;
++
++	node = of_find_compatible_node(NULL, NULL, "qcom,arm-cortex-a7acc");
++	if (!node) {
++		pr_err("%s: can't find node\n", __func__);
++		return -ENXIO;
++	}
++
++	if (of_address_to_resource(node, 0, &res)) {
++		of_node_put(node);
++		return -ENXIO;
++	}
++
++	res.start += cpu * 0x10000;
++
++	base = ioremap(res.start, 0x1000);
++	of_node_put(node);
++
++	if (!base)
++		return -ENOMEM;
++
++	/* Enable Clamp signal and assert core reset */
++	writel_relaxed(0x00000033, base + 0x04);
++	mb(); /* barrier */
++
++	/* Set GDHS and delay counter */
++	writel_relaxed(0x20000001, base + 0x14);
++	mb(); /* barrier */
++
++	udelay(2);
++
++	/* Enable Core memory HS */
++	writel_relaxed(0x00020008, base + 0x04);
++	mb(); /* barrier */
++
++	/* Report that the CPU is powered up */
++	writel_relaxed(0x00020088, base + 0x04);
++	mb(); /* barrier */
++
++	iounmap(base);
++	return 0;
++}
++
+ static int kpssv1_release_secondary(unsigned int cpu)
+ {
+ 	int ret = 0;
+@@ -307,6 +354,11 @@ static int msm8660_boot_secondary(unsign
+ 	return qcom_boot_secondary(cpu, scss_release_secondary);
+ }
+ 
++static int a7ss_boot_secondary(unsigned int cpu, struct task_struct *idle)
++{
++	return qcom_boot_secondary(cpu, a7ss_release_secondary);
++}
++
+ static int kpssv1_boot_secondary(unsigned int cpu, struct task_struct *idle)
+ {
+ 	return qcom_boot_secondary(cpu, kpssv1_release_secondary);
+@@ -361,3 +413,13 @@ static const struct smp_operations qcom_
+ #endif
+ };
+ CPU_METHOD_OF_DECLARE(qcom_smp_kpssv2, "qcom,kpss-acc-v2", &qcom_smp_kpssv2_ops);
++
++static struct smp_operations qcom_smp_a7ss_ops __initdata = {
++	.smp_prepare_cpus       = qcom_smp_prepare_cpus,
++	.smp_secondary_init     = qcom_secondary_init,
++	.smp_boot_secondary     = a7ss_boot_secondary,
++#ifdef CONFIG_HOTPLUG_CPU
++	.cpu_die                = qcom_cpu_die,
++#endif
++};
++CPU_METHOD_OF_DECLARE(qcom_smp_a7ss, "qcom,arm-cortex-a7acc", &qcom_smp_a7ss_ops);
diff --git a/target/linux/ipq40xx/patches-4.19/087-ipq40xx-Add-support-for-secondary-cores-bringup.patch b/target/linux/ipq40xx/patches-4.19/087-ipq40xx-Add-support-for-secondary-cores-bringup.patch
new file mode 100644
index 0000000000..4124aa3b23
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.19/087-ipq40xx-Add-support-for-secondary-cores-bringup.patch
@@ -0,0 +1,174 @@
+From 6126701397fa6c884fd78453d995e49df91a566a Mon Sep 17 00:00:00 2001
+From: Pavel Kubelun <be.dissent@gmail.com>
+Date: Mon, 13 May 2019 11:25:05 +0300
+Subject: [PATCH] ipq40xx: Add support for secondary cores bringup
+
+Cherry-pick QSDK patches to enable proper ipq40xx
+secondary cores bringup.
+
+https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/commit/?h=eggplant&id=f810b63c356bd72d9b89fb9c0b7e27c250c3540f
+
+Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
+---
+ Documentation/devicetree/bindings/arm/cpus.txt |  1 +
+ arch/arm/boot/dts/qcom-ipq4019.dtsi            | 16 +++----
+ arch/arm/mach-qcom/platsmp.c                   | 62 ++++++++++++++++++++++++++
+ 3 files changed, 71 insertions(+), 8 deletions(-)
+
+--- a/Documentation/devicetree/bindings/arm/cpus.txt
++++ b/Documentation/devicetree/bindings/arm/cpus.txt
+@@ -216,6 +216,7 @@ described below.
+ 			    "marvell,98dx3236-smp"
+ 			    "mediatek,mt6589-smp"
+ 			    "mediatek,mt81xx-tz-smp"
++			    "qcom,arm-cortex-a7acc"
+ 			    "qcom,gcc-msm8660"
+ 			    "qcom,kpss-acc-v1"
+ 			    "qcom,kpss-acc-v2"
+--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
+@@ -52,7 +52,7 @@
+ 		cpu@0 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc0>;
+ 			qcom,saw = <&saw0>;
+@@ -66,7 +66,7 @@
+ 		cpu@1 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc1>;
+ 			qcom,saw = <&saw1>;
+@@ -80,7 +80,7 @@
+ 		cpu@2 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc2>;
+ 			qcom,saw = <&saw2>;
+@@ -94,7 +94,7 @@
+ 		cpu@3 {
+ 			device_type = "cpu";
+ 			compatible = "arm,cortex-a7";
+-			enable-method = "qcom,kpss-acc-v2";
++			enable-method = "qcom,arm-cortex-a7acc";
+ 			next-level-cache = <&L2>;
+ 			qcom,acc = <&acc3>;
+ 			qcom,saw = <&saw3>;
+@@ -306,22 +306,22 @@
+ 		};
+ 
+                 acc0: clock-controller@b088000 {
+-                        compatible = "qcom,kpss-acc-v2";
++                        compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b088000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+                 acc1: clock-controller@b098000 {
+-                        compatible = "qcom,kpss-acc-v2";
++                        compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b098000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+                 acc2: clock-controller@b0a8000 {
+-                        compatible = "qcom,kpss-acc-v2";
++                        compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b0a8000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+                 acc3: clock-controller@b0b8000 {
+-                        compatible = "qcom,kpss-acc-v2";
++                        compatible = "qcom,arm-cortex-a7acc";
+                         reg = <0x0b0b8000 0x1000>, <0xb008000 0x1000>;
+                 };
+ 
+--- a/arch/arm/mach-qcom/platsmp.c
++++ b/arch/arm/mach-qcom/platsmp.c
+@@ -89,6 +89,53 @@ static int scss_release_secondary(unsign
+ 	return 0;
+ }
+ 
++static int a7ss_release_secondary(unsigned int cpu)
++{
++	struct device_node *node;
++	void __iomem *base;
++	struct resource res;
++
++	node = of_find_compatible_node(NULL, NULL, "qcom,arm-cortex-a7acc");
++	if (!node) {
++		pr_err("%s: can't find node\n", __func__);
++		return -ENXIO;
++	}
++
++	if (of_address_to_resource(node, 0, &res)) {
++		of_node_put(node);
++		return -ENXIO;
++	}
++
++	res.start += cpu * 0x10000;
++
++	base = ioremap(res.start, 0x1000);
++	of_node_put(node);
++
++	if (!base)
++		return -ENOMEM;
++
++	/* Enable Clamp signal and assert core reset */
++	writel_relaxed(0x00000033, base + 0x04);
++	mb(); /* barrier */
++
++	/* Set GDHS and delay counter */
++	writel_relaxed(0x20000001, base + 0x14);
++	mb(); /* barrier */
++
++	udelay(2);
++
++	/* Enable Core memory HS */
++	writel_relaxed(0x00020008, base + 0x04);
++	mb(); /* barrier */
++
++	/* Report that the CPU is powered up */
++	writel_relaxed(0x00020088, base + 0x04);
++	mb(); /* barrier */
++
++	iounmap(base);
++	return 0;
++}
++
+ static int kpssv1_release_secondary(unsigned int cpu)
+ {
+ 	int ret = 0;
+@@ -307,6 +354,11 @@ static int msm8660_boot_secondary(unsign
+ 	return qcom_boot_secondary(cpu, scss_release_secondary);
+ }
+ 
++static int a7ss_boot_secondary(unsigned int cpu, struct task_struct *idle)
++{
++	return qcom_boot_secondary(cpu, a7ss_release_secondary);
++}
++
+ static int kpssv1_boot_secondary(unsigned int cpu, struct task_struct *idle)
+ {
+ 	return qcom_boot_secondary(cpu, kpssv1_release_secondary);
+@@ -361,3 +413,13 @@ static const struct smp_operations qcom_
+ #endif
+ };
+ CPU_METHOD_OF_DECLARE(qcom_smp_kpssv2, "qcom,kpss-acc-v2", &qcom_smp_kpssv2_ops);
++
++static struct smp_operations qcom_smp_a7ss_ops __initdata = {
++	.smp_prepare_cpus       = qcom_smp_prepare_cpus,
++	.smp_secondary_init     = qcom_secondary_init,
++	.smp_boot_secondary     = a7ss_boot_secondary,
++#ifdef CONFIG_HOTPLUG_CPU
++	.cpu_die                = qcom_cpu_die,
++#endif
++};
++CPU_METHOD_OF_DECLARE(qcom_smp_a7ss, "qcom,arm-cortex-a7acc", &qcom_smp_a7ss_ops);
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
