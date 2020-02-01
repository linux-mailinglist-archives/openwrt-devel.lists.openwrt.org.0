Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FA714F8D8
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 17:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LaoAQhQab95TtmBlsvWAi8kvl7BTp1bi6AWTwjrWL7w=; b=TwZkWozgvWUSM0
	aH2wj3Ji267ILyMb+NX95OCCw5ycfBR5qy/8+fszTPCDb2B7okzpl+tefBFcbAuIJPTKPRvJS5vJl
	n3LILRrqn3b7eqnBHdkjHyj5ktgjDgR18eBOYlBwp9PWMdAHPGctN5akDOJJ4SsUps2mcrYUQHorV
	V+bRC6NzVmMkLjDNUdzwD9M+mWmR8ehtj0+2bUMmygfftTX/qMIF9vgJhL/EK86wC/gQ1JO0xXvOk
	huw1G5/JptXvzSJBtIZAXs7Cq7cWTGmvtfG1IGNk3T1UHC9Nxj7RvCCMNh5BiS0vzfVDW1i+hdmOY
	s1JpDjda5SyeiOFGSOCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixvay-00050D-K0; Sat, 01 Feb 2020 16:26:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixvaq-0004zY-IL
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 16:26:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so12145208wmi.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 01 Feb 2020 08:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfRsgoCJeiTQgGszcW/aT5BQuN4eLRthkmJwbWzOEZ8=;
 b=LUR1MWmpRDo+FLA9wNyii+c8cn3UznugsxEkBr07PFewdPy1GhkPRmkK93vRWt0Ntc
 8IGv7K9kv4ImsqdQ3/qDs82txctaVQSy80ojvPsSjUEIvbTlquKW506MV0sJMnzPFovl
 mkugWpI2R/mqdze/RNdOBz1mWQZUpLHVHgyEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfRsgoCJeiTQgGszcW/aT5BQuN4eLRthkmJwbWzOEZ8=;
 b=Z4lmnaTZoMe2koISSwG9FV7oDPaO6fIDiWe7QxU+dBfsf1Jacin866+j9bNEYmh6zl
 b2Ou+olKxjo+xcrJB7Qt6DbDA4jT+agXPOZip0TPkqBYFYU8geNu29eugxEmVovh8zbC
 uAWlfh8X4AAqs/YMODjv2JNa76HKMtmNAiLzRrY2TL9OUZ8N9d1cweJOWD0H2vKX2eFW
 AJ6aYwipqCe6MNz00QE+KctzJy0fkuElSEzapjk8bkhUjcttm80Z1itwPvso+ZetYM5X
 mTJvHW9Ws/QHEll0wLwVPyI435vrzaZWhgDaVxocn3eC5ReUI3W1IVfPAbjaw+jJtSWc
 ZxSA==
X-Gm-Message-State: APjAAAU2RQ+g5azkRTsAB87Y3JY2xephNZC6DSK2Zr2a9X5/Hw2N3gAM
 7dpHB+vdwwsohhP2KZim6yAN5GfSsOM=
X-Google-Smtp-Source: APXvYqxW572CLE1InLtvkPJCWU6gXi1Ob8FmlEqhjC/kls3SBP5/zB+1FwSfwMDAKzlxBsPlJSEGlg==
X-Received: by 2002:a7b:cf08:: with SMTP id l8mr18208682wmg.169.1580574356523; 
 Sat, 01 Feb 2020 08:25:56 -0800 (PST)
Received: from localhost.localdomain ([193.240.142.132])
 by smtp.gmail.com with ESMTPSA id m3sm17315591wrs.53.2020.02.01.08.25.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Feb 2020 08:25:55 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  1 Feb 2020 16:25:01 +0000
Message-Id: <20200201162500.35499-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.1 (Apple Git-122.3)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_082600_610766_F7D4F37D 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH procd] instance: Add 'mustjail' attribute
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since commit b44417c instance: provide error feedback if ujail binary is
missing, worrying log spam of the form "unable to find /sbin/jail ..."
may be encountered.

On systems not configured with jail capabilities the lack of jail binary
is not an error, whilst on systems with jail capabilities the warning
will be issued and the process is started outside of a jail.

This commit adds a new procd jail parameter 'mustjail' which if set
issues an error and does NOT start the process outside of a jailed
environment.

The original 'unable to find jail binary' warning is output in DEBUG
mode, thus processes started in a 'may jail' but non-jail capable
environment do not spam the log.

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 service/instance.c | 33 +++++++++++++++++++++++----------
 service/instance.h |  1 +
 2 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/service/instance.c b/service/instance.c
index e872ba0..5dc23e2 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -101,6 +101,7 @@ enum {
 	JAIL_ATTR_RONLY,
 	JAIL_ATTR_MOUNT,
 	JAIL_ATTR_NETNS,
+	JAIL_ATTR_MUSTJAIL,
 	__JAIL_ATTR_MAX,
 };
 
@@ -114,6 +115,7 @@ static const struct blobmsg_policy jail_attr[__JAIL_ATTR_MAX] = {
 	[JAIL_ATTR_RONLY] = { "ronly", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_MOUNT] = { "mount", BLOBMSG_TYPE_TABLE },
 	[JAIL_ATTR_NETNS] = { "netns", BLOBMSG_TYPE_BOOL },
+	[JAIL_ATTR_MUSTJAIL] = { "mustjail", BLOBMSG_TYPE_BOOL },
 };
 
 struct instance_netdev {
@@ -819,20 +821,16 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 {
 	struct blob_attr *tb[__JAIL_ATTR_MAX];
 	struct jail *jail = &in->jail;
-	struct stat s;
-	int r;
-
-	r = stat(UJAIL_BIN_PATH, &s);
-	if (r < 0) {
-		ERROR("unable to find %s: %m (%d)\n", UJAIL_BIN_PATH, r);
-		return 0;
-	}
 
 	blobmsg_parse(jail_attr, __JAIL_ATTR_MAX, tb,
 		blobmsg_data(attr), blobmsg_data_len(attr));
 
 	jail->argc = 2;
 
+	if (tb[JAIL_ATTR_MUSTJAIL]) {
+		in->must_jail = true;
+		jail->argc++;
+	}
 	if (tb[JAIL_ATTR_NAME]) {
 		jail->name = strdup(blobmsg_get_string(tb[JAIL_ATTR_NAME]));
 		jail->argc += 2;
@@ -885,7 +883,7 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 	if (in->no_new_privs)
 		jail->argc++;
 
-	return 1;
+	return true;
 }
 
 static bool
@@ -918,7 +916,8 @@ instance_config_parse(struct service_instance *in)
 {
 	struct blob_attr *tb[__INSTANCE_ATTR_MAX];
 	struct blob_attr *cur, *cur2;
-	int rem;
+	struct stat s;
+	int rem, r;
 
 	blobmsg_parse(instance_attr, __INSTANCE_ATTR_MAX, tb,
 		blobmsg_data(in->config), blobmsg_data_len(in->config));
@@ -1004,6 +1003,19 @@ instance_config_parse(struct service_instance *in)
 	if (!in->trace && tb[INSTANCE_ATTR_JAIL])
 		in->has_jail = instance_jail_parse(in, tb[INSTANCE_ATTR_JAIL]);
 
+	if (in->has_jail) {
+		r = stat(UJAIL_BIN_PATH, &s);
+		if (r < 0) {
+			if (in->must_jail) {
+				ERROR("Cannot jail service %s::%s. %s: %m (%d)\n",
+						in->srv->name, in->name, UJAIL_BIN_PATH, r);
+				return false;
+			}
+			DEBUG(2, "unable to find %s: %m (%d)\n", UJAIL_BIN_PATH, r);
+			in->has_jail = false;
+		}
+	}
+
 	if (tb[INSTANCE_ATTR_STDOUT] && blobmsg_get_bool(tb[INSTANCE_ATTR_STDOUT]))
 		in->_stdout.fd.fd = -1;
 
@@ -1146,6 +1158,7 @@ instance_init(struct service_instance *in, struct service *s, struct blob_attr *
 	in->term_timeout = 5;
 	in->syslog_facility = LOG_DAEMON;
 	in->exit_code = 0;
+	in->must_jail = false;
 
 	in->_stdout.fd.fd = -2;
 	in->_stdout.stream.string_data = true;
diff --git a/service/instance.h b/service/instance.h
index 7d91b51..abd91ad 100644
--- a/service/instance.h
+++ b/service/instance.h
@@ -59,6 +59,7 @@ struct service_instance {
 
 	bool trace;
 	bool has_jail;
+	bool must_jail;
 	bool no_new_privs;
 	struct jail jail;
 	char *seccomp;
-- 
2.21.1 (Apple Git-122.3)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
