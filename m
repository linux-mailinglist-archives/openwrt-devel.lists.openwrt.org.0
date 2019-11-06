Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA8DF0AFC
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 01:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wzd9wjY/dpaSVuAQcsn8GbjRoTp0TgqZc/nIYizwW8o=; b=uHnI/kUfgmbh1r
	cyUAWK889lFfrH2PKebPMaQsVduNi67m6iLipgkY8/LQIqzz5O927JFSoxQMOFSlrsrx3sEuoU6cK
	mFbA8KzOCUd13lVbX8NzU6YhfTQzlKXUKZDf7yBkqVI5KhOH4yMrBQR4CZWe28/3mASCtmk+aAxea
	59CHV7w0jyTrQVYW7RkEMhle8ncAFMnyOBKUqhv6vVZXzFGQwu5S48tSFQzlRw9l66FO4zj55H4+I
	CqlS7YOulvQ/4I12yKoZ/Cb3PCEo5PB7yuZpeCEkAt1v8MEg5H9WG2b3wZceL/LLkt9Za9ZWQizHK
	bzOi4hkxoxru2SfguPVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS992-0005zK-O0; Wed, 06 Nov 2019 00:25:56 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS98s-0005tA-K6
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 00:25:48 +0000
X-Originating-IP: 168.105.239.25
Received: from localhost.localdomain (unknown [168.105.239.25])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 92F2C240002;
 Wed,  6 Nov 2019 00:25:36 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 14:25:30 -1000
Message-Id: <20191106002530.3314-1-mail@aparcar.org>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_162546_794015_ACF59A17 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] ramips,
 mt7520: reproducible elecom-header uid/gid
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
I could not runtime test this, I guessed the changed owner shouldn't be
a problem for the device.

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
