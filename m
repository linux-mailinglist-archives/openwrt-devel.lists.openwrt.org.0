Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB41E005F
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 11:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ES1AJul6gAZ+2kYA9NS/S4wIdDAqeeHSk31yYYmkOSk=; b=RHDEzothg1zw80
	RnVD1EvF5XeeAWrSSSNSiincHBT7bMtb8JK3XOiZZDBNfKuDfhQZ+fKiJdZo9H7K7PRfuM+ZC206k
	ps5QBd2GK0zr5O7RvOryouoZ8+8XLG0mBrgXmW5qHBG3JZzS690p3xaMsmmXaqsVsZg6TK7iUAFmG
	XUy4gFSp+oyXHnawkXPNbSpQEzWTs2VHasimXYHJ/WZEwdn+oZFS2UH5AQPk/VLO3jgF4bsZROyJf
	/5WiPFN+4JqD2EnKEhzrzmAnL1GpqqxjiAQFYB5ZDRWE+GC/3mKxVNZwjfHt01N1NgAIhVvRAdwmi
	KsZ9dDET7mG/8BI4/bMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMq9b-0005tZ-5U; Tue, 22 Oct 2019 09:08:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMq9U-0005sW-QB
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 09:08:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id c184so733761pfb.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 02:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AtnZ7M0LMhCHEfj2g/3KK9FMnUndoRNyPony+LDKDME=;
 b=pc5ch5mpGsYmM+grFoQ+O4YzZ20bM+OBm819WpDVih1U4krCogJVAaKm0r4XYuFFOH
 xr39cWTkxlA8GlxRmTO9q7tjUKXiyzZDc/kbnXQmhWh+ATeOL32Fh0LxrIE8HyTSeyF1
 SvN1QMKLqvl3NordYBdiaDsfmh08nuim0pu94n9HGj8b3hqyGLPLvHADiOvEIXauhaLS
 vTLtPH8mTPEL/uhi8zuW3avMHHn2vMZPrijb9MV/MbUnMqErSnP8o9E6mF/0KMD2eiBv
 wezdGZECzAgCyGVRAgWxLOMKl4dC+gNBOjYbTZLSHSMvnJIKZ7X4xzD5uLphStKlkIAp
 EqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AtnZ7M0LMhCHEfj2g/3KK9FMnUndoRNyPony+LDKDME=;
 b=mxO7KTUYWtEM5ouJB/LrCVz+62UB2Jqo9py6K9mbIplS4fadxEL0Bn8dOt26Ki0W6V
 NsACbRe9p7eQTEeQpeZF6BiklBtMdX+xMgjLjTnorBn0YSa2YtyNCtvYBeGzhliPKUqc
 tyPgWF8UNv2SJTqnBSjNrssTLzIpbItAH2p7mERnzoZvKZZ3EHoUAV4PgNyCHjo+Fq9K
 1NX0+Q09nBzllUQb5LtmlR/g8y9xeb/nNAbcYalSGiv1IXBWFRAYULd04RPN11XCHa3q
 hlOPIPH7UK1Rzh7G9qsUZn47Cc1LlTTrsq33jik34TlObHaT7u19SiKVQwydIpch7kGd
 52xQ==
X-Gm-Message-State: APjAAAX2RaaHR1x0yJXR7o7/YyDxwq295+PT6Y19/a5riYFiabcL8WxK
 GfGLOdf34rLTPJARpXTvSpOvlWOT
X-Google-Smtp-Source: APXvYqxtlKLfgSwWjg60MNfElvT9D4pxwphZi+h42X1huMY3dF0dWvWT+cGDQuUS+HdTivqiCsTkfw==
X-Received: by 2002:a65:5cca:: with SMTP id b10mr2623205pgt.258.1571735306680; 
 Tue, 22 Oct 2019 02:08:26 -0700 (PDT)
Received: from GOLIATH.lan (167-179-160-129.a7b3a0.bne.nbn.aussiebb.net.
 [167.179.160.129])
 by smtp.gmail.com with ESMTPSA id y17sm26192348pfo.171.2019.10.22.02.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 02:08:26 -0700 (PDT)
From: Gerard Ryan <g.m0n3y.2503@gmail.com>
X-Google-Original-From: Gerard Ryan <G.M0N3Y.2503@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 19:07:43 +1000
Message-Id: <20191022090743.1487-1-G.M0N3Y.2503@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_020828_879676_7B0E387F 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (g.m0n3y.2503[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (g.m0n3y.2503[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [OpenWrt-Devel, V3,
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

 kmodloader.c | 68 +++++++++++++++++++++++++++++-----------------------
 1 file changed, 38 insertions(+), 30 deletions(-)

diff --git a/kmodloader.c b/kmodloader.c
index 07b6700..838bc8c 100644
--- a/kmodloader.c
+++ b/kmodloader.c
@@ -681,6 +681,7 @@ static int print_modprobe_usage(void)
 	ULOG_INFO(
 		"Usage:\n"
 		"\tmodprobe [-q] [-v] filename\n"
+		"\tmodprobe -a [-q] [-v] filename [filename...]\n"
 	);

 	return -1;
@@ -854,16 +855,20 @@ static int main_modinfo(int argc, char **argv)

 static int main_modprobe(int argc, char **argv)
 {
+	int exit_code = EXIT_SUCCESS;
 	struct module_node *mn;
 	struct module *m;
-	char *name;
-	char *mod = NULL;
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
+			exit_code = EXIT_FAILURE;
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
+		exit_code = EXIT_FAILURE;
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
