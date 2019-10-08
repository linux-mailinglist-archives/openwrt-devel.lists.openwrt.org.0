Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9903FCF217
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 07:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TqpVmFA5Qr/ChiYvnb6rmoO+Ep20bb4kCSm3dnjOpIQ=; b=u6/73WbSJB33S3
	964Xsqs5WcBv9RaDrlLKptLIIzAcRAK4SE/uVN0Ap9AAcFAk2PWQu5hWbZ5vFEwr9PfUOHkr1OUjk
	hgvFp3nWyzpVBFPP2TRgQDl1dv8LN2em6be356WKkAfU9h9awS0JFu8PqejB+T6R5dy6PWzP9DWOt
	dDNxoAm1GW1zS95aaPlpjFGqMhWHPJPMz7bgfnVG1S1lkRhc3q6tTOF6uFO31Tlp5LJsx78TRiC5h
	GQWNi26tg16xZsDUBObBFKuFMhoyU7/bznDlBQCCE3QOuS3YpyjfKrDf+9cTgcB7d6EXBJE2DTsdQ
	k/0lzPnlB8MyA13iWWVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhi0-0001FP-0e; Tue, 08 Oct 2019 05:06:52 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhhp-0001F0-Qk
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 05:06:43 +0000
Received: by mail-io1-xd41.google.com with SMTP id a1so33831600ioc.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 22:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jqb0sE7oBDOnXITczGhWq2BsUCYXvsoKU/G39LyvEmI=;
 b=OQvuh0zXG+b5ctF5cVo1fqmKSrE3xmgSIvrIm8fUoYFtNmkKa7has69z1z8NI9WIoS
 v5MvSBawF2GLvTh3yA7zOtQlOle1MhX0Lg6+rJgl3G0PoYqnBerxrrqmedmUyRBcXk4B
 RCzDniNFia6zAdagPTCtUsY11/eGlZqTdgqet/fP25S0Zn67DO49LGznQ/tBnHWfO2QJ
 3O95bvErBlcJgJ5DmgtFpYi64A7T8prOoys7tmhbLQQGLK+zaC7Y3zY4vDgyylCQFMYm
 7MsdGtK8twVRuPXY7dIlHoAQ/vp77nnIQKk16d0s8iFUWkKIlNosQs0LAxxVYFzOsCrw
 U4FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jqb0sE7oBDOnXITczGhWq2BsUCYXvsoKU/G39LyvEmI=;
 b=iwGkWAEAykMOmWldNhsrDQKyUQCx7llculX81syTeKT/8SOxsqAiViWtlR6iPrZlls
 aTfEMvxvJ3Cfr0SOF65P1qODQ/Au6khYpaInkfBfD6l24GaVtIvxKFWRb+Qonvv5Jffu
 ix+ol72QSQdrutbxc1tqa9AXY+Jtq0+sLvBfSc6WrcoVUKTsFaCUSN2ZEqkEiPkBrNAu
 hSaSnWKjNVR66poHcfAb1vxmGLleA3wWBo+np7iiIDchiS6wlY+nZT9Oo0Ywc2OeI3mL
 mot2Xh3wfkz05aEnguqsym1frEofS8j68KqHMj4XkB33emoGwDFypHdnoGk0m/XBMimO
 zXPw==
X-Gm-Message-State: APjAAAX3iXd9vjUgFtieJtDuiUcHKgjCpfQu6rG2JYWzLepqo9m9VXG4
 LIcxFTidJUVj5EARql7Vhh98QvwW
X-Google-Smtp-Source: APXvYqzvNJpTQbJFXHNJCplOtBKLE+IRLnkgNUSHg4IYXjFQk1GIy8VyCvhOYWnXaxK/IARb95xXPA==
X-Received: by 2002:a92:7902:: with SMTP id u2mr34621589ilc.290.1570511200041; 
 Mon, 07 Oct 2019 22:06:40 -0700 (PDT)
Received: from localhost.localdomain ([142.47.212.2])
 by smtp.gmail.com with ESMTPSA id b83sm9244128ilg.27.2019.10.07.22.06.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 22:06:38 -0700 (PDT)
From: Zachary Cook <zachcook1991@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  8 Oct 2019 01:02:50 -0400
Message-Id: <20191008050250.5320-1-zachcook1991@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_220641_866251_F3B2EFB3 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [142.47.212.2 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zachcook1991[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zachcook1991[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3] procd: Add cached and available to
 memory table
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
Cc: Zachary Cook <zachcook1991@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Provides a better measure of actual system memory usage for Luci/users.
"cached" will be used to add a new progress bar, "available" is the
kernel's estimate of memory that is actually useable, and is more
accurate than (memory.free + memory.buffered) that Luci currently uses
to calculate available memory.

Signed-off-by: Zachary Cook <zachcook1991@gmail.com>
---
 system.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/system.c b/system.c
index 751a016..e5a4f5f 100644
--- a/system.c
+++ b/system.c
@@ -230,9 +230,36 @@ static int system_info(struct ubus_context *ctx, struct ubus_object *obj,
 #ifdef linux
 	struct sysinfo info;
 	void *c;
+	char line[256];
+	char *key, *val;
+	unsigned long long available, cached;
+	FILE *f;
 
 	if (sysinfo(&info))
 		return UBUS_STATUS_UNKNOWN_ERROR;
+
+	if ((f = fopen("/proc/meminfo", "r")) == NULL)
+		return UBUS_STATUS_UNKNOWN_ERROR;
+
+	/* if linux < 3.14 MemAvailable is not in meminfo */
+	available = 0;
+	cached = 0;
+
+	while(fgets(line, sizeof(line), f))
+	{
+		key = strtok(line, " :");
+		val = strtok(NULL, " ");
+
+		if (!key || !val)
+			continue;
+
+		if (!strcasecmp(key, "MemAvailable"))
+			available = 1024 * atoll(val);
+		else if (!strcasecmp(key, "Cached"))
+			cached =    1024 * atoll(val);
+	}
+
+	fclose(f);
 #endif
 
 	now = time(NULL);
@@ -262,6 +289,8 @@ static int system_info(struct ubus_context *ctx, struct ubus_object *obj,
 			(uint64_t)info.mem_unit * (uint64_t)info.sharedram);
 	blobmsg_add_u64(&b, "buffered",
 			(uint64_t)info.mem_unit * (uint64_t)info.bufferram);
+	blobmsg_add_u64(&b, "available",available);
+	blobmsg_add_u64(&b, "cached",   cached);
 	blobmsg_close_table(&b, c);
 
 	c = blobmsg_open_table(&b, "swap");
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
