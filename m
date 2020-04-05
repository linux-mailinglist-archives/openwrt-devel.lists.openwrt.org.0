Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA9B19E9EB
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 10:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XIaau75jQwlGimVpdPTs1NAwjeGQUp8+cpKaSu3JLSY=; b=URH6IhD36Qj0Nw
	bjEtdPNMXt80SVXg5w2fwegs4SrHIXpdvzT3sKz3IBmsd5yfj6aoGpHsv3ACSK9sDEKv/zSReMjy8
	cW+Cd/PPxDDu1fA5exwIN9lDM45Ve7ZflnvEWD7v47YShs1n/Pl4F3Dk7N7OkmNO/qk/qRdd20mDE
	L4QIMpegU7fd5TrarYVcg4smhpAyiK3aotCSF4NAi+krCIheQFS58j03F0BTXEOfM0t7gWoK1CE7D
	MlhQIbAXDTDs1OdU6YwSYaKuAyo41Gt55t4et0GbXWCi9tammtA1CJ2rcELAz7rFHvFKCVrnIZAae
	+cOXi3YMumYbCK+WoDKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL0eb-0000Tw-HD; Sun, 05 Apr 2020 08:29:17 +0000
Received: from mail1.systemli.org ([2c0f:f930:0:5::214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL0eU-0000T5-5d
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 08:29:11 +0000
From: vincent@systemli.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1586075346;
 bh=AsYoBpZYmQlaUXB4ZFtdhcNv5Mz8zRC0vMWUlk5ytI4=;
 h=From:To:Cc:Subject:Date:From;
 b=UQk3Y6/6kXgOExhPKYCQp/zxTBmggqNbsVb8SP/ztwtmKghmXH6VSk4S5YaqqQBII
 Rpq3Hpv4a6tteDbVZHTPeQmYCiwhhLiFxUo9s+/xjV2BrirH2TRiGPE868mxy4Uwap
 A1jPv8QzzLqwEqiHXjK4lrYYYGDpuxEraghtrw59+3QKnUK1tl1WqFn+9ae48IFdU/
 aQCjGGyOjlgNkIu45CWUSSTVN9+y3EtPgKadIsQKiqsMNDEwBrzZP3EkIySWRWg19t
 BLI1xsvFiySe/xeelmDS0CrFdYnWqy7OiIl26rF4cxNDcN0LKtt4+hZE9HNuWGkMEf
 S9dWCOiUGxtFA==
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 10:31:40 +0200
Message-Id: <20200405083140.121616-1-vincent@systemli.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_012910_361136_486702ED 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] umdns: update to latest version
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
Cc: Nick Hainke <vincent@systemli.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Nick Hainke <vincent@systemli.org>

Includes:
- dns: explicitly endian-convert all fields in header and question
- fix unused error

Signed-off-by: Nick Hainke <vincent@systemli.org>
---
 package/network/services/umdns/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/network/services/umdns/Makefile b/package/network/services/umdns/Makefile
index 7dbbea322a..9cbadeef89 100644
--- a/package/network/services/umdns/Makefile
+++ b/package/network/services/umdns/Makefile
@@ -8,13 +8,13 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=umdns
-PKG_RELEASE:=2
+PKG_RELEASE:=1
 
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/mdnsd.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2018-01-02
-PKG_SOURCE_VERSION:=78974417e182a3de8f78b7d73366ec0c98396b6c
-PKG_MIRROR_HASH:=a60f9eb9428ac3256cd7c3c6d4207c116cedf4d212b82e2f86c1bf7c7898fcbb
+PKG_SOURCE_DATE:=2020-04-05
+PKG_SOURCE_VERSION:=ab7a39a5b5a0ff74601dd4e82145ca554c1e2ac6
+PKG_MIRROR_HASH:=135de61439d823f3631fdcf735bc7a94355ba1d7bb0a2e3a0530a75898e322ef
 
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 PKG_LICENSE:=LGPL-2.1
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
