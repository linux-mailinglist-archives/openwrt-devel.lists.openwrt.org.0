Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011411536CE
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 18:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q4gZA3kofxIz18SBMRXt/fq8Qy9T/TIyscK74/MaKDk=; b=AeqtCHm/A6sYYJ
	KueaeYxy/nNOLdLI/4PCPgJMzwdL1gJLRT6txcG2DB2G03SfKq/BBSiakHdjmS9DklGTx429UEDbA
	kweVBKh0z7lw8qNOkwcqRL6yquaecCj7TTj4tTI/edbD/CyR6N17+kHsMKJqfrqjDaHSX0LvJLiVY
	rf+LOXAvYdfaDTNrJkwOyF7V94LL50/wp3Ek/6T+0P9Q4lduSK+T2egr3Mye7tTj68ydD6FoGP+OC
	PK4MWUjaR97z0nRmhCpJRTRlEFiZGqIEui+eJXR+jkN2AkbJ71e3sgg94a7EKj0zvzFnQGxVSnTAL
	4d4pSwTR0KlbniDE0IiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOcZ-0006ZM-UP; Wed, 05 Feb 2020 17:37:51 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOcS-0006YT-12
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 17:37:45 +0000
Received: by mail-pj1-x1035.google.com with SMTP id q39so1297104pjc.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 09:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HsS4dBOA5xmu9WylbliQc0wiMYYWeXJiokHwGG7Os8Y=;
 b=mqXKcpVC2w/oil8CqtV/FueHCZvoB/IGvmTjk69pUl1Jv8pm7chJ/nkBvnaWDLswpv
 zdQYjRly6I+yviEEax7nbGCMIgW5DRBo8ftL0lEqd1ROMQxz8l0cn0o/e/UqpgMoYgbU
 XH+8nm4JK74rFLGQGq5n9+s6pJMEBVfgAceHbtyudK5TKZXZNY/GWLMLNhkPGUr1PBXa
 nvIz8DJXOmaLsS8W+zx/LVWFsIsENh8WpYhOs/aOkqOPhmmse7VK+U9RwvpHVhtnROQb
 j1HxU5VdmGRAbu7lUI1/ARzpeNyMfRq90dz0JoVM3PfJNMfnfJZ+vkH8+J+BLCwHmWtB
 HFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HsS4dBOA5xmu9WylbliQc0wiMYYWeXJiokHwGG7Os8Y=;
 b=Z8NAWPUX5bL10v2u8z26kT1xQTZYkSyq+QARsSIJb3Y0a7UXS+ec1GGkq0t4ZruO9Y
 vRXRWVbi/Q1i7/47IMpcK1u+bFHolwkzRFZqP74BalHgrARyf9R/xv9L6LAgXzVZ4/Fm
 z1J7C/9Q6d8rN7FdrgstRbQH0m6X2+zheByvpX6o1/mtMHTvOmEDIoLN0abzC7ILtT5J
 CwPKUafqX3qSLuD2Qs9OZCzo04GdkutrNl6n74CZB6eZugvMcfdJ/0Az8SZN4neCDHJy
 2G6K/qnYN5ZHqXAaDySnU030cgHQpZ2+A02/BcwIiQNNgggI2hh72/ROIhh9ecQZvmTC
 WNpA==
X-Gm-Message-State: APjAAAUPnfmlHoWEeod+0TSt8K6no88L0tp0vdKVvaPCdD4xYKxhG8hU
 do9m5vQrpYa7+D53+0jvupGfAUodDEo=
X-Google-Smtp-Source: APXvYqyyVC0UU2nM1i84NT2lfN2hMrace565WTuZo/XY6XNIfZowH2qz8Y4be9Kgfh/98pH3Zl3bbA==
X-Received: by 2002:a17:90a:d78f:: with SMTP id
 z15mr6910261pju.36.1580924262569; 
 Wed, 05 Feb 2020 09:37:42 -0800 (PST)
Received: from localhost.localdomain ([67.139.187.132])
 by smtp.gmail.com with ESMTPSA id c6sm397191pgk.78.2020.02.05.09.37.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 09:37:42 -0800 (PST)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Feb 2020 10:37:43 -0700
Message-Id: <1580924264-939-1-git-send-email-dan.haab@luxul.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_093744_067405_7D318B52 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [riproute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] firmware-utils: add lxlfw tool for
 generating Luxul firmwares
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
Cc: Dan Haab <dan.haab@legrand.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Dan Haab <dan.haab@legrand.com>

It's a simple tool prepending image with a Luxul header.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 tools/firmware-utils/Makefile    |   1 +
 tools/firmware-utils/src/lxlfw.c | 282 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 283 insertions(+)
 create mode 100644 tools/firmware-utils/src/lxlfw.c

diff --git a/tools/firmware-utils/Makefile b/tools/firmware-utils/Makefile
index 2d2c96c..97c89ee 100644
--- a/tools/firmware-utils/Makefile
+++ b/tools/firmware-utils/Makefile
@@ -25,6 +25,7 @@ define Host/Compile
 	mkdir -p $(HOST_BUILD_DIR)/bin
 	$(call cc,addpattern)
 	$(call cc,asustrx)
+	$(call cc,lxlfw)
 	$(call cc,trx)
 	$(call cc,otrx)
 	$(call cc,motorola-bin)
diff --git a/tools/firmware-utils/src/lxlfw.c b/tools/firmware-utils/src/lxlfw.c
new file mode 100644
index 0000000..15678b8
--- /dev/null
+++ b/tools/firmware-utils/src/lxlfw.c
@@ -0,0 +1,282 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Luxul's firmware container format
+ *
+ * Copyright 2020 Legrand AV Inc.
+ */
+
+#define _GNU_SOURCE
+
+#include <byteswap.h>
+#include <endian.h>
+#include <errno.h>
+#include <libgen.h>
+#include <stddef.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+
+#if __BYTE_ORDER == __BIG_ENDIAN
+#define cpu_to_le32(x)	bswap_32(x)
+#define cpu_to_le16(x)	bswap_16(x)
+#define le32_to_cpu(x)	bswap_32(x)
+#define le16_to_cpu(x)	bswap_16(x)
+#elif __BYTE_ORDER == __LITTLE_ENDIAN
+#define cpu_to_le32(x)	(x)
+#define cpu_to_le16(x)	(x)
+#define le32_to_cpu(x)	(x)
+#define le16_to_cpu(x)	(x)
+#endif
+
+#define min(a, b)				\
+	({					\
+		__typeof__ (a) _a = (a);	\
+		__typeof__ (b) _b = (b);	\
+		_a < _b ? _a : _b;		\
+	})
+
+#define max(a, b)				\
+	({					\
+		__typeof__ (a) _a = (a);	\
+		__typeof__ (b) _b = (b);	\
+		_a > _b ? _a : _b;		\
+	})
+
+#define LXL_FLAGS_VENDOR_LUXUL			0x00000001
+
+struct lxl_hdr {
+	char		magic[4];	/* "LXL#" */
+	uint32_t	version;
+	uint32_t	hdr_len;
+	uint8_t		v0_end[0];
+	/* Version: 1+ */
+	uint32_t	flags;
+	char		board[16];
+	uint8_t		v1_end[0];
+	/* Version: 2+ */
+	uint8_t		release[4];
+	uint8_t		v2_end[0];
+} __packed;
+
+static uint32_t lxlfw_hdr_len(uint32_t version)
+{
+	switch (version) {
+	case 0:
+		return offsetof(struct lxl_hdr, v0_end);
+	case 1:
+		return offsetof(struct lxl_hdr, v1_end);
+	case 2:
+		return offsetof(struct lxl_hdr, v2_end);
+	default:
+		fprintf(stderr, "Unsupported version %d\n", version);
+		return 0;
+	}
+}
+
+/**************************************************
+ * Info
+ **************************************************/
+
+static int lxlfw_info(int argc, char **argv) {
+	struct lxl_hdr hdr;
+	uint32_t version;
+	uint32_t hdr_len;
+	char board[17];
+	size_t bytes;
+	int err = 0;
+	FILE *lxl;
+	int flags;
+
+	if (argc < 3) {
+		fprintf(stderr, "Missing <file> argument\n");
+		err = -EINVAL;
+		goto out;
+	}
+
+	lxl = fopen(argv[2], "r");
+	if (!lxl) {
+		fprintf(stderr, "Could not open \"%s\" file\n", argv[2]);
+		err = -ENOENT;
+		goto out;
+	}
+
+	bytes = fread(&hdr, 1, sizeof(hdr), lxl);
+	if (bytes < offsetof(struct lxl_hdr, v0_end)) {
+		fprintf(stderr, "Input file too small to use Luxul format\n");
+		err = -ENXIO;
+		goto err_close;
+	}
+
+	if (memcmp(hdr.magic, "LXL#", 4)) {
+		fprintf(stderr, "File <file> does not use Luxul's format\n");
+		err =  -EINVAL;
+		goto err_close;
+	}
+
+	version = le32_to_cpu(hdr.version);
+	hdr_len = lxlfw_hdr_len(version);
+	if (bytes < hdr_len) {
+		fprintf(stderr, "Input file too small for header version %d\n", version);
+		err = -ENXIO;
+		goto err_close;
+	}
+
+	printf("Format version:\t%d\n", version);
+	printf("Header length:\t%d\n", le32_to_cpu(hdr.hdr_len));
+	if (version >= 1) {
+		printf("Flags:\t\t");
+		flags = le32_to_cpu(hdr.flags);
+		if (flags & LXL_FLAGS_VENDOR_LUXUL)
+			printf("VENDOR_LUXUL ");
+		printf("\n");
+		memcpy(board, hdr.board, sizeof(hdr.board));
+		board[16] = '\0';
+		printf("Board:\t\t%s\n", board);
+	}
+	if (version >= 2) {
+		printf("Release:\t");
+		if (hdr.release[0] || hdr.release[1] || hdr.release[2] || hdr.release[3]) {
+			printf("%hu.%hu.%hu", hdr.release[0], hdr.release[1], hdr.release[2]);
+			if (hdr.release[3])
+				printf(".%hu", hdr.release[3]);
+		}
+		printf("\n");
+	}
+
+err_close:
+	fclose(lxl);
+out:
+	return err;
+}
+
+/**************************************************
+ * Create
+ **************************************************/
+
+static int lxlfw_create(int argc, char **argv) {
+	struct lxl_hdr hdr = {
+		.magic = { 'L', 'X', 'L', '#' },
+	};
+	char *in_path = NULL;
+	uint32_t version = 0;
+	uint32_t hdr_len;
+	ssize_t bytes;
+	char buf[512];
+	int err = 0;
+	FILE *lxl;
+	FILE *in;
+	int c;
+
+	if (argc < 3) {
+		fprintf(stderr, "Missing <file> argument\n");
+		err = -EINVAL;
+		goto out;
+	}
+
+	optind = 3;
+	while ((c = getopt(argc, argv, "i:lb:r:")) != -1) {
+		switch (c) {
+		case 'i':
+			in_path = optarg;
+			break;
+		case 'l':
+			hdr.flags |= cpu_to_le32(LXL_FLAGS_VENDOR_LUXUL);
+			version = max(version, 1);
+			break;
+		case 'b':
+			memcpy(hdr.board, optarg, strlen(optarg) > 16 ? 16 : strlen(optarg));
+			version = max(version, 1);
+			break;
+		case 'r':
+			if (sscanf(optarg, "%hhu.%hhu.%hhu.%hhu", &hdr.release[0], &hdr.release[1], &hdr.release[2], &hdr.release[3]) < 1) {
+				fprintf(stderr, "Failed to parse release number \"%s\"\n", optarg);
+				err = -EINVAL;
+				goto out;
+			}
+			version = max(version, 2);
+			break;
+		}
+	}
+
+	hdr.version = cpu_to_le32(version);
+	hdr_len = lxlfw_hdr_len(version);
+	if (!hdr_len) {
+		err = -EINVAL;
+		goto out;
+	}
+	hdr.hdr_len = cpu_to_le32(hdr_len);
+
+	if (!in_path) {
+		fprintf(stderr, "Missing input file argument\n");
+		err = -EINVAL;
+		goto out;
+	}
+
+	in = fopen(in_path, "r");
+	if (!in) {
+		fprintf(stderr, "Could not open input file %s\n", in_path);
+		err = -EIO;
+		goto out;
+	}
+
+	lxl = fopen(argv[2], "w+");
+	if (!lxl) {
+		fprintf(stderr, "Could not open \"%s\" file\n", argv[2]);
+		err = -EIO;
+		goto err_close_in;
+	}
+
+	bytes = fwrite(&hdr, 1, hdr_len, lxl);
+	if (bytes != hdr_len) {
+		fprintf(stderr, "Could not write Luxul's header\n");
+		err = -EIO;
+		goto err_close_lxl;
+	}
+
+	while ((bytes = fread(buf, 1, sizeof(buf), in)) > 0) {
+		if (fwrite(buf, 1, bytes, lxl) != bytes) {
+			fprintf(stderr, "Could not copy %zu bytes from input file\n", bytes);
+			err = -EIO;
+			goto err_close_lxl;
+		}
+	}
+
+err_close_lxl:
+	fclose(lxl);
+err_close_in:
+	fclose(in);
+out:
+	return err;
+}
+
+/**************************************************
+ * Start
+ **************************************************/
+
+static void usage() {
+	printf("Usage:\n");
+	printf("\n");
+	printf("Get info about Luxul firmware:\n");
+	printf("\tlxlfw info <file>\n");
+	printf("\n");
+	printf("Create new Luxul firmware:\n");
+	printf("\tlxlfw create <file> [options]\n");
+	printf("\t-i file\t\t\t\tinput file for Luxul's firmware container\n");
+	printf("\t-l\t\t\t\tmark firmware as created by Luxul company (DON'T USE)\n");
+	printf("\t-b board\t\t\tboard (device) name\n");
+	printf("\t-r release\t\t\trelease number (e.g. 5.1.0, 7.1.0.2)\n");
+}
+
+int main(int argc, char **argv) {
+	if (argc > 1) {
+		if (!strcmp(argv[1], "info"))
+			return lxlfw_info(argc, argv);
+		else if (!strcmp(argv[1], "create"))
+			return lxlfw_create(argc, argv);
+	}
+
+	usage();
+	return 0;
+}
-- 
1.9.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
