Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825E8CF029
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pDvlGGxi/MhO2NZDOf+PPK6yb6lLftnjH2gdFSs/mTg=; b=rADMZ69s0FNnUO3JLlaonmwhkv
	a+/QlzXZN+rYoKSRAJg7I9N/M24JtoFBPjgb3AMwr7AKd9nnu9y6EtK9kLs2oYGx4BWh9F7AQDgNU
	nu1cl8OZZNqCbuyCRURwXln3/pZMDRkUCjKljDXUvPH6M5t5+0JdfYnE7g3xqN/0wowjwc+4SCy2z
	ClOeRY1eaaXFROfWChZXGrVRQTfXbShsvJq2xfYzdL5tmtjOAyW3lHZ0grtXYvI2NZ2awa71jsmnM
	POs5NOTvMBazjnnSM+2y2NNzgAqg2x4VUH5urLelyCzqlAM03jXJZQogwGr0I9wUUikgMgi6yB+J3
	TBVEfxsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHdvS-0007kM-0c; Tue, 08 Oct 2019 01:04:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtb-0005oR-Sb
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id q7so9737696pfh.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=pULE9zDsZWkP2B0VB+g/RuwbEA+WVS7XwQbcvL8NXPQ=;
 b=C8hNM+yBRuL5Q+MrgW3aMicQXYEIqT5RPBSv7vUPqMAzqwf8rp8XGYHxfWiZYsD3eQ
 2QjRtCoPgCzfVSLdJ6GxSY9nO+A01Ks0/hgif//2GVBPfOiOSUrqjo5x+IlEVq+v1Hvg
 D8arGdmlpxLPrtnBPiVj4FgppUJv6J+Hr3R1J20zpkDavPrxT6uHztRjcHkb4RYi0iPI
 QQl8ufVi3K1VQ/Yif+QMb+iOinpiTB0gM693+9IlmivZPZYAvIi6iMIDyKwk5d8SJ4Qd
 Jzt99PMgEwGN3gjKTLPggaHt80ym0yB0S55nzdGfGk1KQsxTK4sD8VHOGF4j323dI5v7
 V4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=pULE9zDsZWkP2B0VB+g/RuwbEA+WVS7XwQbcvL8NXPQ=;
 b=QwGYOCg4Gy7985J93aRt7jVEJDpYDB3/nU0bc/vG37mV2sA3AIy6B3dnIPUY79tNFF
 uYudQyKPATmLP3oKDpGfqv3wFMQ+9aQ9KiA8sV8re+zor/+M46q60e+lnb7kTPCgJXUj
 8nkimjguD4GIZdM2JvWKz7loHDiEjey6ygqWWy1bKWnabp0t6Qq6o351m0jCGILzZpGH
 rbbed8oOxZTY0sGsO1tM6RaVFNhG22OnR5t5Ce0VB2fdNWL0m91hEcWctT6mg5UJjYye
 mmJEgkLsMeLh77sXOJOJQE3SduOtNf1R+LiGQT9RlM+2bPtvihxElpdPyWyvoimBNf6a
 KvJw==
X-Gm-Message-State: APjAAAVU3v2nkI0yYTaau4COyLFpLcEmCL2EDlLChkxX/3pyn5p6UlwJ
 2ry1HqgOHVgOsq167zMprG4uWQvm
X-Google-Smtp-Source: APXvYqzH+8oI9vixR0gXS3nK08FOpAaMrl7eaWiEmzmdfIJn8rZH4ImlWVkoRl6KD1PbKHQSEIyPrw==
X-Received: by 2002:a62:7c47:: with SMTP id x68mr36133088pfc.178.1570496554849; 
 Mon, 07 Oct 2019 18:02:34 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.34
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:34 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:25 -0700
Message-Id: <20191008010225.8822-8-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
References: <20191008010225.8822-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180235_934655_877222DE 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 8/8] tools/mtd-utils: add cygwin
 compatibility
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

* Add blkpg.h linux header (not available under cygwin) and
  patch types.h to reflect cygwin specifics.
* Define __USE_LINUX_IOCTL_DEFS under cygwin.
* Properly handle ".exe" suffix in package makefile.

Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/mtd-utils/Makefile              | 17 ++++++++++++-
 tools/mtd-utils/include/linux/blkpg.h | 35 +++++++++++++++++++++++++++
 tools/mtd-utils/include/linux/types.h |  6 +++++
 3 files changed, 57 insertions(+), 1 deletion(-)
 create mode 100644 tools/mtd-utils/include/linux/blkpg.h

diff --git a/tools/mtd-utils/Makefile b/tools/mtd-utils/Makefile
index e0e083d2b6..8a7ee06b62 100644
--- a/tools/mtd-utils/Makefile
+++ b/tools/mtd-utils/Makefile
@@ -18,6 +18,7 @@ PKG_FIXUP:=autoreconf
 include $(INCLUDE_DIR)/host-build.mk
 
 ifneq ($(HOST_OS),Linux)
+ifneq (CYGWIN,$(findstring CYGWIN,$(HOST_OS)))
   HOST_CFLAGS += \
 	-I$(CURDIR)/include \
 	-Dloff_t=off_t \
@@ -25,6 +26,14 @@ ifneq ($(HOST_OS),Linux)
 	-include endian.h \
 	-DNO_NATIVE_SUPPORT \
 	-include fls.h
+else
+  HOST_CFLAGS += \
+	-I$(CURDIR)/include \
+	-include endian.h \
+	-DNO_NATIVE_SUPPORT \
+	-include fls.h \
+	-D__USE_LINUX_IOCTL_DEFS
+endif
 endif
 
 HOST_CONFIGURE_VARS+= \
@@ -37,8 +46,14 @@ HOST_CONFIGURE_ARGS+= \
 	--without-zstd \
 	--without-lzo
 
+ifeq (CYGWIN,$(findstring CYGWIN,$(HOST_OS)))
+EXEC_SUFFIX:=.exe
+else
+EXEC_SUFFIX:=
+endif
+
 HOST_MAKE_FLAGS += \
-	PROGRAMS="mkfs.jffs2 ubinize mkfs.ubifs"
+	PROGRAMS="mkfs.jffs2$(EXEC_SUFFIX) ubinize$(EXEC_SUFFIX) mkfs.ubifs$(EXEC_SUFFIX)"
 
 define Host/Install
 	$(CP) \
diff --git a/tools/mtd-utils/include/linux/blkpg.h b/tools/mtd-utils/include/linux/blkpg.h
new file mode 100644
index 0000000000..7d90fa5d86
--- /dev/null
+++ b/tools/mtd-utils/include/linux/blkpg.h
@@ -0,0 +1,35 @@
+#ifndef __LINUX_BLKPG_H
+#define __LINUX_BLKPG_H
+
+/*#include <linux/ioctl.h> */
+
+#define BLKPG      _IO(0x12,105)
+
+/* The argument structure */
+struct blkpg_ioctl_arg {
+        int op;
+        int flags;
+        int datalen;
+        void *data;
+};
+
+/* The subfunctions (for the op field) */
+#define BLKPG_ADD_PARTITION     1
+#define BLKPG_DEL_PARTITION     2
+#define BLKPG_RESIZE_PARTITION  3
+
+/* Sizes of name fields. Unused at present. */
+#define BLKPG_DEVNAMELTH        64
+#define BLKPG_VOLNAMELTH        64
+
+/* The data structure for ADD_PARTITION and DEL_PARTITION */
+struct blkpg_partition {
+        long long start;                /* starting offset in bytes */
+        long long length;               /* length in bytes */
+        int pno;                        /* partition number */
+        char devname[BLKPG_DEVNAMELTH]; /* partition name, like sda5 or c0d1p2,
+                                           to be used in kernel messages */
+        char volname[BLKPG_VOLNAMELTH]; /* volume label */
+};
+
+#endif /* __LINUX_BLKPG_H */
diff --git a/tools/mtd-utils/include/linux/types.h b/tools/mtd-utils/include/linux/types.h
index 559fac7a2c..0b28190fb1 100644
--- a/tools/mtd-utils/include/linux/types.h
+++ b/tools/mtd-utils/include/linux/types.h
@@ -5,7 +5,13 @@
 
 typedef uint16_t __u16;
 typedef uint32_t __u32;
+
+#if defined(__CYGWIN__)
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+#else
 typedef uint64_t __u64;
+#endif
 
 typedef __u16 __le16;
 typedef __u32 __le32;
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
