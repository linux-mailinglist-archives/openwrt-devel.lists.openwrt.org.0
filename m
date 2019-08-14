Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819698E0F8
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 00:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Xs23ZrcDNK2Ky4QORRKZzk5FG6UYe2qHQmtVl5k35w=; b=iaPWqGF1TPe2R1
	THvT8terrmrGKyeZzP17vKxuCH0coo9nFtBFLdh4HtWAJYSM5roBqzhbofuY52mFyq8TRxvw9LoGq
	lq91LsyDK/cHEc1xkTk61yDMLW1oYsp2bf7Zr5qikcrV8AofPrKh+zGGtZX8O02FeEWIQMTXW4eRB
	yQKdecWVNMYc5FGnCe/C3PZeq8u/+YkHe+aRYoc4gO8eOs/SyfeoPBgVUKBhilCDkmL5aG8Vh7yJx
	FG1f+sC8nZiWku6gvVPDuplkVXaX+cyXfEIuuoZ+nUolgkORPSAGZXEun9Go/J+dXboJmIvw6tDBK
	0bQ5V0fqmcf6WNJ9OJ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy22J-0001fk-0G; Wed, 14 Aug 2019 22:46:31 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy22A-0001fR-8H
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 22:46:23 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEVqu-1i5Dow2Ina-00G4SU for <openwrt-devel@lists.openwrt.org>; Thu, 15
 Aug 2019 00:46:16 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 15 Aug 2019 00:46:07 +0200
Message-Id: <20190814224607.8949-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:W+uynewPcI9E7FUppIPqN2bx3y/VIEMJyEYqDehaLmUAui5l90l
 EN7PcPXdaIGyAi8zCqQvfdLkOXqVG2ljG+0FQIAU8j5pUQWbsn07+ykdllUkltnD6a3N1IH
 bVvQlsUO4aACrRj7eJBya+F+2p0tWJkjx2odKZDoQEdC2RsS6vrizhPPXTchSl62S2/+rq8
 s96zVDNBB+QUJqtuYPRag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oe57+wXWlJk=:kfu3JSNrbDSeQ/yL2A8A03
 CQE9/Z32k8KHitYbbHw7rqHFeHbbOkBhcGf15gbkmTyKPDFE1QrS+rZXyNb5lOZmmM6kErkbx
 p8/8psWDPgmGSr5cMVbl3EnngKvz5XQ2am2X0lKU/88+EIqq/Zoi2EMDMXcfgBoqbyFKnM0j2
 Xe3qCDKjCPXglDl4i2z5oUEE6p2OYkv8bc+xAyY9U42y7AvNdOTKJzsvwqJPsfDg27cpt8ZX0
 waRDBAr12GRPqlt5CN77KXoDEAEpTazS6jVutEtnKT8Y6MYuJe3N50SGyGJABiiqQw49e+um3
 Ob+IQli+so2K20F+l6/+VF2AQliHOXi9fwG8Nm7biQGPJfRwMI69Z8NH8PA5Om2KFzXfOnYa/
 zgVVYbejGXGVUWsiNcsgLrPi6VKpGqe3VYUCVD5ecaWjzym2/haQdAoMOH80VOOUiZ1hiVZL1
 835EkLIi5mITlNWvmv8FXw+sME+7SvjlOgEmwtI8+/7CXsxIHDtWRCIYtqUc/ysrijx3mQWNv
 gTf8FlmIB70RG3tlfOQLrudhHsJf5ClaruH4tfJ2O1J4fHVlvDxBdTw254nTHrwJacBVcM1jW
 sOYBrNdlSsqzPcsCrnvofIy318lQ9MzDIIclguyscDxTJrBGZA0Sjw+FUh16zngR7kQOEC0Lt
 1Jg8INIJodj+Ag3zmJ0HumQ6XRpJFcLNCGz52ofNt8jMZmZNxiXLvL3EC0hKSXYNYI4Ke70M5
 uNmeE7LxEOqu5NH8bWvrGs1slD34R9DRvsfdjsp11AUs09Aqz71Awq3D6XI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_154622_595278_8DCA5969 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: remove SUPPORTED_DEVICES for TP-Link
 Archer D50 v1
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

This device has not been supported in ar71xx, so there is no need
for an explicit SUPPORTED_DEVICES entry.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic-tp-link.mk | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 71ea0acddf..c8d31b87e9 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -271,7 +271,6 @@ define Device/tplink_archer-d50-v1
   IMAGES := sysupgrade.bin
   IMAGE/sysupgrade.bin := tplink-v2-image -s -V "ver. 2.0" | \
         append-metadata | check-size $$$$(IMAGE_SIZE)
-  SUPPORTED_DEVICES += archer-d50-v1
 endef
 TARGET_DEVICES += tplink_archer-d50-v1
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
