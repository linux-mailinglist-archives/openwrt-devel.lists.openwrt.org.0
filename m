Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4C843188
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 23:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezSiJb5FQsThZr5CJcXxeqhRBSgiT9/ErwEoRplxka8=; b=ccQ0vuzXlW+QnL
	6DKIzm3R9q6fL73ygzpez+ATmumJYenG2kRwJF4Y803sU67fW89QmHwflli2RTsskEod+opONGIpE
	eSKvaIS2AXYJLK1rGtrWPb+f89uqF16GqaQyhDbhW6ksFo/YjUXQy3dQirkiciVnQ9Vhal6hOxxOg
	O3sn8P5TfoxoGm+oIsBFqDofaDdornYsFzfVaqZcNdwfsyf6u3klshLOiby5DifjfbneKyCnMNOHB
	251KoukGHmvLv21Ur4xtR5SfbbEpBHqtv24dd1QY/ZU5BmaJclDUrF0Jrn3X+JvnWr0N/Bd3yFFFI
	V+KrGhX9I4Fg5j5sEO+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbBCZ-0001aN-Li; Wed, 12 Jun 2019 21:54:39 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbBCP-0001Zv-5W
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 21:54:31 +0000
X-Originating-IP: 95.33.39.128
Received: from dawn.fritz.box (dyndsl-095-033-039-128.ewe-ip-backbone.de
 [95.33.39.128]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 7427E40005;
 Wed, 12 Jun 2019 21:54:18 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Jun 2019 23:54:02 +0200
Message-Id: <20190612215401.1933-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_145429_536228_B6C5B9AF 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] opkg: add --license arg for installed
 packages
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

add --license option to print (SPDX) license tag in the
`installed-packages` overview. This is useful for manifest generation,
as it show all licenses used within an image. In case the license is not
available, a question mark (?) is printed instead.

base-files - 198-r10203+1-c12bd3a21b - GPL-2.0
bnx2-firmware - 20190416-1 - ?
busybox - 1.30.1-4 - GPL-2.0
dnsmasq - 2.80-13 - GPL-2.0
dropbear - 2019.78-2 - MIT
e2fsprogs - 1.44.5-1 - GPL-2.0
firewall - 2019-01-02-70f8785b-2 - ISC
fstools - 2019-03-28-ff1ded63-4 - GPL-2.0
fwtool - 1 - ?
getrandom - 2019-04-07-5130fa4d-2 - GPL-2.0
ip6tables - 1.8.2-3 - GPL-2.0
iptables - 1.8.2-3 - GPL-2.0
jshn - 2019-02-27-eeef7b50-1 - ISC
jsonfilter - 2018-02-04-c7e938d6-1 - ISC
...

CC: Jo-Philipp Wich <jo@mein.io>
Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 libopkg/opkg_cmd.c  |  3 +++
 libopkg/opkg_conf.c |  1 +
 libopkg/opkg_conf.h |  1 +
 libopkg/pkg.c       | 11 +++++++++++
 libopkg/pkg.h       |  1 +
 libopkg/pkg_parse.c |  5 +++++
 libopkg/pkg_parse.h |  1 +
 src/opkg-cl.c       |  7 +++++++
 8 files changed, 30 insertions(+)

diff --git a/libopkg/opkg_cmd.c b/libopkg/opkg_cmd.c
index c823df8..e8a34f4 100644
--- a/libopkg/opkg_cmd.c
+++ b/libopkg/opkg_cmd.c
@@ -45,9 +45,12 @@ static void print_pkg(pkg_t * pkg)
 {
 	char *version = pkg_version_str_alloc(pkg);
 	char *description = pkg_get_string(pkg, PKG_DESCRIPTION);
+	char *license = pkg_get_string(pkg, PKG_LICENSE);
 	printf("%s - %s", pkg->name, version);
 	if (conf->size)
 		printf(" - %lu", (unsigned long) pkg_get_int(pkg, PKG_SIZE));
+	if (conf->license)
+		printf(" - %s", license ? license : "?");
 	if (description)
 		printf(" - %s", description);
 	printf("\n");
diff --git a/libopkg/opkg_conf.c b/libopkg/opkg_conf.c
index 08855eb..40b1734 100644
--- a/libopkg/opkg_conf.c
+++ b/libopkg/opkg_conf.c
@@ -70,6 +70,7 @@ opkg_option_t options[] = {
 	{"proxy_user", OPKG_OPT_TYPE_STRING, &_conf.proxy_user},
 	{"query-all", OPKG_OPT_TYPE_BOOL, &_conf.query_all},
 	{"size", OPKG_OPT_TYPE_BOOL, &_conf.size},
+	{"license", OPKG_OPT_TYPE_BOOL, &_conf.license},
 	{"tmp_dir", OPKG_OPT_TYPE_STRING, &_conf.tmp_dir},
 	{"verbosity", OPKG_OPT_TYPE_INT, &_conf.verbosity},
 	{NULL, 0, NULL}
diff --git a/libopkg/opkg_conf.h b/libopkg/opkg_conf.h
index 37f95a1..0413ccd 100644
--- a/libopkg/opkg_conf.h
+++ b/libopkg/opkg_conf.h
@@ -87,6 +87,7 @@ struct opkg_conf {
 	int verbosity;
 	int noaction;
 	int size;
+	int license;
 	int download_only;
 	char *cache;
 
diff --git a/libopkg/pkg.c b/libopkg/pkg.c
index e5bfe6f..fb1b2f1 100644
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
+			if (p && *p) {
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
@@ -956,6 +966,7 @@ void pkg_print_status(pkg_t * pkg, FILE * file)
 	pkg_formatted_field(file, pkg, "Package");
 	pkg_formatted_field(file, pkg, "Version");
 	pkg_formatted_field(file, pkg, "Depends");
+	pkg_formatted_field(file, pkg, "License");
 	pkg_formatted_field(file, pkg, "Recommends");
 	pkg_formatted_field(file, pkg, "Suggests");
 	pkg_formatted_field(file, pkg, "Provides");
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
index 0baa4db..87db2fa 100644
--- a/libopkg/pkg_parse.c
+++ b/libopkg/pkg_parse.c
@@ -269,6 +269,11 @@ int pkg_parse_line(void *ptr, char *line, uint mask)
 			pkg_set_int(pkg, PKG_INSTALLED_TIME, strtoul(line + strlen("Installed-Time") + 1, NULL, 0));
 		}
 		break;
+	case 'l':
+	case 'L':
+		if ((mask & PFM_LICENSE) && is_field("License:", line))
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
 
diff --git a/src/opkg-cl.c b/src/opkg-cl.c
index a3ea5c1..b867487 100644
--- a/src/opkg-cl.c
+++ b/src/opkg-cl.c
@@ -54,6 +54,7 @@ enum {
 	ARGS_OPT_FORCE_SIGNATURE,
 	ARGS_OPT_NO_CHECK_CERTIFICATE,
 	ARGS_OPT_SIZE,
+	ARGS_OPT_LICENSE,
 };
 
 static struct option long_options[] = {
@@ -103,6 +104,7 @@ static struct option long_options[] = {
 	{"add-arch", 1, 0, ARGS_OPT_ADD_ARCH},
 	{"add-dest", 1, 0, ARGS_OPT_ADD_DEST},
 	{"size", 0, 0, ARGS_OPT_SIZE},
+	{"license", 0, 0, ARGS_OPT_LICENSE},
 	{"test", 0, 0, ARGS_OPT_NOACTION},
 	{"tmp-dir", 1, 0, 't'},
 	{"tmp_dir", 1, 0, 't'},
@@ -220,6 +222,9 @@ static int args_parse(int argc, char *argv[])
 		case ARGS_OPT_SIZE:
 			conf->size = 1;
 			break;
+		case ARGS_OPT_LICENSE:
+			conf->license = 1;
+			break;
 		case ARGS_OPT_NOACTION:
 			conf->noaction = 1;
 			break;
@@ -349,6 +354,8 @@ static void usage()
 	    ("\t--nocase		Perform case insensitive pattern matching\n");
 	printf
 	    ("\t--size			Print package size when listing available packages\n");
+	printf
+	    ("\t--license		Print package license when listing available packages\n");
 	printf("\t--force-removal-of-dependent-packages\n");
 	printf("\t			Remove package and all dependencies\n");
 	printf("\t--autoremove		Remove packages that were installed\n");
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
