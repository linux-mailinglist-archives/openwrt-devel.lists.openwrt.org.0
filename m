Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79271095C4
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:47:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qNFm7JYBD5XhW1R5s4N7de4p4zslFbTGwm6DDw3iSGI=; b=IVckdFUtLsS06WtnrbCN3FpQ94
	0FQfsylZQ8BeWGlA23+NbHloblGz1IpUhGC3W830X7XXHfTtaJSO33oAHF3ghrfBv1lUTVBHqQIxi
	K6TePIj6v/yU2tIDkDKHGXFK9OQNkLh6W35aj6ofNYxTvaSl9qr9Z2fANeMIODamacOOXVsMkbUBI
	aX6JcYPvHW73wWSYoHkOvje6w9OIK91jonNrrZg/tCroXFtpEKit2hHYzgU9kQsd0I1Dc8ItmeKoq
	XhhQJlelpvj84/hHWylq294APtICJlNl7cOSGw70dCVeI9+jLPUALqqjJqYMveG6v6ySAhQ9Cem8v
	i2wIjRRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN96-00017Y-GO; Mon, 25 Nov 2019 22:47:52 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6c-0006Et-P3
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:20 +0000
Received: by mail-pj1-x1033.google.com with SMTP id bo14so7293901pjb.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DXyb0tf6sZYAW/tuNzh0UhnHzCRDSDENLqCL3ydVKG4=;
 b=OCNzQ2clDNSciRJ519g+LIMBOkq+yezPEdwNQByzJe7I/wQ8F+PEOgP1IxpHxzt8uK
 YuTMarusjcwFhUHtWm33HjE9Y/ytkNSD7A+UZfVrIdYCOwKKLTZGyg+2OC94zIp2tOnW
 M2wNmhWEDoKj7Bdl8D/c4UBHc+yV26s1jnuW8FLKY6hSV54QepBR0SMLlJDF966d0UD3
 MznJq6mVBQf5zaIK7bQko1a1EBUB4AkRWQFtcNzg3vdPdVb7umEEIN/4wXPF8Z9ki1OF
 IFcyO1FKKbs5ff8x8f9gID+b0aTszBUSXC/dtG4wykHLVCh5AtsHdLYIA9OiZts+WnZu
 oWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DXyb0tf6sZYAW/tuNzh0UhnHzCRDSDENLqCL3ydVKG4=;
 b=ZP+JXpnC/e4CHFtQk38Mko2TW1G6W1wjEgAAbmbwvUJvMUdryru1/Ew1MtaMZj7lew
 XuxDleUoEZI8moctcP98zd37XQ4CgU5frpgcHA/xqpgml9rLe7qx5scOZ33iF0sF1Qef
 Mc1/2AcEzQNsG8FAisbk0NPsIXa8dbyTk4mLuIuw4D5ik8jn/evVBEqBGA/3iYTz3yna
 189AaLU6hclCJj3q8sJPE4D+64XkiJO540wCinXZNb5IpZEA5RvOQd7+905pTTfSM6Sl
 U2p9dAgYJbNxWsLGxiXiURxBACbI6FOFyMCElXFVzzhEezGK2YIqLjT6TrEhatLZGLVf
 F72A==
X-Gm-Message-State: APjAAAW2r8uENk6ViR3a8J34e2w2MrAVr9QUckT3XfvB3twVdmcaSCzD
 ZdOFq68m9uAj+ok1HZ4WuCbrpk614XQ=
X-Google-Smtp-Source: APXvYqyOiJXoa45QSDUl2dYwE7JlKpTI/SPEhVSIOTjUAeOSRe9les1FyD26HdvA3cy7nqEBE/6WtA==
X-Received: by 2002:a17:90a:850c:: with SMTP id
 l12mr2084036pjn.16.1574721917314; 
 Mon, 25 Nov 2019 14:45:17 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.16
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:16 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:59 -0800
Message-Id: <20191125224502.266177-14-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144518_840063_4904CA8C 
X-CRM114-Status: UNSURE (   8.71  )
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
Subject: [OpenWrt-Devel] [PATCH 14/17] gen_at91_sdcard_img.sh: Switch to
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
 target/linux/at91/image/gen_at91_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/at91/image/gen_at91_sdcard_img.sh b/target/linux/at91/image/gen_at91_sdcard_img.sh
index 4eb30fa790..5171b6723e 100755
--- a/target/linux/at91/image/gen_at91_sdcard_img.sh
+++ b/target/linux/at91/image/gen_at91_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 #
 # Copyright (C) 2017 OpenWrt.org
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
