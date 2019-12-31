Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4254A12D5A9
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=18Zlepqc8lhuz7moivo7HujkKWBmbJ4lFGq3yk1ZMMs=; b=mr7Z5OCKsNaDTJ
	SbqmAwnwAKifZAgMQQB+o2eYp2ReBZrnEEFjSLD3atlmWA+6++gVMv7vdEEnkfku0hUKdmXh7dRYU
	l1NTc8Lri0qydnNkoc72noCOCtWYZg2EtyE1r+nXtmPpUvhAPQJ+4lJMluuEKt8327+4P2vSbK0ff
	HKOLzPgRiaCFi6W39FR7lIZSbx+xZpe+iV78kyguFjCpe/zym/+kVIEqUyMZstNTLt0H0b970UUm7
	5isxNC1XadmkS4gxVBN+IOkgIcNqfv0lzBBShm/qY5yxNnXhexBRa8cYx+/448QWmnBT9jjrPQHAR
	UyfCjw8gk19pnk/ntQHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im6rI-0006es-9B; Tue, 31 Dec 2019 02:02:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im6r2-0006Zo-05
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:01:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so15349013plt.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=M0D62SXHLh4n/BiaBANkPlPAxUBj8nldqaHxaLsrpLE=;
 b=AnRSXoukE2FnM7lMFi14YT4B0fagWfcJXU7a97BzBGpnVi/rikuvEpYNgKRGhyfXgE
 AxTZ7C6Z9xPXSeQW9vjmf8zC7x74OZRkgRFeaX4MjNMQdgNI1Mzjq53n+f9S+uz4tN+Y
 ADrLOe0kcDgt42dteAXR1cq3lhXdbWQ0klM+8HGNaP9tB+07H7JSnvwBt9i0cxnCYM6D
 lp2bVYdTRlWnRWTNCBu3lMnIuUy9XI8/UyuYEu0yAc79+JT56NWyKKsROkHvS+wJXlS/
 EWn7QS1mRwOAJ9LRuxKIfhHZc7pE2wKnASrWtcfbWLh3V4uCZ28b03gmuuV8m5kmWeXe
 j5+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M0D62SXHLh4n/BiaBANkPlPAxUBj8nldqaHxaLsrpLE=;
 b=FwGJatJ+zNVeOTsNgHTmMRlMf/738RS6HrrMfakyIynKQN1QRqIPOc+YuKyjzTaR5L
 ACYgyCu9gGOcecRkGcQ0d/Fzu6pboB1oGEZS72mfMU6KcMi4UiMwFyMMNb21CfX8ZKPM
 ig2NB7EqsxAGkl1Dwrd9cCkiUQG3ZR4fJmAhFjQYYhsG1agvaRjfuX+uAVgucw6EFY5D
 DG08vmXqU6pmxq4XHn62K0J1qgWVUzRsdH04HMbL+ndN+Oo5D+MfbjBApcjPh25kRJWC
 jmXvLh6uq92jRhr0ILp7lyOSKmcdvgnInGO997KdJqfTXAET13CZqC3/wGczYyuSRPVS
 XIVA==
X-Gm-Message-State: APjAAAUC7uooxKfZZ2ykGPAzy6pfC+k6Kht7EV82OXUomGtZMBuyM1qc
 /KE8Khlg6MzLdwvIryji2OZmrN/I
X-Google-Smtp-Source: APXvYqyWQcPohYR6IhJlq5m8dI4Q0kB3hxG2T93WccBCgiWbac1TFFQTYgF9L3FhJyzrD4oaRdYZAQ==
X-Received: by 2002:a17:90a:238b:: with SMTP id
 g11mr3199903pje.128.1577757710124; 
 Mon, 30 Dec 2019 18:01:50 -0800 (PST)
Received: from GOLIATH.lan (167-179-160-129.a7b3a0.bne.nbn.aussiebb.net.
 [167.179.160.129])
 by smtp.gmail.com with ESMTPSA id c15sm890744pja.30.2019.12.30.18.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:01:49 -0800 (PST)
From: Gerard Ryan <g.m0n3y.2503@gmail.com>
X-Google-Original-From: Gerard Ryan <G.M0N3Y.2503@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 12:01:35 +1000
Message-Id: <20191231020135.2083-1-G.M0N3Y.2503@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_180152_965178_6CCBC067 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (g.m0n3y.2503[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (g.m0n3y.2503[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [OpenWrt-Devel, OpenWrt-Devel, V3,
 2/2] kmodloader: added -a arg to modprobe
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
Cc: Gerard Ryan <G.M0N3Y.2503@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

-a treats all non-op trailing arguments as module names
and attempts to load all of them. This behaviour mirrors the behaviour
of the respective -a in /tools/modprobe.c from https://git.kernel.org.

This is primarily to satiate the multiple modules passed by
docker/libnetwork.

Signed-off-by: Gerard Ryan <G.M0N3Y.2503@gmail.com>
---

Compile tested: x86_x64, Hyper-V, OpenWrt Master
Run tested: x86_x64, Hyper-V, OpenWrt Master

You can also find this patch on GitHub if you prefer.
https://github.com/G-M0N3Y-2503/openwrt-ubox-mirror/tree/feature_extend_modprobe_options

Since https://patchwork.ozlabs.org/patch/1175792/ I adjusted some whitespace to indent more consistently and split the patch by the args they implement.
Since https://patchwork.ozlabs.org/patch/1179955/ I reworded the commit message to explain the functionality of -a
Since https://patchwork.ozlabs.org/patch/1181166/ Stylistic changes to do with exit codes

 kmodloader.c | 68 +++++++++++++++++++++++++++++-----------------------
 1 file changed, 38 insertions(+), 30 deletions(-)

diff --git a/kmodloader.c b/kmodloader.c
index 07b6700..d6d2910 100644
--- a/kmodloader.c
+++ b/kmodloader.c
@@ -681,6 +681,7 @@ static int print_modprobe_usage(void)
 	ULOG_INFO(
 		"Usage:\n"
 		"\tmodprobe [-q] [-v] filename\n"
+		"\tmodprobe -a [-q] [-v] filename [filename...]\n"
 	);

 	return -1;
@@ -856,14 +857,18 @@ static int main_modprobe(int argc, char **argv)
 {
 	struct module_node *mn;
 	struct module *m;
-	char *name;
-	char *mod = NULL;
+	int exit_code = 0;
+	int load_fail;
 	int log_level = LOG_WARNING;
 	int opt;
 	bool quiet = false;
+	bool use_all = false;

-	while ((opt = getopt(argc, argv, "qv")) != -1 ) {
+	while ((opt = getopt(argc, argv, "aqv")) != -1 ) {
 		switch (opt) {
+			case 'a':
+				use_all = true;
+				break;
 			case 'q': /* shhhh! */
 				quiet = true;
 				break;
@@ -882,48 +887,51 @@ static int main_modprobe(int argc, char **argv)
 	/* after print_modprobe_usage() so it won't be filtered out */
 	ulog_threshold(log_level);

-	mod = argv[optind];
-
 	if (scan_module_folders())
 		return -1;

 	if (scan_loaded_modules())
 		return -1;

-	name = get_module_name(mod);
-	m = find_module(name);
-	if (m && m->state == LOADED) {
-		if (!quiet)
-			ULOG_ERR("%s is already loaded\n", name);
-		return 0;
-	} else if (!m) {
-		if (!quiet)
-			ULOG_ERR("failed to find a module named %s\n", name);
-		return -1;
-	} else {
-		int fail;
+	do {
+		char *name;

-		m->state = PROBE;
+		name = get_module_name(argv[optind]);
+		m = find_module(name);

-		fail = load_modprobe(true);
+		if (m && m->state == LOADED) {
+			if (!quiet)
+				ULOG_INFO("%s is already loaded\n", name);
+		} else if (!m) {
+			if (!quiet)
+				ULOG_ERR("failed to find a module named %s\n", name);
+			exit_code = -1;
+		} else {
+			m->state = PROBE;
+		}

-		if (fail) {
-			ULOG_ERR("%d module%s could not be probed\n",
-			         fail, (fail == 1) ? ("") : ("s"));
+		optind++;
+	} while (use_all && optind < argc);

-			avl_for_each_element(&modules, mn, avl) {
-				if (mn->is_alias)
-					continue;
-				m = mn->m;
-				if ((m->state == PROBE) || m->error)
-					ULOG_ERR("- %s\n", m->name);
-			}
+	load_fail = load_modprobe(true);
+	if (load_fail) {
+		ULOG_ERR("%d module%s could not be probed\n",
+		         load_fail, (load_fail == 1) ? ("") : ("s"));
+
+		avl_for_each_element(&modules, mn, avl) {
+			if (mn->is_alias)
+				continue;
+			m = mn->m;
+			if ((m->state == PROBE) || m->error)
+				ULOG_ERR("- %s\n", m->name);
 		}
+
+		exit_code = -1;
 	}

 	free_modules();

-	return 0;
+	return exit_code;
 }

 static int main_loader(int argc, char **argv)
--
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
