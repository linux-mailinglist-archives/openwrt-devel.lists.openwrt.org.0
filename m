Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB654F2082
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 22:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/5Tmgbv6SuI+BffP8ykbC83tQHw5OipILIVDkcELaf8=; b=FOP7uVVaYGJEOT
	bSSVnGWeT4V+il6ti8sAuc+nqQpwWmQA0nygb3VdtYoSVwcfyYKzV00zfzdSMpwYWCrEypiQQ0jlv
	tnSgqdgKz6AR7R81+6TwkCuYsVGLHwPR3N6AD+56YsdlMp+LZ9R3gCAlETvZpUp48uwAWGS2vKur7
	NhA8TlpEwrPRQpSpchnBlM+2UX94GRuySzUZrydBcFuO+bw+CbCXLO80iBiflfwDxxowboznQpey/
	TuzqaaYMS/YZ4+q2cdx1xWwjhOE3w8kJmdx6eeRqMzs1J9IMj0Bqef0rEKXtSjD917uD6pj1qer2/
	H2f7Dw9YNEOX+1oBpA8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSeb-0000VE-H2; Wed, 06 Nov 2019 21:15:49 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSeU-0000US-7v
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 21:15:44 +0000
Received: from localhost.localdomain
 (dhcp-168-105-246-158.wireless.manoa.hawaii.edu [168.105.246.158])
 (Authenticated sender: mail@aparcar.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id D43EE100002;
 Wed,  6 Nov 2019 21:15:30 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 11:15:21 -1000
Message-Id: <20191106211521.6397-1-mail@aparcar.org>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_131542_421838_F13C4AAF 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ramips,
 mt7620: reproducible elecom-header uid/gid
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

The elecom-header renames the firmware image to v_0.0.0.bin, stores its
MD5 sum as v_0.0.0.md5 and tars both files again.

Both v_0.0.0 files are created as the build user making it harder to
reproduce.

This commit sets the owner/group of both files to root by adding extra
options to the final tar command.

Before:
0 buildbot   (101) buildbot   (102)  3932164 2019-11-05 14:43:22.000000 v_0.0.0.bin
0 buildbot   (101) buildbot   (102)       33 2019-11-05 14:43:22.000000 v_0.0.0.md5

After:
0 root         (0) root         (0)  3932164 2019-11-05 23:43:08.000000 v_0.0.0.bin
0 root         (0) root         (0)       33 2019-11-05 23:43:08.000000 v_0.0.0.md5

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
v2: rename mt7520 to mt7620

 target/linux/ramips/image/mt7620.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index bca2363699..88437a6904 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -13,7 +13,7 @@ define Build/elecom-header
 	) | mkhash md5 > $(KDIR)/v_0.0.0.md5
 	$(STAGING_DIR_HOST)/bin/tar -c \
 		$(if $(SOURCE_DATE_EPOCH),--mtime=@$(SOURCE_DATE_EPOCH)) \
-		-f $@ -C $(KDIR) v_0.0.0.bin v_0.0.0.md5
+		--owner=0 --group=0 -f $@ -C $(KDIR) v_0.0.0.bin v_0.0.0.md5
 endef
 
 define Device/aigale_ai-br100
-- 
2.24.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
