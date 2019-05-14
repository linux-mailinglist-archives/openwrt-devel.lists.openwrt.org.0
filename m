Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA61C1C98A
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 15:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rXy4sHh/POojqVXgReWTVL5lQX7lD0XSE4bs30hzd0=; b=lnRM50NgIuD3OK
	WwQcIRB1Kv/t0wFZZGkXc+R4JV/rUcoMAojKOyYUQF+1oGNbCBeMeh00/peY80a48PKYSKGT5QCLT
	bOwUsvDBIZOcByyVM46BKgs+OPAhKCP5SaEB4613Tx8ifEFlBaADPe8Xs8vVq9qAmvbE6Z4ZRNK71
	GbYQTRsXwOLqXahhdZNUZIRrNHWeAcQP60XzLSGWj2oVYINhnodsFDEmv+TKnprw/K553xtBJdXir
	Kt9tQzEYt6Wk3n2C+XgGIQoPoYuzuUiNLenSFKKVy4q5Tuu2tQ7W0LTG7o7nv4TeeHEhzPUN0p9AU
	9Njt0JV5EejDaU9BEQtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXi1-0003pm-U7; Tue, 14 May 2019 13:43:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXha-0003PL-SE
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 13:42:45 +0000
Received: by mail-lj1-x241.google.com with SMTP id z5so14349689lji.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 06:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Bq+NYpztfV0v5J6Ko1VZTR/mhAltc7+FrxFG68ZSq20=;
 b=qD86Sy41hh1iuD0Ok3FacqbN7L4Bwt4mmUh9eU+zB+QHWbdbHAKNy5dwZDrKs7dqKe
 HRq+VqM9TPmRhCrzY65cZn68CNNG7OLgqqn64W8hZqhjKiUtN0x3RTGuySQPUzX3YO6o
 xtq8UmoB71JmqTxsCGxErZtwDlcmZ224tcHTXk0UjBQTXqSh9XxNdxVSvEKolt9pRZey
 tPK/MV7nw7Xlx/fgH9DoBKk2YgV3+UiYd8H5Ow4/puiRMVmnFVon8q9zmbgZKHi+vPc3
 0Sk3qkU9aI02/LeTZccYyYakLuiWxSbcckbBc/gtpVdO5Aaa8k2sO7Ick++m38DAuJUM
 9zYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Bq+NYpztfV0v5J6Ko1VZTR/mhAltc7+FrxFG68ZSq20=;
 b=AUIFpSeD8yTZM5iCuSrt29/CogYp6uq/j8yr8jdfkp2Ya0zFG6VlGUP37W2w5bV0LA
 LYQW38kwVnPJOT5sqXfs4T8Opusdw00c1l+e7vxza0Q76cK+80u6D2q+aooKKhQTluRj
 hbuI+PceoyJShPXMTaLQaOlvWzXGO/87yio7tI/AJ+ORUl1S1r6NkS7ha96E3hbjmdoi
 eOzNPB7aU6ntvspl2joE9/waUIW7C7ZbHHzHZJW5XEQ4t6kpdYTqV4UfvIr0Jv65ARve
 tdEjbMUJG+2gzjBVYEj0UiNf5bK7Kj4kpGCLzSR8vR15Osa186/zi8MSFUvnuYR3BRT7
 6yMg==
X-Gm-Message-State: APjAAAVhKVIXap6tF/R/Ig0yszWwklstjJukGCcB9YTgyeTd0zApCurv
 EDMyPSloOcs5MQSMMarcGkwxGrMlNXo=
X-Google-Smtp-Source: APXvYqwAAXc2fFJ4UfkYhLcHqICK/s5WhgraqArkOt5N09gWLTCui0DeHQpouS4nT2JmvlhHUMuAJg==
X-Received: by 2002:a2e:731a:: with SMTP id o26mr14005801ljc.105.1557841360647; 
 Tue, 14 May 2019 06:42:40 -0700 (PDT)
Received: from be1.dissentfirstbyte.example.com ([2a04:5200:fff5::d0])
 by smtp.gmail.com with ESMTPSA id u7sm1703920ljj.51.2019.05.14.06.42.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 06:42:39 -0700 (PDT)
From: Pavel Kubelun <be.dissent@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 16:42:19 +0300
Message-Id: <20190514134220.3626-3-be.dissent@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190514134220.3626-1-be.dissent@gmail.com>
References: <20190514134220.3626-1-be.dissent@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_064242_910104_CF4D081E 
X-CRM114-Status: GOOD (  15.17  )
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
Subject: [OpenWrt-Devel] [PATCH 3/4] ipq40xx: fix high resolution timer
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

Cherry-picked from CAF QSDK repo.
Original commit message:
The kernel is failing in switching the timer for high resolution
mode and clock source operates in 10ms resolution. The always-on
property needs to be given for timer device tree node to make
clock source working in 1ns resolution.

Change-Id: I7c00b3c74d97c2a30ac9f05e18b511a0550fd459
Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>

Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
---
 .../090-ipq40xx-fix-high-resolution-timer.patch    | 30 ++++++++++++++++++++++
 .../701-dts-ipq4019-add-mdio-node.patch            |  2 +-
 .../702-dts-ipq4019-add-PHY-switch-nodes.patch     |  2 +-
 ...711-dts-ipq4019-add-ethernet-essedma-node.patch |  2 +-
 .../086-ipq40xx-fix-high-resolution-timer.patch    | 30 ++++++++++++++++++++++
 .../701-dts-ipq4019-add-mdio-node.patch            |  2 +-
 .../702-dts-ipq4019-add-PHY-switch-nodes.patch     |  2 +-
 ...711-dts-ipq4019-add-ethernet-essedma-node.patch |  2 +-
 8 files changed, 66 insertions(+), 6 deletions(-)
 create mode 100644 target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch
 create mode 100644 target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer.patch

diff --git a/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch
new file mode 100644
index 0000000000..0fc50ec533
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch
@@ -0,0 +1,30 @@
+From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 2001
+From: Pavel Kubelun <be.dissent@gmail.com>
+Date: Tue, 7 May 2019 10:14:05 +0300
+Subject: [PATCH] ipq40xx: fix high resolution timer
+
+Cherry-picked from CAF QSDK repo.
+Original commit message:
+The kernel is failing in switching the timer for high resolution
+mode and clock source operates in 10ms resolution. The always-on
+property needs to be given for timer device tree node to make
+clock source working in 1ns resolution.
+
+Change-Id: I7c00b3c74d97c2a30ac9f05e18b511a0550fd459
+Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
+
+Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
+---
+ arch/arm/boot/dts/qcom-ipq4019.dtsi | 1 +
+ 1 file changed, 1 insertion(+)
+
+--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
+@@ -167,6 +167,7 @@
+ 			     <1 4 0xf08>,
+ 			     <1 1 0xf08>;
+ 		clock-frequency = <48000000>;
++		always-on;
+ 	};
+ 
+ 	soc {
diff --git a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
index 0e1bb87368..b7e241058c 100644
--- a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
+++ b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
@@ -15,7 +15,7 @@ so the info might change.
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -566,6 +566,34 @@
+@@ -567,6 +567,34 @@
  			status = "disabled";
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
index 03da6c863a..cc56a60ea3 100644
--- a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
@@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -594,6 +594,29 @@
+@@ -595,6 +595,29 @@
  			};
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
index 7302d237bc..80b16a8211 100644
--- a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
+++ b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
@@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
  	};
  
  	cpus {
-@@ -617,6 +619,64 @@
+@@ -618,6 +620,64 @@
  			status = "disabled";
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer.patch b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer.patch
new file mode 100644
index 0000000000..9d277fa8e0
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer.patch
@@ -0,0 +1,30 @@
+From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 2001
+From: Pavel Kubelun <be.dissent@gmail.com>
+Date: Tue, 7 May 2019 10:14:05 +0300
+Subject: [PATCH] ipq40xx: fix high resolution timer
+
+Cherry-picked from CAF QSDK repo.
+Original commit message:
+The kernel is failing in switching the timer for high resolution
+mode and clock source operates in 10ms resolution. The always-on
+property needs to be given for timer device tree node to make
+clock source working in 1ns resolution.
+
+Change-Id: I7c00b3c74d97c2a30ac9f05e18b511a0550fd459
+Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
+
+Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
+---
+ arch/arm/boot/dts/qcom-ipq4019.dtsi | 1 +
+ 1 file changed, 1 insertion(+)
+
+--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
+@@ -171,6 +171,7 @@
+ 			     <1 4 0xf08>,
+ 			     <1 1 0xf08>;
+ 		clock-frequency = <48000000>;
++		always-on;
+ 	};
+ 
+ 	soc {
diff --git a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
index e5936a0c93..0298644d22 100644
--- a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
+++ b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
@@ -15,7 +15,7 @@ so the info might change.
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -570,6 +570,34 @@
+@@ -571,6 +571,34 @@
  			status = "disabled";
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
index 7c5d1ec2bb..df95699294 100644
--- a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
@@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -598,6 +598,29 @@
+@@ -599,6 +599,29 @@
  			};
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
index 51cf411143..8f7627b048 100644
--- a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
+++ b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
@@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
  	};
  
  	cpus {
-@@ -621,6 +623,64 @@
+@@ -622,6 +624,64 @@
  			status = "disabled";
  		};
  
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
