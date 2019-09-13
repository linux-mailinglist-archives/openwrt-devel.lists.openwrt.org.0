Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA61B16F1
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 03:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUINKsCuxAJprFfA4lf6AjQMU9CgiJUyrpoMyt3yHCM=; b=DKWygIGWMlmnrD
	2vwYkKXQN9tcqztL1V60JHzyGrmYhe/Dr77Htp7OvfzD8fQfHYaTQVXHofzP9Cb4f/Cq6TDbW1BR7
	MCr8MvGRDd8dnSBM6mWTsaaIE1Rm7ftn9iToajU2o/q1OP+P+cCIl6fMbUGmb7Og935t9F/58hLCL
	dsNjcM0rHSPtk3CTMJ9qm3uGJ9YOUEWx03wfWOkWHf7dTRV8Rn62hZFOpD6Zs2xIRqHYEBUYYyjlz
	AGMry5igXcyLE2HyU82i/4i1namo54qRtrqySlsOfJlPKi3uOdlfdbHkTADONmK5OWiU+F9mMsXVr
	3hk01UbNCBH09TrWRt6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8a5J-0008RZ-Bg; Fri, 13 Sep 2019 01:09:13 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8a4h-00080r-5G
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 01:08:36 +0000
Received: by mail-pf1-x436.google.com with SMTP id i1so8189312pfa.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Sep 2019 18:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wYbW1s1zF6dviSloD7W0c6mayi1DAXuGl8sS5nFcO7k=;
 b=Pw32UlSwmBdfzHeW1KrMFfPbjx8C5kRnrlaFQxXlzZv5hd9NqoGxFg4LGHMNlYa2eM
 34u1s/0b5EzvP62k58cXFjQvTEVTa8qpoBEiFjvG6A4kuvIytw4OFL3JTat2F2dAJORl
 CD/XNmWbGJ/wgRzwPKequPecGsjzQ3eGVDQ2W0lKtcNZ0EFGbrJ+USJfkr2U8X31H/K7
 sfO0rupR94RXo5yXpiiQ4w2SQYMpHuh3LrsA/zfsy0XBR36ZXCiUT8O798IjZF0jg6Qp
 y/0hBgdvba7blSZujnuXLFO4eEri6PrzrKeazsu2vA1bBKzCAB1mh9LshZWflsNuROAb
 h4mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wYbW1s1zF6dviSloD7W0c6mayi1DAXuGl8sS5nFcO7k=;
 b=tGqb/5YZYdPk04L5c90JInjXjKxmhgLyv8ofgAGsMsXjCQXS5lo/8xWrIvgQI+38/G
 jh9OR08ShpJ3P8uO9Uo02cY9RnL+RcN9BYMhPz1ffcFNMiDlimVSU+K8Dxt7EMKmAPJl
 HHbvwtZsKmdOTUr+D93JUFSohsn5MBIzmATZLQWyObT/JZGy//Ah7AoBk3UtsM07qkMI
 hJO/H6+4k0UlAnPpwBug/d8oYRyaXAF6WM6WSgmVw2aPB4SdkDVKQ/QRyMruhuxMjMCb
 MSwXuJCnDIaitzBF20T7ryAYI4igrxXOtMYkGp43dHrjuFDuibUbzbnF0Cio0Ya25Ywf
 Ldqw==
X-Gm-Message-State: APjAAAXwQdOwBis0P6zMB2GxiJ+2WPfkRtoEO1f6P5DPRJOlwm9Fq2dH
 aPCvl7fjdaDpkf4wUdghFIU=
X-Google-Smtp-Source: APXvYqzlGPams0KY7f5bEPz9k6V52ReH04YJycp8lZOxVmrkoTf7sojXttjS5ZhRyaM0d5sbzeq43w==
X-Received: by 2002:a63:1608:: with SMTP id w8mr8826621pgl.223.1568336914143; 
 Thu, 12 Sep 2019 18:08:34 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id l14sm3342283pgn.48.2019.09.12.18.08.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 18:08:32 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: nbd@nbd.name
Date: Fri, 13 Sep 2019 01:08:15 +0000
Message-Id: <20190913010815.14962-3-yszhou4tech@gmail.com>
In-Reply-To: <20190913010815.14962-1-yszhou4tech@gmail.com>
References: <20190913010815.14962-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_180835_229692_622F023A 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 3/3] apm821xx: image: remove unused
 kernel.dtb from IMAGES
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

It's a leftover from 2271967f ("pm821xx: utilize build ARTIFACTs")

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 target/linux/apm821xx/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index acfd478755..8203de39c5 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -238,7 +238,7 @@ define Device/wd_mybooklive
   DTB_SIZE := 16384
   KERNEL := kernel-bin | dtb | gzip | uImage gzip
   KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
-  IMAGES := factory.img.gz kernel.dtb sysupgrade.img.gz
+  IMAGES := factory.img.gz sysupgrade.img.gz
   ARTIFACTS := apollo3g.dtb
   DEVICE_DTB := apollo3g.dtb
   FILESYSTEMS := ext4 squashfs

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
