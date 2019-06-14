Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B3A461AC
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 16:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s6YVYI9QR2vGMtmpysJZ20J0vn1NnRz5zkYFO6FiaGM=; b=oX1f5dQhTMeItN
	hBhADs/wDRA8idyM2RdGu8vJgz+lrAcC0TFnLeSMl43UhyJpUS4VqW06E8kSo4HNAzQiOGAQFO3u3
	G2A1ilMDOqpcRQPek+0DOJ62ylFt1w9qupKP3hZoEme1Z+QKbZpWbtYxOfsiGHskfEiB37z1ihknR
	wkBWJYYDHI/cV5I5khGFE3W/YnsscACiNjEaBR3Y4wIVuB9Dw2owzxZ6n8B/Lpg9IuN1NeIoCPZlH
	gvcRRlSNNVnYGwsDmVvRauyHc6BsoYWIsHF0xY8M8O+2PobOkbVjv9tRQE9KqKWuDdJYS7e/7kA9Z
	3rErE72n6pH2S4IJYeug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnZ5-0006PR-8S; Fri, 14 Jun 2019 14:52:27 +0000
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnYy-0006OM-4A
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 14:52:21 +0000
Received: from tack.dhcp.intern.gv (unknown [193.96.224.70])
 (Authenticated sender: albeu)
 by smtp2-g21.free.fr (Postfix) with ESMTPA id 651A62003A4;
 Fri, 14 Jun 2019 16:52:10 +0200 (CEST)
From: Alban Bedel <albeu@free.fr>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Jun 2019 16:51:56 +0200
Message-Id: <20190614145156.14534-1-albeu@free.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_075220_309747_7801F9FF 
X-CRM114-Status: UNSURE (   5.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (albeu[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ubus: Support static builds
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
Cc: Alban Bedel <albeu@free.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Extend the cmake config to build and install static libraries
when -DBUILD_STATIC=ON is used.

Signed-off-by: Alban Bedel <albeu@free.fr>
---
 CMakeLists.txt | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 471b38e..f8ef4aa 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -14,8 +14,8 @@ ADD_DEFINITIONS( -DUBUS_UNIX_SOCKET="${UBUS_UNIX_SOCKET}")
 ADD_DEFINITIONS( -DUBUS_MAX_MSGLEN=${UBUS_MAX_MSGLEN})
 
 IF(BUILD_STATIC)
-  FIND_LIBRARY(ubox_library NAMES ubox.a)
-  FIND_LIBRARY(blob_library NAMES blobmsg_json.a)
+  FIND_LIBRARY(ubox_library NAMES libubox.a)
+  FIND_LIBRARY(blob_library NAMES libblobmsg_json.a)
 ELSE(BUILD_STATIC)
   FIND_LIBRARY(ubox_library NAMES ubox)
   FIND_LIBRARY(blob_library NAMES blobmsg_json)
@@ -24,7 +24,13 @@ ENDIF(BUILD_STATIC)
 FIND_PATH(ubox_include_dir libubox/usock.h)
 INCLUDE_DIRECTORIES(${ubox_include_dir})
 
-ADD_LIBRARY(ubus SHARED libubus.c libubus-io.c libubus-obj.c libubus-sub.c libubus-req.c libubus-acl.c)
+SET(LIB_SOURCES libubus.c libubus-io.c libubus-obj.c libubus-sub.c libubus-req.c libubus-acl.c)
+
+IF(BUILD_STATIC)
+  ADD_LIBRARY(ubus STATIC ${LIB_SOURCES})
+ELSE(BUILD_STATIC)
+  ADD_LIBRARY(ubus SHARED ${LIB_SOURCES})
+ENDIF(BUILD_STATIC)
 TARGET_LINK_LIBRARIES(ubus ${ubox_library})
 
 find_library(json NAMES json-c json)
@@ -40,6 +46,7 @@ ADD_SUBDIRECTORY(lua)
 ADD_SUBDIRECTORY(examples)
 
 INSTALL(TARGETS ubus cli
+	ARCHIVE DESTINATION lib
 	LIBRARY DESTINATION lib
 	RUNTIME DESTINATION bin
 )
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
