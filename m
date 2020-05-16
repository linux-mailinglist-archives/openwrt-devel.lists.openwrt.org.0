Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE991D642B
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPhWGXfu2p3eBC1cWIubX4TSZnHHRWPDxzjrJfZ50Mg=; b=rkErwsOdxwQ7We
	YaD4F0+WSjNKGvvhv7nf/63V8Eq7SAbZarxdZH2pCCgKSqWNt0enRoR7GPZeNI89BIe9CIOivdgwM
	4t8SDUHC/aYMUcvQqm1NkIyxeSkrfQSOZaqDqJ2W50qO0JCoukI6XXSQpT9MD7QG59Nyr+O0oLskK
	+SvNSOQhlLx5tXeZqvYv3j5OczOlVX9IGda50uc9QEdLjaFDo9QksD/mEHMa3OB8PlcrAUXFG7cw0
	X/e61McRJcJOOSbWPZW9H4hFQR47K5bFLghsfiZdu208qKS3IEfzQxV7CHzcKBggRKLFBUNrzZuQP
	3DPlLKH6B6adg+SwCVVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4AR-0002Hx-Oc; Sat, 16 May 2020 21:16:23 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48h-0008JW-Pn
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:37 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 0CD1125731;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:56 +0200
Message-Id: <112488bbbccc0581926b65ab093d495bff2dd8cf.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141435_989273_A39EDAD0 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 06/13] usign-exec: do not close stdin
 and stderr before exec
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

FDs 0, 1 and 2 should always be available. This also allows the exec error
message in the forked process to be displayed.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 usign-exec.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/usign-exec.c b/usign-exec.c
index 22fdc14e7ebb..436c627356b0 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -46,7 +46,7 @@ int _usign_key_is_revoked(const char *fingerprint, const char *pubkeydir) {
 #ifdef UCERT_FULL
 /*
  * call usign -S ...
- * return WEXITSTATUS or -1 if fork or execv fails
+ * return WEXITSTATUS or -1 if fork fails
  */
 int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bool quiet) {
 	pid_t pid;
@@ -92,7 +92,7 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
 
 /*
  * call usign -F ... and set fingerprint returned
- * return WEXITSTATUS or -1 if fork or execv fails
+ * return WEXITSTATUS or -1 if fork fails
  */
 static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckeyfile, const char *sigfile, bool quiet) {
 	int fds[2];
@@ -130,8 +130,6 @@ static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckey
 	case 0:
 		dup2(fds[1], 1);
 
-		close(0);
-		close(2);
 		close(fds[0]);
 		close(fds[1]);
 
@@ -185,7 +183,7 @@ int usign_f_sig(char *fingerprint, const char *sigfile, bool quiet) {
 
 /*
  * call usign -V ...
- * return WEXITSTATUS or -1 if fork or execv fails
+ * return WEXITSTATUS or -1 if fork fails
  */
 int usign_v(const char *msgfile, const char *pubkeyfile,
 	    const char *pubkeydir, const char *sigfile, bool quiet) {
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
