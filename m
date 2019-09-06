Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1133AAF94
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 02:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KRQ6xTr7tj+ui2i3p15r4MtzuoIVsmhBaeuEi6BrZY8=; b=YAjkRnmHNXdhUpcVOvnhuBuHJj
	rBmPVkNUl4Q/15FFVHFtWZgHcPMjc0CcBhzwFcqFgwx5jSXz5sbMPi2q18QZUmnOnkTA7KaI3DIMt
	++Qe+4sb9PWapN22+eZwkir3zbim6QuBI85IOcv9/j8swKIBKs6FTKwk6byqmys5CqFOdTye6V4BF
	R9Zo6vdseCalYgtUnB/Z+VDL/dCXEuccnkjEVkw/uevwDkXGowQgNCVM+uTt72u+4Nprk7MdSZA7p
	WKxG/LdpH2NydNego5zvnhXCUpRsLvpOH2At4L7l+6PTi2n9sVSuIX11+YyuZ1VfcuWMVt+StgJ/d
	oRKqwrTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i61ne-00069r-6N; Fri, 06 Sep 2019 00:08:26 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i61nN-0005z0-Fo
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 00:08:11 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0DFC00622218086D3BFC63.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0d:fc00:6222:1808:6d3b:fc63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id E979B229B9
 for <openwrt-devel@lists.openwrt.org>; Fri,  6 Sep 2019 02:08:02 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 02:07:58 +0200
Message-Id: <20190906000758.30056-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906000758.30056-1-mail@david-bauer.net>
References: <20190906000758.30056-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_170809_670993_E76F132E 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] iwinfo: add device id for Qualcomm
 Atheros QCA9886
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

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 hardware.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/hardware.txt b/hardware.txt
index cf4d4c1..e85db06 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -156,6 +156,7 @@
 0x168c 0x003c 0x19b6 0xd03c    0      0  "Mikrotik" "R11e-5HacT"
 0x168c 0x0046 0x168c 0xcafe    0      0  "Qualcomm Atheros" "QCA9984"
 0x168c 0x0050 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9887"
+0x168c 0x0056 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9886"
 0x1814 0x3050 0x1814 0x0005    0      0  "Ralink"   "Rt3050"
 0x1814 0x3051 0x1814 0x0007    0      0  "Ralink"   "Rt3051"
 0x1814 0x3052 0x1814 0x0008    0      0  "Ralink"   "Rt3052"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
