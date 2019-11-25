Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E1B109418
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y2bu9Jg957p7BR5cG08g4WQgT8jE3b+V1pX94Bniv8w=; b=gUBZsfyo8jFEn5Ta2VHKHx0RAt
	zL88NKU1OnrrDHUfpZi/L/FllRQnpfvU8WUPYYKDSQ8xgDkatLgOQWWB2HtrYZeA+nZ+2PQvdeUto
	Omb0nxV48DJWj4cFk0iYiy5NEMQBh8mQPrmwep8TAUyULPof3Uq9wPUhQaX24SJ+dWdWu7gjtvMCf
	SfZFqEOdt2jbRT0M26dLlT7PYBy0XK+jguskpaOPuRATJ1MMOJ6Bv7ttykB1Sq92LmCSwO3V5cY4D
	W3UIPdas0yKJLgSuUsMlg1P8ANzp59ONl7O2Wwy5UjAWO6xd4Sh53ZwTprlFx0EBTKmT87d22RsZr
	vrwTY1SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJqI-0002oN-NW; Mon, 25 Nov 2019 19:16:14 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo2-00079T-7T
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:56 +0000
Received: by mail-pj1-x1032.google.com with SMTP id a16so7017248pjs.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=OknksX+O+EXZJN5u/+RBlLaonflwO5yJHnVwWXtB3ac=;
 b=Itc7xTorhEZG3FhCy5LnI36G6kAJdxdjfpXsAF6nUh73dnlW+3llAGMKaGYPFc7HsD
 mJBpEXaP09GRvqC/5Ga2FXSyzJKajqM1E+k0guRa/GLDBn3TXksyJTcCHjKn0Hyvp2Mx
 2OuYN+I8rM/JNtrLBxoHR3MaDC/oR0XlEIPDBSq6VoCjmR29iXdl1oH1B7V9Ubg99aj8
 c0oIZDgj/3ZXfcpGk0YM29TBnuk7ArOo6quDIh3Rq9ilzOaDWUTxeTVkbOwczZKrdIQJ
 +8tO5f0utyrIDH+tCu6Y6Al01fENAtQRCvW2V+CMPun1fnZ1lclQja5wP45qiT+tBB1T
 ylAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OknksX+O+EXZJN5u/+RBlLaonflwO5yJHnVwWXtB3ac=;
 b=JvlBrULmButIEsYlrtP4ziP6ZmuhS0U42uqklFsQsxJuSI5zki8OSWHT4VYgdcZ1dx
 AWGSToBemX7dWBEMMpXjYg27glUf8//7+2iwQByl8AdkfHy4hEeFgl0mCVUks+rzRdOP
 hHbOGREXMB15uNA2KhJhQSldT+9rOt+dOYl1Ss2fgbCTym3i5Q5klk8GjIpQ3GsGGoVI
 9F0mxnjmYekyjoocuBr2t1sTrHlv0vnGC/3jh/1swf7q6LmW+RzBefAOAlCEpWrdkiIW
 LuZ813082jX+6P3DoqD6swje8Y94uCO01n7MAllWZr0oF3g6L1Cin8NdT7MnUrYdtoD+
 5Iew==
X-Gm-Message-State: APjAAAV9cfdHQtdZek1/CkTSKKvBjWUOJvubbjPVhZKWEMsC0zXGVrE4
 eAhew+SaD3zhtjC2QN9lrLeaAwiSeko=
X-Google-Smtp-Source: APXvYqyJbPexUCJmMgRo5+/Js4L3KyyvrFVcPqx0T1fR5EWyFxj+e0KXRJ37SJIXLMnAifhpXJsB0g==
X-Received: by 2002:a17:90a:d98c:: with SMTP id d12mr626021pjv.7.1574709232452; 
 Mon, 25 Nov 2019 11:13:52 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:51 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:35 -0800
Message-Id: <20191125191340.5980-12-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111354_322409_AEEAF725 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 12/17] dns313_gen_hdd_img.sh: Switch to
 /bin/sh
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Nothing here needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/gemini/image/dns313_gen_hdd_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/gemini/image/dns313_gen_hdd_img.sh b/target/linux/gemini/image/dns313_gen_hdd_img.sh
index 6e899ec840..813852232f 100755
--- a/target/linux/gemini/image/dns313_gen_hdd_img.sh
+++ b/target/linux/gemini/image/dns313_gen_hdd_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 set -x
 [ $# -eq 5 ] || {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
