Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FF01431D4
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 19:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WVj7gNrjxqnoIJVwgfpwMRZ2SH5uWljFI8D9j4VEJBg=; b=XmQg/vymC1SRPm
	DmGw1Vv4ydaz2+MsQmwYpubBuzvme+zfCa5LfyLY6eq3JOAvMYoiMdligD8OikowbDppz/E1/zuGg
	xJr+oToHOoXgVgO1XWSei8tgbMcB7A3fX6iNBpKSiZUMbvmlDx5tb9zRoa85LS1I0bSY4C2EED5gV
	Bgg5toen/u3uYiPawzRGKRPPMOr7VtwezobzJ3j3zJW+pemeKrk1bHaf9oR0mrOKHjgp8M4xdNSDq
	L3oPzjP1tLlw3h7DhRSlyxzigZpRA6fpHFArNTUkNeGmnU3w1DSoemAh0eoP26CAZNbyVzkjOePAD
	TbGjFFxq3ySV5WqCqwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itc83-0004kL-JW; Mon, 20 Jan 2020 18:50:27 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itc7r-0003XH-OX
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 18:50:20 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 7C55AFAA2A; Mon, 20 Jan 2020 19:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1579546177;
 bh=m9t6wzEE0SA6ZbokdxLH5LDBt+cRN5C2Am+55roANAE=;
 h=From:To:Subject:Date:From;
 b=EuHJpPWhOyzJSQB76HwuHj35I+eUVTZs911+ozOT9k1R8pIb3RTyMLxx8111hi8Zp
 lMXUBQztroSKLsI/nPEoZ59ThIr152wdIly9vB9z0wmzd5atnmeZTiuTMeJev3JT4P
 imYEpzMWG023LQQS7jZ8ZCWy6xu9TP4OJU4kf0/s=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 58904FAA28
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Jan 2020 19:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1579546176;
 bh=m9t6wzEE0SA6ZbokdxLH5LDBt+cRN5C2Am+55roANAE=;
 h=From:To:Subject:Date:From;
 b=Ms6QhQiOA9CwEZR9BZQEDHD0xSPnbTDFWhrv3FiVIUkHaoSsbFBQ/6M5zET1tmkOB
 q6rbykYDjXBz4q/HpxzXLpQcnHzV1s9ZBWUs0jcPwNaLfDicfoLRQxRd44jii29SnY
 mhera5tdcT7q3oYKW6CZz/KP3Hu1Fr9u7hELoiEE=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Jan 2020 19:49:31 +0100
Message-Id: <20200120184931.4202-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_105015_946140_A0A6D3AD 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e module to
 Netgear R6350 image
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MT7615E support wasn't present in OpenWrt's mt76 version prior to 19.07 release, but it is now, so add the module to the image.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ramips/image/mt7621.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 53a264f527..fd3a8e558e 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -374,7 +374,7 @@ define Device/netgear_r6350
   IMAGE/rootfs.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
   DEVICE_TITLE := Netgear R6350
   DEVICE_PACKAGES := \
-	kmod-mt7603 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
+	kmod-mt7603 kmod-mt7615e kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
 endef
 TARGET_DEVICES += netgear_r6350
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
