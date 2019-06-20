Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55664CACB
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 11:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FkEPrdDeklPTDGRkZsjJ9LVEwJ2ClsNUpSNUh98utu0=; b=KsdlLcmUT71s0k
	k6lfftlAv9+W5coXXbh2AY8/cEPOYZgbVxEGQ+Uwmue+lHU0lVq6kMGVpxibgMRlvQxvTRd/YS1Tt
	ZQLrkufC3BsdSp2kP3trCmhU0V3Y6O/apqULCuheSyIXxDqcvgCbYz5RyMErEG2xda9qBq7gQUqve
	MB7XEW4E4cGcyWmuCFVAiyPG/nU9x39FGCsEaE+SUB/fkKDTJ2hpy+LLy5XqQe2Mc99t4TnOhKg53
	5O+hsnRBXBhyw5J/OrM59FbEkyzc5m3b9lx6M2lj5BeX64iRKcD3ER3Et2C15uXcGp/Xj4jYah85z
	DTeTzwePpjfnzYl478Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtKi-0005DH-HE; Thu, 20 Jun 2019 09:26:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtKQ-0005AM-RU
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 09:26:00 +0000
Received: by mail-lj1-x244.google.com with SMTP id p17so2046518ljg.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 02:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=8devices-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=AY69vzfO42X4V9wOvtuO/SjuemmXkeReLdwbCELXFRw=;
 b=u9MIsh+exqLmvGU8b6iRRrYkCVRY9aLnLun725DWuCsmSUplnLl/oBOXPH1mPUDQBH
 GEc58EwER+pxypL8WOW0BrDnbFDMqR7XKmwMsyFPpKJASZbcc055DLwHhrY6mGeFhcsf
 CNDhO3/z6ke+Env+N/14SPSHlEX3y8gtM0jA7eDO1LMaDZObFG+0HGsdIHZDxT9KO12x
 NiYNqOX+yFf0TCpQQAzZqTQpCIzzbus/ZFwCOvr7wYHmMXeEWHhIi0/jTixJn8bui0V9
 h7YNH3MFiVZ/JI/xjSOOd6h7RQqgBKiR0kxW3PbyCQN32dyrtzn7hdQNBB7Skk5QUHdf
 Zblw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AY69vzfO42X4V9wOvtuO/SjuemmXkeReLdwbCELXFRw=;
 b=Xrv3oKVlvENy0vhTpEnfSafCCb6LQC2axTpy1y0bcNbbHu/eZS4IqkXLLNeDI/s5fl
 vWv6mD34nwfYgWrsQWih6Q6WYvd9Fr7zhjZ5c7uBROcarGw2qnLrjd6v3eo2w2vagbYD
 6J8AbOCgvd8ZegGH9NaY1nniDfo92LZ+KjxV7hUuzgeuQQXtBXSW5z6D+x1VjWH1VvuK
 KgQ2VnlDlL/1IMBD47BzTcDLqNVAKCrhdwFAUrAWXcPROkM3frMNLuUsJAWdNXUB9SPm
 Gn1ZvofJRo6xWx6FNDEO9Bwm9LxgTXV5TNY9Z2rZP379vz4y3DeEl0VkHKsUATPVEx6c
 QuFQ==
X-Gm-Message-State: APjAAAWrYtp1fSgKl3nZUTax7iI3hzUDW1yuIrWHCHdi7J/UIAHuhHp4
 U0Pu1msPuchgx197GckMvjV1bLNXGd9Yrw==
X-Google-Smtp-Source: APXvYqzyhl+k/EPM0gdABHuGg2OJiQDkXeluZVhCIWO4vZ6cUWA3WggST5HKkdvMc87E1sLG/c7eKw==
X-Received: by 2002:a2e:858b:: with SMTP id b11mr15653517lji.159.1561022756863; 
 Thu, 20 Jun 2019 02:25:56 -0700 (PDT)
Received: from localhost.localdomain (88-119-50-40.static.zebra.lt.
 [88.119.50.40])
 by smtp.gmail.com with ESMTPSA id x22sm793205lfq.20.2019.06.20.02.25.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 02:25:56 -0700 (PDT)
From: Tautvydas Belgeras <tautvydas.b@8devices.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Jun 2019 12:25:50 +0300
Message-Id: <20190620092550.6691-1-tautvydas.b@8devices.com>
X-Mailer: git-send-email 2.18.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_022558_920401_952C4917 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH,
 v3] uqmi: add explicit check for message type when expecting a
 response
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
Cc: Tautvydas Belgeras <tautvydas.b@8devices.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When the utility sends a request it expects a response type message,
but does not explicitly check for it. When a device stays idle for
some time, it switches into a sleep mode, and notifies the utility with an
identification type message. In some configurations the device only sends
this identification message when triggered by the utility, in this case by
the request message. What the utility gets is two messages at the same time -
an identification and a response. When it tries to decode former it obviously
fails, because it is not what it expected.

Signed-off-by: Tautvydas Belgeras <tautvydas.b@8devices.com>
---
 dev.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/dev.c b/dev.c
index a586157..5f6967e 100644
--- a/dev.c
+++ b/dev.c
@@ -79,6 +79,12 @@ static void qmi_process_msg(struct qmi_dev *qmi, struct qmi_msg *msg)
 	struct qmi_request *req;
 	uint16_t tid;
 
+	if (msg->service == QMI_SERVICE_CTL && msg->flags != QMI_CTL_FLAG_RESPONSE) {
+		return;
+	} else if (msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
+		return;
+	}
+
 	if (msg->qmux.service == QMI_SERVICE_CTL)
 		tid = msg->ctl.transaction;
 	else
-- 
2.18.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
