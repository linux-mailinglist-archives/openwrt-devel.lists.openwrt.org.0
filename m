Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FF518ED3F
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 00:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rsCaohCT1wqgXCEt2g+L3KFm/apbCb2ruSqNTYCWLMU=; b=aWww2KdOZZH5Is
	GrPObDOprCvYtZqSSQ5shsqLa/TVo1Tq/nm3FH5wiAh9XzlcFVrJH090x0v1GRstw1BYCvWWMu9JO
	fa1icA7QugWKoUEaNnSz/2wmxkyg3urWFRccWFo57uCW22XjqBMyz4v1t64TbDwYYac3yi6epZyN4
	FwXyCGDYMnXmuSh7lJdlLKx500dayJesEloZNtmp0oNkv5WXdtKZ+o0fwlWg7XwZE5dsAVDSMHiNK
	mdH48UNOsj1tzmfOmRmPz7/E2/KOV3/ms7Bh9kw+vzahFxS6ZZXMSoHMBWw7NcPVEjIroBukB0j4+
	doKRVcRx+cO/+1bm5noA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG9tW-0006Q1-7W; Sun, 22 Mar 2020 23:20:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG9tN-0006P1-En
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 23:20:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id h9so14761418wrc.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 16:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+kqWCtDLoXYxEWugNL/Q65hphyUU1G/yKzCkC4+Ro1M=;
 b=RLjZgEMWgKHBbTkfIobl4LBe4zpRrgf+3ElwiNTZeXt4taU5MkN+7+vzIhrhPyeSDw
 gV6mO4tLgFhnkEAxvbkry4uRyCotmZimq48zJ4a0McggcI0vMkjlEtO1xxI+a9eZPcz9
 9woPWZNkx6Ed6TnNuM1Jh+JEsPQrXs5g/VmJTIfZ4PDVOyjRlNyz2lEEmQTHIHLzxVDI
 RzXYf14lpcxQ7nKQQDhpq7po5/HSdcRI9qkiwQajc4kPYo0x8ZxF4ImUM3FUALVsd1sH
 IRfCl/e/nckOxm+tIq1qM7Yir7nYZMF9TswCMTltBe8lZvqYoR3WtqOTJFlqiTupNlws
 uZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+kqWCtDLoXYxEWugNL/Q65hphyUU1G/yKzCkC4+Ro1M=;
 b=Csc/Ma2Kg6PC1h5IA2ZcjS1TQD7giPy/l6F6khQeTUp/KjhVDpGj6D0ho5X5lxtaY3
 qESfYZcVpG6073aX+qqkmn/I9KqLhvVrRKqBIBJ+KMUXBcEA3W+soqPRfHSGJMRbPJdv
 pRIOvSvk8dDMWymbG20/0zzvvGUoIfVcZtFzZQnLo77sotqX64/KO0u5kD25HqISx36T
 PFdtWEsbm3AsaCaLVNSPdIXjYPTxjcQ7SsVcr9IgdVRVnkjJ9q5Mec6kTKf4iUQUewxG
 mL5z5jKe7Fyb1WVhcbuxZJfNSnaDETRoEBG5iV+vUyumml8Ybm4HyO9et5zDSIzYvoGd
 fJzw==
X-Gm-Message-State: ANhLgQ0uD+MOhNOwzwAJRb9tWXGmIzL+h7K1gw+LgHw9QJDKYiLuPtal
 p8S9w45ENBtqVnKtghmAIQw=
X-Google-Smtp-Source: ADFU+vsqakPw7YPGJSXJh/gOHucEAFCOe5KE2xabXlaM/8hN924/RIxJ/F83CbZJF91JJJa0bAf8/g==
X-Received: by 2002:adf:bc4a:: with SMTP id a10mr25627476wrh.7.1584919201661; 
 Sun, 22 Mar 2020 16:20:01 -0700 (PDT)
Received: from localhost.localdomain (ip-95-220-18-161.bb.netbynet.ru.
 [95.220.18.161])
 by smtp.gmail.com with ESMTPSA id u5sm12691235wrq.85.2020.03.22.16.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 16:20:01 -0700 (PDT)
From: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
To: john@phrozen.org
Date: Mon, 23 Mar 2020 02:17:06 +0300
Message-Id: <20200322231707.6014-1-dobrovolskiy.alexey@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_162029_499095_18D1DFC0 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/1] ramips: use full 8MB flash on ZyXEL
 Keenetic
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
This commit fixes the problem in v18.06.8.

Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
---
 target/linux/ramips/dts/kn.dts      | 2 +-
 target/linux/ramips/image/rt305x.mk | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/dts/kn.dts b/target/linux/ramips/dts/kn.dts
index 77b047c094..94f6cddf94 100644
--- a/target/linux/ramips/dts/kn.dts
+++ b/target/linux/ramips/dts/kn.dts
@@ -37,7 +37,7 @@
 
 		partition@50000 {
 			label = "firmware";
-			reg = <0x50000 0x3b0000>;
+			reg = <0x50000 0x7b0000>;
 		};
 	};
 
diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index 2d071c1ebc..b67cf5d2f7 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -895,7 +895,7 @@ TARGET_DEVICES += xdxrn502j
 define Device/kn
   DTS := kn
   BLOCKSIZE := 64k
-  IMAGE_SIZE := $(ralink_default_fw_size_4M)
+  IMAGE_SIZE := $(ralink_default_fw_size_8M)
   DEVICE_TITLE := ZyXEL Keenetic
   DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-usbport
 endef
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
