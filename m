Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC3719FCF9
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 20:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DSbUe5d5dHree53t3+6QpiqXHDRPXEHuKnVKIQp6Dz8=; b=YFfZ9VlqJqXrsu
	Qhiq+j2ZKNY90bN5d6bHrhOHjAd/MuTvGd3OV88OUt8nswX8hzucelKZOh/21hcgqYWXhcGs9uBkN
	afJTZGofWF+7NAl8aO4SV7560U/he9i+3Oc8m96PU9+T6W+9JRYenJHcMlOH1eC0RfC8v1pR9ROHX
	f3M89UyB7fOsVkCEl6uKG4IGWgDb/EuZJ0MRYay27M7eSmInH5515mNTe96KFZKxcMd5odU+JFLuK
	thClszgZwXyVh+OLhPeA+1b2jcPUc8sAqEHl59PyvGcXPtrUCAt9vQHbTuT4k7eKNwv97wMB6xLXb
	CVHNXrKhkfrimFLXL+9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWML-0001oT-Mp; Mon, 06 Apr 2020 18:20:33 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWMF-0001lV-Bh
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 18:20:28 +0000
Received: by mail-il1-x132.google.com with SMTP id u15so173605ilm.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 11:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/bGOfLOCT+VH3XaRhEWiARA+pYcWU/9m3GLQ0qh+VNQ=;
 b=RRRCIuMTwKiq8+IQE6KyJK4aaI59lSHPob8P0858W3eyL653Mf5P7+ysBzQd4CROrN
 GUjCfdNHb91YNLi2/s8gtGSVsmn3qTMWBJFRq+C0YphndJmnIC8zJoTXjfTvFZak9YFr
 nt5PnyjW1P6A3dBmZGMifM0yRm99rcgep5P5/uGxHI3vDbxnOQLL6DXkXB8Ck3dzNPCX
 LLG89nihj2OQM8j9yO/mOlTgl3KLYfMQKx3wA6ys9SRk3vrT/1+1MAlxaxRAhXT6uQsX
 3fMwC81XLP+mhNvRMKxt2RkpmDVNSxJ3eeR5g73buKS2BI5VudRjX6mF/LX6N5E+UBdn
 mgpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/bGOfLOCT+VH3XaRhEWiARA+pYcWU/9m3GLQ0qh+VNQ=;
 b=C2ICTkF4dFrtVs9HhRLpFdnpZJUL9ddKld1AtSRtlyvvipZWxlH7wb204FfOPQ8sx+
 LYWsqHGthFuvssanP9lzlkSxCBZhBw0Arn0Lr2MHkS5Y722c7ssAut/D21PsLEHFuVZG
 4dDhaLvR3rVVtkon0G0Mel8Onas4Mc3pxVwL2kgJwAvczEHikSah2hjs7FyDfceu3T3P
 Yrpbq27+LdPdMswo/ePV+zyvom4B7fD3QYMyfoyHXpX0PfkCZtfMrqUFIKUO5C5/iwPw
 597D+Tvz9mmbqNznU3p0DqgwJhqJO6LbnYMInKUozb7H4Q6eNEw1DpDWoPXB8N8PvKbT
 7vxw==
X-Gm-Message-State: AGi0Pub5kZoSYW9CNPlfH590iaAkFxf1mLgqH3nzkO2W+YSWBFaLMrSz
 1/v9ibuugau0maLhTDrCrrcyAVYod5Y=
X-Google-Smtp-Source: APiQypIzh+qR9yy6R2hb3voGY5YBwvcY3A1hxwnMloorZ+CjSP6REbV7OHrA1PJjqjEXmHZn2VBHKQ==
X-Received: by 2002:a05:6e02:589:: with SMTP id c9mr607343ils.33.1586197225581; 
 Mon, 06 Apr 2020 11:20:25 -0700 (PDT)
Received: from ubuntu.lan (c-73-228-76-42.hsd1.ut.comcast.net. [73.228.76.42])
 by smtp.gmail.com with ESMTPSA id
 n29sm6138801ila.86.2020.04.06.11.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 11:20:25 -0700 (PDT)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 11:20:13 -0700
Message-Id: <20200406182013.86147-1-dan.haab@luxul.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_112027_403250_5042FE36 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [riproute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul FullMAC WiFi
 devices
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
Cc: Dan Haab <dan.haab@legrand.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Dan Haab <dan.haab@legrand.com>

This prepares support for models XAP-1610 and XWR-3150. Flashing
requires using Luxul firmware version:
1) 8.1.0 or newer for XAP-1610
2) 6.4.0 or newer for XWR-3150
and uploading firmware using "Firmware Update" web UI page.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 .../bcm53xx/base-files/etc/board.d/02_network | 22 ++++++++++++++++++-
 target/linux/bcm53xx/image/Makefile           | 18 +++++++++++++++
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network b/target/linux/bcm53xx/base-files/etc/board.d/02_network
index f86f12407f..9256cbdc54 100755
--- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
+++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
@@ -36,6 +36,15 @@ bcm53xx_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5@eth0"
 		;;
+	luxul,xap-1610-v1)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "5@eth0"
+		ucidef_set_interface_lan "eth0.1" "dhcp"
+		;;
+	luxul,xwr-3150-v1)
+		ucidef_add_switch "switch0" \
+			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan" "5@eth0"
+		;;
 	phicomm,k3)
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
@@ -100,7 +109,18 @@ bcm53xx_setup_macs()
 	esac
 
 	# If WAN MAC isn't explicitly set, calculate it using base MAC as reference.
-	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && wan_macaddr=$(macaddr_add "$etXmacaddr" 1)
+	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && {
+		local offset=1
+
+		case "$board" in
+		luxul,xwr-3100v1 | \
+		luxul,xwr-3150-v1)
+			offset=5
+			;;
+		esac
+
+		wan_macaddr=$(macaddr_add "$etXmacaddr" $offset)
+	}
 
 	[ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan" "$wan_macaddr"
 }
diff --git a/target/linux/bcm53xx/image/Makefile b/target/linux/bcm53xx/image/Makefile
index 610af03abe..b3ec1e99a2 100644
--- a/target/linux/bcm53xx/image/Makefile
+++ b/target/linux/bcm53xx/image/Makefile
@@ -291,6 +291,15 @@ define Device/luxul-abr-4500
 endef
 TARGET_DEVICES += luxul-abr-4500
 
+define Device/luxul-xap-1610
+  $(Device/luxul)
+  DEVICE_MODEL := XAP-1610
+  DEVICE_PACKAGES := $(BRCMFMAC_4366C0)
+  IMAGE/lxl := append-rootfs | trx-serial | luxul-lxl
+  LUXUL_BOARD := XAP-1610
+endef
+TARGET_DEVICES += luxul-xap-1610
+
 define Device/luxul-xbr-4500
   $(Device/luxul)
   DEVICE_MODEL := XBR-4500
@@ -299,6 +308,15 @@ define Device/luxul-xbr-4500
 endef
 TARGET_DEVICES += luxul-xbr-4500
 
+define Device/luxul-xwr-3150
+  $(Device/luxul)
+  DEVICE_MODEL := XWR-3150
+  DEVICE_PACKAGES := $(BRCMFMAC_4366C0) $(USB3_PACKAGES)
+  DEVICE_DTS := bcm47094-luxul-xwr-3150-v1
+  LUXUL_BOARD := XWR-3150
+endef
+TARGET_DEVICES += luxul-xwr-3150
+
 define Device/netgear
   DEVICE_VENDOR := NETGEAR
   IMAGES := chk
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
