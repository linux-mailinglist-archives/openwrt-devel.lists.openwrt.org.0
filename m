Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D7D1846B9
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 13:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ou5vsoVCtkmadZlVnZmThPV95zjqmjdMqE/Vz/HcmhM=; b=QgwIwHN9ocT38R
	LmJNeBBVmbzsPZz85zuSSy2zGW2nYN4XofZp3+IZsbcdW8FQdd8Gk8o5iziFAYhinV0sLu5SzXtwh
	jV0eHICwy7F9TSL/DgT91uqnEhY5KsGBpfIUylRvbDAoNuzMfZjzwJEeJkbTD1/e3jYvDzWm7qgzv
	X4+Ag4xfGqomy46/ESB6TPjGHWY4dHr6OkfIilVqHA+slPWyS7SeQ2ICyI0EB7zj8UywYhFbALRgn
	b0sbCJVQkb8SwzTXDTohJsq157W4Q4N5CBnMM6HBpasypC8ZlFfhw4xydvaaSRpTJ+IpqpsqDtbq7
	g5CqtPWV5n47G6olKobg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjIo-0001Xw-O3; Fri, 13 Mar 2020 12:20:34 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjIh-0001Xb-GV
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 12:20:28 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 3A2C06D6E2; Fri, 13 Mar 2020 13:20:26 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 02D326D6E0
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 13:20:26 +0100 (CET)
Received: (qmail 60887 invoked from network); 13 Mar 2020 13:20:25 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 13 Mar 2020 13:20:25 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 13:20:24 +0100
Message-Id: <20200313122024.707576-1-jo@mein.io>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_052027_699584_3DA0316C 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uhttpd] client: allow keep-alive for POST
 requests
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Allow POST requests via persistent connections to improve performance
especially when using HTTPS on older devices.

After this change, average page load times in LuCI improve significantly
once the TLS connections are initiated.

When testing an ar71xx 19.07.2 build on an ethernet connected TL-WR1043nd
using luci-ssl-openssl and the ustream-openssl backend, the average page
load time for the main status page decreased to 1.3s compared to 4.7s
before, the interface and wireless configuration pages loaded in 1.2s
seconds each compared to the 4.2s and 4.9s respectively before.

Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 client.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/client.c b/client.c
index 92f7609..2a2393f 100644
--- a/client.c
+++ b/client.c
@@ -194,8 +194,7 @@ static int client_parse_request(struct client *cl, char *data)
 
 	req->method = h_method;
 	req->version = h_version;
-	if (req->version < UH_HTTP_VER_1_1 || req->method == UH_HTTP_MSG_POST ||
-	    !conf.http_keepalive)
+	if (req->version < UH_HTTP_VER_1_1 || !conf.http_keepalive)
 		req->connection_close = true;
 
 	return CLIENT_STATE_HEADER;
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
