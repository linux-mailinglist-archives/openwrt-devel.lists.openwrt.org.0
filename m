Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098A511560B
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Dec 2019 18:06:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h8DcIfIl1mLLrMe+zUVhcLSxS68WDf78OESDHbrwYk8=; b=gBetDJ0N0+Q1In
	llPeYdivMLDatQSx68LxOciNkajbcVQ6DF0KxUWGo9HYK3zS+ngnAycu9TyNcRIF7lJbUmgw9/uRN
	sDXhbOeHbC8wJI619f0OaFDtDDBOyexk7cnTM6aThfpV+BieReGWRD4/1i7vS/ONl28Hv0zdEnzvZ
	e4/9B9ZgxbLiP7/47CCZwHLmpPffxxK5OyKGvpfMmLTkmVC7ioeZTlhA2HdLuOjmoPQp3LYey+6gB
	sDYcWxZu4TGqdaYxez36mWcBYFXYCi4Ks4jy0VlK5pUy5mxmkFn2T//oKkJxqRWIoCV9yEq5Q28ZR
	JjUEIcFSyvcsmieanpzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idH3D-0005i7-FP; Fri, 06 Dec 2019 17:05:55 +0000
Received: from mail.nerd2nerd.org ([2a01:4f8:190:3211::25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idH34-0005gv-5S
 for openwrt-devel@lists.openwrt.org; Fri, 06 Dec 2019 17:05:50 +0000
Received: from kosch.limbus.lpm.pw
 (200116b828c6e202a9be9a3a30313b4e.dip.versatel-1u1.de
 [IPv6:2001:16b8:28c6:e202:a9be:9a3a:3031:3b4e])
 by mail.nerd2nerd.org (Postfix) with ESMTPSA id 926DD6034E;
 Fri,  6 Dec 2019 18:05:21 +0100 (CET)
From: Johannes Kimmel <freifunk@bareminimum.eu>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Dec 2019 18:05:16 +0100
Message-Id: <20191206170516.21798-1-freifunk@bareminimum.eu>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Authentication-Results: mail.nerd2nerd.org;
 auth=pass smtp.auth=info@bareminimum.eu smtp.mailfrom=freifunk@bareminimum.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_090546_362299_D0ED22A8 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] make_ext4fs: fix build on musl systems
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
Cc: Johannes Kimmel <freifunk@mail.bareminimum.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Johannes Kimmel <freifunk@mail.bareminimum.eu>

Include sys/sysmacros.h on all systems, except MACOS.

The previous change only included the header on glibc systems:
3af931b0b6545757aaeadb13f9bb9da0296fc172

Signed-off-by: Johannes Kimmel <freifunk@mail.bareminimum.eu>
---
 ext4_utils.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/ext4_utils.h b/ext4_utils.h
index a5c1ae0..bfc48ed 100644
--- a/ext4_utils.h
+++ b/ext4_utils.h
@@ -28,7 +28,7 @@ extern "C" {
 #define _LARGEFILE64_SOURCE 1
 #include <sys/types.h>
 
-#ifdef __GLIBC__
+#ifndef __APPLE__
 #include <sys/sysmacros.h>
 #endif
 
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
