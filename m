Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C66C14EDB0
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 14:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7EcsCdYlw5Q1RsfWSkpktx3cEQxMxsDTisMc9kEPm1Q=; b=rMF9URElKE1Xpb
	sWqKeNZqK5g891oadKmCjbEAbNzZdDEk8pITsHEBiCwrtk62wk1CFQU2lOHRfEKMGkdTJwmttWZs4
	7h5xhwM4LlyHLRkojBv70EMLdQ9hPqHN+BJHFrGMM++c1EgeugHSAggJoex/fhRiR7nr/yUaJIvxe
	MMaFHpbNlKFh8e3m3C5mvlmVzPBRFF+bMHXoa1kPWYA/7IMudUkoKxWWP1Md0gwRVLdqF8nQXUPCm
	5WZS9QDDepWQ9t0m9v8P0qZm3ptOm32p77joVLFxmX+ZHSesf8jKmFAAHbdRqf5aNLTgiS0nhfby8
	ipwbc0j2J0UKu+Yw+7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWbT-00047z-I0; Fri, 31 Jan 2020 13:44:59 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWbK-00047X-NK
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 13:44:52 +0000
Received: by mail-wr1-x42c.google.com with SMTP id j104so8647958wrj.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 Jan 2020 05:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VUxTTyGK02krCg3bn8J+vGRIaseXYDurfsGimQJycgk=;
 b=TGYmbSPOgtCp+x14KJoVPkkmf6mG84d8FQ8jbyzoiVLQ665Z/ezqZoS+hmOIyUOXYf
 b8AcAouYFhHnUTL2k40chSp+iaVRuFIzSFsJP9JcY4RVPPohrjBz3BR917R75gXLJ2/C
 3cSdxC8WiNaX5lWaJdcwjGFLXIazwxRnf674M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VUxTTyGK02krCg3bn8J+vGRIaseXYDurfsGimQJycgk=;
 b=Q5jW3z93WHgW5OoeVEeqJY/tnyPG+Jp9J/WnobhFno1VlktTfpWD2f0lTdAO6rLB1w
 O4eKjBsfHdHNhZUOPxpkhqG/lT9siOUmCNMgaZbKDTVi2mAE07e+YE5E6Dwel/73AyMe
 NWzkcZOnJre1LtPx8eVbmJ9hSRIacdskgQFWYh7/0jKCBDNiG+3Ckzsimr+kEh8iYSyE
 xIvGzb2HoV6h683idSZFi73oSorIfnCkkPHRQyINGf9wNxUZmAzsqXwl3HnagkARtQgW
 glkb+gl0dBhQBsIB7OB/Cla1oyjy4aVNOSLyvo9LwSO9f5auQaowicLzM7wUROW3rXcX
 hOYg==
X-Gm-Message-State: APjAAAXyzmAsGCly1HnOhVIQMqUVl+90bkGzna/Zgh+4Ju9fZWcsuDfN
 tSc3LeRJUnBDCqLNc+KVL6FXsRm6GlfwOA==
X-Google-Smtp-Source: APXvYqyJ1TDnTatXkI9kYcY6rswoqnI6BEOOY2+tAy8mAIcnK6QuPUDXmz6dwJEhYDjGxpgA/8QOvQ==
X-Received: by 2002:a05:6000:1292:: with SMTP id
 f18mr12607718wrx.10.1580478288372; 
 Fri, 31 Jan 2020 05:44:48 -0800 (PST)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id q14sm12028797wrj.81.2020.01.31.05.44.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 Jan 2020 05:44:47 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 13:43:37 +0000
Message-Id: <20200131134336.31945-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.1 (Apple Git-122.3)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_054450_761223_D647DA3A 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH procd v2] instance: Improve missing jail
 binary message
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

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
Base error on new 'mustjail' attribute

 service/instance.c | 32 ++++++++++++++++++++++----------
 service/instance.h |  1 +
 2 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/service/instance.c b/service/instance.c
index e872ba0..d430d6e 100644
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
@@ -1004,6 +1003,18 @@ instance_config_parse(struct service_instance *in)
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
+			in->has_jail = false;
+		}
+	}
+
 	if (tb[INSTANCE_ATTR_STDOUT] && blobmsg_get_bool(tb[INSTANCE_ATTR_STDOUT]))
 		in->_stdout.fd.fd = -1;
 
@@ -1146,6 +1157,7 @@ instance_init(struct service_instance *in, struct service *s, struct blob_attr *
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
