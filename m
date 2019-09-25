Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA5ABE084
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 16:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Aq6o1zszUDIJtkGE+IjO+yyD6DmliC8um+2aqYgxek=; b=trggd429mznH71
	QS9pZLK9VI+bRCMR+14fPU5F7+/HW4rJO8p/X8o4GBeaNEkYGEJNDK0TROsg5jgDJoNiiW/LHSf2R
	mcwVC5s76RnGIrxAZaJ2BLmu/ATXUzHW7Cwaf0if5xl9XdhlLY5SccY4WfqKUdAKRc6kH8/xPdJzY
	rR9CnJHzHD+yYCu7gXeM2xsmQNXvXtbK8cJ3ngzNeT8hnG8cag36pkro59PFXoZpoC7Zvyg6kMYNV
	sNyi3yd00wMkzNOtch++Y2HRUt7dOY097tT9ThenGbLCS6V6BPA++QzoOc85p9AibJmi1AgisSAmZ
	YMuNkWcvxzTKQT9bVtWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8by-00077H-Q9; Wed, 25 Sep 2019 14:49:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8aO-0006dk-36
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 14:48:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id 3so5282074wmi.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 07:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mZ6WJ29hobDMcqZDvU+YsfCco9vg1t13E77qX5RJEa8=;
 b=SiEFdMCHN2+uXzylq1G3Z9Jn0vlfME/O5wc4tg6lb3EhN5RAu/QHUTEUEkJJqFfJlU
 qahXirrWVkWSu5OWYWKe40admgsk38euAejtc/tIlgUwN8ABWVfxAehChbRHmq+B3STA
 jwzMft0EmZ9rDll6ha/XhMKIlihA+1anRqstxWdh3rsdSIPFnluiFnKmLDU1OYSy8MUv
 8H7SBy6HEV6bZ2j6LQ1vNx+BzNwA3CcEeMFK7ht/vgkUYSAg6O37IqmgoF7QNuWNnCP/
 evIPf7gGTAPBRDJHV5qAfur1pyLxHbhnvFGey4dHGtrubtlJLpLnqV88GW08Vemvi+V2
 rnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mZ6WJ29hobDMcqZDvU+YsfCco9vg1t13E77qX5RJEa8=;
 b=CbqCXILbM0/W7fEJPWowggAiWK47V4QDox7B3XM/lhcOKXB8w3PIE1c4VwxG1t4Ld5
 mpK5Jo/LMcLFGqtBYTdNLKjfKUUIgIWbEPF5bm2+/m084uFRU4ER4jsf8ZrN9xApgi5k
 KyvjKfzpWxbNySdKCUvYYy7iOR4Ar6UA1fHFE6Q7SlI+zZ1/4qavHpbXU00djEqYTw1/
 ZUULIpV1Irq7N+REaLPjTUlA+o0OTL3hTutoJQqCp2GBUEjiwSD71C5fOWetLO4otnyD
 W2+XE6J9/6klVq9Q1dSfQ2TNkzCF+ynfP3JkTAwcUATyR8zf4EcN2k5FDZAoNh8AVtwM
 Fyeg==
X-Gm-Message-State: APjAAAVcsuiW5radQ/Lxzcr83dUG5h+X80JhFRWo3RqDlwlK4JmEYORn
 F+ZpGiIUD+g965FGMxWV7rI=
X-Google-Smtp-Source: APXvYqwRqyYfCy77Gq/0LpsQ0I4R4E+bDsi+KpUKH8clGT01XQjjRXHN0Fagl6nMZrdz7ZYd6qnsbA==
X-Received: by 2002:a1c:c1cc:: with SMTP id r195mr8718680wmf.50.1569422886300; 
 Wed, 25 Sep 2019 07:48:06 -0700 (PDT)
Received: from localhost.localdomain ([37.237.208.16])
 by smtp.gmail.com with ESMTPSA id e20sm9646402wrc.34.2019.09.25.07.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 07:48:05 -0700 (PDT)
From: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>
To: Felix Fietkau <nbd@nbd.name>
Date: Wed, 25 Sep 2019 17:47:13 +0300
Message-Id: <20190925144713.10632-3-alimjalnasrawy@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925144713.10632-1-alimjalnasrawy@gmail.com>
References: <20190925144713.10632-1-alimjalnasrawy@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_074808_140421_39D0BA68 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alimjalnasrawy[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 3/3] kernel: trelay: log "started" and
 "stopped"
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
Cc: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It is informative especially when using multiple device pairs.

Signed-off-by: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>
---
 package/kernel/trelay/src/trelay.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/package/kernel/trelay/src/trelay.c b/package/kernel/trelay/src/trelay.c
index 0e3d85bfef..4c1cf706d7 100644
--- a/package/kernel/trelay/src/trelay.c
+++ b/package/kernel/trelay/src/trelay.c
@@ -20,6 +20,10 @@
 #include <linux/rtnetlink.h>
 #include <linux/debugfs.h>
 
+#define trelay_log(loglevel, tr, fmt, ...) \
+	printk(loglevel "trelay: %s <-> %s: " fmt "\n", \
+		tr->dev1->name, tr->dev2->name, ##__VA_ARGS__);
+
 static LIST_HEAD(trelay_devs);
 static struct dentry *debugfs_dir;
 
@@ -71,6 +75,8 @@ static int trelay_do_remove(struct trelay *tr)
 	netdev_rx_handler_unregister(tr->dev1);
 	netdev_rx_handler_unregister(tr->dev2);
 
+	trelay_log(KERN_INFO, tr, "stopped");
+
 	kfree(tr);
 
 	return 0;
@@ -183,6 +189,8 @@ static int trelay_do_add(char *name, char *devn1, char *devn2)
 	tr->dev2 = dev2;
 	list_add_tail(&tr->list, &trelay_devs);
 
+	trelay_log(KERN_INFO, tr, "started");
+
 	tr->debugfs = debugfs_create_dir(name, debugfs_dir);
 	debugfs_create_file("remove", S_IWUSR, tr->debugfs, tr, &fops_remove);
 	ret = 0;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
