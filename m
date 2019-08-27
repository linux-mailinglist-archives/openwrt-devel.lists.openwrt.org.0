Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC95D9F663
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 00:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p9tsuXpWacA2ycbYpH8d1QizeGlMPhomAe0k/qmdgL4=; b=l43aVEqBdpdMyi
	PwJ71IK0d+BOM1Q2By501k1n9fto8g3ZYHAjhOBxyqVZCvNt99QeyYyRmqAeqNu/6iTpX0GQfyb3q
	wzrZ3Yr/MBVW8Ja0KbqGtSi0beGcJ/SJz3e+a/uMxn/NFpOfoK5EmmolbW+ZX0FWwTHZY77WD4kkW
	zEK6f6FL+COtKAQ6hg3IVslI3XHhohCapgZ03x7DhZyPoGI6vsWbnE+8pY+uRQBbkIXy7g78St5QR
	nnRB7wB0X1XMFMjLHkQSg8tWVQz7MQJrb60ozQXg9moY9Q4pfHM1Uc2SzrL1Z8plmaPyEYw8342vV
	jce4jh5IyEhKyYfkMvtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kHQ-0001wv-Iu; Tue, 27 Aug 2019 22:49:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kHH-0001wG-Mj
 for openwrt-devel@lists.openwrt.org; Tue, 27 Aug 2019 22:49:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so255802plr.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 27 Aug 2019 15:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=ZIfUumzqdF2BI8SQOLiQaiSuFaagnI1uaMUzhLH64V0=;
 b=qy2qh1UQ9P4qkd+vvf6kZkurOH30nVJbSqszVTmiScbrO3omQ4xg8jj9qf8zJdGbEo
 UZLRopGgwEXZ0U/n0WzhfaIuW/rlAGO8TzuTk3AdAAAKlxOvsQ8rj88IJejZWaiiQSOH
 c8ihLjdrPb2OfJCd6k7It1KcmUBJMQXfn9511oxQgSo/uLzSTTPYb89RRW+4zbBbHWZ4
 vw+IE6dbC9o/OcHw6iLnSp69om00l3jqPlX9AgGswznspeHufikUKdkCIYYvRhJ5aMwo
 sfUzK5QniXofsprkJdNWt2UAulkVKum93brn3lmy385aN/NSVupUdudAvcfuEzNaN0Ff
 GtdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=ZIfUumzqdF2BI8SQOLiQaiSuFaagnI1uaMUzhLH64V0=;
 b=br1YgtxcLPPbMAzZYfOGPL4/KrVD+3OJOrWTkC0P1xktP9vi1npzlVzhmXDxKsbQaG
 XT/e1LMrgfJWx4i+apwz061oOdgRODjyzPoReBe2hxgEXbLnUBGZVaE04HCpySzM/ugZ
 Gu2Fuzjl+JjRWz+aGqUDzhU1THDur/bQr9PzRujVerl++X0HqlODBE/VNF/dp3VT2G//
 oaRwuds/rTc1KdWOrSsj2A15Rg595bfJW3Z1vKxLAXB/oBDRHAXdQ6inMGz+jiJ/Ih8V
 Hv8oqEwKr7vkjAysLYGFgL5vR+aZIcz/MNHVRyLAMv8Wv7aoDUdpCWSnwsDs25ffPHoT
 L9OA==
X-Gm-Message-State: APjAAAX4OVYm+lv8uYxxfhJ/xF8Yik56ySJQrchZ/n8PAC54ThaCxa6S
 DWvWdcN6xm9/tkAYTdBCZTfxa8PxrM8=
X-Google-Smtp-Source: APXvYqycjXzOt3TQs2KyD942VWFowFU7qArvSZ7J1kXMZL+0CoxfjPtaj0pbyHCFBshpx7UVz2Pa5Q==
X-Received: by 2002:a17:902:6a8c:: with SMTP id
 n12mr1246784plk.159.1566946164252; 
 Tue, 27 Aug 2019 15:49:24 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id d2sm218733pjg.19.2019.08.27.15.49.23
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:49:23 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 27 Aug 2019 15:49:21 -0700
Message-Id: <20190827224922.31226-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_154927_768956_E3D5A748 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ncurses: Do not pass both -fPIC and
 -fpic
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

The configure scripts matches Linux with -fPIC, which is not exactly what
is desired. Since we are already passing $(FPIC), added a CONFIGURE_VAR to
avoid passing -fPIC.

Removed PKG_BUILD_DIR as it is already the default value.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/ncurses/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/package/libs/ncurses/Makefile b/package/libs/ncurses/Makefile
index 8c961f30b2..e22eb2b893 100644
--- a/package/libs/ncurses/Makefile
+++ b/package/libs/ncurses/Makefile
@@ -9,9 +9,8 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ncurses
 PKG_VERSION:=6.1
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@GNU/$(PKG_NAME)
 PKG_HASH:=aa057eeeb4a14d470101eff4597d5833dcef5965331be3528c08d99cebaa0d17
@@ -76,6 +75,9 @@ CONFIGURE_ARGS += \
 	--enable-widec \
 	--with-build-cppflags=-D_GNU_SOURCE
 
+CONFIGURE_VARS += \
+	cf_try_fPIC=no
+
 HOST_CFLAGS += $(HOST_FPIC)
 
 HOST_CONFIGURE_ARGS += \
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
