Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15C1B625
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Apr 2019 17:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cdAHmunnlnrDyPPB1UQIDRx7weuttIIZCnNWGXTzC00=; b=Wk839nYEtt5zZk
	b61Uvmw7u4u4UbLz35tX9zMQZ9JKXCmwrKsGBvmy1adbwmTdcBvSljcELQ0uwXBrMPz9SIQnRZgkC
	U3tPgoR28grVDl0YbtIm1MtoH7TSxMdxBeTQr4pFrwAH6S7TKiXPgwXbZsNjysYFMgcahDL9o0pyC
	JC5IdeVgUGXGCDjxftHiZFs25k0THrmdblLPE+kLM0Ui3t8XdHKG1IJ7A2LxT37RcKrPqaomLIRvx
	dmPKMvf8pNMMMAPdABTodIPNLyhj20i8uK71o87JqGEjifM37kAWeWMAG5BXm09Ycb9df3SegRnxv
	/8iMgU0gj60t0tWaYwSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKlYo-0003g1-Et; Sun, 28 Apr 2019 15:17:46 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKlYi-0003fe-Lh
 for openwrt-devel@lists.openwrt.org; Sun, 28 Apr 2019 15:17:41 +0000
Received: by mail-qt1-x842.google.com with SMTP id b3so9294116qtc.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Apr 2019 08:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hs9XiAWh9W+avNwI12sFf7eGIRjAxpPWF29AuYkL8ys=;
 b=VkOYJIx+9En3Mf+XzPGcTXJFGzNQY7y8aGNE5k1pmIdb52T5T5y8xf0Ii3RyMR6/sQ
 FPgnwBd9FMP3ETntlSpYV6ZigdyiaEV0LmO7JebqvZFCzMN6rbnXF7L5oGNDZcDaOwbH
 DfQIe1Hwlqn2dllQrZwEenZOUBW3KnBBls44Xu4SWkc859OOR0CHdW2wxCvF+FvY/DXA
 lfDcnEipJ07dtbKuhpFhkL6EJ81Jdq27MUKbjHgWcsmLynBbVLWDXOyZNGmlRrEtTHvT
 UNbQwFH6mS3M11Sz3PYGOXvBwcC2q/wzt0VZZ760xcqm6jO+/62pqphu5BJTlUNeYrAc
 CGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hs9XiAWh9W+avNwI12sFf7eGIRjAxpPWF29AuYkL8ys=;
 b=JxAQBoleIQkgPfqjhkt9tHys2uqjVYFYHugGiWxWUSq07GiEzBjXZEOQQp8tkjuHHA
 ddGUGCF5YmfUOPS77jRgz6FiPkK0RUJcqN2Fj/2nsU9lxP/AXkCt+iW+hmZZlFyslMUB
 xKOnC3fpLkuIWu4IgSCF3waRgqFDJcbtdeICtdON11iDZx1gJH/kY/9cWGS/pWUefMYR
 xt2cU9BlFIsUU75/s4BAT//S0+ua8lwfOYzowCjbQIaUIa7TDLUWyovN7JECHf5vM4xe
 xUweoVnQl7Ezj7/BXnHmfuCFZvkHqruWwQc5s9mliIy9/hzV4xBRHwd4tfjUUpVWEXGo
 Lvwg==
X-Gm-Message-State: APjAAAWlsQ/GB0haVMOGSOLoN4wTRkpuJ4o41TRJtDOawW2pDFSXeJb8
 EOdgfUKp3uQXifxQhIJSb4nn1O09
X-Google-Smtp-Source: APXvYqyA11KmRXnh8oAMHu6VPoOAhLVIQJqTd/wKJE0T0zsNx5qAEsCaPJ94BxjD6E1vj4DDLmf1lA==
X-Received: by 2002:ac8:19e7:: with SMTP id s36mr16856542qtk.262.1556464657577; 
 Sun, 28 Apr 2019 08:17:37 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.71.145])
 by smtp.gmail.com with ESMTPSA id b66sm5377783qkf.45.2019.04.28.08.17.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 08:17:37 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 28 Apr 2019 11:17:14 -0400
Message-Id: <20190428151714.5405-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_081740_735797_78721093 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel]  [PATCH] zynq: add manufactured to device title
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Make the device's title consistent by adding the
manufacturer to their title, as the other boards
on the target.
Additionally, this creates a sorted by manufacturer
board list on menuconfig

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 target/linux/zynq/image/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/zynq/image/Makefile b/target/linux/zynq/image/Makefile
index d8a882313b..380b07bb82 100644
--- a/target/linux/zynq/image/Makefile
+++ b/target/linux/zynq/image/Makefile
@@ -58,7 +58,7 @@ TARGET_DEVICES += avnet_zynq-zed
 
 define Device/digilent_zynq-zybo
 	$(call Device/FitImageGzip)
-	DEVICE_TITLE := ZYBO Development Board
+	DEVICE_TITLE := Digilent Zybo board
 	DEVICE_DTS := zynq-zybo
 endef
 TARGET_DEVICES += digilent_zynq-zybo
@@ -72,7 +72,7 @@ TARGET_DEVICES += digilent_zynq-zybo-z7
 
 define Device/xlnx_zynq-zc702
 	$(call Device/FitImageGzip)
-	DEVICE_TITLE := ZC702 Development Board
+	DEVICE_TITLE := Xilinx ZC702 board
 	DEVICE_DTS := zynq-zc702
 	DEVICE_PACKAGES:=kmod-can kmod-can-xilinx-can
 endef
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
