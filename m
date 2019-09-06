Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DC0AB6F7
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 13:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ZpPX50YLGmY2biXCiS0Z0CYmRLWWecTinRi7u0yja4=; b=YVkBRkm0vWhmgb
	s1OtWNa8o6R6vWZzKUx7oyqJROoiWkR2jp3Nn0pfQY6MFGvijK1cEtpJvmwu8jnsCmK9uUCn+QrLB
	wyeTRTmgdYwwsCredU0WMIZbA7ZmP01hvNHerZeNi11cfpc0r49QhkTHjZW/nphkp6gwqjr7jAZpL
	Dt7JvaERK91XwFRkCAcDP/1b9JRZUiy3xXcHCczHQKwkrj1+lnzZVJwmYX1blmar9mryAs40R5u+y
	ecOgzuBDnPxkRC+s2oVthESAKhvs9t5UorjoOBkaEk1ORGpRQmxqiGq54LclXq2m2WPr/d24LQ72a
	dQqkQfsKkkS6LsXkJDXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6CCk-0006UE-98; Fri, 06 Sep 2019 11:15:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6CCa-0006PC-Na
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 11:14:53 +0000
Received: from localhost.localdomain (unknown [151.66.4.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74B8E206BB
 for <openwrt-devel@lists.openwrt.org>; Fri,  6 Sep 2019 11:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567768492;
 bh=rfdKuT8+ZBrD3/Ahasr8fHbhT+1H5498ngJvvr8UxZE=;
 h=From:To:Subject:Date:From;
 b=wT2QywgQy5wj0/0FL6TnlN7cvqnFA3crav5rxO3qyCIEPySnHfa1xwQxJoUkEUj2e
 z0FTja9fgq6wtujbE4XFRVKPVTPkPvvRFiHLrEs1vpb6Fk6wCSJV6GXUKgP0m847O6
 t3a1TsgxAaJq0Lu8E7XoIoaxCgKInny8GDBbmY6A=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 13:14:39 +0200
Message-Id: <5b53144b824a2514da2dac7eee3427e62ab865af.1567768333.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_041452_801341_C7EDE138 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: [OpenWrt-Devel] [PATCH] mediatek: enable mtk_efuse by default
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

Enable by default mtk_efuse driver since it needed by mtk_thermal driver
to read sensor calibration data

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 target/linux/mediatek/mt7622/config-4.19 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mediatek/mt7622/config-4.19 b/target/linux/mediatek/mt7622/config-4.19
index 5e3ceb3574..8f5e3bcaef 100755
--- a/target/linux/mediatek/mt7622/config-4.19
+++ b/target/linux/mediatek/mt7622/config-4.19
@@ -401,7 +401,7 @@ CONFIG_MTD_SPLIT_UIMAGE_FW=y
 CONFIG_MTK_DISP_PLATFORM=""
 # CONFIG_MTK_DRE30_SUPPORT is not set
 # CONFIG_MTK_DVFSRC is not set
-# CONFIG_MTK_EFUSE is not set
+CONFIG_MTK_EFUSE=y
 # CONFIG_MTK_GED_SUPPORT is not set
 # CONFIG_MTK_GPS_SUPPORT is not set
 # CONFIG_MTK_GPU_COMMON_DVFS_SUPPORT is not set
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
