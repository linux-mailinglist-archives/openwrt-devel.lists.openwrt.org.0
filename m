Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D6C1D6430
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UACJwMrX9VOHS9XYEWWPk8E/w3xRxJbICwu1tZnzkFs=; b=mDHIPSa2Toen6G
	fZXXU5LiJ8EpNNHqf0nDAIZrqw+dY/RzHg85YW37Icyaq3ICXK2CSTPImSog2JR5oSq7pt1bMXUMZ
	JqOfs9vSDusPuLnYMLHRAlsBlU9tnNjE3Qkm0MZoXO/lB76YLntOEcdF73OMegTJL61af+LTlPtnU
	+1Gn7iU9tz+X1w89MwUa699m3eDmClfQpP3K8uwU+PCO1nEG1BdosmJmaV2umnf6M+yHkuB2JPney
	965xLmVM2jAKYRAmEtYCr5+XawfZMze6zSFVPTx+TACm0DHapWOAuP5p6vrWtmswcYrjjcgJiuN1N
	yK19QfHcQ/U+V5bdXMbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4B4-0003Er-3E; Sat, 16 May 2020 21:17:02 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48j-0008Kq-In
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:40 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id CFF0425737;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:14:02 +0200
Message-Id: <96c42c5ed3207b8ad1ce836a4426c8700c13b655.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141437_776623_25B3BAE8 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 12/13] Fix length checks in cert_load()
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

cert_load() iterates over multiple blobs, so the length argument to
blob_parse_untrusted() needs to be updated to prevent out-of-bounds
accesses.

Some other checks have become redundant and are removed, as
blob_parse_untrusted() already ensures that all attrs are contained in
the passed buffer.

Note that this issue currently does not pose a security threat, as an
over-restrictive check in blob_parse_untrusted() broke parsing of
buffers with multiple blobs completely.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 ucert.c | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/ucert.c b/ucert.c
index 208d5f67e10d..24349c41349b 100644
--- a/ucert.c
+++ b/ucert.c
@@ -164,9 +164,8 @@ static int cert_load(const char *certfile, struct list_head *chain) {
 	struct blob_attr *certtb[CERT_ATTR_MAX];
 	struct blob_attr *bufpt;
 	struct cert_object *cobj;
-	char filebuf[CERT_BUF_LEN];
-	int ret = 0, pret = 0;
-	size_t pos = 0;
+	char filebuf[CERT_BUF_LEN], *end;
+	int ret = 1;
 	ssize_t len;
 
 	len = read_file(certfile, filebuf, sizeof(filebuf) - 1, 0);
@@ -177,17 +176,16 @@ static int cert_load(const char *certfile, struct list_head *chain) {
 	}
 
 	bufpt = (struct blob_attr *)filebuf;
-	do {
-		pret = blob_parse_untrusted(bufpt, len, certtb, cert_policy, CERT_ATTR_MAX);
-		if (pret <= 0)
-			/* no attributes found */
+	end = filebuf + len;
+
+	while (true) {
+		len = end - (char *)bufpt;
+		if (len <= 0)
 			break;
 
-		if (pos + blob_pad_len(bufpt) > (size_t) len)
-			/* blob exceeds filebuffer */
+		if (blob_parse_untrusted(bufpt, len, certtb, cert_policy, CERT_ATTR_MAX) <= 0)
+			/* no attributes found */
 			break;
-		else
-			pos += blob_pad_len(bufpt);
 
 		if (!certtb[CERT_ATTR_SIGNATURE])
 			/* no signature -> drop */
@@ -199,11 +197,17 @@ static int cert_load(const char *certfile, struct list_head *chain) {
 			cobj->cert[CERT_ATTR_PAYLOAD] = blob_memdup(certtb[CERT_ATTR_PAYLOAD]);
 
 		list_add_tail(&cobj->list, chain);
-		ret += pret;
-	/* repeat parsing while there is still enough remaining data in buffer */
-	} while((size_t) len > pos + sizeof(struct blob_attr) && (bufpt = blob_next(bufpt)));
+		ret = 0;
+
+		/* Repeat parsing while there is still enough remaining data in buffer
+		 *
+		 * Note that blob_next() is only valid for untrusted data because blob_parse_untrusted()
+		 * verified that the buffer contains at least one blob, and that it is completely contained
+		 * in the buffer */
+		bufpt = blob_next(bufpt);
+	}
 
-	return (ret <= 0);
+	return ret;
 }
 
 #ifdef UCERT_FULL
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
