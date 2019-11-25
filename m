Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C364210940F
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qdhmBS5wYiMoTPPqxbII1gnxjcuq8DBjHLdh/fSW+Z8=; b=d+wr/6qPRgYvufXa4E8cHt7jZr
	rd8NamugJQ2f4oNgDXftX3UvGitMIDSm3g/3jqX5ed7G3mhJ6WEw6lQQAx9p9+9mpiXIA1nVTgU7C
	2qknmtVnlkZpHLYhwCir/k4Vbw1/MKW3u32BmZCfJn+AHc4MguT30uj3ZywvXxyG3PWaj9ipEIEtZ
	gYu1/rCc+ZijXAT2LjezJzigarKyiSabFNln9CpGL7KdRvnc8FpYQ2PzQ/+XMZzgOtKBupc5aD9dG
	BOT0DGYPF37nbV+lhADI5KHh5B3C5pWEWQWJamiywLqASqLVbIzRUSUHIycAYRfmO9KLC+fnidFJu
	Z30Uw/Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJpM-0000At-Sb; Mon, 25 Nov 2019 19:15:16 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnx-00072U-II
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:51 +0000
Received: by mail-pg1-x535.google.com with SMTP id k13so7668081pgh.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XoxGPYMxekBJALE0e1iB+kg+KgmvxIsfLDvQZ1NMEVU=;
 b=ZzC8t8Y9urI5NopprHNDzSAB7aXpfmfOJPzmfBK8c8YIZ+oBI8Ndhz+tb6s3XU7wjc
 8K0for1elmmApnEEeFCQfb8JPHnKELO8j6CddxvSDa9nzI9aisL4cFcbKz5ncjzoVH0d
 gDMpgZaxRhq4bPYHnNfhcOdLC9NaeS7NVQC1UIF41H+hemJWNdtFt+joq2dF8EnRRdc2
 ZNvFY9RIb//LzkBkP1b36um9nAGlvuAikXvYuDClwpHLVTtxs6mZ1tJrvu4FY0usV9EC
 QWSDSslX+4U4+c15Cmk8UHvjG45CNS0hPtIZq7AiBPG7V98kCEfgZQpAqGOVUx/dlywZ
 z9aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XoxGPYMxekBJALE0e1iB+kg+KgmvxIsfLDvQZ1NMEVU=;
 b=YuaC6GWoJTjXkF4pQk2763kMPmXPOlU06q7yiXdH9pqOgYRAwwqsOsIbLyl/J6hBTU
 5a6Bhg/+V0WNIPUOrmP+Ro2LFWQpRhnxBL8qaoDEzAEsWDH2akEB1i1SI8GFOhpqPniP
 1BAWBgGnTu/trShdYo/wAaXR2x4nhfbBX6PPUJ4G1uo7j4I1twQHYPP0kXT9FcUeCUsD
 qQ0Dr30TwCeWv0qnBQM9TlOzvGlgosoc9XyQYW/mX06+Ohuh/rD2eRGJW4mLKC3IOLhh
 SHPNdrufmzsCPeUgxqXwQF8wkBcK9HToEAoupHqQAKx0wzB70W3raiTzX8hMZPvVSDYj
 xfug==
X-Gm-Message-State: APjAAAXhxkerSjh9bkJ4UjoXyp9RFtG67s64AKmlZOU6lFaN1FHRwlla
 rSHtP/t/eZ3EDnAT395hGr9piveTfIA=
X-Google-Smtp-Source: APXvYqyENj1cAthgLZV56AaCCoHWCQvEtHX/95nhXbGpWmh47q50I0zfsY4JCYgb2/37uYxdwf1iaA==
X-Received: by 2002:a63:5f04:: with SMTP id t4mr33416971pgb.73.1574709226645; 
 Mon, 25 Nov 2019 11:13:46 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.45
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:46 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:29 -0800
Message-Id: <20191125191340.5980-6-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111349_623124_7D3A767D 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 06/17] rb532/gen_image.sh: Use /bin/sh
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
 target/linux/rb532/image/gen_image.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/rb532/image/gen_image.sh b/target/linux/rb532/image/gen_image.sh
index a9d48d86ca..e46539fd85 100755
--- a/target/linux/rb532/image/gen_image.sh
+++ b/target/linux/rb532/image/gen_image.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 OUTPUT="$1"
 KERNELSIZE="$2"
 KERNELIMAGE="$3"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
