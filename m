Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17166803F
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 18:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1grhscpkdHau3PpTtDqjuqEFntzVG9/B8q+G/amS7Vs=; b=LILS8c0/WadTZw
	NVsZASNf5buUlqzfm6p6H17iImuAPQKrK4HUfDJkIfGaMVaxXqqXUW1J05rP2vg7zLM/og1k7xiYX
	k4wIb8dJluFAqE/elTD+z8etz8WgK56898q3beJrGBi+Ljw/ti/Yh3Ux/CBNwmhSABrJWVoTEPS/G
	9cF6hOF+WHXTPMCOq/hNWjkCOANd/2auESBJkfiscz3XwQeINsH134+cV15YnherEGIGjaIC3PYTm
	AibK54iFeDTjWTPIQN/NJlgyHiRaJZDrCNbptOcUHCX5h5mwLYk8jF0zD7nh9dbOmmjrmx2W1tp2a
	GpiMpAQW+B96p0GyIz/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmhTp-0001Ec-8R; Sun, 14 Jul 2019 16:36:05 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmhSn-00080R-Dy
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 16:35:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id s1so275250pgr.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 09:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IbTZ/30uCARBLb5uo433NADgPHOJN452tnY7aqyYaX0=;
 b=IMrOxRQVwjNQC48f+vkTAdHvnnVO8FpP7AIQTGu/K4dMjZgDXPBYLUxE55SFjy0XvR
 6RILAideY2F6rrOb8WpCfGS6VAWyALwr7tdu/MZtnCWey4Ztly4X5KCQOLHu+ulrIMaX
 uKsvI+B/DN3We7oJ5bUKPNI3LjG89/oq0QKB+8jIHX0jEsrcP7QPlcAVHhVzLM0CFDNi
 PC4JhtIofJ9zRLwSAiFan3BxD2nG4bt2CD3fztgOjk1SbJvfEAI++C4+8b5qXrU1Luhw
 mBVCg7t9WfxS9icHdw6oRROdb9Z29wi2pp5zmoZfZeMzxN+0F6+Hadncv8FV7NieUhC1
 0TWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IbTZ/30uCARBLb5uo433NADgPHOJN452tnY7aqyYaX0=;
 b=hr2tpohAMFBns6RceQoGf5mRRIV0h3wdc4KOITPV9U8MDKWV+wbMSnFr9sr21HqLia
 CKNWHTsphitXwHMlotwUNImxNHaR6Md+nb46tpZyN5quZS/+80P+ElV8h2A2MoW8ZFcu
 GNHbXBzp+RlElDWEy8gSFs5lvvEDtbVIm65U+x7n425t/YpLTad9XGxQ7gpmfWb+TDWA
 HnzXWgwADRu+D1NLakaEZ/nOlEwsl5TrZ60I22dO85I1W7m2MidytGdH8fSdF+e3dtly
 xz9wi85B3owk4WeiqjemQYKvE8Ho8VMEU5d11iE3UyAfk2WNa8MvnedYwWxTfmoPJ1tm
 KaPg==
X-Gm-Message-State: APjAAAV3T2AS4ch139FoUAloUq3zp69DUTusi9N7iP4VQ5op4Wxxb2Gh
 wLaian6d98THdHjnsl+i9YGCs0FTKN8=
X-Google-Smtp-Source: APXvYqwV2cd8+guq7T2EaP2+6kxBqKfHgKIMzibkseLVqhxPerM2RvBzxOzkg5zfuYPPddbf3CLZxg==
X-Received: by 2002:a63:4f5b:: with SMTP id p27mr22052227pgl.273.1563122099415; 
 Sun, 14 Jul 2019 09:34:59 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([27.155.236.112])
 by smtp.gmail.com with ESMTPSA id d17sm505805pgl.66.2019.07.14.09.34.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 09:34:59 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 00:34:28 +0800
Message-Id: <20190714163428.26303-4-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190714163428.26303-1-gch981213@gmail.com>
References: <20190714163428.26303-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_093501_474517_9E59ADC1 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH RFC 3/3] ramips: enable sdxc driver for
 hc5661a
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since we've fixed AGPIO_MODE setup in sdxc driver, we can enable
SDXC interface for HC5661A now.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

pinctrl disallows "double enable" for a function (meaning can't set a
group to gpio twice), so the gpio group needs to be specified for every
dts and can't be put into mt7628.dtsi

 .../ramips/dts/mt7628an_hiwifi_hc5661a.dts      | 17 +++++++++++++++++
 target/linux/ramips/image/mt76x8.mk             |  1 +
 2 files changed, 18 insertions(+)

diff --git a/target/linux/ramips/dts/mt7628an_hiwifi_hc5661a.dts b/target/linux/ramips/dts/mt7628an_hiwifi_hc5661a.dts
index df239e1fb8..3ba3774f1c 100644
--- a/target/linux/ramips/dts/mt7628an_hiwifi_hc5661a.dts
+++ b/target/linux/ramips/dts/mt7628an_hiwifi_hc5661a.dts
@@ -50,6 +50,18 @@
 };
 
 &pinctrl {
+	sdxc_router_pins: sdxc_router_mode {
+		gpio {
+			ralink,group = "i2s", "sdmode", "uart1", "gpio";
+			ralink,function = "gpio";
+		};
+
+		esdmode {
+			ralink,group = "esdmode";
+			ralink,function = "sdxc";
+		};
+	};
+
 	state_default: pinctrl0 {
 		gpio {
 			ralink,group = "i2c", "refclk", "wled_an";
@@ -58,6 +70,11 @@
 	};
 };
 
+&sdhci {
+	status = "okay";
+	pinctrl-0 = <&sdxc_router_pins>;
+};
+
 &spi0 {
 	status = "okay";
 
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index fae9fb03cf..033cc7527d 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -97,6 +97,7 @@ define Device/hiwifi_hc5661a
   DEVICE_VENDOR := HiWiFi
   DEVICE_MODEL := HC5661A
   SUPPORTED_DEVICES += hc5661a
+  DEVICE_PACKAGES := kmod-sdhci-mt7620
 endef
 TARGET_DEVICES += hiwifi_hc5661a
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
