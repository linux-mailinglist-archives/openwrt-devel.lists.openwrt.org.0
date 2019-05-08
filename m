Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E4217FF4
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 May 2019 20:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5u2drY/2rDpKCADzpM/fo6sIIm3vKpQ9RHd1KdB+RXw=; b=uJ5c9TQZHcWyGP
	z1pcdvSw5Lyad26varqhf9Gw9xRQ+CrXMcW1rqzyiEI1QgRKaRDVGA32pEm0tk5LcC44nlhuWWhBX
	rHqesQiM+C9r7BY6RR+AbhobX5Mg3rpUpZ3CuvR2uLy1mcaxdqsXmxDsKzO5jkLMj1FiXBPFY7i+L
	n7I7GkMRMxXVuj7SVwsaxJKRXVN6czAi1S+ozurT89qXcb2sCi8TWOXdq8CfdRU6raBUxOyVSppmh
	ENjTIpwQexKeIxeAlc4t+7hS/OWakQUJc71LMbo6skYks7VonM26oXTI9qjbvRBzT6rc3vnyWr1Zu
	I3cpOHdoC16FsZYlxjGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORVf-00076H-0f; Wed, 08 May 2019 18:41:43 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORVQ-0006rW-Hk
 for openwrt-devel@lists.openwrt.org; Wed, 08 May 2019 18:41:29 +0000
Received: by mail-ed1-x542.google.com with SMTP id p27so8083320eda.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 May 2019 11:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8Bq/BD/KfblMUqRRPP0xkRpSgeNYOJ60jqaP9r5fnFI=;
 b=b8Sv/FyknJhrFNYo04KZICRYPyDIPJqYM3L2CDvTgxQQBiNe1M5dw/gEz7C86EliyV
 VLaiH4hztA11zsybnkKnZ1QFtHIUC5I9I+fAtcdgEJlj/d9JjQY3JAwp2md7rJdAqHbl
 CnWRYx7sbxwCAyFe2wXxxbar2JQJAeWjL9SDFh+FC+f919Wvsyfd42kC24J3BG98Cqci
 tloHXgsAwJTGRgso3QyGYz4YMNi0WJyfzAdjOY/HIUQeKq9T4yGcbzwPZag3qWqkqJK/
 0r8bqWfsFlH37s7TLu1QrH1AHMjgMXYychsIJ0IX8T3FZIunvfWKLxfXRWZniMJNqvjV
 ZYAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8Bq/BD/KfblMUqRRPP0xkRpSgeNYOJ60jqaP9r5fnFI=;
 b=HYjTsT8cFUbxTYLLyihIl0/1BrenUhuFvT0f4FeGy0QqhmmywTNakE31ihiyOY9+ka
 aO4+Bm22i21Ft+fMAJIXq4DWvKia62pWjFPjDsYqgWN42QQRgd4AEcFWmdo12zsxvK+y
 mdWu4F9OT8Iwd8eWqd5dxKB2uQfoDvoSNfpfwCrelxfp8nlGHXjzGA0tPUORVQb0aW6r
 y3wCighefuxD6UD+xhBI2nmKUWMI8eLG6YXwzcTa0vrAAnkYN80qV1l0WQbf9Ig2Fc3e
 M8Sr8xBhi+zeqBPME1R/zFyLVvOq9EhOKGjkwAjOw5oselN6ktk9FLOfSDEx5y2wq+zE
 r/Aw==
X-Gm-Message-State: APjAAAWnsR6Rt4LP4AIOhmmpO03nmSeYAiahKll9+lZOF7zouXpUAXjU
 JtOqolroZ23OtmYuGa0UADmQoZXZ
X-Google-Smtp-Source: APXvYqzAzB6f01z9Bs5Rfa9RD7IZUt8FTmRzHHTFlf2QB69WiOUz60hyvqWZTQEgFsmpHV839HsnFw==
X-Received: by 2002:aa7:c391:: with SMTP id k17mr41209929edq.166.1557340886648; 
 Wed, 08 May 2019 11:41:26 -0700 (PDT)
Received: from mars.lan ([2a02:168:6806:0:299c:c7b9:f338:c755])
 by smtp.gmail.com with ESMTPSA id g7sm2769374ejl.73.2019.05.08.11.41.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:41:26 -0700 (PDT)
From: Klaus Kudielka <klaus.kudielka@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 May 2019 20:40:51 +0200
Message-Id: <20190508184051.4154-2-klaus.kudielka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508184051.4154-1-klaus.kudielka@gmail.com>
References: <20190508184051.4154-1-klaus.kudielka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_114128_585476_0F597709 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klaus.kudielka[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH RESEND V3 2/2] mvebu: fix board_name
 condition in 79_move_config
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
Cc: Tomasz Maciej Nowak <tomek_n@o2.pl>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Klaus Kudielka <klaus.kudielka@gmail.com>, linus.walleij@linaro.org,
 Christian Lamparter <chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The correct board_name for the Turris Omnia is armada-385-turris-omnia.

Fixes: 4e8345ff68 ("mvebu: base-files: autodetect upgrade device")
Signed-off-by: Klaus Kudielka <klaus.kudielka@gmail.com>
---
 target/linux/mvebu/base-files/lib/preinit/79_move_config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/base-files/lib/preinit/79_move_config b/target/linux/mvebu/base-files/lib/preinit/79_move_config
index 64c0cc0ee..f7e23cc32 100644
--- a/target/linux/mvebu/base-files/lib/preinit/79_move_config
+++ b/target/linux/mvebu/base-files/lib/preinit/79_move_config
@@ -9,7 +9,7 @@ move_config() {
 
 	if export_bootdevice && export_partdevice partdev 1; then
 		case $(board_name) in
-			turris-omnia)
+			armada-385-turris-omnia)
 			insmod nls_cp437
 			insmod nls_iso8859-1
 			insmod fat
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
