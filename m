Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEAB1FE45
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 05:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b8ruxZzV48ejFV273xtHyPkRx0/QIzo4ylc/Ru7EN1k=; b=jNEarMAXGfEOzS
	m8xvHpZVigDpt8XS+YlcRTuwkl8qiA/lv2hVHN9CRYobnOl+FhIM00FOcIgcL8CmgjO1mI4YMTfnx
	ef7BxT3oOgq2p8dM6P/jotQpLsFiywAWMg+AmpFWBYIZi4C62keWBuDdn0NIWhNKua1cRvjtHnwx7
	mUokhmrH/gpiuaQGQZ/dBv41ytY6nwsa20l+yF691DKiq9s6XzPFLS5mX9wYwUgAiORnrvXSrz6YN
	owSVjzSx4BR6oUp/ndJCYm7/IXdjoUYBiXPuFcENaqo/lSAM9tHQKLOEguYbTNTa34+7ydS1RWKhJ
	xaOqu64kYnGRP9N7553A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR7We-0001wn-JN; Thu, 16 May 2019 03:57:48 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR7WX-0001wS-EK
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 03:57:43 +0000
Received: by mail-vk1-xa43.google.com with SMTP id d7so647357vkf.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 20:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VHJcZdibqQ2JdOvFdsON6VgVzzXdnpkAoxt0NUhYxks=;
 b=KZwIjNhQdGavFKFHkcArtys2uX2g4OJaTkKiKWnu4jpLX3+y6bYMmwsIFPxr72AHsk
 IzzbrWb115i/7q4d7xB0lplLsV5v0QUiDODtdHlQ90BMbRO+KYdvEcryOnAMgIGTmrX2
 i+JLjA6nuU7//AbjC84Afh+jLug1edsDwYVqDE+sogaQnU7NcCFPTtOD+hQ9j+ZZZ9aj
 QGXYAgq2sJu6V5Nhsqduaz6jfZOCKGYNcfWrmpEhocvmwdlzSz/XmROEZOcmRF96CqRA
 VwaY6F2NwpPo6SrG76lB+SsdK+HBydLzWmDrnkpH1E3A/9BirStJ2kPhBTjthkH4BsHu
 Dq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VHJcZdibqQ2JdOvFdsON6VgVzzXdnpkAoxt0NUhYxks=;
 b=EOCwcnBaDICJKYjiGghzsqpazB6/ClN4m/nGPmYXgqpP91fLJo8Sibb2ZQPOhvI45S
 D39C7WzLm9Vq/T6Iy/+jMtjB3RNyx4ohseTBcW7LgJeoPCdwpb2nhDuT09vptHhWVevK
 JrFcRamgHsqata1WM4PevF7s40fgSE81ebB0LuCJ7V6C2vfDDx4iL3BaV77dpDW6+vEV
 lRq/BaPdP/XQBZmFoTa3Lv0XSUOVDdM3A0PW76MwlVVzoLOB5v9zkBk1WxCvA1kbnZ7O
 oTEAgjU7NAhNuMYEJYdisjjk63gMyzjBXPwKMys2qtLIjMW3tNBrj35kNMnb6zyYPs3x
 1Hxw==
X-Gm-Message-State: APjAAAW8kyJomHlQWTHqrucLTJhvDbNNWPXAfqlP/U1KsjWGbd0tFL01
 +NjUvQedownX9HUpy4pQsyArLEx37u0=
X-Google-Smtp-Source: APXvYqwXfvdA3sH+4ZuTwbQZTWFTi+c54wvT+FEmWktdozvX4zhbq6+2+++1UEXQVfPI7cZePJOmuA==
X-Received: by 2002:a1f:8ad0:: with SMTP id m199mr20278357vkd.80.1557979059917; 
 Wed, 15 May 2019 20:57:39 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.27.198])
 by smtp.gmail.com with ESMTPSA id h203sm1959528vke.30.2019.05.15.20.57.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 15 May 2019 20:57:39 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 May 2019 23:57:19 -0400
Message-Id: <20190516035719.11893-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_205741_477183_B6B45E57 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] zynq: make title consistent for all
 devices
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Modify the title to match the following format, as it's enough
to uniquely identify a device:
<manufacturer> <model>

This matches what's done for other targets and has the
added benefit of creating a sorted-by-manufacturer list
of devices on menuconfig

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
Changes since v1:
- Improved commit message
- Removed the "development board" part of all boards, as requested
---
 target/linux/zynq/image/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/zynq/image/Makefile b/target/linux/zynq/image/Makefile
index d8a882313b..6e45d2bca4 100644
--- a/target/linux/zynq/image/Makefile
+++ b/target/linux/zynq/image/Makefile
@@ -51,28 +51,28 @@ endef
 
 define Device/avnet_zynq-zed
 	$(call Device/FitImageGzip)
-	DEVICE_TITLE := Avnet ZedBoard board
+	DEVICE_TITLE := Avnet ZedBoard
 	DEVICE_DTS := zynq-zed
 endef
 TARGET_DEVICES += avnet_zynq-zed
 
 define Device/digilent_zynq-zybo
 	$(call Device/FitImageGzip)
-	DEVICE_TITLE := ZYBO Development Board
+	DEVICE_TITLE := Digilent Zybo
 	DEVICE_DTS := zynq-zybo
 endef
 TARGET_DEVICES += digilent_zynq-zybo
 
 define Device/digilent_zynq-zybo-z7
 	$(call Device/FitImageGzip)
-	DEVICE_TITLE := Digilent Zybo Z7 board
+	DEVICE_TITLE := Digilent Zybo Z7
 	DEVICE_DTS := zynq-zybo-z7
 endef
 TARGET_DEVICES += digilent_zynq-zybo-z7
 
 define Device/xlnx_zynq-zc702
 	$(call Device/FitImageGzip)
-	DEVICE_TITLE := ZC702 Development Board
+	DEVICE_TITLE := Xilinx ZC702
 	DEVICE_DTS := zynq-zc702
 	DEVICE_PACKAGES:=kmod-can kmod-can-xilinx-can
 endef
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
