Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D25A5D1A
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 22:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RB/zNPnizlcnxtojXgFL5U/6sN0DsSLLIC/L82c37Co=; b=kty3WLYR3KnTND
	gAJ6JbysTVcYmIsecTbKNM07eAVvANMD8edpbK+buOyMX+0YdtMIT7xIMmIinc+tUVjz33h0JbWW6
	PiJB2AlfDVr5v/hcO2jgntMao1EeNBOpxA1uklQ0lYJ7KFi/II/uNPy/aPpNCowb73M6Z+qLFoHEn
	Dj8zfFfbhB1anvjoh+JgBnbWGQg8kEx8oIwOdX5wHrUpHHM3p0E9vZB5VFXI0WF2FLDVHY1UY6qRk
	rEG7c+BWw3rnJWN8j0lb8JQdd3oniUQUFVzIJMBKlvfwpYZrEY6/NOcgLOan3Arki180hUgEn/FZ3
	y/UbXSt/CfzYaOBUtwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4swe-0005PP-GM; Mon, 02 Sep 2019 20:29:00 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4swU-0005Oj-6M
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 20:28:51 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id E55DAA5809;
 Mon,  2 Sep 2019 22:28:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id kCHYCSaihfiS; Mon,  2 Sep 2019 22:28:45 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 22:28:36 +0200
Message-Id: <20190902202836.26945-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_132850_389453_CD3A6392 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] usign: fix some resource leaks
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This fixes some resources leaks mostly in error patches.

Coverity: #1330236, #1330237, #1330238
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 main.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/main.c b/main.c
index 3536443..ef47b28 100644
--- a/main.c
+++ b/main.c
@@ -129,6 +129,7 @@ get_file(const char *filename, char *buf, int buflen)
 
 	len = fread(buf, 1, buflen - 1, f);
 	buf[len] = 0;
+	fclose(f);
 }
 
 static bool
@@ -171,6 +172,7 @@ static int verify(const char *msgfile)
 	if (!get_base64_file(sigfile, &sig, sizeof(sig), buf, sizeof(buf)) ||
 	    memcmp(sig.pkalg, "Ed", 2) != 0) {
 		fprintf(stderr, "Failed to decode signature\n");
+		fclose(f);
 		return 1;
 	}
 
@@ -183,6 +185,7 @@ static int verify(const char *msgfile)
 	if (!get_base64_file(pubkeyfile, &pkey, sizeof(pkey), buf, sizeof(buf)) ||
 	    memcmp(pkey.pkalg, "Ed", 2) != 0) {
 		fprintf(stderr, "Failed to decode public key\n");
+		fclose(f);
 		return 1;
 	}
 
@@ -292,11 +295,16 @@ static int generate(void)
 	FILE *f;
 
 	f = fopen("/dev/urandom", "r");
-	if (!f ||
-	    fread(skey.fingerprint, sizeof(skey.fingerprint), 1, f) != 1 ||
+	if (!f) {
+		fprintf(stderr, "Can't open /dev/urandom\n");
+		return 1;
+	}
+
+	if (fread(skey.fingerprint, sizeof(skey.fingerprint), 1, f) != 1 ||
 	    fread(skey.seckey, EDSIGN_SECRET_KEY_SIZE, 1, f) != 1 ||
 	    fread(skey.salt, sizeof(skey.salt), 1, f) != 1) {
 		fprintf(stderr, "Can't read data from /dev/urandom\n");
+		fclose(f);
 		return 1;
 	}
 	if (f)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
