Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABACE8868
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 13:40:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dMK3rtf2oFpHSUgG9W/u5uvWKk2oRYdaEGb8l04O2kY=; b=P/NIjmVl+XsN9G
	Flkz0N+07qIcaEstlSJXLMHpoxEpzpnniJI0ZohwiwF4rDYkD3mjFsG5dPpyH092baGGciEheMkrz
	plLJxllQlOfZ7BfqdseRmJjo2KkJKYPQkqrhgzDVUS7EvHET6RHfVChDvLm+8t0QhUAYHXjMXQDmW
	udscvAPh38/N3oXxmX8FTjsCtgmswkq+5Zt1/2R2CAixOvk6enNON18H4rRgqSWmdI2rlAxgCRd83
	oSg4/kb15+IqUItKGleWNi/i6ZxU19zXjqSeM7yurIt595OD2BUBEvQ468jRKA0TdgsI4rUhXsYgN
	OGzTiA7JKdHKKiMAhDpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQnQ-0002DK-1a; Tue, 29 Oct 2019 12:40:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQnD-0002Ca-Sl
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 12:40:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id f19so9469560pgn.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 05:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UB/dw7kmZ6ujDoGYg2rdbOSTnohqNVi5MqE99aPxWJY=;
 b=q9Lwc6/U+jPHCMtLnfzrOUq+cj1wJ9G23Jp/8HPXrUtXNSUgyJ/DEmNQOxj6aHJeaC
 rnk6+dg/dksGWXeXQCBOEzZmfZmgBhLW6sz/p7y8IWPGR2VBQo4c4RDVL1ShCCpL1Rgw
 cvsJsmC0yDy+HBroRJReOA7jUclirHr5KV7L+pEMdKd6xC4TlVpPibTUR59UR9fcnCy4
 MmrAS08cdykgnkdmaC81tBA5UytAF8MfM4EozMRVlHeibJdbvaKmxCu9BeJE7F/YZh9i
 H/b3myMvN9GTDFKHuUSvlfRd4xHfECtMLBHIFBXZzcXoZU9lE7H9Rygw9m/gaxKMkjYT
 dCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UB/dw7kmZ6ujDoGYg2rdbOSTnohqNVi5MqE99aPxWJY=;
 b=kgboSaQbinvo6i4A9o9sNPoxi5LufE6NRX6OxvWCWwjydfI1s0tXogRTYLmZehvjED
 Fv22cGwzNiTNOrOUtAlkTcDlo9wvyYKHtqcICwP85CQiShjICFFf1mVq4S3eaFRYKrFQ
 eBFENj2JP+AvjEhIg+VqvL7ph7xwrltBTRCmaagTQQqDRGN3b5RvlvLMxBCXehT1lRKB
 HsNAq+pZDoG+LlNqCesZUVX3PJFQMLRr6fq166IJP6hBw/AF0fs8T8wHUvg6VTulRx7F
 uC4YwrxZ+P4FSu/+T8tT/XqcKXFvApS4/JhKS8sQBnq/t1YhFSw7/lpqg+x3XpLYrXpT
 nQ6g==
X-Gm-Message-State: APjAAAXbxNdDTQfGG047OjxYQ5/CrZUZNDXvbPTpwfiwLl+V08c9Hieo
 VsyCoS/+meAtNlt/Plt+ml8=
X-Google-Smtp-Source: APXvYqzC9Rat5/7ZsNpifN/w+bxn2nkuzLmhF3FwE3rJeDtvE0DfzM9pPEnq8hnNqmzzmSxrM6Hmgg==
X-Received: by 2002:a65:6091:: with SMTP id t17mr683628pgu.159.1572352811342; 
 Tue, 29 Oct 2019 05:40:11 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id b26sm1090782pgs.93.2019.10.29.05.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 05:40:10 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: john@phrozen.org
Date: Tue, 29 Oct 2019 12:39:46 +0000
Message-Id: <20191029123950.40794-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054011_952414_5FF77BE6 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools 1/5] block: umount: skip / unless -a
 is given
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 block.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/block.c b/block.c
index a849500..99672fb 100644
--- a/block.c
+++ b/block.c
@@ -1118,7 +1118,7 @@ static int mount_device(struct probe_info *pr, int type)
 	return 0;
 }
 
-static int umount_device(char *path, int type)
+static int umount_device(char *path, int type, bool all)
 {
 	char *mp;
 	int err;
@@ -1126,6 +1126,8 @@ static int umount_device(char *path, int type)
 	mp = find_mount_point(path);
 	if (!mp)
 		return -1;
+	if (!strcmp(mp, "/") && !all)
+		return 0;
 
 	if (type != TYPE_AUTOFS)
 		hotplug_call_mount("remove", basename(path));
@@ -1155,7 +1157,7 @@ static int mount_action(char *action, char *device, int type)
 		if (type == TYPE_HOTPLUG)
 			blockd_notify(device, NULL, NULL);
 
-		umount_device(path, type);
+		umount_device(path, type, true);
 
 		return 0;
 	} else if (strcmp(action, "add")) {
@@ -1607,6 +1609,7 @@ static int main_mount(int argc, char **argv)
 static int main_umount(int argc, char **argv)
 {
 	struct probe_info *pr;
+	bool all = false;
 
 	if (config_load(NULL))
 		return -1;
@@ -1614,6 +1617,10 @@ static int main_umount(int argc, char **argv)
 	handle_swapfiles(false);
 
 	cache_load(0);
+
+	if (argc == 3)
+		all = !strcmp(argv[2], "-a");
+
 	list_for_each_entry(pr, &devices, list) {
 		struct mount *m;
 
@@ -1624,7 +1631,7 @@ static int main_umount(int argc, char **argv)
 		if (m && m->extroot)
 			continue;
 
-		umount_device(pr->dev, TYPE_DEV);
+		umount_device(pr->dev, TYPE_DEV, all);
 	}
 
 	return 0;
@@ -1735,7 +1742,6 @@ static int main_swapon(int argc, char **argv)
 		default:
 			return swapon_usage();
 		}
-
 	}
 
 	if (optind != (argc - 1))

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
