Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFC8BE080
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 16:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8IhRDqIjbMCgn6FKWUcxtfXx1GYxIFfptYXVB9rN30=; b=pJd7IhgZr9S+74
	SxjCtbDFINKIvjmTfeOih/7uhZCXa25CyST0hLIPcCxl4m+qBmnEedDrPuJQ6/M4IAXckMi7a8YRy
	tY77LrhI9wD7il7AycLkC6wmkSRNYdNEpWPMwXlQORzgr/KDL6XkcAeaarlaWn7JTWOs/JrtlhlV/
	IkQrVFPwtiD/3O2Wkd+D32JZOnLz7bHEhJu6JhZUpKdsUA+Rppi2X6qUA7NYQ/OCQ0SKNdSPYfQxj
	lxf00MOSo/jZRoYCB+pnkiM2hmp9zWPkNdY+2Ke4YAnZ6lMGxlCqqvJ596Z5Eo+eo9Lv1luX802N3
	O+zWvjSTEeP9IlJI8bNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8ba-0006pt-MN; Wed, 25 Sep 2019 14:49:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8aL-0006d5-4c
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 14:48:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id f22so5299489wmc.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 07:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X7yY8c/DY1tCwrfomCyvX2/pZrfoH3QHBpRzRCoM70U=;
 b=PNzJ/9Ytn5zlGeQx3/9iXr768SDUOMRQ2HJfy+UAQvezz+Jpxk89zP7T/MPCEu5Ie5
 VUwoHIGSZo32JA9vIWXLXzyLnBQ0lEpp96R2ZtA0loKEBoLqHGTBvdth/4Sz2TRXYzUB
 if0HfsgEMeM69hO1h2pFj6JkvXKgWILjm03nnhUTP+lQzL9lai35C9LznKTI7C71WV9F
 hyPmEg0Acgv+h251v396RIryejvp+m69Ej+V9R0jrhsdaeOm0lqgPskTXFHKM/mRX6TN
 lQ+AGeoB0zzufWY+ri2UQRQEXtR+IraHU1wlBO9JuNbgEgSoKgLQMut6Yti614vmPCsW
 8NHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X7yY8c/DY1tCwrfomCyvX2/pZrfoH3QHBpRzRCoM70U=;
 b=W6LhvFswqan4BPvBah9KhPHBJBBQKnV3R/Va7PUUrzYLo/1VFtCW6UMjNo1Fj+Q3TP
 kiUkCbuXdCegY2diKB2JYDCV0feUhLK2gqIMclakeWiGFN2Wndt+k7xRV7mxHQijpQN3
 Ixu9WHYM200Bx+cS1tUOE2CmVxpJFAVaAnhSzp4Nd7WXiQNDAqEIGWZ54E/V3ZCUZBiM
 NACKFdMdHD0wG+r5K9pupwbiJgM4IIYO3hTqFXhVaugY+AYw3mOS/ZUbgcYaS39X+v6H
 qCMw4tHgdVUq8+LRS+wbQ+T+ckfd60WcH/077sqOc4SKK55NUtB9qbv19qO8dEPLrs0q
 eQJQ==
X-Gm-Message-State: APjAAAU0S0QdObYuMF+AYZbXtbJo7uqkNbQkoBjrDtWTwC2jikL+we/m
 WqKvLKpPrM1I9mphQ42femg=
X-Google-Smtp-Source: APXvYqzmHoPwXmloFJVgaNgS4oIKdsad0YxPXDzySCBxqhB+IiSXSr5my7wlu30er93K3BYm3Pz4aw==
X-Received: by 2002:a1c:4945:: with SMTP id w66mr8140194wma.40.1569422883326; 
 Wed, 25 Sep 2019 07:48:03 -0700 (PDT)
Received: from localhost.localdomain ([37.237.208.16])
 by smtp.gmail.com with ESMTPSA id e20sm9646402wrc.34.2019.09.25.07.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 07:48:02 -0700 (PDT)
From: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>
To: Felix Fietkau <nbd@nbd.name>
Date: Wed, 25 Sep 2019 17:47:12 +0300
Message-Id: <20190925144713.10632-2-alimjalnasrawy@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925144713.10632-1-alimjalnasrawy@gmail.com>
References: <20190925144713.10632-1-alimjalnasrawy@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_074805_180597_B695A8C4 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 2/3] kernel: trelay: fix deadlock on remove
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

Upon writing to "remove" file, debugfs_remove_recursive() blocks while
holding rtnl_lock. This is because debugfs' file_ops callbacks are
executed in debugfs_use_file_*() context which prevents file removal.

Fix this by only flagging the device for removal and then do the cleanup
in file_ops.release callback which is executed out of that context.

Signed-off-by: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>
---
 package/kernel/trelay/src/trelay.c | 32 +++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/package/kernel/trelay/src/trelay.c b/package/kernel/trelay/src/trelay.c
index 6d9d9cc14b..0e3d85bfef 100644
--- a/package/kernel/trelay/src/trelay.c
+++ b/package/kernel/trelay/src/trelay.c
@@ -27,6 +27,7 @@ struct trelay {
 	struct list_head list;
 	struct net_device *dev1, *dev2;
 	struct dentry *debugfs;
+	int to_remove;
 	char name[];
 };
 
@@ -60,13 +61,16 @@ static int trelay_do_remove(struct trelay *tr)
 {
 	list_del(&tr->list);
 
+	/* First and before all, ensure that the debugfs file is removed
+	 * to prevent dangling pointer in file->private_data */
+	debugfs_remove_recursive(tr->debugfs);
+
 	dev_put(tr->dev1);
 	dev_put(tr->dev2);
 
 	netdev_rx_handler_unregister(tr->dev1);
 	netdev_rx_handler_unregister(tr->dev2);
 
-	debugfs_remove_recursive(tr->debugfs);
 	kfree(tr);
 
 	return 0;
@@ -106,23 +110,33 @@ static ssize_t trelay_remove_write(struct file *file, const char __user *ubuf,
 				   size_t count, loff_t *ppos)
 {
 	struct trelay *tr = file->private_data;
-	int ret;
-
-	rtnl_lock();
-	ret = trelay_do_remove(tr);
-	rtnl_unlock();
-
-	if (ret < 0)
-		 return ret;
+	tr->to_remove = 1;
 
 	return count;
 }
 
+static int trelay_remove_release(struct inode *inode, struct file *file)
+{
+	struct trelay *tr, *tmp;
+
+	/* This is the only file op that is called outside debugfs_use_file_*()
+	 * context which means that: (1) this file can be removed and
+	 * (2) file->private_data may no longer be valid */
+	rtnl_lock();
+	list_for_each_entry_safe(tr, tmp, &trelay_devs, list)
+		if (tr->to_remove)
+			trelay_do_remove(tr);
+	rtnl_unlock();
+
+	return 0;
+}
+
 static const struct file_operations fops_remove = {
 	.owner = THIS_MODULE,
 	.open = trelay_open,
 	.write = trelay_remove_write,
 	.llseek = default_llseek,
+	.release = trelay_remove_release,
 };
 
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
