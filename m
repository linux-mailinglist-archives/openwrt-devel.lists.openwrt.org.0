Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9059D184612
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 12:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2mYU2WzgJWYWT4+lysdpDS3mNLoeAwnoB0z9xxmNYP8=; b=EP11I8wDwLRt/C
	ZFoTELu/Je46C1vF86aw6n8h0XBPGpFuWnZaTVSTKwyWQig+2gyn68/h2ub4HeSm0KKuXhe2+ebjS
	Ol9rlvLS2UQ19p+Yl+cxYssMRwVqUSnpJAmhFIO2hzhdyOqvSLorpR7Z/QXZ6PZHMub5oTSvYhMqZ
	mJfyIHBBRXkgWHvSL4+IF7zBze0Siow5A9/P1sEhO3uPxwFxjfhMdoEzg05+Rj6aHCBJWrzTOSBs+
	b8UTPTwpVhKqaYoFW8J7ATlVZRDCrG0bJck2P/Gix19pgx7embLaObNulohhJsw1by13bRsZDU0eX
	nuXu2loOrGu5n3JJ+DrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCigx-0001qf-5g; Fri, 13 Mar 2020 11:41:27 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCign-0001iW-NW
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 11:41:19 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id CAAD76BEC2; Fri, 13 Mar 2020 12:41:09 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id A800D6BEBA
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 12:41:09 +0100 (CET)
Received: (qmail 22061 invoked from network); 13 Mar 2020 12:41:09 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 13 Mar 2020 12:41:09 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 12:41:01 +0100
Message-Id: <20200313114101.692211-1-jo@mein.io>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_044117_920808_43DBD721 
X-CRM114-Status: UNSURE (   9.53  )
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
Subject: [OpenWrt-Devel] [PATCH ustream-ssl] ustream-openssl: clear error
 stack before SSL_read/SSL_write
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
Cc: Jo-Philipp Wich <jo@mein.io>, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The OpenSSL library uses a global error queue per thread which needs to
be cleared prior to calling I/O functions in order to get reliable error
results.

Failure to do so will lead to stray errors reported by SSL_get_error()
when an unrelated connection within the same thread encountered a TLS
error since the last SSL_read() or SSL_write() on the current connection.

This issue was frequently triggered by Google Chrome which usually
initiates simultaneous TLS connections (presumably for protocol support
probing) and subsequently closes most of them with a "certificate unknown"
TLS error, causing the next SSL_get_error() to report an SSL library error
instead of the expected SSL_WANT_READ or SSL_WANT_WRITE error states.

Solve this issue by invoking ERR_clear_error() prior to invoking SSL_read()
or SSL_write() to ensure that the subsequent SSL_get_error() returns
current valid results.

Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 ustream-openssl.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/ustream-openssl.c b/ustream-openssl.c
index 049aa40..f8e848d 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -266,6 +266,8 @@ __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
 	void *ssl = us->ssl;
 	int r;
 
+	ERR_clear_error();
+
 	if (us->server)
 		r = SSL_accept(ssl);
 	else
@@ -287,7 +289,11 @@ __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
 __hidden int __ustream_ssl_write(struct ustream_ssl *us, const char *buf, int len)
 {
 	void *ssl = us->ssl;
-	int ret = SSL_write(ssl, buf, len);
+	int ret;
+
+	ERR_clear_error();
+
+	ret = SSL_write(ssl, buf, len);
 
 	if (ret < 0) {
 		int err = SSL_get_error(ssl, ret);
@@ -303,7 +309,11 @@ __hidden int __ustream_ssl_write(struct ustream_ssl *us, const char *buf, int le
 
 __hidden int __ustream_ssl_read(struct ustream_ssl *us, char *buf, int len)
 {
-	int ret = SSL_read(us->ssl, buf, len);
+	int ret;
+
+	ERR_clear_error();
+
+	ret = SSL_read(us->ssl, buf, len);
 
 	if (ret < 0) {
 		ret = SSL_get_error(us->ssl, ret);
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
