Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9B4D5411
	for <lists+openwrt-devel@lfdr.de>; Sun, 13 Oct 2019 06:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tfBC7nEqBJ0v3A5JRQ42f9mEMn9LV1NWHLBD5ALQ/f8=; b=iM3AfPzhcUhJjH
	ZgHcJnqGkS0gxIFYU0sXiJstuI9m7AHN1TJU2ylNWo+VF3hs39YnSMG4GHSUeFTeoBQl/A99W7tXl
	LcJVNG0sLRoZpJPACIuuCYEfWLS/k+RFAminNt53COyBK8jsqWaAYcBrR3VgbpF9hwGjJ0/ZLMBU6
	afeRu6oQi4sibxtBiBlipmBmixrxULykaoC1maGdgI9+ux5LK+rZeXQ/hgnl26ISln2K5M/bF0n08
	XnG3J7GciziH+iIUQNoGlB7SLYW90CSgJIg2T7zlC3MMaHsuIhiT0Gp9GKskNptJn0uTbYwiPQv/T
	OIZ8mwZCeVq403dFK7qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJV6h-0003OW-Kw; Sun, 13 Oct 2019 04:03:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJV6b-0003O2-KG
 for openwrt-devel@lists.openwrt.org; Sun, 13 Oct 2019 04:03:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id q7so8417200pfh.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 12 Oct 2019 21:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TpaLv/vT/RN/Nj5t4iJf10SqWV2rmV9uX3AMzwiUn6A=;
 b=B/SU4coBDF1+CdoslwQwyeShimFMdU6QrF5TC2JN0R2d8WjfPF0GSpt77j14ao8Ccs
 1XiJE3FgNFKUYPY602pLMaA1J4hxDYNpwItwd5zY1Q2enpSFB5x9wzUpEver14iRyqFX
 J7APWU4q8uXtJF5XiCY1hEK6dltNvlPsVj0cXFTmmOFyv2ZbWj3a6xsrfaMdmk3Ob5tM
 6Zh4pD6hqvN+vtaKzFCpfgXT7NohMYGpctmkNdIbKOj1PPQejrxvypHiP8NfQy9mAFNO
 bjvdKme+q97Z+D5v/g4s5vTfy7Ypbvi1j3xN/04vnacVQkYcdoMFqo/Rg2TMNdRSAR/a
 aXfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TpaLv/vT/RN/Nj5t4iJf10SqWV2rmV9uX3AMzwiUn6A=;
 b=E9TgGAVj228R5mJdxi30196zun5pFbkjWIbPXWQ6+q7ARZuP+MQ50uv9OmhrUyHkFs
 D0UeJ9yVyCOn/o73FypJZDK+Kh1YS/4XxqbcRD+b1c5+ZJqBerfZev/5eLfzxPmnnN/g
 2JLJwmqB0q2J5jBdi1yUd2hhG578T8rx4lmHzq8T31/iwIGTfrMswbskvJrli1oTUkpN
 SGv1guuqIWPGVxzOTUMVB5hIDeA35Ndp+Fucntl+hJ4CpR6uSqI/Z9zwJjGWy5y0jRli
 07SwQFNzlfWp9gkeq9J8ijtfVWnnN0XxLF77tRgJt4emXvRu7s3AVshAuwaW8DIgyCG4
 L1/w==
X-Gm-Message-State: APjAAAVkRczZHstTRNWRKiHjxrrj0vrkxP48gnbK3vguZqvt55BTngnx
 JuekD9GrwUVV+5cNEFDwPkZtRhVT
X-Google-Smtp-Source: APXvYqxmGCh3Z3nBsuuWFcxGkjY3j7ugClH8ad5iTgDcyPTNrjcy0dfNqa1fqsTmtc+B/cgtpDhS2Q==
X-Received: by 2002:a65:68c2:: with SMTP id k2mr25557097pgt.241.1570939419635; 
 Sat, 12 Oct 2019 21:03:39 -0700 (PDT)
Received: from GOLIATH.lan (167-179-160-129.a7b3a0.bne.nbn.aussiebb.net.
 [167.179.160.129])
 by smtp.gmail.com with ESMTPSA id z25sm13306820pfn.7.2019.10.12.21.03.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 21:03:38 -0700 (PDT)
From: Gerard Ryan <g.m0n3y.2503@gmail.com>
X-Google-Original-From: Gerard Ryan <G.M0N3Y.2503@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 13 Oct 2019 14:03:15 +1000
Message-Id: <20191013040315.9498-1-G.M0N3Y.2503@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_210341_689498_0E7B4E7F 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (g.m0n3y.2503[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (g.m0n3y.2503[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] kmodloader: added -v and -a args to
 modeprobe
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

This is primarily to satiate the usage by docker/libnetwork.
Behaviour mirrors /tools/modprobe.c from https://git.kernel.org

Signed-off-by: Gerard Ryan <G.M0N3Y.2503@gmail.com>
---
Compile tested: x86_x64, Hyper-V, OpenWrt Master
Run tested: x86_x64, Hyper-V, OpenWrt Master

You can also find this patch on GitHub if you prefer.
https://github.com/G-M0N3Y-2503/openwrt-ubox-mirror/tree/feature_extend_modprobe_options

 kmodloader.c | 76 +++++++++++++++++++++++++++++++---------------------
 1 file changed, 46 insertions(+), 30 deletions(-)

diff --git a/kmodloader.c b/kmodloader.c
index 422c895..a437509 100644
--- a/kmodloader.c
+++ b/kmodloader.c
@@ -678,7 +678,9 @@ static int print_insmod_usage(void)

 static int print_modprobe_usage(void)
 {
-	ULOG_INFO("Usage:\n\tmodprobe [-q] filename\n");
+	ULOG_INFO("Usage:\n"
+			  "\tmodprobe [-q] [-v] filename\n"
+			  "\tmodprobe -a [-q] [-v] filename [filename...]\n");

 	return -1;
 }
@@ -851,18 +853,26 @@ static int main_modinfo(int argc, char **argv)

 static int main_modprobe(int argc, char **argv)
 {
+	int exit_code = EXIT_SUCCESS;
 	struct module_node *mn;
 	struct module *m;
-	char *name;
-	char *mod = NULL;
+	int load_fail;
+	int log_level = LOG_WARNING;
 	int opt;
 	bool quiet = false;
+	bool use_all = false;

-	while ((opt = getopt(argc, argv, "q")) != -1 ) {
+	while ((opt = getopt(argc, argv, "aqv")) != -1 ) {
 		switch (opt) {
+			case 'a':
+				use_all = true;
+				break;
 			case 'q': /* shhhh! */
 				quiet = true;
 				break;
+			case 'v':
+				log_level = LOG_DEBUG;
+				break;
 			default: /* '?' */
 				return print_modprobe_usage();
 				break;
@@ -872,7 +882,8 @@ static int main_modprobe(int argc, char **argv)
 	if (optind >= argc)
 		return print_modprobe_usage(); /* expected module after options */

-	mod = argv[optind];
+	/* after print_modprobe_usage() so it won't be filtered out */
+	ulog_threshold(log_level);

 	if (scan_module_folders())
 		return -1;
@@ -880,40 +891,45 @@ static int main_modprobe(int argc, char **argv)
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
+					load_fail, (load_fail == 1) ? ("") : ("s"));
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
