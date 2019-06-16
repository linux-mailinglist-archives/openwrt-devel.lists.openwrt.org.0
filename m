Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBCC47605
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 19:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpMuppgLbskKDmJ0HD5amRn4SjsKPENFSCb4KFq1c3w=; b=OlzeftqLeMdw0E
	fxySHYUc1yAwqdwGCi85hxJT8awoHnisjOLALb2wY8l6qe0DTc4fhcaT6v0fDoWW1HQShgRvruqtX
	cZ7e4o+qCQxKYQr3WmAFood5oHmBEijHnzp3f/y5BBlkUxa3t1TBFvyVzONNYDycMwE+7wM+w7mKx
	dmezVBoxwauvzKTExZkvrgE0jjJ351+xsJcQzvNtaM9vCDAUUOAzzMxLnxgs7Vw5ckk3b7Cl8EWt5
	qVh860vjFK25ASSvmTZOnAtW2fbiSJySphxzFix8oy7bfRVN0B0S5Mvh2Q+c2h/lnv0UUHG03fREm
	qY+B10jK45QehDeSc0HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcYXJ-0001Hi-4E; Sun, 16 Jun 2019 17:01:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcYWZ-0000kh-EJ
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 17:01:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id g135so6844181wme.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 10:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cVl+NgT2hm3o0Of4d5cwbfKlW2tfYgOOIuBDgia6u8Y=;
 b=CJ6FdVyEDwn+wpFd2M2tiJYinY3UCib+MzV7dA/xqXuQujU1jCnBh59wkX4Oa71D+y
 1WFDn4OSfPUYRVNjTiiuWHOoKpOnK5gQFkmnrCvp2q6kywswu6XJdfdOLLq7+Cj0PfxK
 F1U+Bj/VfHMwv14E4aByHcg/PJvJFHFLNnc6yzFZvGi/of1iQauOMb4mD3t+WA6peo+y
 BQtqajliFHXrMFPLFqhGnhKtwbgiBHuAj4PdxFINDh3Wam45nfXe7fFjzoMUNi2iyQvV
 h5jO3knC/0kGqnQzvPNT1ULibCD4AOejs9kmri51BPSepQLsgfKxGlLbDq8PlmiZWyRr
 aXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cVl+NgT2hm3o0Of4d5cwbfKlW2tfYgOOIuBDgia6u8Y=;
 b=c80L/WUpWbkdLnuoJp6bt3E724H7HvdX0WQ8eHMG3VlyJ8Z1S8UMozT7r1rswjtkRK
 +MNHt6aN5aRlWMa6sQu8/ddqP+Y5yp/jhsoRViViKjQN6LDJbz9LUD2fw41u8gG1Wolp
 7jeEHePW6h5nLPDugtW4Xx6n0onhPpzDWlbPholQUY5jBhI5AGjB35oNTTiT6dAagaEs
 QsUbEV5G4VY1Z4zG1i/WN4gQNBscKQzoVMqQq2inG7q0Zz4m/mibgBGEHJwKC9FK6GtP
 la1NF4cHeT7OfEp7lj/x8pSMypENSqBBULFsXt1r6jCrq6ajMJvYr7G1ILzphh6V8Z4E
 3PXA==
X-Gm-Message-State: APjAAAXQYX1tpjJNIGgZQlbkrUN1mpXzb79PG+SR3FOwc8KM+uRs/BYJ
 i5nn7kyuuN2mo7bPQJdqhoUU8yGioqc=
X-Google-Smtp-Source: APXvYqwrTUbH7V0Zc0LRrTlb7LJKkvY+Q2uPgWia+QwL2ZcTKwGQAfCRhVPb5WaEyv8FaUJ74M6jug==
X-Received: by 2002:a1c:e341:: with SMTP id a62mr16276506wmh.165.1560704457296; 
 Sun, 16 Jun 2019 10:00:57 -0700 (PDT)
Received: from Ansuel-XPS.localdomain (93-44-105-95.ip96.fastwebnet.it.
 [93.44.105.95])
 by smtp.googlemail.com with ESMTPSA id l8sm28907931wrg.40.2019.06.16.10.00.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 10:00:56 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 16 Jun 2019 19:00:49 +0200
Message-Id: <20190616170050.27126-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190616170050.27126-1-ansuelsmth@gmail.com>
References: <20190616170050.27126-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_100059_478115_26862D8B 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [fstools PATCH: 3/4] libblkid-tiny: adds
 blkid_probe_set_utf8label support
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
Cc: Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently set_utf8label support is missing. Adds a stripped down version of encode.c file from original libblkid and adds the function to libblkid-tiny.c.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 CMakeLists.txt                |  1 +
 libblkid-tiny/encode.c        | 66 +++++++++++++++++++++++++++++++++++
 libblkid-tiny/encode.h        | 11 ++++++
 libblkid-tiny/libblkid-tiny.c | 15 ++++++++
 4 files changed, 93 insertions(+)
 create mode 100644 libblkid-tiny/encode.c
 create mode 100644 libblkid-tiny/encode.h

diff --git a/CMakeLists.txt b/CMakeLists.txt
index f86a4d5..7f13c4f 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -19,6 +19,7 @@ TARGET_LINK_LIBRARIES(fstools ubox)
 INSTALL(TARGETS fstools LIBRARY DESTINATION lib)
 
 ADD_LIBRARY(blkid-tiny SHARED
+		libblkid-tiny/encode.c
 		libblkid-tiny/libblkid-tiny.c
 		libblkid-tiny/mkdev.c
 		libblkid-tiny/ext.c
diff --git a/libblkid-tiny/encode.c b/libblkid-tiny/encode.c
new file mode 100644
index 0000000..4d8343e
--- /dev/null
+++ b/libblkid-tiny/encode.c
@@ -0,0 +1,66 @@
+/*
+ * encode.c - string conversion routines (mostly for compatibility with
+ *            udev/volume_id)
+ *
+ * Copyright (C) 2008 Kay Sievers <kay.sievers@vrfy.org>
+ * Copyright (C) 2009 Karel Zak <kzak@redhat.com>
+ *
+ * This file may be redistributed under the terms of the
+ * GNU Lesser General Public License.
+ */
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <stddef.h>
+#include <unistd.h>
+#include <errno.h>
+#include <string.h>
+#include <ctype.h>
+
+#include "encode.h"
+
+size_t blkid_encode_to_utf8(int enc, unsigned char *dest, size_t len,
+				const unsigned char *src, size_t count)
+{
+	size_t i, j;
+	uint16_t c;
+
+	for (j = i = 0; i < count; i++) {
+		if (enc == BLKID_ENC_UTF16LE) {
+			if (i+2 > count)
+				break;
+			c = (src[i+1] << 8) | src[i];
+			i++;
+		} else if (enc == BLKID_ENC_UTF16BE) {
+			if (i+2 > count)
+				break;
+			c = (src[i] << 8) | src[i+1];
+			i++;
+		} else if (enc == BLKID_ENC_LATIN1) {
+			c = src[i];
+		} else {
+			return 0;
+		}
+		if (c == 0) {
+			dest[j] = '\0';
+			break;
+		} else if (c < 0x80) {
+			if (j+1 >= len)
+				break;
+			dest[j++] = (uint8_t) c;
+		} else if (c < 0x800) {
+			if (j+2 >= len)
+				break;
+			dest[j++] = (uint8_t) (0xc0 | (c >> 6));
+			dest[j++] = (uint8_t) (0x80 | (c & 0x3f));
+		} else {
+			if (j+3 >= len)
+				break;
+			dest[j++] = (uint8_t) (0xe0 | (c >> 12));
+			dest[j++] = (uint8_t) (0x80 | ((c >> 6) & 0x3f));
+			dest[j++] = (uint8_t) (0x80 | (c & 0x3f));
+		}
+	}
+	dest[j] = '\0';
+	return j;
+}
\ No newline at end of file
diff --git a/libblkid-tiny/encode.h b/libblkid-tiny/encode.h
new file mode 100644
index 0000000..92fcc21
--- /dev/null
+++ b/libblkid-tiny/encode.h
@@ -0,0 +1,11 @@
+#ifndef _ENCODE_H
+#define _ENCODE_H
+
+#define BLKID_ENC_UTF16BE	0
+#define BLKID_ENC_UTF16LE	1
+#define BLKID_ENC_LATIN1	2
+
+size_t blkid_encode_to_utf8(int enc, unsigned char *dest, size_t len,
+				const unsigned char *src, size_t count);
+
+#endif /* _ENCODE_H */
\ No newline at end of file
diff --git a/libblkid-tiny/libblkid-tiny.c b/libblkid-tiny/libblkid-tiny.c
index f020e23..a30f619 100644
--- a/libblkid-tiny/libblkid-tiny.c
+++ b/libblkid-tiny/libblkid-tiny.c
@@ -121,6 +121,21 @@ int blkid_probe_set_label(blkid_probe pr, unsigned char *label, size_t len)
 	return 0;
 }
 
+int blkid_probe_set_utf8label(blkid_probe pr, unsigned char *label,
+				size_t len, int enc)
+{
+	if (len > (sizeof(pr->label) - 1)) {
+		fprintf(stderr, "label buffer too small %d > %d\n",
+			(int) len, (int) sizeof(pr->label) - 1);
+		return -1;
+	}
+
+	blkid_encode_to_utf8(enc,(unsigned char*) pr->label, len,
+			label, len+1);
+
+	return 0;
+}
+
 int blkid_probe_set_uuid_as(blkid_probe pr, unsigned char *uuid, const char *name)
 {
 	short unsigned int*u = (short unsigned int*) uuid;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
