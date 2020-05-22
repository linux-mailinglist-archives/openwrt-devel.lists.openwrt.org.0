Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9092C1DEC1C
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 17:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/qFjioDHJ2FBtGGpanmvripodxG5i/rNLLqt33MBzaM=; b=nxnd3Z8qweStEE
	/RpEEXdkf2xesIiwx5v2n8DbFmtPI4uc1l4lRNYQatBdnsqJQGFIFF59ztmLmumOBR6EU/VhI1oN5
	US74flcy5Ir9Zmz5k6FGR+5O4xHpGtLylr1JcVYewg5d9YBhXaxLBh/YaIrcHFSqWwCTC1c8MaAcn
	NCLVQkQKSE/JTdZNo2pr60IwG/k7cp4LatTPK2K6ysiN+5WfwewrPlkoNE0t1YZLDUfiT5wpe2tY9
	S+f5SZe+dR+3vi5/usHikVd4L2Vb7z6QjQ+zHZIGKE9LwfRfpzwnhgaElodggTR2IEjRqyGUiwmj3
	qRIosnKavZ4Dcwl2XYew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9ji-000748-4w; Fri, 22 May 2020 15:37:26 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9iv-0006Xt-Is
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 15:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rcMjLei2BN54rn74R0i8dEISB6sXkrnRCspEFLOir1c=; b=FPP0LJ5hV1ZgI4Lh3IYH/4swBY
 tVsr9qUh5JhyvSnpwcLo8SeOZxA+5UJcEZXzl/fu1GA2z7oLrSXbHsNjo7RxPUeho0Tp62bIT9oAS
 EPCvDSqEZXsTrayj+l6FYYSYyRYe/MYxORBM0uAIQsjKpBoR0AJaveh7DCvXdp6i3hvgt9iOglc31
 LbAe9WCyvrjGxlUTPSvOgWP+BvIogEJc+Iugs301HWdYSRVcp2/7ZRdbpLpiXW9tPuWr84qL65sjM
 Nva5IQaUEnKreptYbQfCYueiJgPtXEDL3rDU24b3/CdEeOP3VIgSl6LqA2Phmy/J26zT7sVj+x+EJ
 gphrtSkw==;
Received: from [212.91.253.66] (helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lynxis@fe80.eu>)
 id 1jc9ir-00071r-4u; Fri, 22 May 2020 15:36:33 +0000
From: Alexander Couzens <lynxis@fe80.eu>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Fri, 22 May 2020 17:36:26 +0200
Message-Id: <20200522153626.1398980-1-lynxis@fe80.eu>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083640_198460_3E3EAE89 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] musl: use official release tar
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Alexander Couzens <lynxis@fe80.eu>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Alexander Couzens <lynxis@fe80.eu>
---
 toolchain/musl/common.mk | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/toolchain/musl/common.mk b/toolchain/musl/common.mk
index e1354f263510..6a595771086d 100644
--- a/toolchain/musl/common.mk
+++ b/toolchain/musl/common.mk
@@ -11,12 +11,9 @@ PKG_NAME:=musl
 PKG_VERSION:=1.1.24
 PKG_RELEASE:=1
 
-PKG_SOURCE_PROTO:=git
-PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
-PKG_SOURCE_VERSION:=ea9525c8bcf6170df59364c4bcd616de1acf8703
-PKG_MIRROR_HASH:=6975c45b9bfe586ac00dbfcd1b1a13ab110af0528028ab3dee03e23e2c0763e5
-PKG_SOURCE_URL:=https://git.musl-libc.org/git/musl
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.xz
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://musl.libc.org/releases/
+PKG_HASH:=1370c9a812b2cf2a7d92802510cca0058cc37e66a7bedd70051f0a34015022a3
 
 LIBC_SO_VERSION:=$(PKG_VERSION)
 PATCH_DIR:=$(PATH_PREFIX)/patches
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
