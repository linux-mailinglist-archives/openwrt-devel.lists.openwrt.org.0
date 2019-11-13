Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC2CFBA71
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 22:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I4xZQHKweEyj99BrHqnSHHQFtDKy+/5Wz3BVti84Bk4=; b=nct9oahJbJA2ky
	fBmqNTe8ikYtBCc2bwTNZKkJkzzPKfuNZfs/a7ic2O+0MUQdJMiFJUI2Mx45Rez+bKwjTFZpBbhKt
	TYjKQsraSGKJcUGvncLlfssbEbJ9P7nmUZmI6yRXfDYVnkA1qyBrm961Ng7TXqW4jdP2yi2Jr3cAs
	8EsRJW63+FXRhNLMfWLfXPrOgsue31KQuxtS+mPIeWEZjjOS5qWPVpkBOdi0SR2626m8W39j+qNRO
	aHYgUkQ5tih1XcUtvieEc9D6PVubj7xc8lfvvCJuaygWjwDsJe143gUepiu09y3WJXe/nAj/97yO2
	olJYTou3kVaziW27BXng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzu4-0003mb-32; Wed, 13 Nov 2019 21:10:16 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzto-000305-S5
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 21:10:05 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id CED5E49DEB;
 Wed, 13 Nov 2019 13:09:57 -0800 (PST)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 13:09:48 -0800
Message-Id: <20191113210949.2490-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_131003_900251_1D60487F 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] build: define check-kernel-size to
 remove unflashable images
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
Cc: Chuanhong Guo <gch981213@gmail.com>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Certain boards have limitations on U-Boot that prevent flashing
of images where the kernel size exceeds a threshold, yet
sysupgrade can sucessfully manage larger kernels. The current
check-size will remove the target artifact if its total size
exceeds the threshold. If applied after append-kernel,
it will remove the kernel, but the remaining image-assembly
steps will continue, resulting in an image without a kernel
that is likely unbootable.

By defining check-kernel-size, it is now possible to prevent release
of such unbootable images through a construct similar to:

  IMAGE/factory.img := append-kernel | pad-to $$$$(GL_UBOOT_UBI_OFFSET) | \
    append-ubi | check-kernel-size $$$$(GL_UBOOT_UBI_OFFSET)

Cc: Chuanhong Guo <gch981213@gmail.com>

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 include/image-commands.mk | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 5dfd6a2c2f..f561ad4669 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -271,6 +271,13 @@ define Build/check-size
 	}
 endef
 
+define Build/check-kernel-size
+	@[ $$(($(subst k,* 1024,$(subst m, * 1024k,$(1))))) -ge "$$(stat -c%s $(IMAGE_KERNEL))" ] || { \
+		echo "WARNING: Kernel for $@ is too big > $(1)" >&2; \
+		rm -f $@; \
+	}
+endef
+
 define Build/combined-image
 	-sh $(TOPDIR)/scripts/combined-image.sh \
 		"$(IMAGE_KERNEL)" \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
