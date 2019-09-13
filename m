Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF13B1AEE
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 11:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wNHdfAzV2LupMZBjXB0DOLjMyQAY0UE8gDkNCVZbiF8=; b=m5HcHKYjGGRJIS
	eye+oeH4Ew6o7UlvQZ8LZrEkMC+oxU5CJc3IwPunV+0uURibSErSZm3Qvh10tr+X4OJ+/6z3Wu9LM
	ACRAGq3F9/sLESWZ6FQq1Rc5B9nA0nhVNanKnJAVf7t5QOyn4LCzeh3JMDJoOvErKUDvvuQB6Q6mp
	o2c5eSDqW4SRLpBTIimzAHSaDLo0OmuJ8T/a0R8ZIASf9lVCgKGv0JHAg7tbPZNsLhZiem0J2ss/C
	V8bigbdMh7F+dSxu3zrATbeg+wkLi8GZowjRGuXzd7bOCb+dtNt/n3szunhHTI2gU0zxfTmDxTGJ5
	W/RnSogTV5XCwEvM87sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8i2w-0004UL-JB; Fri, 13 Sep 2019 09:39:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8i2f-0004TV-0e
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 09:39:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so176442wrv.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 02:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/vcU/rNlW0WB153cZwELWG3KnmGOyKPkgTBPl1MzRCo=;
 b=EGLcXVoMFOUs6iPXjtHRe/R6lW4AlWVXF5tg2isHWcJey67bIKOgivG3W6wS8PBga2
 vbyoL2t2EClT+h4kKEYL88PBMXc8eftNhmeF12IM47BQpIx4Llml671m4i5cA0vWEVCk
 1nhOaNKIaxv4DesaETthh8T7i18vRB/uXw4wF35eY8SvMxB8heV1L9ea0/w2aq5eOFW5
 ZGW6ZR3D3v5/1OMWAgusmxv2ii5kSzFcX/XEaflK4hHKt9ajSErt4YA3EaUfP+K24rtx
 STNaTBNbDMwwYxZmhn7VaYRHy6sDs0p+CUmcgnPPlNzi1KI+D/WYwoDkI1hh1ZqOWGJD
 OeUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/vcU/rNlW0WB153cZwELWG3KnmGOyKPkgTBPl1MzRCo=;
 b=nN/cuVrcnTItvR9yW1fSDjSOZjEbZjMZVIUkodjXbE2p14bBdxoBNrjnllbf2PJSZH
 7nwjHrUni4f4RZSyP6K5cHrY/wwVh/73QR9HuUYlj19IcM5zEfbO2MKkEkXAgEOI2Ap6
 vMTs/6bRLA2x7hcxKZOO4JqISQR4UAaeXQ7XRkzE5QwTEKDHin5LmGvGvweaSrA/7Mbi
 12u0bo626KIcsCTSQVYrJz6fydxdWnD0DidprtkaMGqbYo+6sbCYZZczJnrjHBudbpd/
 QPyl+lhyp/ZZL9hV3aILAP8jU8vAUs+URgf8107p7MF6OO5BjyA8f/NNiG7pfXtW9BZw
 ljEw==
X-Gm-Message-State: APjAAAUad/SvFl/Aa1JfH1xeXy7RDfnFfUEqdMdLBSDdGzZkeSYNotL1
 X4uwJ60ucy/XwJ65Stqg3YeDxgpu
X-Google-Smtp-Source: APXvYqwdRx9S6WqKry6PJ+xqGMyHo718Q2kz2gyKJAqDqxbagX77hOduoUCItqLoZfU/yBsSOUcQ4A==
X-Received: by 2002:adf:f112:: with SMTP id r18mr1432111wro.88.1568367537359; 
 Fri, 13 Sep 2019 02:38:57 -0700 (PDT)
Received: from localhost.localdomain (93-143-190-12.adsl.net.t-com.hr.
 [93.143.190.12])
 by smtp.gmail.com with ESMTPSA id i14sm6032452wra.78.2019.09.13.02.38.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 02:38:56 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Sep 2019 11:38:51 +0200
Message-Id: <20190913093852.10638-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_023901_079800_972164B8 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ath10k-firmware: update Candela Tech
 firmware images
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This enables a feature flag in the wave-2 firmware wmi-services indicating it can send
software-encrypted raw frames.  This should in turn allow the AP-VLAN feature to work.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/firmware/ath10k-firmware/Makefile | 40 +++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/package/firmware/ath10k-firmware/Makefile b/package/firmware/ath10k-firmware/Makefile
index dc04e2ff60..e5e541635d 100644
--- a/package/firmware/ath10k-firmware/Makefile
+++ b/package/firmware/ath10k-firmware/Makefile
@@ -64,14 +64,14 @@ define Download/ct-firmware-htt
   URL_FILE:=$($(1)_FIRMWARE_FILE_CT_HTT)
 endef
 
-QCA988X_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.010
+QCA988X_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.011
 define Download/ath10k-firmware-qca988x-ct
   $(call Download/ct-firmware,QCA988X,)
   HASH:=5872fe046d90d844a6d3e232e47a6865bac551d7043b2874147c077e356b35d8
 endef
 $(eval $(call Download,ath10k-firmware-qca988x-ct))
 
-QCA988X_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.010
+QCA988X_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
 define Download/ath10k-firmware-qca988x-ct-htt
   $(call Download/ct-firmware-htt,QCA988X,)
   HASH:=4568c3895a101ad28363491ea935f56a48bddea4c1be1889a6ba8d151902062a
@@ -79,14 +79,14 @@ endef
 $(eval $(call Download,ath10k-firmware-qca988x-ct-htt))
 
 
-QCA9887_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.010
+QCA9887_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.011
 define Download/ath10k-firmware-qca9887-ct
   $(call Download/ct-firmware,QCA9887,ath10k-9887)
   HASH:=2c64ab22159d04cd345b8caffdd76ac95c0409729121a7a4095c5192f46013b2
 endef
 $(eval $(call Download,ath10k-firmware-qca9887-ct))
 
-QCA9887_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.010
+QCA9887_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
 define Download/ath10k-firmware-qca9887-ct-htt
   $(call Download/ct-firmware-htt,QCA9887,ath10k-9887)
   HASH:=c806b8894faf3bbb11004f77196c6d711b9a6c187b1512d84e05fa98a5aba2ab
@@ -94,62 +94,62 @@ endef
 $(eval $(call Download,ath10k-firmware-qca9887-ct-htt))
 
 
-QCA99X0_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.010
+QCA99X0_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.011
 define Download/ath10k-firmware-qca99x0-ct
   $(call Download/ct-firmware,QCA99X0,ath10k-10-4b)
-  HASH:=b5ccd56807763bccddf661cfc7dc6aab55215961f70f0e7bd42520c2dca30801
+  HASH:=4ed106dbe8431945afc6a995765f245f574713095b567df35f1397bba5f6fa2e
 endef
 $(eval $(call Download,ath10k-firmware-qca99x0-ct))
 
-QCA99X0_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
+QCA99X0_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
 define Download/ath10k-firmware-qca99x0-ct-htt
   $(call Download/ct-firmware-htt,QCA99X0,ath10k-10-4b)
-  HASH:=2cde201ebaa9e996822aeccaf46633bd6e1dd07c61ecba962519f532e5f92509
+  HASH:=7434c84c501e00a24cbca338569ba150a9ec137ee2b9fa52d13484794300924c
 endef
 $(eval $(call Download,ath10k-firmware-qca99x0-ct-htt))
 
 
-QCA9984_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.010
+QCA9984_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.011
 define Download/ath10k-firmware-qca9984-ct
   $(call Download/ct-firmware,QCA9984,ath10k-9984-10-4b)
-  HASH:=d7e360a220d90eadd67f5c9b5adf7b73d9611127e791e931d4f4890a417060d2
+  HASH:=9af817e65dc9f195517f05ad25f0eca693632ea03b55739a2e0f0fc82e810405
 endef
 $(eval $(call Download,ath10k-firmware-qca9984-ct))
 
-QCA9984_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
+QCA9984_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
 define Download/ath10k-firmware-qca9984-ct-htt
   $(call Download/ct-firmware-htt,QCA9984,ath10k-9984-10-4b)
-  HASH:=411cbdf5f52aac701a79ef5e43bfa57b4d8216c78eb83e48f25e8c11e17f71ff
+  HASH:=11e116631555550185e712f70bd29ac41b495bf0ecbfc3334cada8a8c10a42f0
 endef
 $(eval $(call Download,ath10k-firmware-qca9984-ct-htt))
 
 
-QCA4019_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.010
+QCA4019_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.011
 define Download/ath10k-firmware-qca4019-ct
   $(call Download/ct-firmware,QCA4019,ath10k-4019-10-4b)
-  HASH:=276f6d4048759f99626dd000c1de64322cbed8a63f5aeb94dfea3127732fefc6
+  HASH:=21a6b5b69e3c1591cb9fe6077971ddadb003cac698f2962d4d8d73bc04038bbf
 endef
 $(eval $(call Download,ath10k-firmware-qca4019-ct))
 
-QCA4019_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
+QCA4019_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
 define Download/ath10k-firmware-qca4019-ct-htt
   $(call Download/ct-firmware-htt,QCA4019,ath10k-4019-10-4b)
-  HASH:=53d4bdb6a0fd5a88cbcc04cbed41a36c0a601b912af0f3376c661d7a639a4a58
+  HASH:=87111717ec5279125d397bea45386707684ee707a91f6c58298818fd02bf567f
 endef
 $(eval $(call Download,ath10k-firmware-qca4019-ct-htt))
 
 
-QCA9888_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.010
+QCA9888_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.011
 define Download/ath10k-firmware-qca9888-ct
   $(call Download/ct-firmware,QCA9888,ath10k-9888-10-4b)
-  HASH:=268c8c3e771522b5e335328d331c20cea30e44b773656df2d613e76ce8777c1e
+  HASH:=3c9f2e914d2a5eb3a413872239045dfcca105483ba83dd9b293e6b8855fda883
 endef
 $(eval $(call Download,ath10k-firmware-qca9888-ct))
 
-QCA9888_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
+QCA9888_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
 define Download/ath10k-firmware-qca9888-ct-htt
   $(call Download/ct-firmware-htt,QCA9888,ath10k-9888-10-4b)
-  HASH:=bde9bdcb3ecad94b4f6ab679fb2e266c46bb11b2ef279c2458a98a1e8808542d
+  HASH:=dcb1bd826e5e1ef266fd7ee04410b44d4474d59f6eca0cc634e6432aaf326426
 endef
 $(eval $(call Download,ath10k-firmware-qca9888-ct-htt))
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
