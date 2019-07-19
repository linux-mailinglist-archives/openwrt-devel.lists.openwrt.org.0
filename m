Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11186E126
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 08:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zP5qjPoOIW9qE8Aml0bRgKnpM471izGGpGWNCftJvxc=; b=UjSt8fWui1k+Ag
	3h/c+he8ib/gKEnIZSP9c/YeqcNGwZurlvR3liCppu49bQNOv6qLL3r3x+HEAklZgWGSCrdYXufFJ
	662EgmW4nfRCu4MT4MKiHCXmQdA9y6pYjszZV1fcnPZ47H3IN2ZGMIc8U4f9P7XzlLCy626nb/C6o
	2Lt2STY7mYZXRlpxMoQ4UDEhVD8M9LiSwpeUq9jxPF3mWQpWV5JUSuZlnx9LVr3pisJMzp2Pv3b8Z
	6u2r74TANifefWWqJo4lB54oJCNuRveOAsDetQIANX8eZUx3RbALUMnxVSVFUzhpBAhmM3LcDvW/N
	bSKKusv+iLlJ7FgLhs/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMfP-0007eg-Gz; Fri, 19 Jul 2019 06:46:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMfF-0007eN-8I
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jul 2019 06:46:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so13738366pfa.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jul 2019 23:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=xqVYmAESV6apyvIXnMHQCFyjiXspwNAaPmwErt4p8rE=;
 b=uQLj9S4tZFi+fpAYmzeyMdOYDCzZWho07iXoCN31qLLlvx2D5vbsbD2Jkfk7pL/6hF
 Ca+lUpyiOnTbv7GfkTQ7XR30/Z2aZ5HvKE2jdbk2ZBl6tFv6wEyzz9l/jIxoKbENfzNe
 jLpfWeTwjjn79WPtJcaOR6DGnQx78jrAPMFDaBoCo8p+xH2oZ8aCQNKGah2bR0yWVLrw
 CjjDN3nUAucRlCHnGgLzSUahRK3COouYCjO2PkUArNDmEyT4hPq84l1h44zNCShktgnW
 4sWjF2C1jm5H4cMHEydc7iI1Z1btI24mKxH2hyVINnfneY8zjjc4ifcb4MwZWH5mzhxh
 itGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=xqVYmAESV6apyvIXnMHQCFyjiXspwNAaPmwErt4p8rE=;
 b=YNo5fGecCFJYxj++bXwsfdqI2fgcxrDYzSx0EKzqnu9va2k5ydIv3dF46Ha8L/15nX
 rtADugBpGeXjMxYD+4DMj26meK3sWnjCEg/hQM+YKTV9MY4JMt4DI0tqYDZF1f3iC3JF
 awXbJ/Sdktp0ryFtf/jS7VcwdyTdDX+lbpZzW29VdixwyVzOBCFr3FDK7XL0UsAALxey
 49cMGxrqebdBpUsZKhJTMiaaocnNABwmkHVULwOKQDLX1zVIwnPiXM8hCyOtYGpuWN1b
 q7Y5PVbFKHhLyZYx/u3HlsD7rlLUk6PWw49Gh99TKOPb1EHzElM1q8V5tDd/i1eJ8okG
 rFaw==
X-Gm-Message-State: APjAAAXylypdStWUl2p+YZh9WaAwkCtiPOeNBlhOAwqYE6JwK4w4yJMj
 F1MlUAuIXVaScjEnPvxvS111xhpEY1A=
X-Google-Smtp-Source: APXvYqx5aRF8UFl5J1kMxBqo9+XkeLgMgKyZiygV//RgNMGkbTp2MH2CTfQ5JU/jP4injG2H5xnrmA==
X-Received: by 2002:a65:6850:: with SMTP id q16mr14915473pgt.423.1563518803775; 
 Thu, 18 Jul 2019 23:46:43 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id s20sm32908214pfe.169.2019.07.18.23.46.42
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 23:46:43 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 23:46:42 -0700
Message-Id: <20190719064642.5240-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_234645_299602_A5B15BEE 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] uci/file: replace mktemp() with mkstemp()
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

From: Maxim Gorbachyov <maxim.gorbachyov@gmail.com>

mktemp is unsafe to use as well as deprecated by POSIX.1-2008. uClibc-ng
optionally does not include it when SuSv3 legacy functions are disabled.

Signed-off-by: Maxim Gorbachyov <maxim.gorbachyov@gmail.com>
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 file.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/file.c b/file.c
index 9856369..7333e48 100644
--- a/file.c
+++ b/file.c
@@ -28,6 +28,7 @@
 #include <glob.h>
 #include <string.h>
 #include <stdlib.h>
+#include <errno.h>
 
 #include "uci.h"
 #include "uci_internal.h"
@@ -723,8 +724,8 @@ static void uci_file_commit(struct uci_context *ctx, struct uci_package **packag
 	char *name = NULL;
 	char *path = NULL;
 	char *filename = NULL;
-	struct stat statbuf;
 	bool do_rename = false;
+	int fd;
 
 	if (!p->path) {
 		if (overwrite)
@@ -770,18 +771,20 @@ static void uci_file_commit(struct uci_context *ctx, struct uci_package **packag
 			goto done;
 	}
 
-	if (!mktemp(filename))
-		*filename = 0;
+	fd = mkstemp(filename);
+	if (fd == -1)
+		UCI_THROW(ctx, UCI_ERR_IO);
 
-	if (!*filename) {
-		free(filename);
+	if ((flock(fd, LOCK_EX) < 0) && (errno != ENOSYS))
+		UCI_THROW(ctx, UCI_ERR_IO);
+
+	if (lseek(fd, 0, SEEK_SET) < 0)
 		UCI_THROW(ctx, UCI_ERR_IO);
-	}
 
-	if ((stat(filename, &statbuf) == 0) && ((statbuf.st_mode & S_IFMT) != S_IFREG))
+	f2 = fdopen(fd, "w+");
+	if (!f2)
 		UCI_THROW(ctx, UCI_ERR_IO);
 
-	f2 = uci_open_stream(ctx, filename, p->path, SEEK_SET, true, true);
 	uci_export(ctx, f2, p, false);
 
 	fflush(f2);
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
