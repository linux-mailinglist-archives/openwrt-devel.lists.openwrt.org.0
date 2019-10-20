Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBB5DDCF4
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 08:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anrkpjaoXlx2vuOSYLHtZp3jAFcaXo0I8lfNs06/SJ4=; b=JWArS58ldILoJm
	+khYwemuH7G3pJ+Qc3o2mOT9BUXa1ys4Fid2qyEWoA3DLO8opcV2Xzc51nT1ln2Tw0CW+OpJxd7Kj
	H+g5MsXeITofqXxSIkUzRLhRp35Fk3DMAwLq7BoI8W2Pjgt0mZ+jmhjvZm01I1sFNzVtWRVVe8vGd
	ter9jK0xbEiLVSnqTzNU3HG9uDUqxZ0Xx7NiEfGzkIgpoJvZLOfRVi7LKooAT3lW8yKQZgCQ/+83P
	H9iM7Jjt6aPvYAWMSuifb7jcI5f8YfU1791xteENaaKZCmcPK1F2iitPKY1oseUDu9gwcGostzEC3
	g3B91Etx6CVqNTT7j2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM4IB-0005v4-D7; Sun, 20 Oct 2019 06:02:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM4Hy-0005pL-Od
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 06:02:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id c16so1170076plz.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 19 Oct 2019 23:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uBM9RgMQWZzGqDxdNqYadfGDJ3ZohdXK5t0FL8sK0TA=;
 b=b3LIGV+qwyj1f4dJlDFOXj3YKBvYvPYp7VE7rfc/Uf8kl5dEX//jpJK98drCZxPNQr
 XnN/Gv3JfMXDZhPRrH//4WNZE2g+OYdvxuwrm/UwbtysO2NnuM+hS7F4yXbHumhwmrfy
 TZigwCqSsDIeaDuCVcih3/j+Z6vfsNZUAgCtkm0Bs9cOpb+5WKt8jywMcDsiE0SSi5hv
 G0IlbalR2PDDr4ZGy1VkZAtjem6of48w5zvYBg0Fp8IQmfqOgc4BOX5ocMdNI7EXZZXW
 VHqbjkPqBwzUltnTIh6+knf+5cdS9twPsfTB3dvLjC4UEjvTWU4Ur2CFs/hlyyujRdP/
 AKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uBM9RgMQWZzGqDxdNqYadfGDJ3ZohdXK5t0FL8sK0TA=;
 b=dNmFOwCtTOLC4rpUsve2On2ct9/0g5lJd9EjAcbgBcngqPORkE23IYMUi2ou2j3x3V
 476WTmqMBAOYnRd/aOiSvVYViXHg17qQoRaKcZftHFc3mnxlGd23BqcruKvY4Enq9aBc
 fG6m/DtlWPk2LEYBz3PKukSIml8zoYZL+Kqj43oeNyb4dHBG32DkfR4156RkuT+Y0lTL
 vxNRnz6U2SVWR9SMCn55gwA8faR79qPJf5RShOsEdefSUaAxhl2ze4fmscL2w6lPRvGT
 d/3ppJXyvVNXY8lFoIJ3JmUgs6ocT7bLUVzct1hoP/AH3rlf0BMONBHokSDpM3ucPg2r
 s7lg==
X-Gm-Message-State: APjAAAUsGMj1zbBcJc/mw3WyOhvnLdHfYy3N/5YSG8nEzsmtZKYoWxg9
 2Nr9WmUtQpjfreAYs4GxkuSmCx0c
X-Google-Smtp-Source: APXvYqzUnFPGdNCD/V7dFb6WiJFrZJQnJRxxlFiMyFn+EG4tj2tKWWCMcWsF+3+WiNm4/krl65izDw==
X-Received: by 2002:a17:902:8606:: with SMTP id f6mr48033plo.226.1571551321475; 
 Sat, 19 Oct 2019 23:02:01 -0700 (PDT)
Received: from GOLIATH.lan (167-179-160-129.a7b3a0.bne.nbn.aussiebb.net.
 [167.179.160.129])
 by smtp.gmail.com with ESMTPSA id q20sm12967123pfl.79.2019.10.19.23.01.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 23:02:01 -0700 (PDT)
From: Gerard Ryan <g.m0n3y.2503@gmail.com>
X-Google-Original-From: Gerard Ryan <G.M0N3Y.2503@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 20 Oct 2019 16:01:12 +1000
Message-Id: <20191020060112.25323-2-G.M0N3Y.2503@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191020060112.25323-1-G.M0N3Y.2503@gmail.com>
References: <20191020060112.25323-1-G.M0N3Y.2503@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_230202_830795_917CB242 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (g.m0n3y.2503[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (g.m0n3y.2503[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [OpenWrt-Devel V2 2/2] kmodloader: added -a arg to
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

Since https://patchwork.ozlabs.org/patch/1175792/ I adjusted some whitespace to indent more consistently and split the patch by the args they implement.

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
