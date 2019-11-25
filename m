Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810721095B9
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hQcZdpFofaB5w4OHfuCCUi8aJs6vZPG/QhecuLthBb8=; b=ZqwnhyKdAjyEOS+txGSBL7T1MI
	+JlWy5s0PINMckPErAaRBzQHbYNZG2a29yFWLjlZ6AQ8iL6SZ21d/nLrcB4OoOjaRfohgUzvei9xy
	VY1u//HoIP5lkGW2aPJd9zbVktJee3dncaJEi6qGK3A0PqZXLTkIfdcAUGX10IWcFUGSe+IUGL6Cc
	LqBb6gZK8/yl3jm1mLpuIqCDoSjymMW4YjO9KsvaaK04yXBwngfFOUO4I9xo8CbRc4B9MX+eRo8bg
	uuBvIYLqA7t8Spp1Z3PgNPeRX/SItT9rDHglwMjGugbmXecMT5HjkQIZiggfOvMzTTR87A8l8OAP7
	wopv0ioQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN7J-0006oJ-W4; Mon, 25 Nov 2019 22:46:01 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6R-0005dr-GH
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:09 +0000
Received: by mail-pj1-x1030.google.com with SMTP id bo14so7293699pjb.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CrzuCJTWfc2v3RnEGiDFoc8PnUUdQEa1qPbCCAkklYc=;
 b=E3iaCkjhRYrfhoYE3zc6xYqiQipeEIxCl4/KPOtqMAyoyIyEui2Lei+zT3itaXWzsq
 q+naJ99F5JUlZZS6V5sbIuDaEZNQshJilySxDt0/FNhJS3sx0HXSoLDJkMtUr7t/IiB4
 ddelrsJiv9x+h12H+tSoY9uRhQHAidchsB80aCrqlmHe6A2ZABlvXgj0KHzyWxtOT9oD
 NJc6QuX1ow7vg7lYE7DvzotNzRivXuJnDaQYMax0w+8yb1rdST73HhshZCzHWPFdrSnP
 fHwpbNUK+58YcQnhgzz53CvxJhjW4Wkhj78irvTC55vT59Fz/HFfx8pIiVmW+4LEqKCB
 knnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CrzuCJTWfc2v3RnEGiDFoc8PnUUdQEa1qPbCCAkklYc=;
 b=kCdIupAdwjpCNn40+kowndbtcoevCumASKnNZomFLGAmLFLK3r7wAmzjHetPlwE3Ks
 pWiEMWWvd403rqlrEuxFLaTMwmXIuoZaoFkBna2MhcqrKx1yQp+kgTJOpArilS7ycM2u
 L1aRWefC2aUfOdW9NccUbs7pnxVkpDFbx4pbsrs1EfTnl7aGn/MKnQvGZwEAaekhgweF
 WNWL/gKCvpoB97mccsSmTKvtTTF0Qm9oMt3m7dBxdPXG2hIT6hbJalLkgpxb1lEkgWot
 f+52Ic7idKA5/UzvbtGnmTYn8q8mzXAL92lM4IzYSRTpZ2paNZNH3YPH1j8H34fAhf27
 m8IA==
X-Gm-Message-State: APjAAAWc6bzNrSshE4BIfBZu2H2muG4G/GJ1L0V+XMtetIufezyePCyc
 /23rirZO5tA/4I8OjbKkpoAEH5Aatj4=
X-Google-Smtp-Source: APXvYqz9vYDR97tcveDCjAJXby7+2KMW03qTp2dvwLCSrl2nV++ZhHHJkOI4eGTidd4QS7O2KKKy5A==
X-Received: by 2002:a17:902:b614:: with SMTP id
 b20mr31027066pls.305.1574721906327; 
 Mon, 25 Nov 2019 14:45:06 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:05 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:48 -0800
Message-Id: <20191125224502.266177-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144507_585720_85B7D743 
X-CRM114-Status: UNSURE (   8.36  )
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
Subject: [OpenWrt-Devel] [PATCH 03/17] gen_mvebu_sdcard_img.sh: Use /bin/sh
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

There is nothing that needs bash anymore.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/mvebu/image/gen_mvebu_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index 277c9377c1..842e591026 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright (C) 2016 Josua Mayer
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
