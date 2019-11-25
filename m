Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7B4109411
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ADs9rKKajq0a6TpHOEDq4zPxAJq34U+43js1K1Il5b4=; b=IXYxBNgnA7n0bPu9HzwmZjWhlJ
	99SQJ72fC/llF2mlkdf0e8ptmZxjPRrq6meRb505hNqfCvD5S6nknG0QeN7H4flAruWp3M6yCaeoO
	tXcRPxeGtfVIuO4BTxqbglX8imoKZ6ypMrGPnRtXXXceoTde5J1rglCzTgPdB8THKsQcmczoxXvDE
	TkOXFTd7vbajpriOGrisp+YlTZU4hGqotfS0VmgJ6A8ycpFd4GSPLZLWBKSeyxr8vej7py10OS3fa
	M7SVaNLhdBVWvLdjqULdHgjWiTFcyjzdye0CpFJH+NbJKXqK+ourzO/Y7ux1rPjP/pHXEfu4ZuRye
	9qj3BCGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJpk-0001rI-23; Mon, 25 Nov 2019 19:15:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnz-00075i-7q
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so6886763plz.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Bvsw+mXb6X2E/PKg4nSEphPbnkUNCC9dkfslMirx2ZE=;
 b=f1ZbUL94l9EJGtZg+UlYiEqRLCBMkdV9FYGQHSZFiqK50rSyLlwv32Ivrk29l9OYoG
 sn0NedFd2DPNtPNU5L67iOnj89/hNSsuG60bKB1OdDW2+lOMFjtoZumeSnHgRe9KLlhk
 jhJNj/sO1SE9oja2Hv2NimKiQY6S586ZShBXW+c1z01twfHvZZatkoe5UlD9JOX8KEDQ
 pv19HBIAz8sz5V6Xn8wkbOC6kxy0C6UDlgjqf41hbQRUGRaDKwBaindibSuc15SQ4r3A
 QXFWCDYYuHXQiE1IZhHP9F3aN7l9a0fcTMY+itovcnGGnSmT1F09g91XBUKrC1I+/xEn
 RYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bvsw+mXb6X2E/PKg4nSEphPbnkUNCC9dkfslMirx2ZE=;
 b=LvTHfUGsg9ioxcM0GdQ3/AJLlP9sGgszKKqB3aFUD3D1OommCGsazRrQVXeCqwxfTR
 UUIncCvnuvvY+OOnoqkrSOf9aAOQQHDCFVayRbt1MHVERbMPbVrFpEhkQvjRl9u9W/vv
 a60g/MNraKZI1izYkMimtmNNbqIeAD7XEYRTogQoGBxnpzi/uVNS1MoqleACQxYq7fUt
 h2wiE8x+IU5XDxUaHWNmTZCOcaEYaLUzmGsVkyuFoWOyrgIiJoxgXpdmLFJfe+zdSJFU
 G+uKZFB8rItmPSa0b88cNm50CzWyBQKLT1Aku7mYKYsVkewMr6IEKXC3qG5OLdW5SNSY
 cd2A==
X-Gm-Message-State: APjAAAU+pRrSEdu9BcHXggI8i4o3/uVkN0w5yEYRzqHj4iiVvbJcdP88
 ymfHta9zfd2DhgNX7r5lUm0cqMO0KfE=
X-Google-Smtp-Source: APXvYqwvZ4MYy/WQm8qd9G4TShlyehWy6tSnfqVpoz/5ApFsdBQmCLE5V2MtV1NEbMcBA7E77xBk9Q==
X-Received: by 2002:a17:90a:8a11:: with SMTP id
 w17mr641517pjn.136.1574709229538; 
 Mon, 25 Nov 2019 11:13:49 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.48
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:48 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:32 -0800
Message-Id: <20191125191340.5980-9-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111351_388262_F9C937BB 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 09/17] mxs/image/gen_sdcard_ext4_ext4.sh:
 Use /bin/sh
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
 target/linux/mxs/image/gen_sdcard_ext4_ext4.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh b/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
index 99bd3bf573..20f3331bed 100755
--- a/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
+++ b/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright (C) 2015 OpenWrt.org
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
