Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32DD10C033
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 23:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hJfkaN7PIcP2TIgrYLpqv8gVLtfJJ+XK7vj7x3JGht0=; b=ByrPApHgznaAjb1LQ1D2nyNuCr
	DnxU3Q9LzUxMztZnKKbP+0kNYHzRBTzFQa0ZeV4jBfpBzqpZ7JX37meXWOJIkUGHn54RIvL+aOJ51
	3BAH6djVBod7UXHACFj8nj9WBF3Ril2U9yqGhhgbHX/2HS6AlAhenGriI/cLyz9qzyekolorOXv5l
	be+kmay/7zaIceQIEX6MoB44IoUZZMvHF4UMQm++jcjqdVdTKYAJlKWe9mhnwaxeZ65Kb6kAdWnSB
	9Gn0scBUgxcrUAivnqlgwxRRnVgjagiTmSCmJL4bvCww9YpJPbKtp0qOIA2NUwogRn5HsAw/Y8JKx
	QJ3DPGGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5pC-0000QV-FZ; Wed, 27 Nov 2019 22:30:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5p4-0000PQ-HO
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 22:30:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so2166888plp.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 14:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ORcANQwVrq4lYAfgh/WfnmYsUwOIrq9XScWUDQZJxEg=;
 b=DVX+abATnsNhZgYk6hRT5nfgcNePxSJebS2kgy7Z7Es5C0m9q3cIwybZHsTtbbWdrS
 cb5VExhx106OpoXPXceraIx6YL9tQyWtHvuYoMB+S72W7FnhUOhjU3LUtyPoLwRCu+jf
 zPWDV2n2rK4LINMVDrT8TTez19sRpugf4vwkah/7MEbfxxgT0ze9wZcEsoN5sIPxkzBM
 1CwktACQbvufvEM99eT2OTGh8GB69+uFOMwy+qnPrURtmGZ3ivf4xqBQdpp/C6RpTKrK
 4l8LHzSa7HfKfesTdIz/AgT6KdSAE8fGAY3zA/YzYK3FjQSYee0BRQvAWUaebknoGLwz
 /JAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ORcANQwVrq4lYAfgh/WfnmYsUwOIrq9XScWUDQZJxEg=;
 b=sjwS8smarvCMdyXecTNh5ETDkniZBtFQ3lEK0sQL/mavKJwrVRVkoRqwDJG2B7+Ywu
 BCIShBlCX96aiuEYeebuGw1+bfGX4WsmQPlXJek6sTiKdxAscVB7DF1rkvPeYlH9tmA8
 a3Ns1Hq8tmsINdKhRAwtEzcycm4QUygT8i48JN/D/pcdSemV5AVNkX7OwBTuhijdhMTo
 G7HnBEWmjDC8KXAJZppNcgbNX/TInRAf8f7ySDy/xxR7+Z/Z3LMZ+/qhbE/g4ZqsuQxN
 z8bhKckjLT0WZIZRLF/rM0pHrEcr9JQTIoxGSABKiz6yCBVJ59HEoi8AbPFofk0LEo8W
 tW4Q==
X-Gm-Message-State: APjAAAWC42ewuba8v99OBP5H5W97Mb7aFTMkRwpfenKqwlaVVhZOnXha
 HevsDT36slkawyzoyom713u80xqt2AA=
X-Google-Smtp-Source: APXvYqybzPF1W/ZJU/gn1aNUQh8UCx5qy9cS632m7GPRdxMH4intmD1jQ0MXyGjggPifSJMbtF7OlQ==
X-Received: by 2002:a17:902:6b45:: with SMTP id
 g5mr1139419plt.159.1574893808556; 
 Wed, 27 Nov 2019 14:30:08 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id g191sm7411397pfb.19.2019.11.27.14.30.07
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 14:30:07 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 27 Nov 2019 14:30:04 -0800
Message-Id: <20191127223005.9632-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127223005.9632-1-rosenp@gmail.com>
References: <20191127223005.9632-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_143010_607144_29649A93 
X-CRM114-Status: UNSURE (   7.18  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3] tools/pkgconf: Run pkg-config wrapper
 through shellcheck
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

Mainly quoting fixes.

Separated parameters by \ for easier readability.

Switched to calling by dirname so that it can be called from any
directory.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/pkgconf/files/pkg-config | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tools/pkgconf/files/pkg-config b/tools/pkgconf/files/pkg-config
index 82cc74ffcb..4b5e57b39f 100755
--- a/tools/pkgconf/files/pkg-config
+++ b/tools/pkgconf/files/pkg-config
@@ -1,3 +1,6 @@
 #!/bin/sh
 
-pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
+"$(dirname "$0")pkg-config.real" \
+--define-variable=prefix="${STAGING_PREFIX}" \
+--define-variable=exec_prefix="${STAGING_PREFIX}" \
+--define-variable=bindir="${STAGING_PREFIX}/bin" "$@"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
