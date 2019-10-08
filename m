Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C74CF023
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=93yk2gEiH0mhXYGh+9KsjoBQjP8C0NMa2UGbr8dRJvA=; b=JAib+xF2De+76ak48VJpFxMUJM
	h9AGEsXB4pfkGDquKn/oNT1Tu76VH6wlstzYhmrVvL3Wjee/7xKyUcVY10HD6JmYbEwxBmEewWq9n
	UbwTCplK7G54T7NoImamd//ooogbKAJ/2PRxMTMELJm+FeN7VkcMXdhB9e/Iaoxqyz+yz4FJqdBr6
	ecVWv8j3VdLR8mdihuHdgSBtZMLy5raLVnM71vLw6NYBTZ+6bwYT1TP2WFcoCkIVOP2X/axihJMZD
	WuvSDUB6srWiLHpQch/cVWKuH2wHiH3jKIPb6HsDL2ofbh8aClFhp1B7zcqE7bZAEa4nY4pcoPUxP
	qfva6VAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHduV-0006VJ-0m; Tue, 08 Oct 2019 01:03:31 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtZ-0005mO-7X
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:34 +0000
Received: by mail-pg1-x532.google.com with SMTP id p30so7184314pgl.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=1c0BPimiDiB0cA8s3X9lyQvf2+q62mBCMbLPejqn2FA=;
 b=OX9ABSss7PLi9M8QURIapEVwNDAJ2uj7m5tJrCyfo4vm9Fs9BrDyXxaOfHrCzbsnyh
 QHhWL0qPj2Apza8/RwvJuuyCZ/9z1/ZVbdltouTgKFZKrigngAtKjSd1XcOegeBrVLdA
 K1R7PDJL6rv1vfFGsFRqurvLnrOrGv/v/XumllOIFj74KgLkNRW6Vdah1YSDa2TqugtU
 rKZguSEWP/twkO4/e1qCySGrP5dKxinZrsNhu/gQ+oExXHzh909D91H+Nyy+Zd/87f/S
 0oLXxp6xISLQbJK0a1P5iTUekHLAuBKRuxQh1b0dyvPux8RAwYVNMR6N9O7/QdXL/xHW
 gpNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=1c0BPimiDiB0cA8s3X9lyQvf2+q62mBCMbLPejqn2FA=;
 b=S8JsAp1MZ787GAFcGCnhiBgacoZl2kHcN++LXseDRZia1p7uqzbrWIs9o14VGKzMVO
 v34JLsR9H4QWMzShoGWCvERrIENgUwC1h/n0cABLaFWWbfnDPEMod1rYkhncNDbu8y/B
 jUAX45GQcrRFHH5qVDzPkjUNotnW/Cl5td4qDgLFbPgnknwg5Id81P+syFkpiysS5Sba
 G6nAVaZMXjVJ/J3IxZta2OryHqqvA1IDkqokufZgL+DBwFP4FaMKM2JILm/z+4WZr2t9
 bW23/rZgc1Xe+1aEVPpf0gPKw7O8zPJVsTWYFLMHk0Jj9KCKXSFFQdJs8AQJGNR3Ugjs
 2W4w==
X-Gm-Message-State: APjAAAWsLw5C0sYlCvwfCRzi9mi+eYyXvVTowvFor/Y3tMG+YkG6U1Q/
 cnUvy+6CSAh7Xa7jBOpUGPB7sdQj
X-Google-Smtp-Source: APXvYqwfpo5BhIV+n6h2xcP0J/29+TviRlo6vMLmjGFS/P0evi6CVA2zqcnS6+ec+5HsKuWjLWGTJg==
X-Received: by 2002:a62:e106:: with SMTP id q6mr35328233pfh.14.1570496551973; 
 Mon, 07 Oct 2019 18:02:31 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:30 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:22 -0700
Message-Id: <20191008010225.8822-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
References: <20191008010225.8822-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180233_267140_E64ED8DC 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 5/8] tools/zlib: add cygwin compatibility
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alexey Loukianov <lx2@lexa2.ru>

Incorporate CYGWIN zlib patches into package.

Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
(replaced patch with upstream backport)
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/zlib/patches/010-cygwin.patch | 37 +++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 tools/zlib/patches/010-cygwin.patch

diff --git a/tools/zlib/patches/010-cygwin.patch b/tools/zlib/patches/010-cygwin.patch
new file mode 100644
index 0000000000..f6b21dbae0
--- /dev/null
+++ b/tools/zlib/patches/010-cygwin.patch
@@ -0,0 +1,37 @@
+From 5ff989033e8b839b80ce716a1452acf7664e2ff4 Mon Sep 17 00:00:00 2001
+From: Mark Adler <madler@alumni.caltech.edu>
+Date: Mon, 16 Jan 2017 09:38:36 -0800
+Subject: [PATCH] Cygwin does not have _wopen(), so do not create gzopen_w()
+ there.
+
+---
+ gzguts.h | 2 +-
+ zlib.h   | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/gzguts.h b/gzguts.h
+index 990a4d25..6378d468 100644
+--- a/gzguts.h
++++ b/gzguts.h
+@@ -39,7 +39,7 @@
+ #  include <io.h>
+ #endif
+ 
+-#if defined(_WIN32) || defined(__CYGWIN__)
++#if defined(_WIN32)
+ #  define WIDECHAR
+ #endif
+ 
+diff --git a/zlib.h b/zlib.h
+index 21636c25..5daf4f28 100644
+--- a/zlib.h
++++ b/zlib.h
+@@ -1893,7 +1893,7 @@ ZEXTERN int            ZEXPORT inflateValidate OF((z_streamp, int));
+ ZEXTERN unsigned long  ZEXPORT inflateCodesUsed OF ((z_streamp));
+ ZEXTERN int            ZEXPORT inflateResetKeep OF((z_streamp));
+ ZEXTERN int            ZEXPORT deflateResetKeep OF((z_streamp));
+-#if (defined(_WIN32) || defined(__CYGWIN__)) && !defined(Z_SOLO)
++#if defined(_WIN32) && !defined(Z_SOLO)
+ ZEXTERN gzFile         ZEXPORT gzopen_w OF((const wchar_t *path,
+                                             const char *mode));
+ #endif
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
