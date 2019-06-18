Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAEE4ADDE
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 00:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ht81XR8/o+Z52boQ9eBIY6VVHkN8lx3YHw7KrbaGCrg=; b=ZPf2aE9oKbR62Q
	X2bDjAZjRAbtWueNp1mfMjjFIOhtSrD8P8H5Pva/vKrNgMGiQa0T+ANpL4f5nPHpxkT1RzeKa1F4k
	QbV8H5YSluZUc8qG7OycA/RxCpzg8VGwE7XmDtpN7xHnO8Qkw+uYTBjhSBUUkQaHCQMbR0FxjvFxc
	wV50yQN6DptHlUaJBkH53tn5SABblCBZsCBWFJ8THjsufthFCVF55tqlZ80D0Ukh+9+liSHICnfGO
	5qkfqH/MH9MSAte7aLqeifMc0/B9pQJnkijhem9Ug1oxy/TK10gatr9ZYbcH/s5O0XvPkyUt630ln
	BK6Rn0WA2cEQvDFO3WNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdMdj-0006Ow-NX; Tue, 18 Jun 2019 22:31:43 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdMda-0006OY-14
 for openwrt-devel@lists.openwrt.org; Tue, 18 Jun 2019 22:31:36 +0000
Received: from pepe-notebook.office.nic.cz (unknown
 [IPv6:2001:1488:fffe:6:28f2:13c3:6940:79a4])
 by mail.nic.cz (Postfix) with ESMTPSA id 792DE1409A2
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 00:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1560897089; bh=LkapIlcvIect/QtrxpJwShSmIefEgRvUOpSpgpOpbBk=;
 h=From:To:Date;
 b=bQkeFA+vGe0eStuSLQDoe+cwRgiu75XPQce1gaVwAH6CgOkDdXCGOXTZpGRCH8qyb
 jsuZ1Cbz5/wgrcwIvq37u9advKgroEeqXobMH1Vgih8Fgx3/fQ8GgkGmx4q1JqpJo2
 kugabAExZ0Ia+EcLT723BDG9HgxunEHpspHcY9xU=
From: Josef Schlehofer <josef.schlehofer@nic.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Jun 2019 00:31:03 +0200
Message-Id: <20190618223103.22494-1-josef.schlehofer@nic.cz>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-100.0 required=5.0 tests=SHORTCIRCUIT,
 USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_153134_368224_C48348F2 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] mbedtls: Update to version 2.16.2
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

Signed-off-by: Josef Schlehofer <josef.schlehofer@nic.cz>
---
 package/libs/mbedtls/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/libs/mbedtls/Makefile b/package/libs/mbedtls/Makefile
index a0c86592d7..03f291ebc3 100644
--- a/package/libs/mbedtls/Makefile
+++ b/package/libs/mbedtls/Makefile
@@ -8,13 +8,13 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=mbedtls
-PKG_VERSION:=2.16.1
+PKG_VERSION:=2.16.2
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-gpl.tgz
 PKG_SOURCE_URL:=https://tls.mbed.org/download/
-PKG_HASH:=7ab76eaefab0b02f26ca889230d553facb2598f3a8f077886c41ec1801d2131a
+PKG_HASH:=40d18965dd36ce0158a2b037c8c54401bad54f683f4311502518ee1a1a0b622c
 
 PKG_BUILD_PARALLEL:=1
 PKG_LICENSE:=GPL-2.0+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
