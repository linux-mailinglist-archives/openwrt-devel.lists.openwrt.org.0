Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38BD2B85A
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 17:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VrufXENunSaSJmk6v1wsc4FMHIL6p6ejPrRoLd9JGn8=; b=keX4J8cOlyfKeC
	gKx1A5nypxu2G/3UcSeyH2nkRlV6hXojivJJcQVcvPnJjjdjM4ipJhYArOFCF3yEC+7x4DSVOVi/E
	HWkAPEGTAGpAjeLbr74vEOtOdow9Q/FCCyhEm8Z5yKtJCedUvUOIEd7EFJHvVoKybzRZHjlPjQtpg
	SE+6VT/NjGbtEa+hNXjTOdtweQeZNoIL0c+MgXBdjsCJlxbHGn848prlMzvRvdeDBj9m9EdElU55M
	lqHw2tnT9Chrgnym3IS1ZMH3vxEkurqp10PupNiLLP0C2VM20s7Iza1/qhzm4Nnd8OKzCxwAYe4Zi
	pCJcbQbUPuCKOBNCeYSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVHTW-0005NC-34; Mon, 27 May 2019 15:23:46 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHTR-0005N5-HF
 for openwrt-devel@bombadil.infradead.org; Mon, 27 May 2019 15:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CefhExx2AoWrqzF2MXE7aVosZa0uxayT5O/YrCxKYXY=; b=cCeNwTSr3iyW76kjD64K2YoA+r
 rlJqUJa/lUMqvyBGNAgBff/+py5lGqtPKE9G274b8+DI8UId8zab0k4TVlX8Inv0/r+nhPfjd87LO
 qugVHRKghLkltQ5rONah2FzJxb/itDeuIJfGQsh9mjgNquz5tjkGpNNfLO02ihvKjeM5NiB8G6151
 4f84JKm5Mv6c7sd8iyBEPT9rSVzMNbMn7EmY3XjSXM3g0/L00NB54p6Ehbxj2kQ+D7rYsKM6l85Ad
 PPLTlOWYYty1dvubZC8/SslaSDIACjcBWNIHuJc5anrBArZScKSE2UPRSxBmgPE5ms/Uh1dqzxMuk
 6P/C8U5g==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHTN-0004cf-DY
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 15:23:38 +0000
Received: from dawn.lan (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6761E24000F;
 Mon, 27 May 2019 15:22:54 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 17:22:35 +0200
Message-Id: <20190527152235.19232-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_112337_565573_9AB0DC15 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] opkg: add License info
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

show license in `opkg info <pkg_name>`.

CC: Jo-Philipp Wich <jo@mein.io>
Signed-off-by: Paul Spooren <mail@aparcar.org>
---
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
index 0baa4db..a294258 100644
--- a/libopkg/pkg_parse.c
+++ b/libopkg/pkg_parse.c
@@ -269,6 +269,11 @@ int pkg_parse_line(void *ptr, char *line, uint mask)
 			pkg_set_int(pkg, PKG_INSTALLED_TIME, strtoul(line + strlen("Installed-Time") + 1, NULL, 0));
 		}
 		break;
+		case 'l':
+		case 'L':
+		if ((mask & PFM_LICENSE) && is_field("License", line))
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
