Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E796B044E
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 20:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MXD2V4iOxiRhm9uh5P+gD0SD+UeDMXl7ny4MyT4Npq4=; b=QKomujUGCY7G25
	D5mZlxMIIjWMwiOvcgI4wA64/iMIZzXqzGTaZeoRJz5mnZKRh7/dFQjQJpT5okBp9qM827ptNftef
	EorIxYFaFVUmFsAadnoNUwG2vH3eSsRFsIa/ThaksDymcEk8JluLASPv+asYfzurvm7NzlQNFkDRI
	zeDEWN6iQb9U/eaB0mfvhxOapoi5wQFi+BfYtkJngbFCbwCBTlfMNBGu9bojDMWjEZWGP27nUILp1
	7tmz28iDWoT/58aYqhrtmEst8NzHTRBcBdv/chji0c56T3aMC5Ej0KMnUOq2xFcND7z4S1VzSUHWq
	Tv4OIumUIJSV3zTOfd/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87nm-0003jb-1H; Wed, 11 Sep 2019 18:57:14 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87nU-0003j2-4N
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 18:56:57 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MWSFB-1hbODQ2oJf-00Xt4O for <openwrt-devel@lists.openwrt.org>; Wed, 11
 Sep 2019 20:56:51 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Sep 2019 20:56:48 +0200
Message-Id: <20190911185648.1204-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:5E8ZgWejWQ+iZzxNstyuO/b42cC6d49l4f9uwLSEKmKHhvimfuk
 MvdNSNWVHt/yP+VlY/be23YriQ/+hYvYooWJOGzJo8S3NgXLlMxteGqtJ6HJWrEzwmLhQnq
 0JP7Uy0bMHTF8Pcq35CJf+DlXKmDG1cSiKwGZ+1D7SQIKVI39FAxhQJ8LjvyTqxc274X4rN
 BPUwo7OZ+Y/hsYUoWZBNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+MNFm/JR+mk=:3a2s+7N/5oKvGjYgk8JRPo
 58u0suo0+LuKruljnQ3IAq7TnAa0pBgyRNVLxGe+BBn+p8Hr4e9PoJHlcqljuuVM3QJFkV6ut
 tvSyYRwSmNRmp0R3qQ7AH6hyMFOdKe8YqpDh7mGmKbaevz8llL6rNuHFtBak2Ej3j7dB6CTWX
 VNJRdUHQlO4tFjO/JPZTj+s2y37Ye8qu8Io/N8v+3EYeVGInch7LF6Pj+cDGUMRw5z+cz5n1K
 bopoVKVH0vNwGc1TSX+PqCYI+YdsRErnpNePPUKXg62C9zKFO7Vx/QiOB8o/Q22vuKTgb+Rcy
 foZWqEA0Ya4FfSGN7PKlAgtZAfp7VL8jXcETWPRU2PmTw9uSqwK8uff2wPlf2z+MMlyAjDijo
 POEimTQiZkgHGfquO+1UWcrYmObabcLSme+PWBxWPonJHt2XoDGeBvAgnd/ibCnRe/+baQYwf
 0CUm8XiLC5TOjcbVXde9cfWqDYcpqcyi9c38pCPvn0iWjIwLigw4S+jqhDVjtGQ3DcHJz/HUO
 ECUplJF/VpgFh/mY/dIswJwfAZXfhkF5tF6jBe92GtTxR+tsvzwCWTVr55YC5yW6hHs8GtXpt
 NZu7PvgFe6wfvvV85prnk/q7kQ3B263JON64dxssNrGlEzcbsmGRSyVHuOja2g5ckpDaoVa4B
 Nu+xZaOKgOBkbVeCDYif8yqBL5FaKoTb5uO+Z4e1N7rBSoqN7+ljXXZK7MtjAbFOTCrfPCbag
 Qcdb3rUmX8V+6bWzO9NExDV657MYnhXV3h4nX/oY1qAQqAkefia0PKBK54HK7P7aiAR3VSciw
 da3HhUnHOsWmD7RMHabTRhGLHL7koWaraZwTjWCJeHvbRzmC1qWRIcgCP+Yoge1M1hjekIN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_115656_464152_970CF429 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] brcm63xx: remove redundant variable
 definition in Makefile
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

For devices inheriting from bcm63xx_netgear, the IMAGES variable
is overwritten with the same values as defined in the parent
definition. So, remove the unnecessary overwrite.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/brcm63xx/image/bcm63xx.mk | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/target/linux/brcm63xx/image/bcm63xx.mk b/target/linux/brcm63xx/image/bcm63xx.mk
index 95cd5a9f82..212960e972 100644
--- a/target/linux/brcm63xx/image/bcm63xx.mk
+++ b/target/linux/brcm63xx/image/bcm63xx.mk
@@ -807,7 +807,6 @@ TARGET_DEVICES += DG834GTv4
 
 define Device/DGND3700v1
   $(Device/bcm63xx_netgear)
-  IMAGES := factory.chk sysupgrade.bin
   DEVICE_TITLE := Netgear DGND3700 v1
   DEVICE_DTS := dgnd3700v1
   CFE_BOARD_ID := 96368MVWG
@@ -822,7 +821,6 @@ TARGET_DEVICES += DGND3700v1
 
 define Device/DGND3800B
   $(Device/bcm63xx_netgear)
-  IMAGES := factory.chk sysupgrade.bin
   DEVICE_TITLE := Netgear DGND3800B
   DEVICE_DTS := dgnd3700v1
   CFE_BOARD_ID := 96368MVWG
@@ -837,7 +835,6 @@ TARGET_DEVICES += DGND3800B
 
 define Device/EVG2000
   $(Device/bcm63xx_netgear)
-  IMAGES := factory.chk sysupgrade.bin
   DEVICE_TITLE := Netgear EVG2000
   DEVICE_DTS := evg2000
   CFE_BOARD_ID := 96369PVG
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
