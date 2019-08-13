Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E2B8B082
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 09:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S1XwrNQC5RfsOAhpPwWNESJstc/wb7lc4Vj9d7H1/RY=; b=mGdetGuReLUQ0KsaRe1sovaJZa
	kfZOT1lw5D44DSW4hGordkd/NL708LTs74JUUOIeKjEEBXMXJXy4HJRQMl+S0cZ9dEPeBEB3ksHNn
	ZolqyxKNPnxqq9bNZwIE7uX4w00aLzfeuh4nn2AFQRRs7WNcbHmg1MTaM1UtVu1pYKLoFtb6SfPdw
	cw5te9GnpWBIpCyvruSS26yZSDUxq59AaVTqE8YDQwJEKQCeW30fL77HGeQjycDHb5sQKlkwJccGe
	qxkWs9hZfBBJJGi5sp4PyQSua4LO6X3KFyJJVMczpNFruGEWPXOj308bdg26+hjxyFghKwKenZCuM
	3vw/+CMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQzR-0001Cx-G1; Tue, 13 Aug 2019 07:13:05 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQz9-0001CB-8t
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 07:12:48 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id EC057A610EC; Tue, 13 Aug 2019 00:12:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id ABB5CA610E4;
 Tue, 13 Aug 2019 00:12:43 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
References: <87v9vm1nc5.fsf@husum.klickitat.com>
Date: Tue, 13 Aug 2019 00:12:43 -0700
In-Reply-To: <87v9vm1nc5.fsf@husum.klickitat.com> (Russell Senior's message of
 "Sun, 28 Jul 2019 03:10:34 -0700")
Message-ID: <87zhkda68k.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_001247_356073_F3358DAE 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCHv2] tools/scons: update scons to 3.1.1
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



Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 tools/scons/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/scons/Makefile b/tools/scons/Makefile
index 5ec6554165..a9f2507835 100644
--- a/tools/scons/Makefile
+++ b/tools/scons/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=scons
-PKG_VERSION:=3.0.5
+PKG_VERSION:=3.1.1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@SF/scons \
 		http://fossies.org/linux/misc/
-PKG_HASH:=df676f23dc6d4bfa384fc389d95dcd21ab907e6349d4c848958ba4befb73c73e
+PKG_HASH:=4cea417fdd7499a36f407923d03b4b7000b0f9e8fd7b31b316b9ce7eba9143a5
 
 include $(INCLUDE_DIR)/host-build.mk
 
-- 
2.22.0



-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
