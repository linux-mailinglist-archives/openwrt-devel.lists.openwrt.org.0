Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F40310941A
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zVnSXiQyjoK4ZOfaHiS3UGDkTecJISVCEQdi9i2eqoU=; b=aocsHUTTAIwLoBCONRiuDRnrF+
	dw0dXTNx8N3qTUEkUTwKxZ8XJbPkpMLI3o/qsinVUJ1wdJ/+UsVc37dLnBqL1BOmzuRKog2pJlWjC
	javkzdHrivIAyUuQX8Xyx6sq+vQEM7PaKOMP21oRsCxPWzrYy13kmgKuk3EgjWU1UfOhHdGWPM+lK
	hsYellfJtd5N28sVDzTj8F/wpXDgrNCnH3uB1fneH5f/REJkQu8XVRAeNzCOcvtdKdTALXIS/UF/s
	TaV5ezQ7K6mHvj3+CNK5mtsrQdCl4jaDpfiJDo/fI9zKYZbpwGPQj66WemkTZ5EXTZ3xODCWnEXjz
	6yFiPpzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJqf-0003Fq-2Z; Mon, 25 Nov 2019 19:16:37 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo2-00078A-68
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:55 +0000
Received: by mail-pl1-x62f.google.com with SMTP id o8so2557945pls.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=pBGmO6zI4kqQpZa65t8xhbGx44c4hnTqtH6a+OWUUek=;
 b=ZnubfnAPAw6dvdxe1aD1B55fAZ0I1JR4RjzeB0ouyWhvCtOT1Aq7i0TPxZqcXRpCew
 0pGOOr2jxj23+Gqawzjvpir3rr+325mz68KvMkX1Rfk/cs/TAslGxf6oPgWsKsQAnSEN
 aQZUolTYYxVyUiZhZq03xnSzhEopkMAUgqFUKz24JmL6dAKs5UWvD8kV+fepJtJPZUP+
 dXRzN59cEEOIIUSrNxrtt2iQi7ML98CNQURNMDEUNsUifmVpJRcXhYJrm5RdipGbnN7w
 DptBwusiN6NuwOrsWASjZQ+UtLHZiFk9W2/1PD66HQwqp5AoY+rhDctK0YTsj0TCH2Nh
 qeYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pBGmO6zI4kqQpZa65t8xhbGx44c4hnTqtH6a+OWUUek=;
 b=CcZJqvRgWf5p5gZsgW7iOiAqUrMqLAk/Ykc4vcCtzbh+tCFPGYWbZhkZ+PPrQEPoi4
 4zw0PX2lkeVMjzUSfYLHrw+ptdnk3JNvICVpz2BKRLkJoT3CKQPDHuGxZvUPIOCejNeM
 nJMPVfQEM8X4DYkRuvrmccRAN91VoEvC3NdFoUYCVI62s+3NhUXBI3Da/CyvhAneXBoU
 rFZhU5y7XtC6BDTYoD9yc0omxct3jTaD3opcdtooxcHr9ejnbEGT+ZvzYQa+puki9fsO
 K+h/f+uEz/JsOjMrGvvn6bqme+44qtyCFcaf87jeIntY5rMJDyzak/ZCTHKcbn0mVlJM
 USjQ==
X-Gm-Message-State: APjAAAVNXETuAPUJc1dfMAKWiIqkQLlBF7h1RRQDDfpoDKUhijOWsgr+
 M58jzIrqhaw+nCuhGtYZhqohLLZum34=
X-Google-Smtp-Source: APXvYqx47pMAvA7E/hJkc1mr/ozivCnvaD+zD9zdtNmqeqBY1pwQxV7LL38BAnirL9HEFoFxaSW9EA==
X-Received: by 2002:a17:902:6b47:: with SMTP id
 g7mr30249402plt.87.1574709231528; 
 Mon, 25 Nov 2019 11:13:51 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:50 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:34 -0800
Message-Id: <20191125191340.5980-11-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111354_244495_A3640A5D 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH 11/17] gen_sdcard_head_img.sh: Switch to
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
 target/linux/layerscape/image/gen_sdcard_head_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/layerscape/image/gen_sdcard_head_img.sh b/target/linux/layerscape/image/gen_sdcard_head_img.sh
index c7ecbb6883..08ab4497d5 100755
--- a/target/linux/layerscape/image/gen_sdcard_head_img.sh
+++ b/target/linux/layerscape/image/gen_sdcard_head_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright 2018 NXP
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
