Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93791D6205
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 17:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VNp/FdrfGLgjLGhNeusxs6nP/MSUy2J6l2usSvrp7T8=; b=OanweOfB+Zqlf2
	4uVzlQ88be3oJx6K+livhoA/CmVFObD1hO3R1CR2wx+Ab8fFUbJwnboyWo6Qn+pxMIDQrt8ni4LYN
	UoZy05eacvWazedvfeTwJI550yB4J6j731xKBILK3l8sjeW8VVW1WOkIPClCrkhpnN+XrXqjY0nDd
	Gsi/XvmdSQnk1KV0/61POoXYuWI7UCLfT1cUh8qkQEGz+sazvBA1fFfM+X72bmnGDbtoIYUR0F+q8
	PX9vKlJBFqv3IbYdKA0yFmuiZLckkWVxczBx5f0vevzyv63y7B6h9hEn5tAHjurGz1AOsEL8fslZA
	hGZLLPZQFheikXskagSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZykn-0002Cg-IR; Sat, 16 May 2020 15:29:33 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZyke-0002C5-2M
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 15:29:25 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 9BC47256F5;
 Sat, 16 May 2020 17:29:21 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 17:29:00 +0200
Message-Id: <8ead1fd6a61117b54b4efd5111fe0d19e4eef9c5.1589642591.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_082924_263220_B2EF3226 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH usign] Always pad fingerprints to 16
 characters
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

Fingerprints were not padded with zeros. This led to an ucert failure
when the first byte of the fingerprint is 00, as it expects the
fingerprint to have a constant length (and this expectation seems
reasonable to me).

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---

This issue was noticed as a spurious build failure in Gluon's CI - our
GHA CI generates a new build key for each build, and in 1 out of 256
builds, the fingerprint would start with a 0 byte and trigger the issue.

I'm also working on some ucert fixes (for example for the fact that it
was still working when only the first 4 bits of the fingerprint were 0,
as the trailing newline was considered as one of the expected 16
characters then.)


 main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/main.c b/main.c
index ef47b282a7cc..ebfdfb0809c4 100644
--- a/main.c
+++ b/main.c
@@ -149,7 +149,7 @@ static void write_file(const char *name, const uint8_t *fingerprint,
 	if (comment)
 		fputs(comment, f);
 	else
-		fprintf(f, "%s %"PRIx64, prefix,
+		fprintf(f, "%s %016"PRIx64, prefix,
 			fingerprint_u64(fingerprint));
 	fprintf(f, "\n%s\n", buf);
 	fclose(f);
@@ -177,7 +177,7 @@ static int verify(const char *msgfile)
 	}
 
 	if (!pubkeyfile) {
-		snprintf(buf, sizeof(buf), "%s/%"PRIx64, pubkeydir,
+		snprintf(buf, sizeof(buf), "%s/%016"PRIx64, pubkeydir,
 			 fingerprint_u64(sig.fingerprint));
 		pubkeyfile = buf;
 	}
@@ -276,7 +276,7 @@ static int fingerprint(void)
 	else
 		return 1;
 
-	fprintf(stdout, "%"PRIx64"\n", fingerprint_u64(fp));
+	fprintf(stdout, "%016"PRIx64"\n", fingerprint_u64(fp));
 	return 0;
 }
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
