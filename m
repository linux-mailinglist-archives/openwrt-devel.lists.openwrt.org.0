Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE954372B
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 16:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bZsf0LcH4VJdKRSqHExJaZZO9ufNt1irCSusl1q/0mA=; b=obae1TOvVyJwda
	2WxE7xiAdnpvwxnovzTVvZrFyz7LE4v7nFIEbVnLvIukZDfSi/tzAXksyrLRTZIzKO+LWA1N6GEBS
	EQOytST4eQdD5ntzEauBdM7V9tB6Bg/xuYVOojC+i5JVOtV5Cto9TYFMhf+vgqT9Q2hGNwnksakEQ
	nYgIvai8bL24YUrE2kM4Pe9/AVDN6S3zxvYs9JGlzdB4Ta6auJT7zh6bm6Yj2lqlDsqieIrmNWkRc
	ecXbHYYfIkhym2O82wj/WCokFTvyfiLzxf7u1/xGPjparXZ+2MVWG7uKuUPpo6H27bJOgLtaIKSVF
	QEcMRO1L+ltd9EwBJMkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQbK-0000rg-ED; Thu, 13 Jun 2019 14:21:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQbB-0000qx-7x
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 14:21:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id b11so15235010lfa.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Jun 2019 07:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6qhDo+OE3BfVlDTdWJz9Z/zMm64JRnWOiZnbeKda1G4=;
 b=GjNJfkljpWFj3fLT+ewg1QB550e1eYPjxxv3ye6J0Z2NuMIsy6Rvgrw749i5eOUoGM
 p090TTbqGi4sJExRjueiNz53MtdS9R9N1CshgYBx6NKDHMSH7SIqLt87gxvzWMmcpZfa
 3ECYPFYM0bIrab4uyzDgVAZC11ttf61rIDj5ULxpX6rQWBCNAJ8k/ENjVddVnu2QLpj5
 O7+jAvSAY7YBmRSrXagGwyZ+KvV2lVwDqz+GqATIapquuBELVXJ7HksAtuoQH+BMUDRs
 lI1RFj8KHHjmJVc5dcWhVCRpYGNibR7ZnKOVCpx1YNav54jQDhAEeE/PERb4nYbixFXp
 Y9UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6qhDo+OE3BfVlDTdWJz9Z/zMm64JRnWOiZnbeKda1G4=;
 b=eWyuic7sFqLEv6AOhKJeG90IoNHi1y9i1Ekl7UTvWK1kijQgvXFnOx/HNjfoRIz+gR
 NFsU0mg81Ux43BiwShao7oRJrX22yUYq3iARrY3z10EetMGe7cfysprZmvhaahhTwq6K
 zYQSygNWKv/6GAMoQoYsgpWa+LsnT51wxkB/AGVzptH4d5ZpfwgADhBV38zaotZf8AkE
 gUolpp+vP5wZ21q8xEijq6+9mAB1/T0tTc5LiKEPGxMxQkW4CNpjQt4ShiCTN011nA4X
 +mc/Vk0jVEQndzVSkjlvwAwLn2mrii+OsUSOC3c+UvS59B8MvlAQ/xcCK/dmqABpgP5L
 oTcg==
X-Gm-Message-State: APjAAAWYMcN0ccPeztjLDSdg1IeftbdJYOqAeuCZVHdQrICOXy8Kd8I7
 KK8DXWhkUy7Yl6n1/A2rHK3yljOX
X-Google-Smtp-Source: APXvYqzci0Mh83pjU9gmXqVdLx2XlvpawSu5ny93KTq1v4ELzXc5D6VjpaQdLpGURT+S+FqUXh/tIw==
X-Received: by 2002:ac2:42ca:: with SMTP id n10mr5414589lfl.121.1560435662485; 
 Thu, 13 Jun 2019 07:21:02 -0700 (PDT)
Received: from localhost.localdomain ([91.238.216.6])
 by smtp.gmail.com with ESMTPSA id q17sm618051lfn.71.2019.06.13.07.21.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 07:21:01 -0700 (PDT)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 13 Jun 2019 16:20:36 +0200
Message-Id: <20190613142037.29629-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_072105_310244_86E55195 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (paweldembicki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] iwinfo: add device id for Atheros AR9390
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
Cc: Pawel Dembicki <paweldembicki@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
 hardware.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/hardware.txt b/hardware.txt
index 87c4781..983890d 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -146,6 +146,7 @@
 0x168c 0x002b 0x168c 0xa091    0      0  "Atheros"  "AR9285"
 0x168c 0x002d 0x168c 0x209a    0      0  "Atheros"  "AR9287"
 0x168c 0x002e 0x0777 0xe0a2    8      0  "Ubiquiti" "NanoStation Loco M2 (XM)" /* wrong offset! */
+0x168c 0x0030 0x168c 0x3114    0      0  "Atheros"  "AR9390"
 0x168c 0x0033 0x168c 0xa120    0      0  "Atheros"  "AR9580"
 0x168c 0x0033 0x168c 0xa136    0      0  "Atheros"  "AR9580"
 0x168c 0x0033 0x19b6 0xd014    0      0  "MikroTik" "R11e-5HnD"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
