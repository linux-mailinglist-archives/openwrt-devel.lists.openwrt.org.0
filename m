Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7331143186
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 19:35:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DhCdahbGqxobygVGIW1PtRFuynZXpgwDXMAWLNa9148=; b=bui2GyPjhWsxqT
	5ObLxJmunQdd9Bh2Qx08GnYZuyJ/JyK63aSy0aOePv2ouU/Yx3M6f33wtMB0GtFwVGnCNmrPPUW0r
	ZUbc9Zi1tHJaTySJduzQgZNTESve6AL07LwL3EGROiGy15xKcTPvoMyyB2NXRZlJ2+YoqrDrUcG7o
	iD+Paf2X2CIc3kguejzjNiXEtpl8FcNsQP9erYzFYjIHw+DCiPR0fLu8z3CkMc6GpwzwTvE8LRg5I
	c8o4MMSvl3mQ1qkI5DMGiyqEoeH1FtdB/RJ/IfbXyivYQC5+CiEnNtAzIYlkjuyRQOzxnuC3LhVuw
	wnY77NKwSsrl9BL3MImg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbtk-0007pe-9Q; Mon, 20 Jan 2020 18:35:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbtZ-0007od-Ii
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 18:35:33 +0000
Received: by mail-lf1-x142.google.com with SMTP id m30so35228lfp.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Jan 2020 10:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OrrkozWuzTfU9xwaRNDmIUaKXj4eB2ilvKZQ3LwMNpI=;
 b=ry/gNQvPNLUiH5Izja6RLLOPQABsy0Qd8m0c22n8ConIN+km3x85/LBJoCCa4X6OdB
 nFmAM55C+cvU3TgiA2sRYpQvfyp+RzMvmJ80DMJXkjOQwa4JaciBj2wnG7iLsgF6SbuM
 u+g/RpMLtHsN1w02zgq8H7P9sKZ+aGHXCxPf2cYthj9nOU1vwZ3FPkwZx1F9xRc5wbzT
 na1uBs62YP9Jdrv8S0lEQLq4QRHS5XpcBQopPv0CkDPoKJKduNCyO8XsM/AROt9jyUfQ
 CZL4nZb+KD9ZLS8O+l20nJE+PvoLe3A9aUhKqdel3UhAzZs1xSk3pNivTjaq9RLlmmQF
 haQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OrrkozWuzTfU9xwaRNDmIUaKXj4eB2ilvKZQ3LwMNpI=;
 b=InMho9EQ9izZT7IfAaM9CNLj17k1PzAM3NA4rEmM7oQtKF/QljenY1cqQHB59yVna0
 i2PyxnCDO9qHeMNGU3pMHJb7MN729qwn5vbGkoJ29l8XGU5qjFxhUD6AbzyJfcefTuZS
 Dbi8DF0t0/KPJjZKDDGiinJw40CiofSw2cBXujt3FWlExDRTOGpAwswQJRzsimoAdKOx
 nNTpKNp/nNVlu91+G6g/tIjCFS78vDdfNtVjSwS1RBwkFsrkdTK6DTjRjI6vz6rvzfKi
 37u9xAIAqegCJ3K+npCnxYYXiqJXUVk7j5Y1A+ac1YhAVEbhNo/0GsUGamgocpJ0NOZS
 uSLA==
X-Gm-Message-State: APjAAAUXQWqQABp7DRFENPEQ3vKnY9VtKAQYv7RNVs7FL3OmKK9Ykw7G
 ejpfCeKV/U7AbdTEn50RD0Ln43Qk
X-Google-Smtp-Source: APXvYqxXoNFyh5J7uq5MHXkD3wFKhRau0YM1m53OQy7ZkxMlfVIUwyu6MVHG3jZw5FERnW21yY1afA==
X-Received: by 2002:a19:ee05:: with SMTP id g5mr340747lfb.113.1579545323735;
 Mon, 20 Jan 2020 10:35:23 -0800 (PST)
Received: from localhost.localdomain (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id s4sm17604161ljd.94.2020.01.20.10.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 10:35:22 -0800 (PST)
From: Piotr Dymacz <pepe2k@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Jan 2020 19:35:01 +0100
Message-Id: <20200120183501.29372-1-pepe2k@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_103529_643353_0F03AAD7 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] hostapd: start hostapd/wpa_supplicant for
 all wiphy devices
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
Cc: Daniel Golle <daniel@makrotopia.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

c888e17e06 ("hostapd: manage instances via procd instead of pidfile")
added procd support for managing hostapd and wpa_supplicant daemons
but at the same time limited wiphy names to 'phy*'.

This brings back initial behaviour (introduced in 60fb4c92b6 ("hostapd:
add ubus reload") and makes procd manage daemons for any wiphy device
found in '/sys/class/ieee80211'.

CC: Felix Fietkau <nbd@nbd.name>
CC: Daniel Golle <daniel@makrotopia.org>
Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
---
 package/network/services/hostapd/Makefile              | 2 +-
 package/network/services/hostapd/files/hostapd.hotplug | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 2642a263dc..1b6434674a 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=hostapd
-PKG_RELEASE:=6
+PKG_RELEASE:=7
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
diff --git a/package/network/services/hostapd/files/hostapd.hotplug b/package/network/services/hostapd/files/hostapd.hotplug
index c319d42c1a..2c936fde75 100644
--- a/package/network/services/hostapd/files/hostapd.hotplug
+++ b/package/network/services/hostapd/files/hostapd.hotplug
@@ -21,7 +21,7 @@ service_data() {
 
 procd_open_service hostapd
 
-for phy in phy*; do
+for phy in *; do
 	[ -d "$phy" ] || continue
 
 	mkdir -p /var/run/wpa_supplicant-$phy /var/run/hostapd-$phy
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
