Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E0061341
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 02:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IXsBWIU4rP8SCyz1i6xSBxgjA1Z/S+v3xRl0LGW/B1k=; b=XgUCQjBX/NwF9G
	A1Q8nivwa5SZZzknpwBo1JiVZoOcF/GMEoHs83YmySucbQF6nJAe3uYl1RbRKaFqQcelQAu0sPkNJ
	jOsjqwMWb+7h6qE1eAzal6+L4Cq1nFVcBWwyi/2pRgnvhXeNaHrdA+bnrDJ09X78BLg94UQn2Vru0
	QAUeQNKJAeYpzLcm1ZD3ObIhFJUKrS9T7lHt2/PtTnmhloRlFiuFEYn7nZVcyrNT2lmTsyiXc1WrF
	iKkqsc8GY1f5u88Ec7YLl0O7pu4Yi12H6xGL8CBSI7KVOjmPGotPTWG0FSzH1cAezH5wqDTJg0Rh3
	2p5TMvtPGfjeFC5T/GFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjull-0000Ej-Bi; Sun, 07 Jul 2019 00:11:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjulZ-0000EJ-J7
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jul 2019 00:10:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so12515353ljg.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jul 2019 17:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nZ9smB3iPE0wtuJhOnlmtm7jtGiS7iPtyD/oI7ME6ME=;
 b=Yu1EtMNaujZSUkSEPnffsuI3aPm9bB8tVs5cTg0EmZqrA91J5xZWD+L6I0xWVat4wW
 PEoncKYb4+DWdrqzOiOCFGxAKZKjs589C5rBM52BqRa/zZHA9LvRrk2gNzZ6Lc8wLFcA
 mAolrNMDzPC2a8PtbU7q2lHcMWJyZgAVstoWUarU7qhQfl1JsyAO0jdyb3NFvyg6D4N9
 clz7Z7mMoPDMuojevYKB0TawMjQ/VZQo4UHQWKqIScKfwFI86V1B3FcCsV2/lhuCznkg
 4i37CtJ8Nv+2WCdd2wHqU8+xpl6RG+o+DR6y7V9D3osm3zx/9WF5C7o0KzCDB2hadojx
 4Itg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nZ9smB3iPE0wtuJhOnlmtm7jtGiS7iPtyD/oI7ME6ME=;
 b=F8aKsgsJ7dYruTHurYfDnjxoi7G2MfOXvdNEIBogU5qyPIAC3dXHaBuRQ/5I58nQnT
 6q1IbphgglpxH7EDMSxsSgSZok8NwwTkKqhTu2/fR30jrkMFHZ+zuKgxJqZdLC7fnBrS
 xxaiFCnRsOjf1KMpKrMzNLp835742Ar/eLizT+wZy7apxuPleAnRDSz/e1u/fhzI/cNh
 W0dujmYE5P2KE4l6VpDboqV2krI4PojCfA1U1SiY64dC5GxHGsh5fADxFfCtv3Ql2OtY
 z2kBJs2roH6KNUXjhSL9MDCHS4IxVGnv67a/2HFcYOJwRaytQSN90GS0cO/I8YMBs+fR
 PRMQ==
X-Gm-Message-State: APjAAAVndKAt2pIfK+7/3GjuFwfkZYWUzZbZmUCiXn4pF/TXeA3mx79Y
 LwF7eYyooV0kK1E+82n8AZjymQ==
X-Google-Smtp-Source: APXvYqwxj4Ro4aERbx+cN6LTBEsN1f9RcouQVyzmXs8r17QYXFURKUQfrhCHi3NbFRpDATcjBcjP8g==
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr6067676ljc.36.1562458251460; 
 Sat, 06 Jul 2019 17:10:51 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id a18sm2699816ljf.35.2019.07.06.17.10.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 06 Jul 2019 17:10:50 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sun,  7 Jul 2019 02:10:42 +0200
Message-Id: <20190707001042.17309-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_171053_643834_FA1FF1FD 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] gemini: Add missing image file
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Somehow I missed to add the magical image cooking file
for the SL93512r. Fix it.

Reported-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../gemini/image/ImageInfo-storlink_sl93512r   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 target/linux/gemini/image/ImageInfo-storlink_sl93512r

diff --git a/target/linux/gemini/image/ImageInfo-storlink_sl93512r b/target/linux/gemini/image/ImageInfo-storlink_sl93512r
new file mode 100644
index 000000000000..722e9b407e29
--- /dev/null
+++ b/target/linux/gemini/image/ImageInfo-storlink_sl93512r
@@ -0,0 +1,18 @@
+UpgradeImages="zImage rd.gz hddapp.tgz"
+Procduction="SL3516"
+BOOT_VER="1.0.5"
+FIRMWARE_VER="firmware-openwrt-DATESTR"
+INTERNAL_FIRMWARE_VER="firmware-openwrt-DATESTR"
+CONFIGURATION_VER="firmware-openwrt"
+DESCRIPTION="Storlink SL93512r Reference Design"
+TSS="enabled"
+DIRECT_MODE="disabled"
+DEFAULT_LAN_IPADDR="192.168.1.1"
+DEFAULT_LAN_NETMASK="255.255.255.0"
+DEFAULT_LAN_BOOTPROTO="none"
+DEFAULT_WAN_BOOTPROTO="dhcp"
+DEFAULT_WAN_ENABLED="yes"
+DEFAULT_WLAN_DEVICENAME="eth0"
+VER_zImage="DATESTR"
+VER_Ramdisk="DATESTR"
+VER_hddapp="DATESTR"
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
