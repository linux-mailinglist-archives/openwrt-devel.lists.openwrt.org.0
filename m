Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5A114FD08
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 13:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQm68SIwWuqF1CwiNR9luthNSQi+eZR+7pB6KiiuS+Y=; b=Bd0HgqgiIfDDap
	ZUk28E1VIiTwKv0rIVuekbGxk+C+4rFRNAInKcacEEcGdNJgj7zI6a9+y3k3H2hZHn7vIo7A3FVhB
	EJsvjqQdeQa983KgRxCF6nifXPmuHSnrlO0OqRAk1pyZqgjnmNfPky8hnQJWT/fDMLPHFdUyi+NJL
	ZqTJ2xS3dLlJspSnuVhNKhpAzIuWLzmqPtpRIZ58fNi6bhkp7gUehF7ejpi49/m+1MPuKqQYFTKwP
	qM/nUSeFrZlae+vt89vyX66MjfhNmkbbtR2EfBZfXfamSnbTIoayDuyn0EEqT4QQ9OArHJHHxAbM5
	y71nWuLm4JXFMah2L7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyE7W-0001Pd-3K; Sun, 02 Feb 2020 12:12:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyE7O-0001PH-MD
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 12:12:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id u6so1105099wrt.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 02 Feb 2020 04:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WMF+iw6QuqNsDzq+Pa7lCbQZXj4RzM7hsZxtr2GZbMM=;
 b=CWgMGfbAsLMbrpmWU2g6T1oMHpJpZSUBmUvHLZ/QdPaVMSp6jweXMUDyVmeLaUBVGN
 vCRqpoozFYC6BGgOpDr+aGmSF2guDDOtLQlqySlwhdOWivtc8QcNIqU+eX8wYuKFHPPU
 z9BYgnd22s4Ic8CyvRVg8sA4pA4RPxJiMc4Qk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WMF+iw6QuqNsDzq+Pa7lCbQZXj4RzM7hsZxtr2GZbMM=;
 b=UL7eEt17nB0rJ4RRjKNSDAUMft26XdkEIOUbv+GajKUBisF/uJlMmIMt1WWZ6FzIw+
 SQw/NtNRJU+p72LxpwIx71NyHajH4nYFPtiYNuRwLa/MLCrhK6c29jAS4+Nxm6oITKvD
 NYfGoMFLyQb5aaynz3GY1mkERTeg+HBbbpPRg8AA2tgCJdGznQUdyRCbGOiamKjcOSAy
 pINGdsivHAnl8ydFon1NAE6GONfPtMCRTKciaefv3Xhzl++mU/19ihuVhUcOl5kCe3oT
 1ndE7KvUUPWvlqZl/T2/gAGQOIiJ6O7S3tjMmHvLnWvQv7ndqU11pBWbxirYr+qhFQ6o
 86NQ==
X-Gm-Message-State: APjAAAVlGa0g0C+Qjc2k5fu0JzHlxxAfKVDIyTIiLwpK5sHiA6I0d3Co
 67B/2rgA5xlNL9L7yFZQXBFXBDBv6qmUOQ==
X-Google-Smtp-Source: APXvYqz7S5oXw3tAHTq7wMbMNb/lRtc4BFGAYDasqUHtNQIyG2A9Qyo64TypaI8m7SDP0Hh7m2kLJA==
X-Received: by 2002:a5d:53c4:: with SMTP id a4mr10657358wrw.403.1580645568495; 
 Sun, 02 Feb 2020 04:12:48 -0800 (PST)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id k16sm22136202wru.0.2020.02.02.04.12.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Feb 2020 04:12:47 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  2 Feb 2020 12:12:18 +0000
Message-Id: <20200202121217.98060-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.1 (Apple Git-122.3)
In-Reply-To: <20200201162500.35499-1-ldir@darbyshire-bryant.me.uk>
References: <20200201162500.35499-1-ldir@darbyshire-bryant.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_041250_725395_E24CBD06 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2] instance: add 'requirejail' attribute
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
v2 - change to 'requirejail' attribute

 service/instance.c | 33 +++++++++++++++++++++++----------
 service/instance.h |  1 +
 2 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/service/instance.c b/service/instance.c
index e872ba0..ffaaaa1 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -101,6 +101,7 @@ enum {
 	JAIL_ATTR_RONLY,
 	JAIL_ATTR_MOUNT,
 	JAIL_ATTR_NETNS,
+	JAIL_ATTR_REQUIREJAIL,
 	__JAIL_ATTR_MAX,
 };
 
@@ -114,6 +115,7 @@ static const struct blobmsg_policy jail_attr[__JAIL_ATTR_MAX] = {
 	[JAIL_ATTR_RONLY] = { "ronly", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_MOUNT] = { "mount", BLOBMSG_TYPE_TABLE },
 	[JAIL_ATTR_NETNS] = { "netns", BLOBMSG_TYPE_BOOL },
+	[JAIL_ATTR_REQUIREJAIL] = { "requirejail", BLOBMSG_TYPE_BOOL },
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
 
+	if (tb[JAIL_ATTR_REQUIREJAIL]) {
+		in->require_jail = true;
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
+			if (in->require_jail) {
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
+	in->require_jail = false;
 
 	in->_stdout.fd.fd = -2;
 	in->_stdout.stream.string_data = true;
diff --git a/service/instance.h b/service/instance.h
index 7d91b51..003a8c9 100644
--- a/service/instance.h
+++ b/service/instance.h
@@ -59,6 +59,7 @@ struct service_instance {
 
 	bool trace;
 	bool has_jail;
+	bool require_jail;
 	bool no_new_privs;
 	struct jail jail;
 	char *seccomp;
-- 
2.21.1 (Apple Git-122.3)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
