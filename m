Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DFE193491
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 00:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P05EXpBFHeo2r0iQkasAWK3Pbwg86LGSAah+xqJDfHQ=; b=dMGejH3VbmCAfb
	NPD9osnC+YR2PQBES9zKWTHI2zFTOX9lD+0mcVW8qeCqVKxqcSekByscEhuIINlCUskiTl+mIc8tM
	pwbB7V2AbTNocUjOh81rRnVjhIFBpVt61oGSYP9cbET8xAl3We503n28+lKZ0UKhvjicSOLi0sdWg
	azBYpMQjiIhinoXa9570A3goC8JQ2XEwERvNrXGVJ4lgSN7E9r8+K72uSJH67U2DHMKnryQPRYAeP
	WSsVAicktczwiiIBaR3bX9n30pl3eHhoYvUYD4gocuPEvuRPKVXAajecXaZe2ZjBYU7yKqAz1uodZ
	Ty/VOEhfpbq0Nqpv0OIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFRI-0001Xm-I2; Wed, 25 Mar 2020 23:28:00 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFR8-0001XS-Sv
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 23:27:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id v13so1701512pjb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 16:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zo5lLDcaLU9oIVyTcUBNpJIwnjmDLGEEHkzS5MT7+HY=;
 b=WHv/yL2rgp3rIl//vpSJGZ1tHBBR779FHC9oFjZ9Y1gkNCyGRBsn+iwz1jHexaGjz/
 tEPK+w6f7MB9me+T8BS5Hi7j9jocPZpxh1ubCPq9dqRPUe0YRNE6UsmxEDx7nHwOaUJU
 Q2ncsCrQ1//XJd8wNm6H1swpvCdpcFhYaRRCttZijkecw0c4LljKTDfnv7tK99xPStE8
 lTDzBLM6NvYHBMTFNGsgefZP+yChgCsB2JjMUSh9BaBNIEs0KI6S+59C/3XEk7KfZVg1
 9TDCT/BPDe2CnpC89fXAJy6dbx4GYF4m5Amyx0AlsEkyjFyBOTDvFOxWxhtUMQgN1UQN
 D0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zo5lLDcaLU9oIVyTcUBNpJIwnjmDLGEEHkzS5MT7+HY=;
 b=TEd3Gnblcf/rh0GIWid3MbtWGCVXRnz7ZHR4QXYphRyelZpZjU3Q0xDo54niGZhB6X
 6TK/RNyxx/yWnmQZXcmSXb8ty+RmZ8WB8+C09QMd+0E+rjVjlEwo6nkjWkn4bcvpd2re
 gf0gUQG9btV2t5aRHDiL3LwfA3I2LHAShN8weVjrIhsZ3C8nRt+HM4TFLBAnqaawrG+A
 fYVqflwVJQWsQT24GTPMnQY9/WEir/PN4Xr+ZL+iURCLG97mv1QJr6WD9MJxRvJppdYv
 uOkpoAguEJK/Fv9b/PgjXgmM2R9g38qaAULm/Ht/8ZsMMKYZMwdxEGAkO95VJTaii3aA
 DNIA==
X-Gm-Message-State: ANhLgQ3rkiY4yAgMahNATlEzq2UXoHLJqaBBX/2pNHgTUQonPscqNg13
 hZmwfpQaXXTfmlqZ00UPWV2RxfiQVJQ=
X-Google-Smtp-Source: ADFU+vvUm0GVy0k7qcQrbKQu+F0aHbikoPckk01Nme2T66IA7wYa2FEgPh0yte0IJ+luliBwK9tokg==
X-Received: by 2002:a17:902:7c84:: with SMTP id
 y4mr5677302pll.30.1585178869431; 
 Wed, 25 Mar 2020 16:27:49 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id s15sm188254pfd.164.2020.03.25.16.27.48
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 16:27:48 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 16:27:47 -0700
Message-Id: <20200325232747.8675-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_162750_959654_B4A50F7B 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] fstoools: add define for GLOB_ONLYDIR
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

This was originally a patch for musl. It is not present in musl as it is a
GNU extension.

Place it here where it belongs.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 libfstools/overlay.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/libfstools/overlay.c b/libfstools/overlay.c
index 14214a3..39215d5 100644
--- a/libfstools/overlay.c
+++ b/libfstools/overlay.c
@@ -30,6 +30,10 @@
 #include "libfstools.h"
 #include "volume.h"
 
+#ifndef GLOB_ONLYDIR
+#define GLOB_ONLYDIR 0x100
+#endif
+
 #define SWITCH_JFFS2 "/tmp/.switch_jffs2"
 
 static bool keep_sysupgrade;
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
