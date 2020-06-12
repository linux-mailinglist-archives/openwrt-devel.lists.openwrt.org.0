Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98101F7702
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 13:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z7bPIq3sp/ipIYpKFxmk3/QtPn9K8z2m2C5oTiVttyk=; b=kMwtUB857qsuYX
	rD6mw8l9eNwCXpwolhk5bmdmg7uSgXllhnbajoIEoxl006vRnYzV1xriRZsVx/VF8Uk/JgJmT7n22
	u3GAi5QOT3lZSgZPpCz7/yF44d5V5fxNWDu3RNC/EVY9QgZGDl0KAqMQ/wWRQUizGY8gqL4wx4zl3
	+g6qu6Dre+TJwsAWm+ODaPHCVNpRYP/xokamCwPQYcHQGlt3WsFcogGt6YiJM5PA7x6e6aeiWCNzb
	E/hmyVhqLmBTkuaydFntUXEj7ftn+FzXAR4WRJFQvg5Stg4WiCyO7lQdLUDQ+8XrJdEJiBwAEfCdT
	9yBDJo4zF8UHxJ1w89ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhPz-0005LP-1r; Fri, 12 Jun 2020 11:00:15 +0000
Received: from mx1.riseup.net ([198.252.153.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhPq-0003Rq-HA
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jun 2020 11:00:08 +0000
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49jyRd1LK2zFdyf
 for <openwrt-devel@lists.openwrt.org>; Fri, 12 Jun 2020 03:59:57 -0700 (PDT)
X-Riseup-User-ID: CC3B6E83320B1A202D95E2098D71EDE6F7AFAA55C19D91D3F8965898A6B06140
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49jyRc3z8QzJmgR
 for <openwrt-devel@lists.openwrt.org>; Fri, 12 Jun 2020 03:59:56 -0700 (PDT)
From: Gio <gio@diveni.re>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 12 Jun 2020 12:59:52 +0200
Message-ID: <4574871.31r3eYUQgx@lifestock>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart4247318.LvFx2qVVIh"
Content-Transfer-Encoding: 7Bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_040006_618551_67F8FBC3 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [198.252.153.129 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.252.153.129 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH uclient] Add option to read POST data from
 file
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--nextPart4247318.LvFx2qVVIh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Passing post data in command line is convenient but has limited size, and may 
become tricky to correctly escape passed data expecially in scripts.
This patch add the option --post-file so the data to post can be read from a 
file.
I haven't compiled the patch (it is not clear to me where fiddle into openwrt 
build system so this patch get included) but it should work fine, the patch is 
in attachment too just in case my mail client mangle the pasted text...

Signed-off-by: Gioacchino Mazzurco <gio@eigenlab.org>
---

diff --git a/uclient-fetch.c b/uclient-fetch.c
index a06be5d..5c70316 100644
--- a/uclient-fetch.c
+++ b/uclient-fetch.c
@@ -43,6 +43,7 @@
 
 static const char *user_agent = "uclient-fetch";
 static const char *post_data;
+static const char *post_file;
 static struct ustream_ssl_ctx *ssl_ctx;
 static const struct ustream_ssl_ops *ssl_ops;
 static int quiet = false;
@@ -334,7 +335,7 @@ static int init_request(struct uclient *cl)
 
 	msg_connecting(cl);
 
-	rc = uclient_http_set_request_type(cl, post_data ? "POST" : "GET");
+	rc = uclient_http_set_request_type(cl, post_data || post_file ? 
"POST" : "GET");
 	if (rc)
 		return rc;
 
@@ -347,6 +348,25 @@ static int init_request(struct uclient *cl)
 		uclient_http_set_header(cl, "Content-Type", 
"application/x-www-form-urlencoded");
 		uclient_write(cl, post_data, strlen(post_data));
 	}
+	else if(post_file)
+	{
+		uclient_http_set_header(cl, "Content-Type", 
"application/x-www-form-urlencoded");
+
+		FILE input_file = fopen(post_file, "r");
+		if (!input_file)
+			return errno;
+
+		char tbuf[1000];
+		size_t rlen = 0;
+		do
+		{
+			rlen = fread(tbuf, 1, 1000, input_file);
+			uclient_write(cl, tbuf, rlen);
+		}
+		while(rlen)
+
+		fclose(input_file)
+	}
 
 	rc = uclient_request(cl);
 	if (rc)
@@ -516,6 +536,7 @@ enum {
 	L_PASSWORD,
 	L_USER_AGENT,
 	L_POST_DATA,
+	L_POST_FILE,
 	L_SPIDER,
 	L_TIMEOUT,
 	L_CONTINUE,
@@ -532,6 +553,7 @@ static const struct option longopts[] = {
 	[L_PASSWORD] = { "password", required_argument },
 	[L_USER_AGENT] = { "user-agent", required_argument },
 	[L_POST_DATA] = { "post-data", required_argument },
+	[L_POST_FILE] = { "post-file", required_argument },
 	[L_SPIDER] = { "spider", no_argument },
 	[L_TIMEOUT] = { "timeout", required_argument },
 	[L_CONTINUE] = { "continue", no_argument },
@@ -598,6 +620,9 @@ int main(int argc, char **argv)
 			case L_POST_DATA:
 				post_data = optarg;
 				break;
+			case L_POST_FILE:
+				post_file = optarg;
+				break;
 			case L_SPIDER:
 				no_output = true;
 				break;

--nextPart4247318.LvFx2qVVIh
Content-Disposition: attachment; filename="post_file.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="post_file.patch"

diff --git a/uclient-fetch.c b/uclient-fetch.c
index a06be5d..5c70316 100644
--- a/uclient-fetch.c
+++ b/uclient-fetch.c
@@ -43,6 +43,7 @@
 
 static const char *user_agent = "uclient-fetch";
 static const char *post_data;
+static const char *post_file;
 static struct ustream_ssl_ctx *ssl_ctx;
 static const struct ustream_ssl_ops *ssl_ops;
 static int quiet = false;
@@ -334,7 +335,7 @@ static int init_request(struct uclient *cl)
 
 	msg_connecting(cl);
 
-	rc = uclient_http_set_request_type(cl, post_data ? "POST" : "GET");
+	rc = uclient_http_set_request_type(cl, post_data || post_file ? "POST" : "GET");
 	if (rc)
 		return rc;
 
@@ -347,6 +348,25 @@ static int init_request(struct uclient *cl)
 		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-urlencoded");
 		uclient_write(cl, post_data, strlen(post_data));
 	}
+	else if(post_file)
+	{
+		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-urlencoded");
+
+		FILE input_file = fopen(post_file, "r");
+		if (!input_file)
+			return errno;
+
+		char tbuf[1000];
+		size_t rlen = 0;
+		do
+		{
+			rlen = fread(tbuf, 1, 1000, input_file);
+			uclient_write(cl, tbuf, rlen);
+		}
+		while(rlen)
+
+		fclose(input_file)
+	}
 
 	rc = uclient_request(cl);
 	if (rc)
@@ -516,6 +536,7 @@ enum {
 	L_PASSWORD,
 	L_USER_AGENT,
 	L_POST_DATA,
+	L_POST_FILE,
 	L_SPIDER,
 	L_TIMEOUT,
 	L_CONTINUE,
@@ -532,6 +553,7 @@ static const struct option longopts[] = {
 	[L_PASSWORD] = { "password", required_argument },
 	[L_USER_AGENT] = { "user-agent", required_argument },
 	[L_POST_DATA] = { "post-data", required_argument },
+	[L_POST_FILE] = { "post-file", required_argument },
 	[L_SPIDER] = { "spider", no_argument },
 	[L_TIMEOUT] = { "timeout", required_argument },
 	[L_CONTINUE] = { "continue", no_argument },
@@ -598,6 +620,9 @@ int main(int argc, char **argv)
 			case L_POST_DATA:
 				post_data = optarg;
 				break;
+			case L_POST_FILE:
+				post_file = optarg;
+				break;
 			case L_SPIDER:
 				no_output = true;
 				break;

--nextPart4247318.LvFx2qVVIh
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--nextPart4247318.LvFx2qVVIh--




