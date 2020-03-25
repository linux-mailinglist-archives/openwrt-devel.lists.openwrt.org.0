Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5341719211C
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 07:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LvyNsevU+L4+dNaFDmc3nxWv1ROThxuNdBC1191ncR4=; b=Tz/ig5xYNisMMw
	j1v2r5m5Ilo05On57CNUOEfPpQ6+xyp8JHtM4qYCQHKAN1cfWs0CbF9kw3HKb/VTibqopzoWlnPR6
	a5jUhsRxgl2drbsxIS7e3j5UWd7nt20CoBhoAtoX01XK5wbPLAhzVxwTEGHrnmth5e+7YWCarMfrh
	CubWlWEg7inNNJ+CUZtvxAxMGisd/BzAuJrqBaATBY97CykVCL/m2znRiv9zeLmyuNCshdVufHfkB
	Jpwd1krQ0Ci/Oc9TCLqkOr2l4L0cpW8X0U4UPoFhIwU5wcf6/ArzaXkNYnJmTXCvmF2kjJOaaEiVY
	LJN2aHnyXbfIikp4z4Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGzZA-000155-JE; Wed, 25 Mar 2020 06:31:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGzYy-00014H-Ma
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 06:30:53 +0000
Received: by mail-pj1-x1041.google.com with SMTP id nu11so601692pjb.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 23:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/mCYwXDj2dcHkMjL52ieztwQe+qI2Zuttj7AvZDZcaM=;
 b=BP7JgwrgGXi+zGkjbK+jqVBmWVxHua6kMfCkx/wBrac8fAHGAKVjxk1qa8kDInpJYv
 AvwhzjrsIOq2xfA8ZM0W2LE0YaVdmKz/kEhwjtO1VaCQl4gYKhnHU6Rs4AG36YbLEGef
 AqzuU+bKpohpYfVE5EKcJLvDFG9ZVuPwl3xI15nm9KnU3I9pu+0Ch1H6IFewtgixlSy1
 yoyxRZDdKLdXvEx4I95Kov0dPP/QksYlkhEy4CGQ2ZOOvIUJVvjzk1xk0PgVXpHfq1nB
 uQCR0GPa9d3zTNI4Mka8D+aRipWg1HRDV0l6jUCTBbgBLV7q7tpKBv+1sSBPqV0Coshg
 zqmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/mCYwXDj2dcHkMjL52ieztwQe+qI2Zuttj7AvZDZcaM=;
 b=WT8bAhzikbPUy2a/rbA6IUQs7mBmM/7sFXH3sLvB8Gbzl7PFW5JsX2W6tRDbrsN8xa
 3GLFkx1P1q/RzbmRZI+3xNpBJgSHe5KAXPYa77fIhDFVDDR6+oi06rqCwVmw+MXJbEhc
 rq4qzee0tQyqe/C3p/GwDHqP4UWCX88wetwd0NPr6C6E+vYrh+EfiZcQaeeBfsqA9MdK
 I6Aqn91PHu6XeJmmQw9hljfwDPQsHH06KAtdy25mLKhp9XjnQo5LvuPCKDPsrw91nqm/
 IdikgfYzGW3XTlUdVM3X+DiJ/S3JyxW445ZTiSRUwCWSYO8S1rETD3uHlmyBbQcWjsOv
 A/Bg==
X-Gm-Message-State: ANhLgQ3d8Fu/QttvPPUxIpziQqUG6VkKQ0Zcevb+QbURHT3se6lHJIvb
 nDbUCQAWKgfmgxXIy2Js7D+yicUa1SU=
X-Google-Smtp-Source: ADFU+vsiWspRZWNHkTcaih95HIVRlXbo6nfRrgILTlIuO3VDL+9ngP9DF6yrge3J04oYOelAoTAAcQ==
X-Received: by 2002:a17:90a:5805:: with SMTP id
 h5mr1921727pji.175.1585117851639; 
 Tue, 24 Mar 2020 23:30:51 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id s12sm16302944pgi.38.2020.03.24.23.30.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 23:30:51 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 23:30:49 -0700
Message-Id: <20200325063049.870312-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_233052_760769_D187C7A4 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] odhcpd: fix compilation with musl 1.2.0
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

SYS_clock_gettime is gone with musl 1.2.0, leaving only the 64-bit variant

Also fixed two format strings that fail as time_t is 64-bit with 1.2.0.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 src/odhcpd.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/src/odhcpd.c b/src/odhcpd.c
index 4b8e589..6015404 100644
--- a/src/odhcpd.c
+++ b/src/odhcpd.c
@@ -43,7 +43,9 @@
 #include <libubox/uloop.h>
 #include "odhcpd.h"
 
-
+#ifndef SYS_clock_gettime
+#define SYS_clock_gettime SYS_clock_gettime64
+#endif
 
 static int ioctl_sock = -1;
 static int urandom_fd = -1;
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
