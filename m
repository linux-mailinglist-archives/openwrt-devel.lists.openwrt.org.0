Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABCBC944A
	for <lists+openwrt-devel@lfdr.de>; Thu,  3 Oct 2019 00:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IWRWkz8fmiRVpqnwVIZai2wtixZYMBljc5n0tGGogdQ=; b=o1cK0s2cydSeu/
	0jDjctRTDXBhD81RLpj3RUA7V5/gSv48JOY20d0zTqxhv1tu3HLYcnPX0KsRtP5rqKU/NowKh4hmI
	5v+aFdrrSP6AkNLi0dnLmLCW5jFQtoZnCrHkEmJdkU06UguYpLQqjADmTTkoZZMFpb2Wowq+OUnel
	teHq35eWeGbJ9PJKsYTqa0GIfiD7RI3lXrpSF6DMSVTMRmU3NYglmbRqnvHKLPNlgbQsGX6aMJTbD
	/7LUQBo48s9Vj9dhKBXcAlj28yN26b8Jy2Y1Gs14A/cXuVV36Hoz21U27bRbvmbq3A55CTrmC09Jh
	L977mYWUBathiHR/b/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFn37-00077S-Gd; Wed, 02 Oct 2019 22:24:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFn2z-00076y-HZ
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 22:24:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id v27so444457pgk.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 02 Oct 2019 15:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=aRH9vA8UQWhpyxkIHKdWyDddh9UaRH3gf70vqjVdlso=;
 b=Z8I+D+mIA9tQCHVl8MqHPT/Qg7BwxaqEfFbtmie7xVjcQLMB5QeAUkNdlancRwZnjM
 gCpJMtnRZAswRfZRz5Fc8wpu/mzFHuKWJyf5XY0tKa31WS9zF1Cj/OQx0cyW8LxKi5GU
 d4eC0AjctwYl5XjDV4jr5wPcEuWt4It9eFG+bYQbYABeVBGBg9LiQCdhLqIscYRiieps
 6vyj/NanjrLbijW9lZntrv7/BeAXoF1dXl+8WyCFEzNPqxrpAtf8ufOJCJoZexwFpZSZ
 Z7K2gTFCR7EKaboYy6+Q1gFchfiD6N/U3+RKW7r3XIq86RPTmAVmhYpfL08OnltCiNYV
 lK4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aRH9vA8UQWhpyxkIHKdWyDddh9UaRH3gf70vqjVdlso=;
 b=Am2CUbpPgSCm4s9HrXafrSUsSGtmYCK52pM7bFi0LaXSYNL9zolYWHZhvD38BqdPnU
 ynxLVWeMcn+AlKodGxz/Qz9o4ziJtnv7qc27wYIfrruQUONJijqpAvkQ8c27gPdMud5U
 QjiUISPOSdH+XCNQxUna7pdWkF1QYxDsJB1Cm1hpH9xTZSEFz8FbrsuVXr7buv1vOuq0
 qgui5lzr3/T4llGAiVup85XFNW6wHMOzg6HD7i8wbsMCsLxACWVVKuTHqydghzQFGHI9
 ygZdkDOFowC4dwuBsQbfTOjHv+QwuzM7DR9zbAmUUXg8W9VLNbZDnua3CS6aT6CnHU9E
 eWTg==
X-Gm-Message-State: APjAAAU/yBdujpobmnxIuu5586+G26fdydc5KsnMbYGUpDJsVqcNb27X
 RJ/u94uDM82yF4AXL12I0SKhFJggyBs=
X-Google-Smtp-Source: APXvYqw90G0uUI2qs+1OqsJXoyRPWiaav3KZcP5IjhYBZqczhmg4wdh+c1b7tRxUIEV5s6BLRLIEgQ==
X-Received: by 2002:a17:90a:cb18:: with SMTP id
 z24mr6736101pjt.108.1570055076542; 
 Wed, 02 Oct 2019 15:24:36 -0700 (PDT)
Received: from tharvey.pdc.gateworks.com
 (68-189-91-139.static.snlo.ca.charter.com. [68.189.91.139])
 by smtp.gmail.com with ESMTPSA id 7sm340166pgj.35.2019.10.02.15.24.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 02 Oct 2019 15:24:35 -0700 (PDT)
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  2 Oct 2019 15:24:29 -0700
Message-Id: <1570055069-11863-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_152437_581004_018C9FCE 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] uboot-envtools: remove erasesize from MMC
 config
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Erasesize doesn't belong in the u-boot env config for block devices as it is
known to be 512 byte aligned.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 package/boot/uboot-envtools/files/imx6 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/boot/uboot-envtools/files/imx6 b/package/boot/uboot-envtools/files/imx6
index fb05f13..330efb2 100644
--- a/package/boot/uboot-envtools/files/imx6
+++ b/package/boot/uboot-envtools/files/imx6
@@ -24,8 +24,8 @@ apalis*)
 		ubootenv_add_uci_config /dev/mtd1 0x80000 0x20000 0x40000
 	else
 		# board boots from microSD
-		ubootenv_add_uci_config /dev/mmcblk0 0xb1400 0x20000 0x20000
-		ubootenv_add_uci_config /dev/mmcblk0 0xd1400 0x20000 0x20000
+		ubootenv_add_uci_config /dev/mmcblk0 0xb1400 0x20000
+		ubootenv_add_uci_config /dev/mmcblk0 0xd1400 0x20000
 	fi
 	;;
 wandboard)
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
