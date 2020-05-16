Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEE71D6423
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7C1tjTCaJPEgScGGWc1Id8/vXjM97tjcjvs9zRhF8Ho=; b=X0VK2RclYk4A60
	4LsJEARbNB5mgruyY0jfGkZt32A5qD3tG9e9cXtZ9TCkL5SIUwsRw8kU43bJ8zmLuEJ5Q/0tLmz86
	sVdlQg1tFNQuLfc4VZoNlEfEic/fyZ/7l+yXXWDINCRcbqGJUs6b+K3vsSRZ8bURnMVv6ThD82aX4
	+zFEBtsWnPdpZI8Wc7T9IhGgxfUjugG8Ff4p7ps70eLwKlXFFWY2RGCsojZ8WejJpU+jrQHqDZgml
	+aAzmXAYQN9yMSsEjAiWmGvVvv3cH3Fd5EC8kYA1XF/oey1TD0jMuQZ3oj4Ztx+osMW0832N/VFF8
	nCiHPahnBQssr//4FT/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja49E-0000JJ-U2; Sat, 16 May 2020 21:15:08 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48e-0008II-UV
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:35 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 821542572D;
 Sat, 16 May 2020 23:14:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:52 +0200
Message-Id: <afc86f352bf7915f81e9d38949e91306542aadee.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141433_146681_26E8AE76 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 02/13] Fix return code of write_file()
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

write_file() returns 1/true on success; it should return 0/false when
opening the file fails.

To make it more obvious that is function returns true and not 0 on
success, also change its return type to bool.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 ucert.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/ucert.c b/ucert.c
index 2ea939947d72..7de4c12711e8 100644
--- a/ucert.c
+++ b/ucert.c
@@ -116,13 +116,13 @@ struct cert_object {
 };
 
 /* write buffer to file */
-static int write_file(const char *filename, void *buf, size_t len, bool append) {
+static bool write_file(const char *filename, void *buf, size_t len, bool append) {
 	FILE *f;
 	size_t outlen;
 
 	f = fopen(filename, append?"a":"w");
 	if (!f)
-		return 1;
+		return false;
 
 	outlen = fwrite(buf, 1, len, f);
 	fclose(f);
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
