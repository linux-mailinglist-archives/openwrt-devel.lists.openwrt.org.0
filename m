Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477F3197380
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Mar 2020 06:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LXAgW+JUOQ/joQ8R+d+zVCDuvwD7z7xlgrjXPes7ns4=; b=bKPpJUhfA+3596
	tfjSxVlqCp1QicXw62Xyz36fFXFrBRAQkCQJwAIzHh02UdZVbezCRKU+FdXglLJ4+mU9Z0V5RHzia
	1+EbXueO+E1oPy/1+W/6RoA8AxhLSrsdid4MXry5ZNXh9YEFqPqldUxmUZ6by7m1xZiC0A7sXNHcI
	NgUa4+QlUtCQazbrBY8Hoi7EeDDIZfCeQmv98hKDrhn31seDEMBGc9br4KJAXgxkCQPb6cgWohg2r
	vWmXoOuKIhsm92AVtk6wDvIljskcoHPHGbhA2mw6C68675jOobi/u/TNKAaoTF5suH+E6PF4cIbnO
	YEwPgTMznYYd6N4GbKag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jImI4-00080F-3n; Mon, 30 Mar 2020 04:44:48 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImHu-0007zr-U1
 for openwrt-devel@lists.openwrt.org; Mon, 30 Mar 2020 04:44:40 +0000
Received: by mail-pg1-x534.google.com with SMTP id 142so8093779pgf.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Mar 2020 21:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mLflnFVxmUXhUImQvBKsSsDkfF5LRkfD6E3rc1H+y10=;
 b=vHVhO7K1hLjTJbxgxYe+YYhMavPln04GE+wkjRCvd8r5sy0Xp6Fv8xSRujaMvVvpwd
 Rlt2bWIjcZVUMeQtNNiJH0IegjH7yUDyZXOEAkHVUzV9wiZ3c4o1TPanZCnYK3pneoms
 OcMWmCcwguCFiL7lWb9Vj++SrWaJQcQNS/4Q3wXFUUenStl413eayFAwtOzezi2Kz6TO
 7THTVTh8e4eli5Khp7xA0nRU8NJRCS04mDH3FfVEyJcGKM2m0qAllaBdq0J6FPPb4t9c
 r9sgCwnXUasGHQuHbxPiYQ9LngmcHls3sRpsdpSaYnabWT/nHQChB0e1STUAXWYiRsXF
 sIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mLflnFVxmUXhUImQvBKsSsDkfF5LRkfD6E3rc1H+y10=;
 b=sBlm/YdH3CGnhlcSSHm4ncjuJEQJc2gsdr2UJ7pW1dAmBGfgwP58poqvEie4a5riWA
 4J89nqB3YDeCd2r5tHIog2gKv91+XTfyoFhZslPwa0aDs7MLcNaHiM7HZYSk4HR4pmjp
 qt4ujkh+Jn5aXZUENxQMTUce/XKq/vIisMgEMNDwT0q6N+NuPQYHbuO8EWndXYxAVH67
 LmzUGBeetJy2z0nI9MfH+H7T/GCVW/JLKsNAjP1/00kGT1tKPD7cjM0vBh+iuX3sev7i
 Ty+bfP0YU0Yn+P9xDqJtvd3TNBZgTtTcgEcNs0O/e245aMdGTSFSZXOg5ml+GvOGpdHh
 dUfw==
X-Gm-Message-State: ANhLgQ2i1znb3/y5d20imILxrhlUlAe+Ss0/FZrq/ROQvtgDSpdE8qcY
 YqDTe7NvicSgljHSMJL2YwF55EN3Q6E=
X-Google-Smtp-Source: ADFU+vttqYwnrRULLy41/wVL0xNrnhkVkqxqe3/QniMZJmjt23BvMlquKN4E8d5OG1sMkIz+7ltlPQ==
X-Received: by 2002:a62:15d3:: with SMTP id 202mr11813857pfv.231.1585543476784; 
 Sun, 29 Mar 2020 21:44:36 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id r59sm9337610pjb.45.2020.03.29.21.44.35
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 21:44:36 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Mar 2020 21:44:34 -0700
Message-Id: <20200330044434.1954554-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_214438_992854_61F8FC6C 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ppd: add missing header
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

sys/cdefs.h is needed for __P macro definition.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/services/ppp/Makefile                |  2 +-
 package/network/services/ppp/patches/800-cdefs.patch | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)
 create mode 100644 package/network/services/ppp/patches/800-cdefs.patch

diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
index 9e42cb7437..88b0a518e5 100644
--- a/package/network/services/ppp/Makefile
+++ b/package/network/services/ppp/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ppp
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/paulusmack/ppp
diff --git a/package/network/services/ppp/patches/800-cdefs.patch b/package/network/services/ppp/patches/800-cdefs.patch
new file mode 100644
index 0000000000..e361275a3c
--- /dev/null
+++ b/package/network/services/ppp/patches/800-cdefs.patch
@@ -0,0 +1,10 @@
+--- a/pppd/pppd.h
++++ b/pppd/pppd.h
+@@ -53,6 +53,7 @@
+ #include <stdlib.h>		/* for encrypt */
+ #include <unistd.h>		/* for setkey */
+ #include <limits.h>		/* for NGROUPS_MAX */
++#include <sys/cdefs.h>		/* for __P */
+ #include <sys/param.h>		/* for MAXPATHLEN and BSD4_4, if defined */
+ #include <sys/types.h>		/* for u_int32_t, if defined */
+ #include <sys/time.h>		/* for struct timeval */
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
