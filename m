Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6650AE886B
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 13:41:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NATged1bPJyr7zj5N6h2ivzFJA1qeSZqQP+DhMrE4w8=; b=LWCgC4VEWbLm64
	cgOY68Sl6Z1v6mQR0BMEX51cD6lO9YC9GAS1OeUA9TVld9hQBiI4cBABwnFTp9uNV9lse1xERQQBR
	Ty8XReSLJpIbxVVNot/NwZYkhtbvkZKY6DTjobR0/0LQjVaijRuYgsQwwAs4TqkqQH+8FPVTHgwPJ
	nQ1eoJqOELmBMC91PKh2hGvK8ThLh/MUzVLB+n5qHLnsNAw0PrDuxxCVU+fwQgsF0DLMOA8zFJmGI
	W8O3ZxNfdgBtooKscoooIVGekSvk5DByMQrqYLEUcbv46aeub1SPg2nCfz0FZeEt8cv446sgPQg0i
	ynYOG7DKmjSL5zSAPi5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQnz-0002ko-Gm; Tue, 29 Oct 2019 12:40:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQnJ-0002Gy-HO
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 12:40:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id c7so8317405pfo.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 05:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2kO8KAuOqxGYbsNBg18CIwmkD55xGI+n1VWyKukq6mw=;
 b=TgN1hcbcxQxS5ddkxmELGiMvYH21QIUBHBzFxTder391zqogaCyhngeUcD9+N/REGw
 peiiATUnI9Ex8pXBuT1j48sXpRftjSRR0r1TEjY1EhZ+aSU5L1cnnM8mkSQK1BU/lvxD
 5k1HuH7YpZhtlGv74KB7uAbc2/mosvz4r6cNgm2tvfB2pccUBpniee31xIXWtZp4hzus
 pmPTaceHr0ogx9aJmuOG3EUIpY5BkbAQBtts2VCp4ZlWw2xPTkAmwCvNUKUEVWkBfByt
 +Gg4I8jqOX4f0XbA+sBjzdrjbBJfNyJf7Pn8iIoYrXSzKbZar+DCqgd2Axp4a18a72KJ
 N9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2kO8KAuOqxGYbsNBg18CIwmkD55xGI+n1VWyKukq6mw=;
 b=tLwqP0jSVLJpHOUThydwfgxzl5xfklNrx71OpcO4FbDhtWwQmRncX8li6gspS2kJjC
 oR8CNf8kSzynxn2bzRFl3RSPEMtnxVcGSpEoVN1ZavKAH5LtFRHL3/tfWl5TlzMXvcoo
 bbEZ05LsmUjAS5bvJXlk93o4ZR/JFEqZIdGiu4K6uhxWtGUs3hLBXwqy5ldE2L/jDi8s
 AfVuyJ1onzxUZZTD02Hj9Ibrj9tkHBBDV4rsW/VnNpKya1fHOEH2A53xyD15bXbdxDA/
 DbbQ8q2A+JTQ6tiiFAFC4TG8F5b8tErlqCa9CWCaPhpp4Ks1BjBwsmLmTvcf5O9k7L7E
 Objw==
X-Gm-Message-State: APjAAAX65/0xkdB96QZc50nGiEsuDpriz0psuo8lCgXrA33lKKE2xsSf
 /HEVtz5rS/t1hdBwhTTzaIQ=
X-Google-Smtp-Source: APXvYqzabhGlkMx1f9UFIw5axJVirMJm9mD/geyCwiu5Hrfiq2Tt7MvyWoBWAN0crSaUpa49Lpp11Q==
X-Received: by 2002:a63:1e5f:: with SMTP id p31mr26130731pgm.291.1572352816782; 
 Tue, 29 Oct 2019 05:40:16 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id b26sm1090782pgs.93.2019.10.29.05.40.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 05:40:15 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: john@phrozen.org
Date: Tue, 29 Oct 2019 12:39:48 +0000
Message-Id: <20191029123950.40794-3-yszhou4tech@gmail.com>
In-Reply-To: <20191029123950.40794-1-yszhou4tech@gmail.com>
References: <20191029123950.40794-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054017_622151_505A80E8 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Subject: [OpenWrt-Devel] [PATCH fstools 3/5] block: mount_action: handle
 mount/umount deps
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

This is required at least in system startup when "block hotplug" will be
triggered by udevtrigger.  E.g. /dev/vdb needs to be mounted at /mnt/s
and /dev/vdc /mnt.  It does not work if /dev/vdb was triggered then
mounted first

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 block.c | 43 ++++++++++++++++++++++++++++++-------------
 1 file changed, 30 insertions(+), 13 deletions(-)

diff --git a/block.c b/block.c
index 66dcf9c..15caaba 100644
--- a/block.c
+++ b/block.c
@@ -1188,30 +1188,47 @@ static int umount_device(char *path, int type, bool all)
 
 static int mount_action(char *action, char *device, int type)
 {
+	struct device *the_dev, *dev;
 	char path[32];
 
 	if (!action || !device)
 		return -1;
-	snprintf(path, sizeof(path), "/dev/%s", device);
+
+	if (config_load(NULL))
+		return -1;
+	cache_load(0);
+
+	the_dev = find_block_device(NULL, NULL, device);
 
 	if (!strcmp(action, "remove")) {
 		if (type == TYPE_HOTPLUG)
 			blockd_notify(device, NULL, NULL);
 
-		umount_device(path, type, true);
-
+		if (!the_dev || !the_dev->m || the_dev->m->type != TYPE_MOUNT) {
+			snprintf(path, sizeof(path), "/dev/%s", device);
+			umount_device(path, type, true);
+		} else
+			vlist_for_element_to_last_reverse(&devices, the_dev, dev, node)
+				if (dev->m && dev->m->type == TYPE_MOUNT)
+					umount_device(dev->pr->dev, type, true);
 		return 0;
-	} else if (strcmp(action, "add")) {
-		ULOG_ERR("Unkown action %s\n", action);
-
-		return -1;
+	} else if (!strcmp(action, "add")) {
+		if (!the_dev)
+			return -1;
+		if (the_dev->m && the_dev->m->type == TYPE_MOUNT) {
+			vlist_for_first_to_element(&devices, the_dev, dev, node) {
+				if (dev->m && dev->m->type == TYPE_MOUNT) {
+					int err = mount_device(dev, type);
+					if (err)
+						return err;
+				}
+			}
+			return 0;
+		} else
+			return mount_device(the_dev, type);
 	}
-
-	if (config_load(NULL))
-		return -1;
-	cache_load(0);
-
-	return mount_device(find_block_device(NULL, NULL, path), type);
+	ULOG_ERR("Unkown action %s\n", action);
+	return -1;
 }
 
 static int main_hotplug(int argc, char **argv)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
