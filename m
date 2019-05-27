Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A052B15B
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 11:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9iHQPun6mrwwimcc3O0B6InGFFvlKuMEtgzBSUpH78Q=; b=W3VKMPOtUE47Eu
	vkuuJ9tALO3pFasQuyRXYo41idHw4gNCn6eAdQ7q6TVzOk1gD+Jo9vEp8gdfTD/Q9Cm1SE+zK+d1h
	TCt/yGvoiNXErI7kTPA2BnDQsHlMolLe7jPa8wQ3gxkxUniwV9mNNiHFVngxk/jgdCdH9X+kzE7N6
	qDRFj/r1sfaNWGj8hSvz3wAYv7nN9TGDin/PuV9nMHHP7wlP+C/05bvSmFuqu8kc2oTJTbszjKBrg
	QFsq5oL0ntpdYK17W146NoV6UP1X45YSB/p4gwjftcNw4L9hymfWb7nvel1pT7D464zC8JB1hCh3i
	FhzCr1ZpUtDDYKsbPNPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVC1H-0000iK-Nd; Mon, 27 May 2019 09:34:15 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVC1A-0000hq-RU
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 09:34:10 +0000
Received: from dawn.lan (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 1397D240011;
 Mon, 27 May 2019 09:33:56 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 11:33:29 +0200
Message-Id: <20190527093329.4144-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_023409_038229_8E3D0DEE 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] procd: add docker support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

detects if running in a docker container, which then requires special
treatment of mounts. OpenWrt within Docker is useful for CI testing.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 container.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/container.h b/container.h
index d33fa32..dd2e432 100644
--- a/container.h
+++ b/container.h
@@ -16,9 +16,11 @@
 
 #include <stdlib.h>
 #include <stdbool.h>
+#include <sys/stat.h>
 
 static inline bool is_container() {
-	return !!getenv("container");
+	struct stat s;
+	return !!getenv("container") || !!stat("/.dockerenv", &s);
 }
 
 #endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
