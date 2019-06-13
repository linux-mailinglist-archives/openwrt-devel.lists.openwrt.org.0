Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925CA4372D
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 16:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSS0cvr8w6n1iy2DihcWdAC/2oKpXGC7vj9qlcBqVTE=; b=LEcjvzVUYJ3UlV
	CCbbl2TJIAoyr/NRTdYnxXJc2PGWdbepW4Msh+kIJ219fIGihli3Ne0EIO5m6hXy7yCtA1pzHXORs
	XNWOG9aG5qdqERjmIgDSXFI3WP0vp/m/vSkckKvxImrDYnTb7N2bF5D9smZJ2pa1Vh5bO0z5g5mQr
	ZdBQrWoUIBLqA8JYIDDLik30uk7iow6Rtvq+UQ5z1yXeDnAFqfHVpI5sorjatusXS0Huc4Vtke9V0
	SjrXSgTgG862XvgosD2u5i+zcNUAzTCDPf3XeoGJumzJJRUuOdlFA4utg0bDynB+c+L/cj/CzX0V/
	nXUcosgxd398eUsucgVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQba-00010u-EJ; Thu, 13 Jun 2019 14:21:30 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQbB-0000qy-GC
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 14:21:06 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so18690867lje.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Jun 2019 07:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SVVV4bJtHfmTnVJ1Qw6pUNtZCBsOMRBjiRxEXnX7MYs=;
 b=RuKSTGvfVL3kHW24w3YKCOIUtJI6YRtPTcIhlHwzRU61Skqy8GEqqoEVaaLbwFIEqI
 gyvbBJvpPn6EJLSO+CHwCV5ECfBH1lH44dLxWPnUKOTHPTwkemhsn4vo78c7+HQI3aGi
 an6HkNSV40kYk1nZdmimNN3GEG/3iUC9bjR0XzVN2jihgeBRlR2Mmk7QvocUdWdnSokL
 xeflkQjHDRJ/z5AhJLsjW/Jd+wLrU7ng2r/yjottcz7pKvQp8HVvL7+dEYY8ERPOYK+u
 dVAHC0UKy4mXwcdt2eiAsI63Rcypwropmg4z7+U3VWm1XW6xODKN2levd55aNbVvjS1W
 CSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SVVV4bJtHfmTnVJ1Qw6pUNtZCBsOMRBjiRxEXnX7MYs=;
 b=Z+6/ggpSPWVe0GhEWuhXrNd/V+b1QqzzUVtykyhqnZBO5l8BJkU4KrnD1aQDnl+P60
 pi+c1X33+pue36Tab4sVL7c+irz/UIOv9gK4v/unaqWP6aaA9pC7KKa3i7Etv4Q2Ls39
 LpvvfWtVPG4cJXhligtPm5X8SZQgVqKf3IKd5mUP6EtxkoW8idMCV4bhpzfJ0OldOjYB
 4h0xVCyMSnUqjzz+SDXJjrfvF6hR5xZUwjQ2V7+ed5eSFtld7Ajly5VMKM4UTQMSVdot
 IWCjLzJO558b3BbFlN4x/Yk8Kzf4tsDG0U/dREAU+Er5qaDHPanTmosTK+cg5YkxJssB
 4ZGg==
X-Gm-Message-State: APjAAAWqrzlHq22ao61WryESc+btoSa15kCSCHj6inbGu5vboTvHgvRr
 d1nRIzAHQQ8Mk5hP11PA4BPDP85G
X-Google-Smtp-Source: APXvYqzGLvMuIOxUA7IuIo/RvXwjkuJ/58ree2l9SZK0sgiZ64ZK8hmjBPJY3oSTxPBqLvfYw/4wrA==
X-Received: by 2002:a2e:9a87:: with SMTP id p7mr22919525lji.133.1560435663439; 
 Thu, 13 Jun 2019 07:21:03 -0700 (PDT)
Received: from localhost.localdomain ([91.238.216.6])
 by smtp.gmail.com with ESMTPSA id q17sm618051lfn.71.2019.06.13.07.21.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 07:21:02 -0700 (PDT)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 13 Jun 2019 16:20:37 +0200
Message-Id: <20190613142037.29629-2-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613142037.29629-1-paweldembicki@gmail.com>
References: <20190613142037.29629-1-paweldembicki@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_072105_537757_81CCB3A6 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 2/2] iwinfo: add device id for MediaTek
 MT7612E
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
index 983890d..8950589 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -168,6 +168,7 @@
 0x11ab 0x2b40 0x11ab 0x0000    0      0  "Marvell"  "88W8964"
 0x14c3 0x7603 0x14c3 0x7603    0      0  "MediaTek" "MT7603E"
 0x14c3 0x7610 0x14c3 0x7610    0      0  "MediaTek" "MT7610E"
+0x14c3 0x7612 0x14c3 0x7612    0      0  "MediaTek" "MT7612E"
 0x14c3 0x7620 0x14c3 0x000c    0      0  "MediaTek" "MT7620"
 0x14c3 0x7628 0x14c3 0x0004    0      0  "MediaTek" "MT76x8"
 0x14c3 0x7650 0x14c3 0x7650    0      0  "MediaTek" "MT7610E"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
