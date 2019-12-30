Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BCB12CC36
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YCuv2G82TqJsVjKDqTU7OZQrctiAMNhe6dJUA5obdvA=; b=Jx+JRnDsrxkFeD/NbZ0AMNO5Is
	Lwsme7JFsa+ZYjM/Lti405vRU1j28tguS2xaf2b5eyZSo8+PPlSLvwH15MbGya/dpBRn/ROhxecP2
	0CLV9jt5dZZOBMa10OyCFGSTfMOtDVnjP6RNr/dDlWuNnr1mzNNB85Th5OArB2lTiB8mvEA8+ZW3T
	ByiNt6l9KO0S6ItxBJxXiGEj9NFiumkslbfIJRO3LXBRgoahbi01G4EglgzPCP29V4lv1pVy2frfX
	ArC/02LIANiv7GVIFpC9/V9lpi27/CO1JgP9+QY/fDBHWAzuxftUhgKW8MEBgX4Wo6NLNnT7P/cdU
	KVzl3XBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illy1-0005Qt-CK; Mon, 30 Dec 2019 03:43:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illxK-0004jU-3n
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:43:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id n9so9767773pff.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=2WPVJb5qx3VfbwTskg5TOZD0NFnDnfY3d0WMAneStqg=;
 b=i9KKYCHDkZJaCf/KS3JQ4Sf8L7BET+sW7m37XdVNdwy/PJAZ+4S03jXQ68180hqx52
 zRSPYKxKpf/hCPGRH52y2wKRY26GxBQsT84/NUcds/Qm1SZA/18p+PdOLzzpAnA7LrHN
 S07/k44QWookt+1JmDixvOtg0eyS/A5SGUPAdGkVVamOdyAdbH4OE02qn6tvjvTLyUxB
 K7twTpP2L9HWltp0UE2hSk/jEzrauF4H66q7yx22ZVFx4KmmojB3ER8HTXitV+WKZJsY
 VnL0wu0virPNVcO+K81KUmQIfVlBSV7AcmmUOYnJmVE6WTA0oCMNH2sspJ7ya2uB/6nC
 W0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2WPVJb5qx3VfbwTskg5TOZD0NFnDnfY3d0WMAneStqg=;
 b=iiKXoiX+SGmhLYFYDqTfVo8AMopI92OFj5fNXbncmjy29XYGnh7n/JJdQl8rXvhcqW
 cV2OHBTMTOMP/9149WQEyo2vYlxVYjU4fYFdkr8UzZWbi5UpZsudk5rnBKQ1Nu0YlwCp
 MRzySy1Vpv0lVU8K0o3v0DiRQEYPCtk0hm/o1qDCYN/MJsSpZb3pWWCpJcgD668bR+C9
 RVFqwATMoMxqkJvcEwOfm3P3/KavxlztIWy7kLDDkEBucJC/1yYe6Mj6zpAcgPySuUsX
 xJm4CJT78UV4LCMDBXCKFUppy7eEw+cIkt9/BmW2A6XMMyw+1W2DbF3V1HaTJM3zClHv
 9pCg==
X-Gm-Message-State: APjAAAUo8VVtRa/11pIMRdv9y5FF7PIvdj012Q6xu9um8DFYeTV3ufvx
 UwHjhSI2LKfD7kajEyIVn3KHAcMwelg=
X-Google-Smtp-Source: APXvYqyH+bP17cWU6Aw56Q2rbuytmv3rccrVtMCPBsUS41SctyEXKktpi5dwnUmuY+6yItcbKCRT7g==
X-Received: by 2002:aa7:86ce:: with SMTP id h14mr67633258pfo.31.1577677377245; 
 Sun, 29 Dec 2019 19:42:57 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z30sm50978449pfq.154.2019.12.29.19.42.56
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:42:56 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:42:51 -0800
Message-Id: <20191230034251.21873-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034251.21873-1-rosenp@gmail.com>
References: <20191230034251.21873-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194258_169085_88DCD8ED 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 4/4] scripts/gen_image_generic.sh: use
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

This has nothing bash specific.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 0832bf91de..6a8065e15a 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
 if [ $# -ge 5 ] || [ $# -le 6 ]; then
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
