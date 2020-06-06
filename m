Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE2E1F042C
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 03:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nh5Q1/1IEwLDPX+/ojNPrmz6SPV7zRcgZcwNanpNFlk=; b=ll4aeMLaYl3XN4
	3nGgBB4nUrjQDLRUMrV+eX/VUbRJzENE5qCTEW9x1IitE9Y+BwSsPW/EkfhMX1E3VxdxGTn5wbiCO
	7ENhCXDUHMb+f4PzcrCqpHw5BSooQMDeP2iF5/QQ4ZAyC5U5z2iC1rzgSleAu7bYa6pepjxOrybnT
	TGp0WlJpKmb9BysEnuJkRtGsOc4yotFxKJdelUazjDIi5l+tOkkv6zBQVIYnvodlOC2XIht2X0lD5
	zaWQunVGtJN/7sXhwgA12Il2nK7t88C65XMPaPqEzmw7Z7k9qRtd+WZjpUJOuLZs8OVuQk8FfxLej
	mWVMOt8lN+iBO7JDmh7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhNpf-0005fx-On; Sat, 06 Jun 2020 01:41:11 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhNpZ-0005ep-5p
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 01:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ziPshth2dFPPyTKe/nHGUIGdzgeb24/9q02BVKxoP5Y=; b=T47cE7FuR5R/B1C3iDE3yjTILW
 Nrmmf4X/SIUdRGj9hS0IyqHsxz/amUoyibFfSr5iOVJAcUDgW2PdraVofn5hd5eAXn8YT5Z+ejSK7
 RmHJtfEdJp7WQo1Rdl3SbbIwQEdojHbUGkwha2xtZvl1nKGs+wntEeVg7uCtUrY0hRW1FfGct90h8
 caQ3Qpct3PToAgxctLEeTA03mDEl9hh2T0tTUscyDWuhgQ17EZIyPouAXUmNDJsONPfXLZb7eqeN7
 xEDt2D3WWZs2WWVUvLHT298oprr+gZDorMlWcd+YWcOHskBTkOP/gLCtmoEGg7xNgY2PwVW29SMvD
 tJzqqsJg==;
Received: from p4fd7db43.dip0.t-ipconnect.de ([79.215.219.67] helo=lazus.lan)
 by mail.base45.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <lynxis@fe80.eu>)
 id 1jhNpT-0000eY-7p; Sat, 06 Jun 2020 01:40:59 +0000
From: Alexander Couzens <lynxis@fe80.eu>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Sat,  6 Jun 2020 03:40:55 +0200
Message-Id: <20200606014055.2408269-1-lynxis@fe80.eu>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <318bb824-116a-4307-814d-78acfc55c55f@localhost>
References: <318bb824-116a-4307-814d-78acfc55c55f@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_184105_375953_A43C3FD5 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] musl: use official release tar
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

To prevent "wrong" musl packages which have a new version number
but the package still contains an old version, because
PKG_SOURCE_VERSION was unchanged.

Ref: musl ml https://www.openwall.com/lists/musl/2020/05/22/4

Signed-off-by: Alexander Couzens <lynxis@fe80.eu>
---
 toolchain/musl/common.mk | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/toolchain/musl/common.mk b/toolchain/musl/common.mk
index e1354f263510..6a595771086d 100644
--- a/toolchain/musl/common.mk
+++ b/toolchain/musl/common.mk
@@ -11,12 +11,9 @@ PKG_NAME:=musl
 PKG_VERSION:=1.1.24
 PKG_RELEASE:=1
 
-PKG_SOURCE_PROTO:=git
-PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
-PKG_SOURCE_VERSION:=ea9525c8bcf6170df59364c4bcd616de1acf8703
-PKG_MIRROR_HASH:=6975c45b9bfe586ac00dbfcd1b1a13ab110af0528028ab3dee03e23e2c0763e5
-PKG_SOURCE_URL:=https://git.musl-libc.org/git/musl
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.xz
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://musl.libc.org/releases/
+PKG_HASH:=1370c9a812b2cf2a7d92802510cca0058cc37e66a7bedd70051f0a34015022a3
 
 LIBC_SO_VERSION:=$(PKG_VERSION)
 PATCH_DIR:=$(PATH_PREFIX)/patches
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
