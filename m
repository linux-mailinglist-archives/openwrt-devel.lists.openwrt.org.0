Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0A44DA33
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 21:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R+VvRtKlM0psGV9zb03A2Du0uqvVmKAr13lGVEPk1Q8=; b=fMO8JsMgKB+BnF
	RalXT8LtDGALkDPTRFkU6xADjnZRipP8bfMEuy5UkawNSp0HIXzDcRXTUhoT47qaCYj4HPJ2Hm7oW
	nMIVcucdZyRcozZemxG/753qZ+7h1Czw4DTors1KfJBQkJBMcOKSd5Dz+V4qPwTr8J5DfXB95XpdR
	QCaZg0nYCE+SJOytGHBwsLV3te3tLquHA/KJU0FAJ2hH8zDriH8q5GFBADXPLkpCG2TE0U8wgYa8X
	FafRs536+bPwfq/x6UgmZ8p4BSjVLADDTKVxngi9Tfucry4oAyhj1nn9yzrIb1y4Jm9eg4tt/Vv5p
	Gu3fRM3O812gZi/G006A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2oA-00079p-AY; Thu, 20 Jun 2019 19:33:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2nz-00079D-EE
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 19:33:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so1798606plo.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 12:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=4pFazWhUeEiOsiXEATEe6SH64gb9BKBI4XfsToRJ4Fc=;
 b=O8Nnt4CFZ0NBfxJbc+0k3AVtTKvnSBF1tvmjAjB9rfY0SrxbEUANcOYo3C8urg1nI1
 vvpIZ0Ki9gWe78zR8IO7frZYBX2lZUlK1EZ9mS9aXpYW5KL+N8S1X2Tz8XZy9zJhh24V
 MuiFc2ug6S599YLYI11EQjSeP8m8pN+qVqWpXFVhm8eDnLEyRHVi1eEjQOKNk0M7TbQb
 rkA/0bR4FEzwZHGjR3FgyDRjvJkD1XXP0TX6KKcmzSfWUOw15OT5zeUxCfKp5s1tdbsr
 sZwTWH2bbcbbSpWkh3YrAGpzycSXbY7XWPuo1LbNWh1vvZ674Gk39sXcbzcGrjafJinM
 EpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=4pFazWhUeEiOsiXEATEe6SH64gb9BKBI4XfsToRJ4Fc=;
 b=qmGoBDaycq373K0iNWCbzjFYOKkIYhe6T6sA2um5hbTuXEqeL/4OklIyd9JjmEMqtQ
 rGe/yas+2jsV+BXVQr7GAvQyYj/foiEbCbxJ0Rai2llDgwo8Z7PJJe4EVcktIRdIzxmr
 mALUj/zOjJQUPHrYM3K2ScRQ99Qbgpfu9qJyHDDS3eCxWK5GrSMnVeGgmfooQNt0ktwa
 b1RuuwzSW35jfwOHR0TTtAF9pcA0rLB/YGG/uuD1v1YJRCmde6GNBVY8eeGss8j89lLw
 zJl2xlrc/ERjTunhI3BCbts82ghQHLfLrfbSvO91++feyJF/+tbrruAr1J2v/4t3WY83
 4rwg==
X-Gm-Message-State: APjAAAXbrfd6K7DWr8eXjm0hN0PxSIznJj8riXJYHLBAWA9pueJ6WSRJ
 b3W/bJXJhK/mMN1otD3VOkEYE8Xn
X-Google-Smtp-Source: APXvYqyTrHry9jQ4CDppjg3C9EogkEh0oUpFiO+MYLQV8JnyCYjGxiEJVxzBXFNQbHpArHlolimqvQ==
X-Received: by 2002:a17:902:b594:: with SMTP id
 a20mr48340608pls.259.1561059185877; 
 Thu, 20 Jun 2019 12:33:05 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id u20sm252123pfm.145.2019.06.20.12.33.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 12:33:05 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Jun 2019 12:33:04 -0700
Message-Id: <20190620193304.30303-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_123307_509926_739D32CB 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] toolchain: Don't force GCC8 on ARC
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This prevents overriding it to use GCC9.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 toolchain/gcc/Config.version | 1 -
 1 file changed, 1 deletion(-)

diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index ef9bbb82e2..e635244827 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -4,7 +4,6 @@ config GCC_VERSION_5
 
 config GCC_VERSION_8
 	default y if GCC_USE_VERSION_8
-	default y if arc
 	bool
 
 config GCC_VERSION_9
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
