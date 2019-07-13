Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B276795F
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 10:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GUZ6Gsw+IJEEEErDJwzWUEyAy9+8kd88HCPbFmlWeyQ=; b=d7QPG6cLImeT3g
	WSu9Z+PK7sAfOrwk7NE1/EmKONpK00ey0cVKltSvOeDpTVnaLNvm8uvhMx1Zs6OAHsJil8aVRlJqI
	8Ssf7iqhEb5tbCBa23Euj70P4pWdkVsYfE49EFUppo/fY5FiSHHbH8MS1Io5tZXEogTpYex+736/H
	AYdFVrCnbzIxXEy+lYVZWnKfoZKEKLT2FH3MNMNvWyUBFr/WcYNtEUAcqymk3s2BIcUfb94F5fcsm
	gk4F6Xq+Eu+Li/yTrHxir2LJAdHqAJVHgPC6ZnPPIUxDGjGqbSDQLbc1TvdaKFsCS8QPG1bAhfYVc
	gqa+YOccmqlMvU49Jlfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmDkV-00007A-Ol; Sat, 13 Jul 2019 08:51:19 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmDkC-0008RP-6Q
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 08:51:01 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 924E2FB1D8; Sat, 13 Jul 2019 10:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1563007838;
 bh=rdZGHLBtIH8JHPidW3UvzgxQbosA7/kKM+RZbGypGB4=;
 h=From:To:Subject:Date:From;
 b=jf8/i/Vv8pC1LIunBWD+nhhiYWMSjWvErqDJ+zqPGRQ/ie8zhrxZ2GSbzhK5Tiyiy
 rkzdaX/VnP1DmZg2x+mldkPYnORCsr9Yv+aB1kDht+pJGNU0IBv0RN3Yzd03OzzCUj
 diCKrktW+66S4+DTy8FAOyUfVycpNZgtDkfgrJeg=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.168.236.adsl.dyn.edpnet.net
 [213.219.168.236])
 by volatilesystems.org (Postfix) with ESMTPSA id D38B7FB1D6
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 10:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1563007837;
 bh=rdZGHLBtIH8JHPidW3UvzgxQbosA7/kKM+RZbGypGB4=;
 h=From:To:Subject:Date:From;
 b=oDruBR3QvgB/D54hiQIizEsRlQsmRvaRBAwJAdgHhtcrMXHOfFscBYa7EQjfQTMKz
 6mnUNprXf9U9O8rav4+ou28w/eDt8fZJZJvQ8dq8bcD7VDQw6tBXs3/isslJhAkxNP
 Tt3kuMydjBqT7FChgO30lA1c24fhmbHTXZjqFgzQ=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 13 Jul 2019 10:47:47 +0200
Message-Id: <20190713084747.9347-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_015100_418076_6D11CBFC 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ramips: ASUS RT-AC57 only supports USB2,
 not USB3
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

Commit 14e0e4f138e35c3e2a15cc3a836c939547ee053b added support for the ASUS RT-AC57U but erroneously
included kmod-usb3 whereas the RT-AC57U, despite the mt7621 SoC supporting USB3, only has a USB2
port. Make DEVICE_PACKAGES reflect this.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ramips/image/mt7621.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index e2928c80ce..137763f2cc 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -111,7 +111,7 @@ define Device/asus_rt-ac57u
   DEVICE_VENDOR := ASUS
   DEVICE_MODEL := RT-AC57U
   IMAGE_SIZE := 16064k
-  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb2 kmod-usb-ledtrig-usbport wpad-basic
 endef
 TARGET_DEVICES += asus_rt-ac57u
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
