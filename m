Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6B9155D6
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 23:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EDdR1HHOOVqgXh6jdlpuEwXr01J/Jsq9eXsu9rnfqV0=; b=BDIC0Wqw2uQv2s
	A0L6yLr7/7bpAyg6MQjvDWBOAt9KCRlwnBLvEbCqHovlXevnf75n5ZcvlKh4UgP233Q7xnRquyZXu
	1GKvscVmKAJwFEoXn4qYY/dMZpZHgKsnXJT82jojfXwxuFXVXJei1IyeqPzF4OtvAW/SDRp6URN8m
	xJcVeKRWqQF1vK14JYmnXkT5bcv1OXXjJNRCyxLT4DHE8TXZ+hUwF1hVaYHJ4C81F6Ck2T9Cq2ttr
	2xzevYXa2nVhPApR4cVQr79opFTotMApS7+eoLX8a7lu9kf01mhWN+xAa6vX09KRplosbq28fbKAc
	gLkbJjhkYF1GMb/+8A4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNlc2-0003Tz-6K; Mon, 06 May 2019 21:57:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNlbv-0003Tb-NW
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 21:57:25 +0000
Received: by mail-pf1-x441.google.com with SMTP id t87so6894826pfa.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 May 2019 14:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=Rz1ZQ3Li3tKHkww/FBkjgiF0FVagTVbXxCE7sreevoQ=;
 b=SMAAyg3tQBOiEbksfJM+6NDX6er0lBbDJLVT3z5zNr863fNUEsOIb3isQyUVwYHjAv
 geUtja66sjmgreeJC2M26VVYlfIZLc3hjiEtCBxs4bcozWuufunYMTCn11cyr2aMqYm+
 nC7f56b90ttIlnthwmCwVOPTEVoDLB4D8nzus5hFIlyNQPTmYkOm8jtlWya9+7EaQ7q+
 WBUst3w25c8Xo2BXHqIxJ2sqVKPTEuv+vBDDScXax3jSJru1YO7wSd0eFGslu0C+5pOe
 gE0awMgk44/3uVzxqpPaFLq+nHR5z0/Pcw0Qaui/7UZENvwy+RXc4LSLzI6fm84de7ja
 33Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=Rz1ZQ3Li3tKHkww/FBkjgiF0FVagTVbXxCE7sreevoQ=;
 b=bcpcAhUt84KW0q53NwKo7KNKz2Q0BVJd+eVO9rKw1rfzsMy0T7x8jUrHo097Ev/xSK
 cCi03ZCMYudfTLUPdY6FkVpBPkCelqiKeKP/A/EHgB6NkkMyFEl91Dg7fNEl9TZ1Mql9
 as4a5NnxTwJoEvwsxPLbl9OFm0TbXQzB0VPfgdw1zoRIWsqfh1HWj7MaXJI9wKp2VzNY
 GEawIsAAUZQfj6TDjyNV4NRW5vFfmHI8fIPRfTHrnG2FsUYAT4cibz91vvS1jZmhSfPd
 8kpMTf4IjdAoye7a1AtlzeQQGDPUpVW9qL2u9mckmiYIoXxcln4NY7LkFQwAnQeRdKYp
 H90Q==
X-Gm-Message-State: APjAAAUk5sNDjO8/gGn/pVJ1jExXodSLlsZBdclBQsETliwOj86L22uN
 i62AoVK/KikI/YgddsTbCXGvm17MVVA=
X-Google-Smtp-Source: APXvYqzIwPlwrEtSeunGipMf7PnPKgXCR2sHAlSVSBYaERII8Vsh5l4GnDP5av8nJJ6fRY2Ut40sfQ==
X-Received: by 2002:aa7:90d3:: with SMTP id k19mr20695792pfk.1.1557179839917; 
 Mon, 06 May 2019 14:57:19 -0700 (PDT)
Received: from mangix-pc.lan (76-14-106-140.rk.wavecable.com. [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id
 e16sm11848835pgv.89.2019.05.06.14.57.18
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 14:57:18 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 May 2019 14:57:18 -0700
Message-Id: <20190506215718.14886-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_145723_794338_37B56327 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] xfsprogs: Replace valloc with posix_memalign
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Fixes compilation under uClibc-ng.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/xfsprogs/Makefile               |  2 +-
 ...six_memalign-instead-of-deprecated-v.patch | 31 +++++++++++++++++++
 2 files changed, 32 insertions(+), 1 deletion(-)
 create mode 100644 package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch

diff --git a/package/utils/xfsprogs/Makefile b/package/utils/xfsprogs/Makefile
index 50a5147b04..353773840a 100644
--- a/package/utils/xfsprogs/Makefile
+++ b/package/utils/xfsprogs/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=xfsprogs
 PKG_CPE_ID:=cpe:/a:sgi:xfsprogs
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 PKG_VERSION:=4.11.0
 PKG_SOURCE_URL:=@KERNEL/linux/utils/fs/xfs/xfsprogs
 PKG_HASH:=c3a6d87b564d7738243c507df82276bed982265e345363a95f2c764e8a5f5bb2
diff --git a/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch b/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
new file mode 100644
index 0000000000..7bf1c77a40
--- /dev/null
+++ b/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
@@ -0,0 +1,31 @@
+From 930f9aa8f08759fa739dd6e615ba8b3a1890008d Mon Sep 17 00:00:00 2001
+From: Rosen Penev <rosenp@gmail.com>
+Date: Mon, 6 May 2019 13:56:13 -0700
+Subject: [PATCH] db/malloc: Use posix_memalign instead of deprecated valloc
+
+valloc is not available with uClibc-ng as well as being deprecated, which
+causes compilation errors. aligned_alloc is not available before C11 so
+used posix_memalign.'
+
+Signed-off-by: Rosen Penev <rosenp@gmail.com>
+---
+ db/malloc.c | 3 +--
+ 1 file changed, 1 insertion(+), 2 deletions(-)
+
+diff --git a/db/malloc.c b/db/malloc.c
+index 77b3e022..38fe0b05 100644
+--- a/db/malloc.c
++++ b/db/malloc.c
+@@ -56,8 +56,7 @@ xmalloc(
+ {
+ 	void	*ptr;
+ 
+-	ptr = valloc(size);
+-	if (ptr)
++	if(!posix_memalign(&ptr, sysconf(_SC_PAGESIZE), size))
+ 		return ptr;
+ 	badmalloc();
+ 	/* NOTREACHED */
+-- 
+2.17.1
+
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
