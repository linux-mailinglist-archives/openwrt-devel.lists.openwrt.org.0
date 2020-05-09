Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B371CC39F
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 May 2020 20:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wH11ru7aIhd0uGrWcAWRztFZLhcq3BPGCnbMQVKVKTI=; b=tgG6hYEfWgxbBC
	ILlzTF/nnv238OmUsmOGyqHCKps0+WHJzxNG9ZSMBFrLmFFqKdTg/rGUCK/Mm1qp+l0DwKrpBHN+p
	/ufwI9XDf2wOr6TOcFFDO3Wdol6Cvr7YEv8Y2V33sSuls61ae5TWjKX7ii3g+Rz1KbBhYSvmLNj7Z
	Xcl7jYtUmYF0efriLtoByXJAUaVtLBOWpHhqM7wIH6VwRyVYvtGBhw2hDS8zN5/Dvfdh4BtfeaOJp
	QtC2qgCpxEWH4bO2zYjJB+Qzfyyzu+xRod8ieeEN4nC6trWhuP8ikCKs/SMFuEr1c+rG01Er9vvuj
	LThnHTvTwlEr+2WgA3Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXTwU-0004hf-NK; Sat, 09 May 2020 18:11:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXTwN-0004h5-OZ
 for openwrt-devel@lists.openwrt.org; Sat, 09 May 2020 18:11:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id z8so5750515wrw.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 May 2020 11:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=15GxVu2wV9p36d2R3LIqInMSS3C2AKRqZE93cGGM9Nc=;
 b=cvL72iY8wMm80+atHnoK7qiipqMDeBq4/jXBkjX/nsE1VY2gQWJASmqqVkJGFo+Z9/
 DtCqHda+jm97BZQ7vrMQR5sstgzKZej+8Ymf2X4Su2G2tC/s8nz9BKnmsDfVHRTmmOi+
 P1xpjsYsvoTbu5Gj7+FskFAnG1UR4z1VyfZgMnZjQRGY1Q3g6V5UZ4kwUlsS6CF+g8xS
 1uEjTtIPcMgLYZ+wakKyoQc2fp7mNFm/hhFyQqqhMvG7YkPU7c3o9PKgsfVc5ocf/ulN
 DfeeDEEhahGY54rKzJyKf3lAyVV9cqc/Nd65sNbUrZYMQ2PiVCkncH9Ss3K3z/TezehK
 c7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=15GxVu2wV9p36d2R3LIqInMSS3C2AKRqZE93cGGM9Nc=;
 b=Zrlf+G7S/ZguKLrRSJEENAyCa2iWrHmR/eaxArPDVuhUjBas8Gw+XqUVK7DzgkYIn5
 WM5Bhw5OAx3WjjOHanpOG0qLOg543YGuxyE68ONOK7BLfbuQS/Dzq0ClonWHv7OvwboX
 UBs/LqdYKWu5Fpcmt40FPQS2oeZpXyGAM/oYAjWCh+4KpRI2oR6TX/jbql93BrR96Xyb
 z+wNJ0cI4ube6nhSoWD0Fqbnatg+3T3MPVXOjccsaZ9cJMm/wiBFcfvsPp6V0a87JwH0
 iYi0dCZHVssmCYwVSNv0cg9SOFN8hu7g9YeAiH44WmKZG/QsQ2UO2+M6FYW1j+/pxY7C
 dyDQ==
X-Gm-Message-State: AGi0PuZelo/oZ6GV8ksQWEqKlSRZS5gax7holIeKRK+N739/k7gOcSRY
 n618FqnIMT5/suT/gsrOJbXtWZABhTw=
X-Google-Smtp-Source: APiQypKzBel8PB3qVMKxoa1L36zwxj/WlsSc4/q6y1aVVHtv6iaSsyY/ngtDhvKdmEEPkLaQDcKBRg==
X-Received: by 2002:a5d:6b86:: with SMTP id n6mr9267775wrx.113.1589047869424; 
 Sat, 09 May 2020 11:11:09 -0700 (PDT)
Received: from localhost.localdomain (ip-95-220-20-150.bb.netbynet.ru.
 [95.220.20.150])
 by smtp.gmail.com with ESMTPSA id h74sm9671421wrh.76.2020.05.09.11.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 11:11:08 -0700 (PDT)
From: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  9 May 2020 21:10:44 +0300
Message-Id: <20200509181044.3259-1-dobrovolskiy.alexey@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_111111_823150_CE577D96 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: add kmod-usb-dwc2 to ZyXEL Keenetic
 image
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
Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ZyXEL Keenetic has a USB port. Thus, DWC2 USB controller driver should
be in the default image for this device.

Fixes: a7cbf59e0e04 ("ramips: add new device ZyXEL Keenetic as kn")

Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
---
 target/linux/ramips/image/rt305x.mk | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index 1a9f17c710..6e35a30c87 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -1199,7 +1199,8 @@ define Device/zyxel_keenetic
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := ZyXEL
   DEVICE_MODEL := Keenetic
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-usbport \
+	kmod-usb-dwc2 
   SUPPORTED_DEVICES += kn
 endef
 TARGET_DEVICES += zyxel_keenetic
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
