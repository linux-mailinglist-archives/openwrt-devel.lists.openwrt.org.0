Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B935131715
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 18:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EuGZpfFawkZyfXxeq1K+GGqMiC1B8WbZJ3F1hJUNGtk=; b=HJ4Hq9k0Xfl8WY
	4Gk57K5QHIrTjEO15Yo6pWQcQe4naDZiD4h8gflRw4v5pU5xvzBk7UtOJgpj+ZKKioMi8L6GJsWEo
	y5hBG9/pZXRRnkzK1XbZe0sTyduIeWDn2PTiHZ2nxeAmEs3yT/Qd5MfSK1+hQkQB0kdPq7rqk+Raz
	2QY1ueHYjLMWU8DNxKTzVye0QyE490T0TOKubpqA00aaenPwbw6tkVSSkUbVlX/k98exotORSm15o
	DEp3HnutIxnNaPHCyfMp8Huw8F0WcQrsjw32Xy4f43gOKWq8R9JF/3Sl1DiscJTv4AAVot+78T7oy
	8Bu/4HKFRIuXfoOdKkWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWWw-0007Dq-UG; Mon, 06 Jan 2020 17:51:06 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWWp-0007DM-NO
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 17:51:00 +0000
Received: by mail-wr1-x430.google.com with SMTP id y11so50633986wrt.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 09:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l7wW2YR2xJLusyBJi//WMjhGQ0d1J77HNypFiIB2RHU=;
 b=UOOlqcVStaiwsOufsNv4M++o9iKo1F261QJ8ZFuXirucXMLwmjU5sWEk0X//OrtGTq
 CYF86tR2Eo0Gqym6dyX1hFqF60PLGVhKxRMyIkZBbaBNh/RItGIYixq2WhXPD24a/1Cx
 VktRU/zXcfdxZ7/viLdnkQTaGhAkbSmc3qqJi7+xGR4RSwLKxAfBjH8q0x+rffskkg5T
 ZqkztEGoyYaaUpZpO5xq50NxYPT6vfhX6U98h9JczZE5xCdzWE5zhbIdSFpM5gt+IHYf
 mrHcCBXCNY7Q7re2ZVFZ6jqxPcbreHO07OD2xDPIhLgnRR7bYS4xlO3AsVed4Wwj7tDJ
 l3Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l7wW2YR2xJLusyBJi//WMjhGQ0d1J77HNypFiIB2RHU=;
 b=rbzUTPiWV1RCud6FUB7o/kUROvq5192z//Y4UCjgAyaf4iV4wHkq/JdJiclzSRYR+S
 L/nM/gCiGhqCPd0eUD69h9hqNKL4vFlBipjkxomRi2KNDwP8Z/sFoFYgsYYDiz1oLtXv
 ws1SbC0UnE98HY8OGJ9xs+zZaPGXUoujBvBes5HzAMS/wK8axiX80XgmNvGu5HrAEcli
 WgV+B40ENNDRif1tscC6mG5nW9uPExKE1IFST01mcmIOzdi23Xwvq0vXccixpCyQNfia
 c7KzqjF3MYZWjUxwXC62g39sOBog190zkgKzOh0FsbRpRGqtosXv/Yq6woN639dGDFkC
 2ktQ==
X-Gm-Message-State: APjAAAU67Iis2dQzBD1XS/PomgwOE4kEEyMyycwNFbRPOosicQT00CzO
 sXXgmI1mddyFs7H9yH6aBykVQ0Qi
X-Google-Smtp-Source: APXvYqzdPW7VHhWrPTFg8TudwhxicbJiZOxVlyj8BiT+aQbGZo8VgkQetL0R23U4VPgyDoqWbjO+4g==
X-Received: by 2002:a5d:43c7:: with SMTP id v7mr98161247wrr.32.1578333057409; 
 Mon, 06 Jan 2020 09:50:57 -0800 (PST)
Received: from localhost.localdomain (37-48-59-101.nat.epc.tmcz.cz.
 [37.48.59.101])
 by smtp.gmail.com with ESMTPSA id p5sm74268224wrt.79.2020.01.06.09.50.56
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 09:50:56 -0800 (PST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Jan 2020 18:50:39 +0100
Message-Id: <20200106175038.22485-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_095059_786183_6F8D98BB 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] [18.06] tools/expat: Update to version 2.2.9
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

Fixes two CVEs:
- CVE-2019-15903 (Fix heap overflow triggered by XML_GetCurrentLineNumber)
- CVE-2018-20843 (Fix extraction of namespace prefixes from XML names)

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 tools/expat/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/expat/Makefile b/tools/expat/Makefile
index 54527a7d0a..de7f2a0deb 100644
--- a/tools/expat/Makefile
+++ b/tools/expat/Makefile
@@ -9,10 +9,10 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=expat
 PKG_CPE_ID:=cpe:/a:libexpat:expat
-PKG_VERSION:=2.2.5
+PKG_VERSION:=2.2.9
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
-PKG_HASH:=d9dc32efba7e74f788fcc4f212a43216fc37cf5f23f4c2339664d473353aedf6
+PKG_HASH:=f1063084dc4302a427dabcca499c8312b3a32a29b7d2506653ecc8f950a9a237
 PKG_SOURCE_URL:=@SF/expat
 
 HOST_BUILD_PARALLEL:=1
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
