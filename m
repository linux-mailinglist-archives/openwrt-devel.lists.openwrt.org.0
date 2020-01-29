Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A01214D309
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 23:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bNwEPk+tPk9d3Nk5l41xLwMYhQEd7Sf7y5RShUAh+oI=; b=M2mrlCiYm7FFJa
	4tG3wgUhUNVFlj0414iu2Q8D7EGM658h/Oj3dbWLGsFqbc8SwqZvJOS7j2g1etE4gBz/sEU2OZmiC
	vFoBNp2E0lgzoJ9mW8/d1nkHTzNYwAarpztcsrjEUqIPSKb4IhtC47wFhVR+8rcF9nH7Wydf0+sj7
	aaJlURiNedDH7hjDcW/sM32vmd8ljTmN+N0+Rjw3U8td/n1gNu96W7YSoSeLq9Qkzk+/vOefGv6uK
	SPo5I6kqjjHrsj1jlu1P3p/XJL87gFmkKIh1nvHYV7mBhFaZaDzZa6wel05j8pturRIjmfX6PhdRs
	1a0tmX7/BmPaUjSQBVOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwvj4-0005on-RQ; Wed, 29 Jan 2020 22:22:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwviv-0005o6-KD
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 22:22:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id t23so829557lfk.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 14:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8WLDHxZop4smvRi5rIRvClaJD4+x+rIjMAchOAOvuns=;
 b=HzuMV9iGl8l2XR3bgIvvm2lRcMWDTFO/EQt7YSYn9hYL+PDm5ghhbUTosZEmf2coOh
 jjUGnamW7H5gdWyoBywe9cRKrIeMdUsefdmZhyEOfgys+d0ZO8G2FZ4TvZ4T6P9ZLBxC
 MAJSciPgGKo+eMSPEk7fI9VZ3GtVah6kyJuRSIrASPWEazpx73IaHRHyLzDbtfuGI5yk
 P+EnwdSG5cuJMpDznTPoGJ8S4HELJzMAXF37sQr1M/X+Je88CcMlcghlNep5dqxuGThb
 84gwJftpb2Rsm1Tu28fZ7AvxlRASCMzephzjolQGthzIsxuAJzrloWYT6s9yOHqRqN4r
 Fdhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8WLDHxZop4smvRi5rIRvClaJD4+x+rIjMAchOAOvuns=;
 b=tGtmJXG8yGNccPbXHOxlX7cPNn87CZNLIC7fzHVNsEDjW8miDq79tvXwzSS/wsLYep
 X4iukSrMUUzRdh1Ibj6+pGZXph6pQlvxs02wKQUpTuwBoUthwkOnNqa4t2R1D3Z8fdPr
 3OHzREcmLbZHAGbP3tOHaMBpsoxnWK++YTy6sEl0DE9qQREtNA9TKCdsKBDxMOBMM97G
 2gfqhM8t1WFmAPuZRMtarBh4yEpK0k/OtXD7VkF82Egfp9vM6T6ZKc5r9sYjUWsb0ZOK
 bGY+x637aydS6EvzEin/hlpezdvvUhRwOfRjYPjh3Caas5z0EHfSDQW/fi3J7jT54bMz
 PC5Q==
X-Gm-Message-State: APjAAAVtbraz2QCY2WqOps42cyYLa78Kmfjks+ObHioeLxXBnSe6ZqlU
 WG+qsP1dsOHKQXZOwCvVCzkq1JFU
X-Google-Smtp-Source: APXvYqzGDU3I3+jyqiTqv+yL5LrPRaCXQhWrQzkKdyT/hN9/v8kasbRCXYraK2RwsBx0J8Gx9hnyMA==
X-Received: by 2002:a19:6509:: with SMTP id z9mr749241lfb.97.1580336531405;
 Wed, 29 Jan 2020 14:22:11 -0800 (PST)
Received: from frog.lan ([2a01:79c:cebd:585c::bd2])
 by smtp.gmail.com with ESMTPSA id x23sm1748587lff.24.2020.01.29.14.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 14:22:10 -0800 (PST)
From: michael.yartys@gmail.com
X-Google-Original-From: michael.yartys@protonmail.com
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Jan 2020 23:22:02 +0100
Message-Id: <20200129222202.312973-1-michael.yartys@protonmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_142213_670927_C517970B 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michael.yartys[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ath10k-firmware: update ath10k-ct
 firmware
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
Cc: Michael Yartys <michael.yartys@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Michael Yartys <michael.yartys@protonmail.com>

This supports better per-chain noise floor reporting, which in turn allows for
better RSSI reporting in the driver.

Wave-2 fixes a long-standing rate-ctrl problem when connected to xbox (and probably other devices).

Wave-2 has fix for crash likely related to rekeying.

Wave-1 has some debugging code added where a user reported a crash.

Signed-off-by: Michael Yartys <michael.yartys@protonmail.com>
---
 package/firmware/ath10k-firmware/Makefile | 48 +++++++++++------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/package/firmware/ath10k-firmware/Makefile b/package/firmware/ath10k-firmware/Makefile
index 9f1e7e676b..af883e6f03 100644
--- a/package/firmware/ath10k-firmware/Makefile
+++ b/package/firmware/ath10k-firmware/Makefile
@@ -64,92 +64,92 @@ define Download/ct-firmware-htt
   URL_FILE:=$($(1)_FIRMWARE_FILE_CT_HTT)
 endef
 
-QCA988X_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.014
+QCA988X_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.015
 define Download/ath10k-firmware-qca988x-ct
   $(call Download/ct-firmware,QCA988X,)
-  HASH:=19db86003509dedb8ace339c183813ca637d65af24d00666411d1590efe33e13
+  HASH:=a3a760d0d72707feffa496b6d2266bd9195f09806553b36420b60c0f12b8b87e
 endef
 $(eval $(call Download,ath10k-firmware-qca988x-ct))
 
-QCA988X_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.014
+QCA988X_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.015
 define Download/ath10k-firmware-qca988x-ct-htt
   $(call Download/ct-firmware-htt,QCA988X,)
-  HASH:=454e67dab545e720369a07be2fee16de008c76db4ab3119e7760bf9f7504c066
+  HASH:=3114a54103d2b492fa1ef903769721f59953c829020d62502a1ec411ab4146d5
 endef
 $(eval $(call Download,ath10k-firmware-qca988x-ct-htt))
 
 
-QCA9887_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.014
+QCA9887_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.015
 define Download/ath10k-firmware-qca9887-ct
   $(call Download/ct-firmware,QCA9887,ath10k-9887)
-  HASH:=b3c738328427e124701a5735d65cde0f60e4172ae5bc23b00e5b16df7995dbd4
+  HASH:=71e8b76dfd7c786d2f57bb7df207dcd13a91d3b492cfbd28916f084d0d1bb5e7
 endef
 $(eval $(call Download,ath10k-firmware-qca9887-ct))
 
-QCA9887_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.014
+QCA9887_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.015
 define Download/ath10k-firmware-qca9887-ct-htt
   $(call Download/ct-firmware-htt,QCA9887,ath10k-9887)
-  HASH:=4432ccee23133bbaa4a5552e50a1e7e889b257362603e05530e751b67c29b7b5
+  HASH:=b085e5d2239727b72bc647a76864431b8ac48438e6a33b1d55edc2222468f6ff
 endef
 $(eval $(call Download,ath10k-firmware-qca9887-ct-htt))
 
 
-QCA99X0_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.014
+QCA99X0_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.015
 define Download/ath10k-firmware-qca99x0-ct
   $(call Download/ct-firmware,QCA99X0,ath10k-10-4b)
-  HASH:=9a908f743604a468b651a5f73c49e6b0ba11a05c677b9726fbf041b849d88b25
+  HASH:=edebe2f6f169cdd05c81a8a78156fb3426a66f415e7946af2ae4b7310fca5fe3
 endef
 $(eval $(call Download,ath10k-firmware-qca99x0-ct))
 
-QCA99X0_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
+QCA99X0_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
 define Download/ath10k-firmware-qca99x0-ct-htt
   $(call Download/ct-firmware-htt,QCA99X0,ath10k-10-4b)
-  HASH:=800dd0816702aaca75f3eb5436c2ea724a6c24833838cd54399b9286b4d4fbe8
+  HASH:=1ef67fb07da9082886e4dd554dfc19256e10b500faf9e4b2a5774d0238130bae
 endef
 $(eval $(call Download,ath10k-firmware-qca99x0-ct-htt))
 
 
-QCA9984_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.014
+QCA9984_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.015
 define Download/ath10k-firmware-qca9984-ct
   $(call Download/ct-firmware,QCA9984,ath10k-9984-10-4b)
-  HASH:=a8b12dba478e8c9d4a215f82324382c7554a900e83c31775f8511af84e59fef7
+  HASH:=c2f04da3285aad37baef9c37c9905a31927175dd234cd4378fd56c106e5c9379
 endef
 $(eval $(call Download,ath10k-firmware-qca9984-ct))
 
-QCA9984_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
+QCA9984_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
 define Download/ath10k-firmware-qca9984-ct-htt
   $(call Download/ct-firmware-htt,QCA9984,ath10k-9984-10-4b)
-  HASH:=d185651b5d3d1f0082720bc6c2bbe43b2a00cdb6333403fac9336a720b1d93ae
+  HASH:=0c9ede1036750d68885e6481fa84f3cb72192b8440b47719344f7327a030f05d
 endef
 $(eval $(call Download,ath10k-firmware-qca9984-ct-htt))
 
 
-QCA4019_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.014
+QCA4019_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.015
 define Download/ath10k-firmware-qca4019-ct
   $(call Download/ct-firmware,QCA4019,ath10k-4019-10-4b)
-  HASH:=4c2e48835219f420b18dc58e31d1387dae0da70d8170c3fc5e7bce39c06cf355
+  HASH:=1acbb7e7a6300091715a3dfe1b248c7833734961de52cc3465c1ed231a4d84f1
 endef
 $(eval $(call Download,ath10k-firmware-qca4019-ct))
 
-QCA4019_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
+QCA4019_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
 define Download/ath10k-firmware-qca4019-ct-htt
   $(call Download/ct-firmware-htt,QCA4019,ath10k-4019-10-4b)
-  HASH:=743da4d537d094a7839bd8e1f792e4cb8b517101f66777c84fd84585f0b85e64
+  HASH:=1065e4d3e55da84ec9e69268a4c5dba55ea33827c48a7c14bb8f0c167eb11b4c
 endef
 $(eval $(call Download,ath10k-firmware-qca4019-ct-htt))
 
 
-QCA9888_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.014
+QCA9888_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.015
 define Download/ath10k-firmware-qca9888-ct
   $(call Download/ct-firmware,QCA9888,ath10k-9888-10-4b)
-  HASH:=5809c8a6b3bd81cbc829b5e90af3c0a3300488fe194524a90e260448158016b6
+  HASH:=559ebd16872a8b43443c51bb4b7d021e5b75e65893d333d9393f3f6012f4ac79
 endef
 $(eval $(call Download,ath10k-firmware-qca9888-ct))
 
-QCA9888_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.014
+QCA9888_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.015
 define Download/ath10k-firmware-qca9888-ct-htt
   $(call Download/ct-firmware-htt,QCA9888,ath10k-9888-10-4b)
-  HASH:=a284943c203ff66ec2e865f20ae2d2aa049b450801d7205b53c9163862228f15
+  HASH:=4feaf5e7c4c1745f499ba8c3125db41675800ebedaea455c418c117805c5b372
 endef
 $(eval $(call Download,ath10k-firmware-qca9888-ct-htt))
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
