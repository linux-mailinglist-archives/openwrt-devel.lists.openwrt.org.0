Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E6C18A213
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 19:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y53rHDyb3THKnE6/9EppYVWjWecWzG4jlMHURZAAHuI=; b=G4uQD1tRjfMBCf
	ioREFRGOHQpVm8APY4FCjLntwuSbzgw6TdoiaMqLNIOU0xBlg2ZHaXLdue18imGOURSwhLRmJnf3Z
	aBEnkq5S4fTRsvf61PJ6EjK5OzSuf2FdDllxUnNDHTY5Fbu8vM0HzAp/EKqYz0GjSr+nnkEsqoF7G
	B4Q3YJiSbuwHhI+BwNVvSq4h96sjNOecbKnXVUEniz8nKzBjVNS5dOe2NCU46lX2J23TpWTujclcA
	7KpKcmlfblvOUQcByQJSEgZzbiEcWX3QMJ8X3eIiQKQWc5ZHkYYIhek9K66+LHmrvCgxUTaL0Lbfu
	+Hcx+76cORukX9OQkRCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEd3U-00066J-TA; Wed, 18 Mar 2020 18:04:36 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEd3M-00065S-Ns
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 18:04:31 +0000
Received: (wp-smtpd smtp.tlen.pl 10979 invoked from network);
 18 Mar 2020 19:04:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1584554665; bh=PkL5XG7EAaPIeitCRBUvI/X34ZofdUK3ft+k2Qstog4=;
 h=From:To:Subject;
 b=sBt2IwbEaofAPZF/pN5C+lK+IUOkNOfz2uXcJddRZN1nFwfMPDkMefd59XH9fzeSd
 ZLNOpJ+RYFTyfPsa88aS65I/DstOjhsaUX0kFbTAgiinkIbl6J8B/USVMLayWt9VWm
 LtvQGI2hXHGjN0iqP1zX65ZgP6tVWQQWfn/dAcj0=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Mar 2020 19:04:24 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 19:04:12 +0100
Message-Id: <20200318180413.409555-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-WP-MailID: 2223e69dc2665cc63fb96c3ec0647201
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [8TOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_110429_105066_C2E432D1 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] mvebu: cortexa9: correct cpu subtype
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

Armada 370  processors have only 16 double-precision registers. The
change introduced by 8dcc1087602e ("toolchain: ARM: Fix toolchain
compilation for gcc 8.x") switched accidentally the toolchain for mvebu
cortexa9 subtarget to cpu type with 32 double-precision registers. This
stems from gcc defaults which assume "vfpv3-d32" if only "vfpv3" as mfpu
is specified. That change resulted in unusable image, in which kernel
will kill userspace as soon as it causing "Illegal instruction".

Ref: https://forum.openwrt.org/t/gcc-was-broken-on-mvebu-armada-370-device-after-commit-on-2019-03-25/43272
Fixes: 8dcc1087602e ("toolchain: ARM: Fix toolchain compilation for
gcc 8.x")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/cortexa9/target.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/cortexa9/target.mk b/target/linux/mvebu/cortexa9/target.mk
index 2a75599bc9a3..cdd4d86e4936 100644
--- a/target/linux/mvebu/cortexa9/target.mk
+++ b/target/linux/mvebu/cortexa9/target.mk
@@ -10,5 +10,5 @@ include $(TOPDIR)/rules.mk
 ARCH:=arm
 BOARDNAME:=Marvell Armada 37x/38x/XP
 CPU_TYPE:=cortex-a9
-CPU_SUBTYPE:=vfpv3
+CPU_SUBTYPE:=vfpv3-d16
 KERNELNAME:=zImage dtbs
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
