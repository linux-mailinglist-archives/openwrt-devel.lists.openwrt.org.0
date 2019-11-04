Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11003EF141
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 00:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFHv8yHtpFAIrZFlrj0RsdNwA1xP2a1yhFu/kG5Sjw4=; b=kXVHH9lZ3Gfj5/
	9Vs2ZHHqgRt/Z0lG2jvgSII8oCzydgSNBunvfmsg6MFWptZNprdOnw/sa5qWGA4MpODce045qHz9P
	Tipo+L9sLStk/7KYXgj0PrO0EHojplkBLmRLzi5Qn3XXlG+TXPIVjN1IW6g8cJzVc4hW4GNFDdRFN
	qhaf9dL3VHMxuGfm3V/6GvHMRWrX/CmpjM9UjnV/SkfUntZ3d7VDIP6f3nb64Geg2HZG4UQdhu5RN
	30xqpgsNzsGvp4WKEsKbiulZJTtZb5kHSHQJB5nZbOViPOJkqAeQLHLAhtOdRF1v16F6+1hASIsZY
	hDS2YoFic7n/SfYVDiYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlxQ-0006hH-7c; Mon, 04 Nov 2019 23:40:24 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlwv-0005IC-Fk
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 23:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572910790;
 s=strato-dkim-0002; d=heimpold.de;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=qbYo4v9VJkmqyhpS+Yf1MOtyf48/GeDOvMX5yhnf2cA=;
 b=dZGI7NUSy8Ah8STrGjUD1UMYvtXZ9fu0NSq1P6SE8+MJXLqVP8FPgAjgZ4xrfOpG8V
 S1GJKFnrOUoHNTDIMZR0IYYf7yTG5Qnjs4UUQhD6EYREICJK6ewmNbVV+Hsrc6/1Rj9V
 62fbMx5Kis34pfM/lEIbq7Ti/dBG00xJtjPQ5dccuHF3tTqjokkvOW7M9eW1STqmzar9
 sPfAWHl8ApS+zgteXZs1tETFATymlUjYJES0lQMbnCrDXfCh8pxVE5z59rdY4ti72TMC
 fDXehKwAPyjriWhNH4JwQ20JkOD/KDFWOWpft44S9PNHIN+No8y6P1fTqOrwS2//MyYV
 9ydA==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGQORRBv+ASfYPl1MuXOoWjOOx85b6nmekuMQXDvBRi0QaGHEWxMw=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id c008fcvA4NdoYto
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 5 Nov 2019 00:39:50 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 6E147152654;
 Tue,  5 Nov 2019 00:39:49 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 00:39:40 +0100
Message-Id: <20191104233942.23783-2-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104233942.23783-1-mhei@heimpold.de>
References: <20191104233942.23783-1-mhei@heimpold.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_153954_127729_43EB205B 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/3] procd: start additional consoles during
 hotplugging
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
Cc: Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Now that 'start-console' procd command has reached the main repo,
we can add a rule to start consoles on serial devices which are
created when USB gadget driver reports creation with hotplugging.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 package/system/procd/Makefile           | 2 +-
 package/system/procd/files/hotplug.json | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/package/system/procd/Makefile b/package/system/procd/Makefile
index 8090b87dd5..c4b86ba746 100644
--- a/package/system/procd/Makefile
+++ b/package/system/procd/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=procd
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/procd.git
diff --git a/package/system/procd/files/hotplug.json b/package/system/procd/files/hotplug.json
index f676bac79e..7e0f129d35 100644
--- a/package/system/procd/files/hotplug.json
+++ b/package/system/procd/files/hotplug.json
@@ -37,6 +37,10 @@
 					[ "load-firmware", "/lib/firmware" ],
 					[ "return" ]
 				]
+			],
+			[ "if",
+				[ "regex", "DEVNAME", "^ttyGS" ],
+				[ "start-console", "%DEVNAME%" ]
 			]
 		],
 		"remove" : [
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
