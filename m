Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51411194735
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 20:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZ7wv4IJSmftWaI16ir6CCvVo9oOTmumnhSFFdDgBv8=; b=pqTvSHo0hPiPZA
	RCw8bSdS8q7OVng5V6BGzpVl8jDSQzw2s7Qi3sWiclzfBiMAIZWHqz52863JDuLtQEdRPI8vy082x
	EvTPsnUpmIGZMuf21HGvyjoOLosYeUU9uydnRLCiU0uc24FWM2MF+AVPkmtZ1pNwHee8RKq/tibyc
	ghbqpaDGCOg8opjC/RNw0pv9Gd5s6L5q/mRFz8rKH8Qx9PuRB3nqm41iRDLyu6FAwU+uxB8EoDE2b
	rnFwyv1T3eqLmpC8B4IJIW5lkq0uqllZfW4gjGvwmvUj/ETWZFosDFkX4zlEoq/37XdUAAD+RKMA5
	UCtITvqi1LRdryHyS2aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXv9-0007Ti-Ml; Thu, 26 Mar 2020 19:12:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXv4-0007TJ-3m
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 19:11:59 +0000
Received: by mail-wm1-x341.google.com with SMTP id w25so5358668wmi.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 12:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dZgLbi8qI0pcAaZPr+lzHtfgVgcXz0L8Gqe9twOsMvY=;
 b=G+uBwldFH09kWI+ApMi2q6SM81ceH8IuOfOciJULwsmyM+cERAXw93nmSdoUl5OeAz
 /4UsNQw7+hXOM0B01G2euHLD3eehF7UIBc+AIAGQP/SiuHzxpcW12H/OOjsQyufZmmU+
 kqjIz7kye7HyCYCn4J5re0yR1ardvq8n2eSAFnuHUGXoIyaxBT3rsZ+hA78lXQZRaBd8
 iTEqZ/s1zJnYGar4pfFWaLrs6YzhLZozxgVPSSlp/h/QOc3KPuiwvxireogeMGyzgN5v
 z+7X2jRqZOOGOkESbGAEORqHgny/TZoG+JQT+B6hBiZ+Gk26Sewx87oRPh5UE0vnVl27
 YS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dZgLbi8qI0pcAaZPr+lzHtfgVgcXz0L8Gqe9twOsMvY=;
 b=hwCSI0Z1tPprOSjloGz9vsJAvfv8OU2npUw/R14cHeI7NftRpsRhhmINQW1KhzucEi
 SrJFw3YGTsQg3th6a7ZpsjC4UzdnlQqy/wazTQrs/iGATUng6HnbK+m938lvXp/xUJ89
 6qmRkkHNDrDYQE+nxJpBoxRB1oleOAfNRHgZiRYxhLHmlac1QXjKUCE1j0Wlrp6m0L6Q
 kuWBcF7DRH0PXlUAuR+WnmzIahAN8cQtcnaHC1wplANtGqh6fFwlbjISZOnGV5uBo1tV
 T7yLLr5hFx245TiRiHLVgAGMcbZkSA0Lui8lUFglTJ5bbLeATzufuCv8G/3dwtmt+rcv
 dSwA==
X-Gm-Message-State: ANhLgQ28J2MIOqN45UP6YtpT1Xt5NZzUr/H5r5iviB36EwlNZkymELuE
 J6obc6O6zfhhYExDgn5kpq0=
X-Google-Smtp-Source: ADFU+vvgDGz2iGUsEQJywtsaQThQgzE5Str01+8ewk9qiyyN4Nzro6WcrW+17V6HbfEiXMqtd2KeXQ==
X-Received: by 2002:a1c:7dc8:: with SMTP id y191mr1361766wmc.167.1585249914428; 
 Thu, 26 Mar 2020 12:11:54 -0700 (PDT)
Received: from localhost.localdomain ([176.195.20.211])
 by smtp.gmail.com with ESMTPSA id i5sm4930656wrr.12.2020.03.26.12.11.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 12:11:53 -0700 (PDT)
From: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
To: mail@adrianschmutzler.de
Date: Thu, 26 Mar 2020 22:10:41 +0300
Message-Id: <20200326191041.2179-1-dobrovolskiy.alexey@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <012501d600a4$5c819100$1584b300$@adrianschmutzler.de>
References: <012501d600a4$5c819100$1584b300$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_121158_183949_0A3A51EB 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: use full 8MB flash on ZyXEL Keenetic
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
Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>,
 openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ZyXEL Keenetic has 8MB flash, but OpenWrt uses only 4MB.
This commit fixes the problem.

Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
---
 target/linux/ramips/dts/rt3052_zyxel_keenetic.dts | 2 +-
 target/linux/ramips/image/rt305x.mk               | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
index ad641f47e4..436743cff3 100644
--- a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
+++ b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
@@ -48,7 +48,7 @@
 			partition@50000 {
 				compatible = "denx,uimage";
 				label = "firmware";
-				reg = <0x50000 0x3b0000>;
+				reg = <0x50000 0x7b0000>;
 			};
 		};
 	};
diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index 33f94edf3f..313c3fa315 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -1149,7 +1149,7 @@ TARGET_DEVICES += zorlik_zl5900v2
 define Device/zyxel_keenetic
   SOC := rt3052
   BLOCKSIZE := 64k
-  IMAGE_SIZE := 3776k
+  IMAGE_SIZE := 7872k
   DEVICE_VENDOR := ZyXEL
   DEVICE_MODEL := Keenetic
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-usbport
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
