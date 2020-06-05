Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D9D1EEECD
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 02:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PE6ybYP5lpc9U/Zq9O6t6zo4EpgHcpCB1wzllEMOzsM=; b=MFdCjwCO2M6QLC
	TD0Jk2g7c6qHBydmb+rv/ZDT1bO9+h4TOpGsCSi53TUSh8WbBSEznzHeZg5DCrCTgyQs59I4DjmIK
	Q9XKjILlbr4bhIh/BipWnAiX3//OgzMEg+dPLZ1HptsXYKqmikw4V+zFsBXy9vuskrAJMTMJUBAvT
	tdIziidwHwVas6y0pwni6JqYJ1ebfAdBg+3EUg1cxybQA9hZ8H6qN666HUcEYJvApvOCG69nkvYgW
	sYPFzBoFI4Bn9SeEzEhStn3jna1/37lI/PK4cv/SId8slu8DXxch1OQNWuVn7KlvEdSsJ049E+pZy
	0lwx2OfD6aFlQt92OcNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh0Ho-0006B4-0L; Fri, 05 Jun 2020 00:32:40 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh0Hh-0006AY-BT
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 00:32:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id bg4so2912193plb.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 17:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EYtyZn6ZKMA23y5b+PabXrmcSxZ0efkwbnI4noE0xJw=;
 b=pf/KjEzuklJQ150S1JMaSWNSNp6eweStaQ/XqDpGjhXLsHVLGZcMbo9nNqvFfFCxgK
 zrUOXtyQBosuTdexaO5qBYYsWyeLLynvRA/snZqGGNjY5vTWYB8fZqF5GRx6bpVkDXUR
 mE1F+3uivEivl+lW2xsAr6uS+HJbnyfTArhoU7bBNXwqrqq2fwDh64dLkEFRlZv1dfBS
 HsyWCVWLIRE92GpXcOju4FwXf5ZeYkNPLWB9Wi32Y5uGH0g/WRTC2h2puOhUL705s3gc
 l5oUqT/uSpONxhnjoguGColc1BSy9740l4vEIzZYAdzfVlk0mXimgTHgYEjRI5KxCJIJ
 XGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EYtyZn6ZKMA23y5b+PabXrmcSxZ0efkwbnI4noE0xJw=;
 b=C85O7P3UBhaFWv321PEuFJu4jx3dSKXFR5c6lmUU75fhJncgLIQMRjhdvAYuAkuJIS
 D3H6EwKsejxQN/O4JNk3F6R7BgqvBWLA/DWEfWRjX3sPvYq6Lj3PdemKbOSwdOSI+t1I
 69rn+2ynjWdu2v+/CBfx8bWUbczPjLR4BvvFZOOl2c+fGG6kPPYOpT6urIK8Ee5J73v8
 3zedjcTJv4dFpKfESj4MAR0XALVYkB7D54bajhodl9Ezq7FRs8wiZssguDDRCqLsxunt
 0QqctXxH5g58rtQIr9z+TpQndM69JmCk8oH0ZUXlDuo21d+M/kjLLyiQ5RKKp1IeP6EB
 8cLw==
X-Gm-Message-State: AOAM5307AG/OAMah6fLEl4hRltAyGpV2kBy2a7VSaL9dRn3bPR/KyNsP
 ChC1FQxEIcl8AFBF9TXR8ZjTyu33gcU=
X-Google-Smtp-Source: ABdhPJzfXhpDUpoY+fk1xFasbp5p+xX5C1sNT6/jsWwMdYa/rj57axtSYLfI9+lzhfxXSuljocCWMg==
X-Received: by 2002:a17:902:7403:: with SMTP id
 g3mr6762493pll.342.1591317150397; 
 Thu, 04 Jun 2020 17:32:30 -0700 (PDT)
Received: from grun.hsd1.or.comcast.net (c-67-160-156-165.hsd1.or.comcast.net.
 [67.160.156.165])
 by smtp.gmail.com with ESMTPSA id 67sm5672391pfg.84.2020.06.04.17.32.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 17:32:29 -0700 (PDT)
From: Daniel Bailey <danielb@meshplusplus.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  4 Jun 2020 17:32:27 -0700
Message-Id: <20200605003227.651374-1-danielb@meshplusplus.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_173233_462838_7A3B8366 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] sysupgrade: kill services before
 upgraded/stage2
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

Sometimes stage2 is unable to kill all processes which results in a
failed upgrade.

Rather than fully relying on stage2, let procd gracefully terminate
the services in the services AVL tree before handing control to
upgraded.

Signed-off-by: Daniel Bailey <danielb@meshplusplus.com>
---
 service/service.c | 22 ++++++++++++++++++++++
 service/service.h |  1 +
 system.c          |  6 ++++++
 3 files changed, 29 insertions(+)

diff --git a/service/service.c b/service/service.c
index fcf0215..7191cec 100644
--- a/service/service.c
+++ b/service/service.c
@@ -837,6 +837,28 @@ service_start_early(char *name, char *cmdline)
 	return service_handle_set(NULL, NULL, NULL, "add", b.head);
 }
 
+int
+service_delete_all(void)
+{
+	struct service *s, *safe;
+	const struct avl_tree *tree = &services;
+	int ret;
+
+	avl_for_each_element_safe(tree, s, avl, safe) {
+		blob_buf_init(&b, 0);
+		blobmsg_add_string(&b, "name", s->name);
+
+		ret = service_handle_delete(NULL, NULL, NULL, NULL, b.head);
+
+		if (ret) {
+			ERROR("failed to delete service '%s'", s->name);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 void service_stopped(struct service *s)
 {
 	_service_stopped(s, false);
diff --git a/service/service.h b/service/service.h
index fac5da9..09ed409 100644
--- a/service/service.h
+++ b/service/service.h
@@ -56,6 +56,7 @@ void service_validate_add(struct service *s, struct blob_attr *attr);
 void service_validate_dump(struct blob_buf *b, struct service *s);
 void service_validate_dump_all(struct blob_buf *b, char *p, char *s);
 int service_start_early(char *name, char *cmdline);
+int service_delete_all(void);
 void service_stopped(struct service *s);
 void service_validate_del(struct service *s);
 void service_event(const char *type, const char *service, const char *instance);
diff --git a/system.c b/system.c
index 0fb98f1..38a0539 100644
--- a/system.c
+++ b/system.c
@@ -30,6 +30,7 @@
 #include <libubox/uloop.h>
 
 #include "procd.h"
+#include "service/service.h"
 #include "sysupgrade.h"
 #include "watchdog.h"
 
@@ -695,6 +696,11 @@ static int sysupgrade(struct ubus_context *ctx, struct ubus_object *obj,
 		return UBUS_STATUS_NOT_SUPPORTED;
 	}
 
+	if (service_delete_all()) {
+		sysupgrade_error(ctx, req, "Failed to delete all services");
+		return UBUS_STATUS_UNKNOWN_ERROR;
+	}
+
 	sysupgrade_exec_upgraded(blobmsg_get_string(tb[SYSUPGRADE_PREFIX]),
 				 blobmsg_get_string(tb[SYSUPGRADE_PATH]),
 				 tb[SYSUPGRADE_BACKUP] ? blobmsg_get_string(tb[SYSUPGRADE_BACKUP]) : NULL,
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
