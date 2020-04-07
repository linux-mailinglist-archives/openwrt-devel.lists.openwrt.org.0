Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F37B1A04C6
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 04:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QNn8MeHTg7mjJF+ak54i5pjSyf6QAoasdvr8UMfP9oQ=; b=Cyl0xR9QvW6tvbpkGbbFoDI/8m
	rDtbqaIqgOdvEIidN4QSHH8sFUnRe3+ntB3MgJLuh1v8ptjGoJYGpPMa5EgSNi6EvK6kImeRILScR
	vEe1orSZTU3DEB9FkYYRe3rv4guaEcK6uaLmTZV0HBER8zanNVVxpUO/dS+NDJ6IFh8Bv/H492vVN
	1d8kwiYYKYFbH5kGUP8CBWpV2KGu5cfLdbwUpSl7XkWw9haEOUs78VrkMjB2O3yNkjELIpepYVooz
	bBWuJVKXmbzZVcYtsKfQy5mQNlYxKwmE76MsomioR95FsQTJlDA6MXLisN/gx00BEBrDkD23ojTN3
	GAQ6lBsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLdmm-0004zZ-BP; Tue, 07 Apr 2020 02:16:20 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLdmV-0004sz-Qb
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 02:16:05 +0000
Received: by mail-pj1-x1044.google.com with SMTP id cp9so652467pjb.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 19:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=IPfK3TS4V80U8AfAB378r2rI6KW2OFvnRI+I7dpyAIs=;
 b=qjq7rMCeRQNb8Ycuaz5bxB1eLBGCmeqpfuyfNE/2piF53k69cPzEi8OpTGqWhPOD+4
 eK9DlSyilTfrkfeOQq/iEyQb2tXCMsfKllqK0Dt0Fkfcw2isbSrWPegCC9LEnLjpa2sz
 k8ZSSU6Opo8/oSoj4aplwkMONpOQMkb58T+eKpLL9kISf9INJtyduWoddnqIscm/sfpR
 DG5+rMUsNYIOpRM0pNWeOJ/PEnv4kmBNcNgZi5NHw9NIHk6fecMt27Oieo6yxXEvLZ2U
 1V7FZAiWsQZil2i5QS0nk25LWVuEIIcyIwXSFCdWVe+CfG2v7/fB0XJIL80TIKOOVdTs
 dyMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IPfK3TS4V80U8AfAB378r2rI6KW2OFvnRI+I7dpyAIs=;
 b=P8uNAFPJ38k89IukaatJC+66eIYMKLa0pPM1PZiE6OtVtG40DSodLml3h8E/7zTI0D
 82cVEvFAfGfdzWjl1sagTq0onga6WYTOqYcX6RLKKVnHqxx1PJuZoyZcXmhYzqzQgPqb
 pY8aD2rOxpGUFdakwulbqqfppUAeU/lI2mhbk/vwlfsOx5eahLv1V7zWl/3omqZrLT+q
 SLXSLGV0JTlX/vpsQ9qw4xo2+REujGrlklps8vfZvfm7yDslK9Lran9AJF/JBe/OR7Rs
 qm5TAnti0t9E8tO91ZS6Pkk1QMW59ENxbsnmURg3n/KEoco2EKTPQPM5ZtuRczs+YKWe
 v+yA==
X-Gm-Message-State: AGi0PuY4uhPROVrOdErLVnn6iU93wncflJqlVOovbfyCupIHq7BcJs+R
 fNNdcClSMJpxPwN7D4aFfExGBsvD
X-Google-Smtp-Source: APiQypJ/r/Ke+G+kxXzvIDgr/wSJWx/6tr0rZV02O1RXyZVNcbFvwVRJfjeLwCZ8U39B0raO416RaQ==
X-Received: by 2002:a17:90a:b014:: with SMTP id
 x20mr2588911pjq.139.1586225762831; 
 Mon, 06 Apr 2020 19:16:02 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id u21sm149066pjy.8.2020.04.06.19.16.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 19:16:02 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 19:15:59 -0700
Message-Id: <20200407021559.845558-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407021559.845558-1-rosenp@gmail.com>
References: <20200407021559.845558-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_191603_856112_0A1FE4E8 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] iproute2: add kmod-netlink-diag for ss
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

Allows proper usage of the ss tool. Otherwise, several errors and bad
data gets thrown:

Cannot open netlink socket: Protocol not supported
Cannot open netlink socket: Protocol not supported
Cannot open netlink socket: Protocol not supported
Cannot open netlink socket: Protocol not supported
Cannot open netlink socket: Protocol not supported
Cannot open netlink socket: Protocol not supported
Cannot open netlink socket: Protocol not supported

Originally reported here: https://github.com/openwrt/packages/issues/8232

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/utils/iproute2/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
index cff582283c..aa87a7af05 100644
--- a/package/network/utils/iproute2/Makefile
+++ b/package/network/utils/iproute2/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=iproute2
 PKG_VERSION:=5.5.0
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/linux/utils/net/iproute2
@@ -73,7 +73,7 @@ endef
 define Package/ss
 $(call Package/iproute2/Default)
   TITLE:=Socket statistics utility
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +kmod-netlink-diag
 endef
 
 define Package/nstat
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
