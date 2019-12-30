Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7152812CC38
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MMaR2Vx59GtM8NmTvGiwnggtp1Ngr9JBbaGBeZW64ec=; b=Fu6vBdB8tOTg8gUG3iTLEYgPQP
	AxOak1CyvMTqyMKObCJ76a6QdeE0hXELxHWV+S4OJxltIZtntnTgdv8J9J490smzhP75GYSQY/aJm
	NJEdijT2D7qtwm4mTdkve7xnJIkLlcy5LXMK86E9V/jpUROnTH7jPMTcgheqoI68FJUom9dhfeRVW
	8Y5UPA4OisRVaRs7/k2DCNal9D3wSVDz7vVZvMU49x5apCwv3HaHuTfaDKJic4qlRwGdANnRpF7TO
	I9ILOTZ80LZ9HZPQX9qv+LRDfUNKUDr1I3tjh3WACj1uxKd7vipzlx0QlqDNxkgO6LdF+vPfGlJ5K
	ZzChsagw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilm2v-000788-3p; Mon, 30 Dec 2019 03:48:45 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilm2i-00077F-NJ
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:48:34 +0000
Received: by mail-pf1-x432.google.com with SMTP id n9so9772085pff.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=h/wusmL7xi7HTlmuik2AidyHVa9AemAJ9p6QE6rRs44=;
 b=e8Zm+1XXOIhRHDgPJ/2yESlUwmaYOeg7TY5OtN3+BQRZxYC7ILurMI+uz5nfNNkb6G
 P6RAI6vWyz6MvZ5DrtYdsAMtdJ2JIW9qRnEscujYSx/atOD7MFelcW4R6WuA1DfTnSRw
 3b9qDBnWR4Oksdxdneb7L/6rIxW1CTHiOmZuvjSTupt5EHG4N+lK8qHhHjzNMBMe8Gvf
 uW24Ez1yEOHJckCtfhlMvz4c6tLkjTSzC5OtJmAamMxMr8Q3j/gO3YFybMWkHEOK+Zyt
 TBHKeacPC/vQA1++I3Aq+4S5SZexJc8W4E3LWCTx61x5vnjWVIw9NCTaEycQbC47/Mvv
 VYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h/wusmL7xi7HTlmuik2AidyHVa9AemAJ9p6QE6rRs44=;
 b=OVyCAOJ5TSL7Oh/6rowVdmfy5R6Otws4ZhJ3sBjQFDt1WCbW1C+lWBWkdzvJ1qkbmk
 3W11l8G33D4abBpr6Lq2RabUbFIRE7Nt1x9IFmGpLlbRE/J7fsC/lq8MYBmqy4/rJT40
 uhYxRBiLkQ/m3TVD2d0sAKsk/d4bSfD63ZNo+OH+VquAYe4L4DdJkUvuIlorK8kvho4U
 cTJObdgRYh4uYCKwdQ5hDxLWH8LgVoqAf4yLLhCDe7ABOyM+7hS2VNZFgqp0yjVeOCCA
 YzIDq6tWX8Ra88qMOQ2eybqG1CsqpmNJoHIbH4FvvfRF1ZKQsF35hvi2Cnpq2RMssFxk
 kozA==
X-Gm-Message-State: APjAAAUZ841u15+lEuEGf1ccHBmj0ufJxNQKc71UIu1O3JfqG6x81zCb
 gFPYKdeTT08t4+1BacdhYeCTqQOIhIM=
X-Google-Smtp-Source: APXvYqyU1nXjy1ZNHnbrun3KNKqR0foobBAVkbVwMRgzMHlVZhGVhB9At6ckrAwVCgpftbZRwxlNdg==
X-Received: by 2002:a62:7c58:: with SMTP id x85mr69145624pfc.76.1577677712120; 
 Sun, 29 Dec 2019 19:48:32 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id p28sm46211414pgb.93.2019.12.29.19.48.31
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:48:31 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:48:27 -0800
Message-Id: <20191230034827.22185-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034827.22185-1-rosenp@gmail.com>
References: <20191230034827.22185-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194832_783812_C92ACF0D 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 4/4] scripts/clean-package.sh: Switch from
 -a in if to &&
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

-a is not well defined.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/clean-package.sh | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index b64d7ad21a..2c9d4169ba 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -1,13 +1,14 @@
 #!/usr/bin/env bash
 IFS=$'\n'
-[ -n "$1" -a -n "$2" ] || {
+
+if [ -z "$1" ] || [ -z "$2" ]; then
 	echo "Usage: $0 <file> <directory>"
 	exit 1
-}
-[ -f "$1" -a -d "$2" ] || {
+fi
+if [ ! -f "$1" ] || [ ! -d "$2" ]; then
 	echo "File/directory not found"
 	exit 1
-}
+fi
 (
 	cd "$2" || exit 1
 	while read -r entry; do
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
