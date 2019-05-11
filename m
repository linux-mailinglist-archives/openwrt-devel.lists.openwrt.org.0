Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8521A727
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 10:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KB3BXrYvbFqJezea+38W2W++ztrb45LDQ1fqoP+S7hI=; b=KOskFm7NkYISZ8
	0ql/1wxCxsKnPyqK6B25+Tq0P8acwqrgGIhLdPBg1oy4uJmkDQ5A1f7D2JjzrHHQg7YsAeN9rVF8O
	SUYQBIWBrHLet9AY8BqE0l25fySH3ITG1phaIm2h5QcquCx+owp5vs/rmfekcbvVJeIRZSRtTwEQo
	FDd0maSg2DNPKByxO8wite/XeZzOdcOdRQeU7ft0lZolKQKmGy3xS03Sqd98FJLPF3d5tIPU6wNfh
	o0/TlQ16vqQnWzbJtF5FXnlDepCphkmf6tDSCgP9AbR0cyGDXydUg7c4i9Vlhks0c7qti/wIA927A
	fn2FBF2HqNbrDRwrXOjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPN8F-0000Vt-Sa; Sat, 11 May 2019 08:13:23 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPN89-0000VT-1k
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 08:13:19 +0000
X-Originating-IP: 80.64.181.145
Received: from dawn.lan (unknown [80.64.181.145])
 (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 53BA0E0005;
 Sat, 11 May 2019 08:13:07 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 10:12:57 +0200
Message-Id: <20190511081257.3791-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_011317_242977_5A30977D 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [80.64.181.145 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH][RFC] opkg: add License to info command
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
Cc: Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

show license in `opkg info <pkg_name>`.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
This patch isn't complete yet. It show the license info as long as the package
isn't installed. Once it's installed it seems to forget the information. I can't
figure out why. Also printing `opkg list` doesn't add the License, neither for
installed nor available.

 libopkg/opkg_cmd.c  |  3 +++
 libopkg/pkg.c       | 10 ++++++++++
 libopkg/pkg.h       |  1 +
 libopkg/pkg_parse.c |  5 +++++
 libopkg/pkg_parse.h |  1 +
 5 files changed, 20 insertions(+)

diff --git a/libopkg/opkg_cmd.c b/libopkg/opkg_cmd.c
index c823df8..81f9a29 100644
--- a/libopkg/opkg_cmd.c
+++ b/libopkg/opkg_cmd.c
@@ -45,7 +45,10 @@ static void print_pkg(pkg_t * pkg)
 {
 	char *version = pkg_version_str_alloc(pkg);
 	char *description = pkg_get_string(pkg, PKG_DESCRIPTION);
+	char *license = pkg_get_string(pkg, PKG_LICENSE);
 	printf("%s - %s", pkg->name, version);
+	if (license)
+		printf(" - %s", license);
 	if (conf->size)
 		printf(" - %lu", (unsigned long) pkg_get_int(pkg, PKG_SIZE));
 	if (description)
diff --git a/libopkg/pkg.c b/libopkg/pkg.c
index e5bfe6f..1971689 100644
--- a/libopkg/pkg.c
+++ b/libopkg/pkg.c
@@ -777,6 +777,15 @@ void pkg_formatted_field(FILE * fp, pkg_t * pkg, const char *field)
 			}
 		}
 		break;
+	case 'l':
+	case 'L':
+		if (strcasecmp(field, "License") == 0) {
+			p = pkg_get_string(pkg, PKG_LICENSE);
+			if (p) {
+				fprintf(fp, "License: %s\n", p);
+			}
+		}
+		break;
 	case 'm':
 	case 'M':
 		if (strcasecmp(field, "Maintainer") == 0) {
@@ -926,6 +935,7 @@ void pkg_formatted_info(FILE * fp, pkg_t * pkg)
 	pkg_formatted_field(fp, pkg, "Package");
 	pkg_formatted_field(fp, pkg, "Version");
 	pkg_formatted_field(fp, pkg, "Depends");
+	pkg_formatted_field(fp, pkg, "License");
 	pkg_formatted_field(fp, pkg, "Recommends");
 	pkg_formatted_field(fp, pkg, "Suggests");
 	pkg_formatted_field(fp, pkg, "Provides");
diff --git a/libopkg/pkg.h b/libopkg/pkg.h
index 600fc9e..0065043 100644
--- a/libopkg/pkg.h
+++ b/libopkg/pkg.h
@@ -79,6 +79,7 @@ typedef enum pkg_state_status pkg_state_status_t;
 
 enum pkg_fields {
 	PKG_MAINTAINER,
+	PKG_LICENSE,
 	PKG_PRIORITY,
 	PKG_SOURCE,
 	PKG_TAGS,
diff --git a/libopkg/pkg_parse.c b/libopkg/pkg_parse.c
index 0baa4db..e0389df 100644
--- a/libopkg/pkg_parse.c
+++ b/libopkg/pkg_parse.c
@@ -269,6 +269,11 @@ int pkg_parse_line(void *ptr, char *line, uint mask)
 			pkg_set_int(pkg, PKG_INSTALLED_TIME, strtoul(line + strlen("Installed-Time") + 1, NULL, 0));
 		}
 		break;
+		case 'l':
+		case 'L':
+		if (is_field("License", line))
+			pkg_set_string(pkg, PKG_LICENSE, line + strlen("License") + 1);
+		break;
 
 	case 'M':
 		if ((mask & PFM_MD5SUM) && (is_field("MD5sum:", line) || is_field("MD5Sum:", line)))
diff --git a/libopkg/pkg_parse.h b/libopkg/pkg_parse.h
index d1f901a..ccb97aa 100644
--- a/libopkg/pkg_parse.h
+++ b/libopkg/pkg_parse.h
@@ -54,6 +54,7 @@ int pkg_parse_line(void *ptr, char *line, uint mask);
 #define PFM_SUGGESTS		(1 << 25)
 #define PFM_TAGS		(1 << 26)
 #define PFM_VERSION		(1 << 27)
+#define PFM_LICENSE		(1 << 28)
 
 #define PFM_ALL	(~(uint)0)
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
