Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8D3EC65C
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 17:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wx7zYw9WVSf5UBEJQo0aViLj1jIqddS8MK2zLDrGEL8=; b=hFiETjUNV3LH+w
	IuDdVfYjpsux+v93Nl0osNzqxdIGAy37aCplsoqSX5CHJTLFZt3FrxI+kG1e6R1nbpckMv8GO5oUj
	SHcHRksIEsR1iI4nhmhvwdSGPipmRR926PCgqaQxTvFEDt0Xecmw+/wumdCf3j79jmrZleRbhUoLb
	8Db5J9EpOG6f7EHuKLvJN32hgRznOIayzOFFMYD1R0XNVqpL7OYmsSDE8hSVCeTL1tA3Jwg4QPnlf
	FffBwOrLv4w0UvlS0/JIfNDuoSBOJd4HMDXsIHu3QJkFLujVE/s4VSfopndcSL851lwE5hOpIWM8l
	5ySiNcR0e3gRfz15xAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZSN-00073b-2q; Fri, 01 Nov 2019 16:07:23 +0000
Received: from mout-u-107.mailbox.org ([2001:67c:2050:1::465:107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZS2-0006v5-8U
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 16:07:05 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474RsJ08X6zKnWM;
 Fri,  1 Nov 2019 17:07:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id ub4r4Y-88n25; Fri,  1 Nov 2019 17:06:56 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 17:06:34 +0100
Message-Id: <20191101160634.25559-2-hauke@hauke-m.de>
In-Reply-To: <20191101160634.25559-1-hauke@hauke-m.de>
References: <20191101160634.25559-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_090702_601955_21596E1F 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH uci 2/2] build: Add -Wclobbered to detect
 problems with longjmp
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

When we jump back to a save point in UCI_THROW() with longjmp all the
registers will be reset to the old values when we called UCI_TRAP_SAVE()
last time, but the memory is not restored. This will revert all the
variables which are stored in registers, but not the variables stored on
the stack.

Mark all the variables which the compiler could put into a register as
volatile to store them safely on the stack and make sure they have the
defined current values also after longjmp was called.

This also activates a compiler warning which should warn us in such
cases.
This could fix some potential problem in error paths like the one
reported in CVE-2019-15513.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 CMakeLists.txt |  2 +-
 delta.c        | 20 ++++++++++----------
 file.c         | 11 ++++++-----
 list.c         |  4 ++--
 4 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 170eb0b..578c021 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -3,7 +3,7 @@ cmake_minimum_required(VERSION 2.6)
 PROJECT(uci C)
 
 SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
-ADD_DEFINITIONS(-Os -Wall -Werror --std=gnu99 -g3 -I. -DUCI_PREFIX="${CMAKE_INSTALL_PREFIX}")
+ADD_DEFINITIONS(-Os -Wall -Werror -Wclobbered --std=gnu99 -g3 -I. -DUCI_PREFIX="${CMAKE_INSTALL_PREFIX}")
 
 OPTION(UCI_DEBUG "debugging support" OFF)
 OPTION(UCI_DEBUG_TYPECAST "typecast debugging support" OFF)
diff --git a/delta.c b/delta.c
index 386167d..52ebe3b 100644
--- a/delta.c
+++ b/delta.c
@@ -100,7 +100,7 @@ int uci_set_savedir(struct uci_context *ctx, const char *dir)
 {
 	char *sdir;
 	struct uci_element *e, *tmp;
-	bool exists = false;
+	volatile bool exists = false;
 
 	UCI_HANDLE_ERR(ctx);
 	UCI_ASSERT(ctx, dir != NULL);
@@ -259,7 +259,7 @@ error:
 static int uci_parse_delta(struct uci_context *ctx, FILE *stream, struct uci_package *p)
 {
 	struct uci_parse_context *pctx;
-	int changes = 0;
+	volatile int changes = 0;
 
 	/* make sure no memory from previous parse attempts is leaked */
 	uci_cleanup(ctx);
@@ -294,8 +294,8 @@ error:
 /* returns the number of changes that were successfully parsed */
 static int uci_load_delta_file(struct uci_context *ctx, struct uci_package *p, char *filename, FILE **f, bool flush)
 {
-	FILE *stream = NULL;
-	int changes = 0;
+	FILE *volatile stream = NULL;
+	volatile int changes = 0;
 
 	UCI_TRAP_SAVE(ctx, done);
 	stream = uci_open_stream(ctx, filename, NULL, SEEK_SET, flush, false);
@@ -317,8 +317,8 @@ __private int uci_load_delta(struct uci_context *ctx, struct uci_package *p, boo
 {
 	struct uci_element *e;
 	char *filename = NULL;
-	FILE *f = NULL;
-	int changes = 0;
+	FILE *volatile f = NULL;
+	volatile int changes = 0;
 
 	if (!p->has_delta)
 		return 0;
@@ -419,9 +419,9 @@ done:
 
 int uci_revert(struct uci_context *ctx, struct uci_ptr *ptr)
 {
-	char *package = NULL;
-	char *section = NULL;
-	char *option = NULL;
+	char *volatile package = NULL;
+	char *volatile section = NULL;
+	char *volatile option = NULL;
 
 	UCI_HANDLE_ERR(ctx);
 	uci_expand_ptr(ctx, ptr, false);
@@ -463,7 +463,7 @@ error:
 
 int uci_save(struct uci_context *ctx, struct uci_package *p)
 {
-	FILE *f = NULL;
+	FILE *volatile f = NULL;
 	char *filename = NULL;
 	struct uci_element *e, *tmp;
 	struct stat statbuf;
diff --git a/file.c b/file.c
index 7333e48..321b66b 100644
--- a/file.c
+++ b/file.c
@@ -721,10 +721,10 @@ static void uci_file_commit(struct uci_context *ctx, struct uci_package **packag
 {
 	struct uci_package *p = *package;
 	FILE *f1, *f2 = NULL;
-	char *name = NULL;
-	char *path = NULL;
+	char *volatile name = NULL;
+	char *volatile path = NULL;
 	char *filename = NULL;
-	bool do_rename = false;
+	volatile bool do_rename = false;
 	int fd;
 
 	if (!p->path) {
@@ -881,12 +881,13 @@ static char **uci_list_config_files(struct uci_context *ctx)
 	return configs;
 }
 
-static struct uci_package *uci_file_load(struct uci_context *ctx, const char *name)
+static struct uci_package *uci_file_load(struct uci_context *ctx,
+					 const char *volatile name)
 {
 	struct uci_package *package = NULL;
 	char *filename;
 	bool confdir;
-	FILE *file = NULL;
+	FILE *volatile file = NULL;
 
 	switch (name[0]) {
 	case '.':
diff --git a/list.c b/list.c
index 78efbaf..41a8702 100644
--- a/list.c
+++ b/list.c
@@ -623,8 +623,8 @@ int uci_add_list(struct uci_context *ctx, struct uci_ptr *ptr)
 {
 	/* NB: UCI_INTERNAL use means without delta tracking */
 	bool internal = ctx && ctx->internal;
-	struct uci_option *prev = NULL;
-	const char *value2 = NULL;
+	struct uci_option *volatile prev = NULL;
+	const char *volatile value2 = NULL;
 
 	UCI_HANDLE_ERR(ctx);
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
