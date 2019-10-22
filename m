Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49096E0D6C
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 22:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RKL1gAMfbObqNYwoBQe2xhn1+v7T7UtGFUT0f5mpAN8=; b=ESUpet0B9AArk3
	BuTDvQeEHlT8ou6aROYKDopzXrGAwvKkdhq4Z4nkDTisDFXKwCi7bj6FsuDwXMt3jdssQrV34pyn0
	0hUNMsELqFWhHanHcKAGaY48PV/o/n+to4CCCwtPxd/cHRXh+IlHtYKoRWoxisQraWR4ll6ShsKsM
	U7fNdQdhB58a2QO3soXlykLqv74XHkNAVIxJd1YBwmdyZ9MJlEi0fRn7lW5fkSpVK6Mghb4sYfcHL
	Wl0JyyqkVP39hW08nbaFgVUHRQQMCkfdrkrskCkJuMLwkqNXulTzk4W/bjYgIZdYOn3ZiG9+fb13y
	Zxp9lSxHmfXC0aWHqt6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN11k-0004DR-RY; Tue, 22 Oct 2019 20:45:12 +0000
Received: from l5m.de ([2001:1608:34:1001::160])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN11U-0004Cl-C7
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 20:44:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by l5m.de (Postfix) with ESMTP id C6A2E10808C
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 22:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 andreas-ziegler.de; h=content-transfer-encoding:mime-version
 :x-mailer:message-id:date:date:subject:subject:from:from
 :received:received; s=default; t=1571777089; bh=qp7FtFfRzyH2QyCY
 S4LpHD7BtwrVQmvLUIKRGGu1ktA=; b=hs+Cjetn6zWqwZGhpQE944J4nQ1ebyiH
 x0aeCZMtbrGzMTh+hY7uOyoSf7x8mOaNPw2p9tvR3LCQrZ3LykUb5etfxamAIx0A
 TTYJoyABitHpwRz65/fq6mR+Ko+og87H2LgLxNDEph7HU8s6QRDe6404IuJvXDeE
 VDOQLsUbeYY=
X-Virus-Scanned: Debian amavisd-new at l5m.de
Received: from l5m.de ([127.0.0.1])
 by localhost (l5m.de [127.0.0.1]) (amavisd-new, port 10024) with ESMTP
 id rQjw_f2TFC8X for <openwrt-devel@lists.openwrt.org>;
 Tue, 22 Oct 2019 22:44:49 +0200 (CEST)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:c23:c046:9100:e100:1ba4:940e:ef6e])
 by l5m.de (Postfix) with ESMTPSA id C5FF310808A
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 22:44:49 +0200 (CEST)
From: Andreas Ziegler <dev@andreas-ziegler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 22:44:29 +0200
Message-Id: <20191022204429.608380-1-dev@andreas-ziegler.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_134456_694860_DC450165 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ar71xx: add model detection for UniFi AC-LR
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

This commit adds correct model detection for UniFi
AC-LR. Previously, said device was incorrectly detected
as UniFi-AC-LITE/MESH.

The Information about the device is stored at 0xC in the EEPROM
partition. It corresponds to the sysid in /etc/board.info of the
Ubiquiti stock firmware.

Signed-off-by: Andreas Ziegler <dev@andreas-ziegler.de>
---
 target/linux/ar71xx/base-files/lib/ar71xx.sh | 3 +++
 target/linux/ar71xx/image/generic-ubnt.mk    | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/target/linux/ar71xx/base-files/lib/ar71xx.sh b/target/linux/ar71xx/base-files/lib/ar71xx.sh
index 03dfbcebf9..044ef4eae5 100755
--- a/target/linux/ar71xx/base-files/lib/ar71xx.sh
+++ b/target/linux/ar71xx/base-files/lib/ar71xx.sh
@@ -111,6 +111,9 @@ ubnt_unifi_ac_board_detect() {
 	"e517")
 		model="Ubiquiti UniFi-AC-LITE"
 		;;
+	"e527")
+		model="Ubiquiti UniFi-AC-LR"
+		;;
 	"e537")
 		model="Ubiquiti UniFi-AC-PRO"
 		;;
diff --git a/target/linux/ar71xx/image/generic-ubnt.mk b/target/linux/ar71xx/image/generic-ubnt.mk
index 5a4517f81f..6bfe041b80 100644
--- a/target/linux/ar71xx/image/generic-ubnt.mk
+++ b/target/linux/ar71xx/image/generic-ubnt.mk
@@ -138,6 +138,12 @@ define Device/ubnt-unifiac-lite
 endef
 TARGET_DEVICES += ubnt-unifiac-lite
 
+define Device/ubnt_unifiac-lr
+  $(Device/ubnt-unifiac-lite)
+  DEVICE_TITLE := Ubiquiti UniFi AC-LR
+endef
+TARGET_DEVICES += ubnt_unifiac-lr
+
 define Device/ubnt-unifiac-mesh
   $(Device/ubnt-unifiac-lite)
   DEVICE_TITLE := Ubiquiti UniFi AC-Mesh
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
