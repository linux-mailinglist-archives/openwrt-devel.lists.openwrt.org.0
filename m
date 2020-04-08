Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC201A28CF
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 20:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7KWGIlfPc5il83myovU3n35GRVjMRJlZrSRd/Sxh38=; b=uHvLOGHH6TSdL0
	D4sW+zQO6XtX7Xm0Zzo/WOlxcinegOL8W6IXNjvpMZGEzqpbuYnxLQrChwWomTUzlH8vTFdVVpcq1
	OESExlG/seKVUiUGEaRekq/2JYxtfxy7ky8FxuMNkNAJ5Dlh+2yt/t8691aeU+oz3wt4OB7wvHHwG
	al5WaatbiF+hx/75utqv1J0s9Z1d7zqJ3M+wtoDLDo6qV/oW+nWb6DqgNxMktVHJ1RmFeJtVB5s1r
	vk54E8dIrXw2tZ0KSYuk7EmVHcZE9AlgTJ3nZqtGRXv/LSp3VdMxpOQNZggOdVrQetpEP3qOsVkAZ
	fbJwUEO4aGqEt/u8oH6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFi2-0002E8-1p; Wed, 08 Apr 2020 18:45:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFhu-0002DI-RB
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 18:45:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id c15so9032069wro.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Apr 2020 11:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=okj9oLhMlvdSclF2azoYbkuIB0mVTkceCUEUjC7EIxM=;
 b=ntkMQvvFQnGPa2BJx+A3YPAx8aIuf144JaXmpE411TKahmrYN5f/OdQ/ovcIC59Mga
 BcmNsyw8wxN1u/AcbBGj33sYLqmCE3Cux/hU6+uXqpnxX0/bZiCZXvw03nK34XcG5IGG
 tXW18LvcreU4s/99c0R7bqGRE6asoDPJDUmmcLaXCxyL5X4VlG8B6p3sg55JQHf3rR5J
 zHZYKNDtX9JZAWRpIvFhZReobwVPAeHXlm6IbjbjGpgg62c6QwgKQf/S8QN6YaeGC0wz
 DdkTGWwr5TLXbri7SddaCujhQgIIwPDKIHpfLWkrnOy7Wvp6zlCeibnWDj2PyowRHRi7
 +O8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=okj9oLhMlvdSclF2azoYbkuIB0mVTkceCUEUjC7EIxM=;
 b=h26Y9kEBGATh0Ap0O4MFirkAQ5i1mEq3qAMf3uxhK30wThHE/mB2WPZwb3c7Zm3AXx
 llM5Es1pIg5RAtC9QDlO8G+pCzc473HsYgHlQtKd4Hzhm0FVPFZZ1SzFcSnfB+NGEfrh
 dRqPVls0OX9Hq78Aj4UiUyQ01+jCTmq62aKsYm08tUSBDra0Tg8cXKGZS2PIo05pmQyc
 FIgnF++EO0r5frNuE7sSJqjyDbAWG3Pq1du6l/vZMWLZYZYKX5YpsBjeNtHB/M9tFRke
 jkzD3CNsMBHHwfT9S7An+yHNLl4RynBiYLs627IVL1LFOOE+SWmb9qTOgh8SK20CzlJL
 5xWg==
X-Gm-Message-State: AGi0PubihN66zEmnk29aIKetQDhUScz3Z5fklaOWd1k+23n1+HUi/sCk
 VbjqW2l7ZIPC9qIpaQqJ+Vk=
X-Google-Smtp-Source: APiQypKpzDD+8sKZx7GQKGY9K0ii6QYd4Gjm9RiMEeKvETB7eHlfJ69RuO4Dz5GDJXS8/cJKCKAXdw==
X-Received: by 2002:adf:cc8c:: with SMTP id p12mr3029037wrj.165.1586371549304; 
 Wed, 08 Apr 2020 11:45:49 -0700 (PDT)
Received: from localhost.localdomain ([176.195.42.168])
 by smtp.gmail.com with ESMTPSA id q187sm450889wma.41.2020.04.08.11.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 11:45:48 -0700 (PDT)
From: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
To: mail@adrianschmutzler.de
Date: Wed,  8 Apr 2020 21:43:36 +0300
Message-Id: <20200408184336.1428-1-dobrovolskiy.alexey@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <01de01d60d0e$f02f8e40$d08eaac0$@adrianschmutzler.de>
References: <01de01d60d0e$f02f8e40$d08eaac0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_114550_907004_3B730FFE 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Fixes: FS#2487
Fixes: a7cbf59e0e04 ("ramips: add new device ZyXEL Keenetic as kn")

WikiDevi page [1] says that ZyXEL Keenetic has FLA1: 8 MiB, there is
an article with specs [2] (in Russian).

[1] https://wikidevi.wi-cat.ru/ZyXEL_Keenetic
[2] https://3dnews.ru/608774/page-2.html

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
