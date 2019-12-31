Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7371212D5BC
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wQGU7oKFJpdMW9KqieWwE1e5wY887JsF8gnbXxSacSE=; b=ADEdOQR7KWc/WK1f4Fit0PKU7R
	xKzh2MN4Gv7O3iJZHCstIA1CL+YSI3ohUysohZgtjkabB39YlUUW0JbmtAiu/bXI9E9mSclIndpky
	W/ss5W5ljeEWRmLdFs2d92pb1tD4VvOe1JKOtjXOaXHzTEk4z8ldCEitp3E/d7Dx1vzbGswX8e5Rw
	UGRHBfdNU/UcAlAhk8XGT3YXJL3R8tT+sic1KM8/cTF29TPVkSs4wBgJ7EuxnwsZPfv771LH0rBRI
	klnD4C2bccYsXjaO4WXdUn/XxQ++0CU9Vy7UG8kYMlASEASSJYVV4klbGbO+a6LfvJn66Sp9NBbab
	kk7uvcHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im778-0003ym-AB; Tue, 31 Dec 2019 02:18:30 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im76o-0003mK-N3
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:18:11 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n59so600860pjb.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=p7szqo9HZ6ubrpPir4jG7mhoweMwp1l1d8gLkb/CqUQ=;
 b=lwmLoiaQ4ibT1QSaSoOa/b+tuOlpDYWZFvi2DvTLESQqr8bRRc2zO2FOjiYNKtHkVq
 TM3CBanBqre60yKS1+BjMWUutC3r1IKxvj6YTVvb13hDn9qSwxNArX9YwbkPFOp473VI
 13YKko84fMi/rZsAL8KP1JHJq9O8u6ynExWOoLpSotdIUgqg1ZuQ89G/p7bjg7GsYGnw
 xnFyMjTM6LVRfW2/y3VOw/1Hwu/Ez5EmrdFQdc+nXpYbEemIJl0DmS8J+VkeF967Eb33
 pTaRlwQLk1EFKNSOa9+5r1+EJGllBRIZsv04rpk+qW6SCzrJFKl6keLpw8FipV07a3j1
 q8HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p7szqo9HZ6ubrpPir4jG7mhoweMwp1l1d8gLkb/CqUQ=;
 b=ECGA7I/ShwPCLXNzvn5QEsasHTdnQPy60oJRxjK99jA2lzPsdOVC3G7GaYRttnZ5EM
 AhppeYKVyiz0K9d8fA11+b+Tb3U0z/GgtO93+ijl10mDMYZZ7HI3h3XH65LmzIqUVQk/
 ECxYz4enhjd1HTYoM6yhjV+cbMNWMNKAJttgq64vpFmPFFVv6f+gdZ2cAV6uGD4cWDQ8
 newIoJlhSPhxhu2VAfaBSKM2plgY6V0NPVNMkFSduLuy4jhWW6sPsQrWzYNFuv0kT+7O
 Ix6mFfhN4gtBnwwPRn64/60ukD4eG3DznbIA2G4q1hWpS6kPo9G+qEXdfQeEVlJTlqs0
 q1kQ==
X-Gm-Message-State: APjAAAUmxkZbzE4ZU2/ZeBzcfPpaJL7kRW8PoaFWkqHM+A1OGurFlNgN
 O9Ggk8E+BPIq4vAzbnicyRCpK5Ulrek=
X-Google-Smtp-Source: APXvYqw6iqbidHTtIDTIk4Vd/qIYlWmIt2qFlQcVteSMPBz8/mVuH3FL3KgHNg4+1rlDjjDTbKu0dQ==
X-Received: by 2002:a17:902:a701:: with SMTP id
 w1mr67564486plq.165.1577758689789; 
 Mon, 30 Dec 2019 18:18:09 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id b20sm34584157pfi.153.2019.12.30.18.18.08
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:18:09 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:18:04 -0800
Message-Id: <20191231021804.47805-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191231021804.47805-1-rosenp@gmail.com>
References: <20191231021804.47805-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_181810_747949_4F958860 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] scripts/strip-kmod.sh: Use sh instead
 of bash
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

There's nothing bash specific here.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/strip-kmod.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/strip-kmod.sh b/scripts/strip-kmod.sh
index 7886cd907f..28be35ea7c 100755
--- a/scripts/strip-kmod.sh
+++ b/scripts/strip-kmod.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 [ -n "$CROSS" ] || {
 	echo "The variable CROSS must be set to point to the cross-compiler prefix"
 	exit 1
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
