Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418D31FD019
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 16:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9mTf5W6KAOdzt+tysuQMsKWNsNzLOrnxv1nagNxVYw=; b=IOB14Vid2o4JZd
	7Ll+Bv949+uMrUscipWbEOljesTdg+EpLFU+uVh33nl+pjaszrT6ifCufyZVddmCAUsWNzKrPZlv1
	ji3xMlnd6RMiwEsWKQNKDkuz7JqnJreKVkCY/0nZqas7v0PbsZ0dZSiftuUc90wWkeP1Qmn3mekEn
	vd5AC5HYTsZD7GgVT7KCoWBjng3jNgSQRMmmyoK2s5+C7lXiIe7GorsyPt5S0lO1UpuhlP7Ho6S6c
	EWCPks37KK4FG83zAWLWJ1CwGwwpvMsDafIASNVpApcUoMjJiVbiIQP9T0P3PRvXH/RFxlgSBMhCi
	Nel9ftVbi1yoVjBZXDcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZTE-0002F0-8n; Wed, 17 Jun 2020 14:55:20 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZT6-0001Ao-E5
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 14:55:13 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.93.0.4) (envelope-from <daniel@makrotopia.org>)
 id 1jlZSz-0003aj-Me; Wed, 17 Jun 2020 16:55:06 +0200
Date: Wed, 17 Jun 2020 15:54:51 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200617145451.GA19653@makrotopia.org>
References: <70c34171-a853-3adb-d1ff-3774ad28baa1@wwsnet.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70c34171-a853-3adb-d1ff-3774ad28baa1@wwsnet.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_075512_483023_D889B2AD 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v3] uclient-fetch: add option to read POST
 data from file
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
Cc: Gio <gio@diveni.re>, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Passing post data in command line is convenient but has limited size,
and may become tricky to correctly escape passed data especially in
scripts.
This patch add the option --post-file so the data to post can be read
from a file or from /dev/stdin.
Tested on x86/64.

Signed-off-by: Gioacchino Mazzurco <gio@eigenlab.org>
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
v3: use 1024 bytes buffer instead of 1000, use sizeof()
As original wget also only supports "application/x-www-form-urlencoded"
as Content-Type for the POST data, keep it that way in uclient-fetch
as well for now. An additional option --post-type may be introduced at
a later stage to allow setting "text/json" or
"application/octet-stream".

v2: make it compile, handle errors, add usage info, fix typos

 uclient-fetch.c | 31 +++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/uclient-fetch.c b/uclient-fetch.c
index a06be5d..061f0fd 100644
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
 
@@ -347,6 +348,26 @@ static int init_request(struct uclient *cl)
 		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-urlencoded");
 		uclient_write(cl, post_data, strlen(post_data));
 	}
+	else if(post_file)
+	{
+		FILE *input_file;
+		uclient_http_set_header(cl, "Content-Type", "application/x-www-form-urlencoded");
+
+		input_file = fopen(post_file, "r");
+		if (!input_file)
+			return errno;
+
+		char tbuf[1024];
+		size_t rlen = 0;
+		do
+		{
+			rlen = fread(tbuf, 1, sizeof(tbuf), input_file);
+			uclient_write(cl, tbuf, rlen);
+		}
+		while(rlen);
+
+		fclose(input_file);
+	}
 
 	rc = uclient_request(cl);
 	if (rc)
@@ -460,6 +481,7 @@ static int usage(const char *progname)
 		"	--password=<password>		HTTP authentication password\n"
 		"	--user-agent|-U <str>		Set HTTP user agent\n"
 		"	--post-data=STRING		use the POST method; send STRING as the data\n"
+		"	--post-file=FILE		use the POST method; send FILE as the data\n"
 		"	--spider|-s			Spider mode - only check file existence\n"
 		"	--timeout=N|-T N		Set connect/request timeout to N seconds\n"
 		"	--proxy=on|off|-Y on|off	Enable/disable env var configured proxy\n"
@@ -516,6 +538,7 @@ enum {
 	L_PASSWORD,
 	L_USER_AGENT,
 	L_POST_DATA,
+	L_POST_FILE,
 	L_SPIDER,
 	L_TIMEOUT,
 	L_CONTINUE,
@@ -532,6 +555,7 @@ static const struct option longopts[] = {
 	[L_PASSWORD] = { "password", required_argument },
 	[L_USER_AGENT] = { "user-agent", required_argument },
 	[L_POST_DATA] = { "post-data", required_argument },
+	[L_POST_FILE] = { "post-file", required_argument },
 	[L_SPIDER] = { "spider", no_argument },
 	[L_TIMEOUT] = { "timeout", required_argument },
 	[L_CONTINUE] = { "continue", no_argument },
@@ -598,6 +622,9 @@ int main(int argc, char **argv)
 			case L_POST_DATA:
 				post_data = optarg;
 				break;
+			case L_POST_FILE:
+				post_file = optarg;
+				break;
 			case L_SPIDER:
 				no_output = true;
 				break;
@@ -718,7 +745,7 @@ int main(int argc, char **argv)
 		/* no error received, we can enter main loop */
 		uloop_run();
 	} else {
-		fprintf(stderr, "Failed to establish connection\n");
+		fprintf(stderr, "Failed to send request: %s\n", strerror(rc));
 		error_ret = 4;
 	}
 
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
