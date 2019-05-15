Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 879621FB94
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 22:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rdsBhmh3ZLZigPPTi2vbWFgFgVLQcJClVGhvk84UrRs=; b=BPvbJP5c25pPhQ
	LUjaQMg11tAK8JlHoocmhHy6jIjDLZcGHCDQSe3aY9dXNv10wXgfzXA85h9c8t0rS1vs6Htv3x2cz
	+IbD6SVQRV45zXutcDqf17/pgFHMpRiL3DN8S3f1k62a4WRbGsL6/KJ/MUKdnx9JJjzzDokWxnBSp
	/87T8ZoEkaRhr0Z9nXmh7LtiCJQcorQgdYhi4/f8V7DFZh4l458AuHeZnbDznM6HnJF72m9U615mO
	2W0T5Ug20VXCDvur23fCnCJKO8prP9pzTK0bTbuqevTaQpowMM0fksPYRyzZm1Gq6IybV+vLhEVtn
	YWCldFDQ17MR48azxSiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR0fJ-0002Lc-UA; Wed, 15 May 2019 20:38:17 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR0fE-0002Kx-2J
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 20:38:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id d15so1014610ljc.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 13:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SguP5HL6I+WD1mLWGTI7JgpO063Zofvy9Pq1Vt9IosE=;
 b=a2xGr56kbdoszp71wpCcvTlRBKBpwDMoA9+iFrMbAAR4PePgQHmQdQSK/gbLLQWkzM
 4Py4op2aekTJK6DhBmwsDGBIvajQoM6gsCUqrzPKpUWbPTEXUTgeNYRrNRX8bwbqT28q
 F6oGb4+5Apv7QT77EbXRBYaZ1EEpQEtkfkPAN40Vihn+PXGUFiHBuLkirknqmNNG5pzP
 Tk2nQP1iQa4nkKZRMd22oKewohQdEJa0aLkkmMSURtV9Slj+toHmDjf+rdFE1tJQLg1/
 dPDGjMmkpAsXumwRI/9jyHGXV+HSLQFZsLbxBRI8WuuYreXuJVBzklII2mjkw0oTDhEd
 L4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SguP5HL6I+WD1mLWGTI7JgpO063Zofvy9Pq1Vt9IosE=;
 b=dDgnfg+jttkAiN1acKRAFUyiRJ464ZxnvyWPY3gpE6x6mNbtG8CT9niRaH1EKwuJ9f
 P5Q53hDfUR+nvK2nmH7ZUrYea0/gt0hUwzXh8wItsQojPr4NGzwfB3btKmCvNEcNkkcr
 0jmwwuw7H93FEw5J1Mx1+XdUxVma/4uh+szYSYgwP4P0N2+g0gt21NMKdhSSsvgm0yz4
 6Nt8bLAeVARCsfLr4ZS0lWXc6BfTTlsdIdyfDBXZFmGQocjBcvXjr0HbmMZQlqiDI9MQ
 KHlowj6Vr22h1WAUM+KUkbddgJrJUpRfIb2Q7NzgvTB3Y/wSSpr1+67UpLQf42yn/RKk
 AwWA==
X-Gm-Message-State: APjAAAWvZBdAamYFg1EJmcH+VIO6X6xLKMSGP3kPNRU0+7DTOiRo1kMv
 JvCKfPa890FFBWVAie061Tfz6g==
X-Google-Smtp-Source: APXvYqzYGVwBVrHSAkbWynTC6BhvWzTJGFaK5F6UBZ91xhYQkIp0ptpFM53pE8MT8FbmJ0D3JMkFoQ==
X-Received: by 2002:a2e:94ca:: with SMTP id r10mr21239802ljh.33.1557952689296; 
 Wed, 15 May 2019 13:38:09 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id o70sm564344lff.53.2019.05.15.13.38.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 13:38:07 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 15 May 2019 22:37:25 +0200
Message-Id: <20190515203726.25739-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_133812_175735_DD210D49 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] mtd: Make fixwrgg command work on
 DIR-685
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Petr Stetiar <ynezz@true.cz>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The D-Link DIR-685 has the same problem as the
D-Link DAP-2695: when flashing the factory image, the
checksum includes the whole flashed image, even the
rootfs_data part with the end of filesystem mark.
Also the whole flashed image is stored in the flash,
so on the first boot, the whole rootfs image is loaded
into memory with the kernel.

This is fixed using the fixwrgg command to mtd, but
for this to work we need to make fixwrgg work with
the Little-Endian ARM DIR-685.

The code tries to be endian agnostic but this fails
because the WRGG image loader doesn't. On ARM, the
file size is stored in little endian format, and on
big-endian systems it is stored in big endian format,
so we can just drop all the friendly htonl() that
will make the shdr->size big endian: this will
actually break the little endian systems, and on
the big endian systems the native endianness will
still be correct.

The magic number is always stored in little endian
format however, so make sure this is always read
in LE32 format. I chose to create a straight-forward
le32_to_cpu() static inline that IMO is simple and
easy to read.

Cc: Stijn Tintel <stijn@linux-ipv6.be>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
It'd be great if someone could verify that this works
with DAP-2695 as well. The code is inspired by the
kernel mtdsplit code in
target/linux/generic/files/drivers/mtd/mtdsplit/mtdsplit_wrgg.c
---
 package/system/mtd/src/wrgg.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/package/system/mtd/src/wrgg.c b/package/system/mtd/src/wrgg.c
index e0b5ca172d12..c62f9f550736 100644
--- a/package/system/mtd/src/wrgg.c
+++ b/package/system/mtd/src/wrgg.c
@@ -39,13 +39,10 @@
 #include "wrgg.h"
 #include "md5.h"
 
-#if __BYTE_ORDER == __BIG_ENDIAN
-#define STORE32_LE(X)           ((((X) & 0x000000FF) << 24) | (((X) & 0x0000FF00) << 8) | (((X) & 0x00FF0000) >> 8) | (((X) & 0xFF000000) >> 24))
-#elif __BYTE_ORDER == __LITTLE_ENDIAN
-#define STORE32_LE(X)           (X)
-#else
-#error unknown endianness!
-#endif
+static inline uint32_t le32_to_cpu(uint8_t *buf)
+{
+	return buf[0] | buf[1] << 8 | buf[2] << 16 | buf[3] << 24;
+}
 
 ssize_t pread(int fd, void *buf, size_t count, off_t offset);
 ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset);
@@ -94,7 +91,7 @@ wrgg_fix_md5(struct wrgg03_header *shdr, int fd, size_t data_offset, size_t data
 	}
 
 	/* update the size in the image */
-	shdr->size = htonl(data_size);
+	shdr->size = data_size;
 
 	/* update the checksum in the image */
 	memcpy(shdr->digest, digest, sizeof(digest));
@@ -147,12 +144,14 @@ mtd_fixwrgg(const char *mtd, size_t offset, size_t data_size)
 	}
 
 	shdr = (struct wrgg03_header *)(first_block + offset);
-	if (shdr->magic1 != htonl(STORE32_LE(WRGG03_MAGIC))) {
-		fprintf(stderr, "magic1 %x\n", shdr->magic1);
-		fprintf(stderr, "htonl(WRGG03_MAGIC) %x\n", WRGG03_MAGIC);
+
+	/* The magic is always stored in little-endian byte order */
+	if (le32_to_cpu((uint8_t *)&shdr->magic1) != WRGG03_MAGIC) {
+		fprintf(stderr, "magic1 = %x\n", shdr->magic1);
+		fprintf(stderr, "WRGG03_MAGIC = %x\n", WRGG03_MAGIC);
 		fprintf(stderr, "No WRGG header found\n");
 		exit(1);
-	} else if (!ntohl(shdr->size)) {
+	} else if (!shdr->size) {
 		fprintf(stderr, "WRGG entity with empty image\n");
 		exit(1);
 	}
@@ -160,8 +159,8 @@ mtd_fixwrgg(const char *mtd, size_t offset, size_t data_size)
 	data_offset = offset + sizeof(struct wrgg03_header);
 	if (!data_size)
 		data_size = mtdsize - data_offset;
-	if (data_size > ntohl(shdr->size))
-		data_size = ntohl(shdr->size);
+	if (data_size > shdr->size)
+		data_size = shdr->size;
 	if (wrgg_fix_md5(shdr, fd, data_offset, data_size))
 		goto out;
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
