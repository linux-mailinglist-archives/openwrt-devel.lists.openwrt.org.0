Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ED112DD55
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XScg3/qPnML21OzU6enEdk/3kBE+ziIxdpa6Z7FKssA=; b=iPWW/CikQtonfqjs5FVE7qUh3j
	6cwTI4TEFcqhhDAg8FuHO3OwrRMD9H7J5iWmdJJZJ1CAoEQv5cH5a76aka/Aud/WxK11ExqNhpI6u
	f3/Oc/33aCQvv4zMOEI1A1kGgoXlV1XXLenrtav3/Zz9a3/D8zju9SnVgFSgm3WYY9dwuEWxlyEJ5
	AjYSDJY8oW/BGByka77ZpyoHiB07/OLanr9TWeKTlkMoCCoIEZ3PsKXjdpETYv4Dwqre9EeLxqhae
	xmBO0OhT5G5Eq1RYjAPcVkuxWkWHBujerfCjYurTpGWhJQN5xqWe73F3E9MRYaYzhWzUX91MjKyEw
	KTQ3ppBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTPQ-0005G4-EG; Wed, 01 Jan 2020 02:06:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTP8-00053W-Lg
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:06:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id 2so20323432pfg.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7nA+oKxgexeZpUu+tX9go77tmR9eDdATki6X6N1WUkk=;
 b=IAPMr2GTmEnWnWbyj7qGCdivqIrzevWifx2bDFQar+3f4JCJeXayCKVwqAGf9s5iVD
 GO2w/XZmlLI98qYlWO+QSN9I0Klr18qWkDcTWJGNtN5tbNZ4IUhGIOKBEK2Fyyg0LTjt
 XTaN16Xi0My89sKRqOqaA5bPVagrMrO0fI6AJhtHcNHxbt054KG8MB0e81dsrgN3gFPQ
 COjGbKkxYDRJcPubMzMFS+rnZY2N7uuyyXUBwG8ACeIVGIdAM095RvLyE+Do82QIx09R
 V3yN5pDNNSqKRFViwrIIlFbVS2ve1Z+Bo9QNaO/uZaOG0RmO9EYYmWM0fXLk5vlbJtrt
 seBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7nA+oKxgexeZpUu+tX9go77tmR9eDdATki6X6N1WUkk=;
 b=pjRhDdRcHc0XX8Y3tvvhuyKuH6lsUXrU8bW3LQz96F2wt8vYvX3I2ZtfWifzM/aRSt
 kwirpGAS1k6z0h7r1jImax1AVX18uDecrUajAU8WBZocUk5gyrRb2IadJQ0ZchTrHwqJ
 Sbwil48O0gjAiTTjoMljzQSmsgn43mEnUeDO6Se5vwbUy8kPEbNZ1pSXVXNndbzweck5
 Teb5sF875fb4S5AbYmMczk2cqYN0biFet56xl3RltOPhj1+jYtJsjr6FhoFEsqWN2gmr
 HbtcyMrsnkL8DdhzYNuqr+X8AbkeIoK0jatsvUQB1+q/ugJWYztRrctJ/WKO3+kLcazP
 yzYg==
X-Gm-Message-State: APjAAAV2d3OO8r3ybqUOCe1cD1jIpGHBKVw5dMR+FPh0Fwe9uNpEF2Di
 Ux2IuQVlBI6gK/fr+n8c/i+O60hJPWg=
X-Google-Smtp-Source: APXvYqxAvJZz6bwc4tuLut22wO6km+WPSQ+ppQ6ZBYigf8afikNQiJc/QKk3/pa4SZln9Ot7Vsf5Jw==
X-Received: by 2002:a63:e14b:: with SMTP id h11mr78479565pgk.297.1577844393625; 
 Tue, 31 Dec 2019 18:06:33 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id d23sm56366519pfo.176.2019.12.31.18.06.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:06:32 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:06:28 -0800
Message-Id: <20200101020628.21503-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101020628.21503-1-rosenp@gmail.com>
References: <20200101020628.21503-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180634_705224_A2204226 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
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
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] scripts/gen-dependencies.sh: use /bin/sh
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

This uses no special bash stuff.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen-dependencies.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen-dependencies.sh b/scripts/gen-dependencies.sh
index 01bb5ac037..4beff74bb0 100755
--- a/scripts/gen-dependencies.sh
+++ b/scripts/gen-dependencies.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright (C) 2012 OpenWrt.org
 #
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
