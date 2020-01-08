Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69511133C2C
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 08:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MLE8FurXCwasOf1qUvZ7afAZQUyYNR086WgPD1eqBqk=; b=tvtNlBmB8heNcm
	bGebzU/AkqcICBuUWYY2aOezhhsSzKrIjoaPp/ab+9KGsb/DUUBflR35GKJXXDy1sdtyRIsnqB+bX
	72EX0R4kDsoY4Fqfd4JGqa6vDlmtRSkGm9dJYnq4UHqdvbUsKfxwNFYUXr75Joy8Swv8lUOQx05BQ
	HsUO1t2ByFk5p2h4aO5xaZ/rZkRohzECUQzMrRzSPzilxYbn/3uFEKQ/y3HsZOUTiV6QMtGXidckk
	iLickVp6/PA1qx90m1BGRWNTEpLy5UOgdMQKVSfsChP7vUa2TiVEo4zCO9zHdwl3wKoHdbqOfkhY1
	kwAfklC5XpuZc6Efu2tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip5iR-0004Fw-29; Wed, 08 Jan 2020 07:25:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip5iK-0004Fa-GF
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 07:25:13 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so750439plb.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Jan 2020 23:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=laKrqM4Oe+vQMgQGgS+hvKWFuXEHrqd4hG9t3LVyEB4=;
 b=Hh4izwU+tw6uS3OYH3B07WthC7Km7UGcveAZB2F6E0M2pQkopgTFkz5KEpJT5sMUJX
 6xKPa6xITnGVt1gUTa/WIrcW4sSzyx5ACL6u5e/UnjrvoBfh3g4vmhiA7+SOjpTipDkS
 UyOfSng7SrsiKcmtigE0DmwKNX/3KFVLVz+FmlPReADC3Fxc9OaOh2wDWMG5K+KKmozF
 7RTkmcJUBDhCNZoZMdCEmWkz6OIx3Wepxj+iAg8sRYJ+WDBblBH6fS6joOBmhkf8w+d5
 /3uFdaop3KcoDMyRhgIMx3EDVuWYr3Vv0DP/K/McPSiI4etl/v0TCC8pldS/LtiGASHA
 X5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=laKrqM4Oe+vQMgQGgS+hvKWFuXEHrqd4hG9t3LVyEB4=;
 b=aGytRnuexz21iZaYlsB7R8frdu/DE9sBjrhEtykFFywph2BtFOwZBtE9HC5zLW+PD7
 xEIupHmlXrpu6fOdzH0Q7kw2HTpmwptPJaISnaEIyme1NM/M9vXWUl0Ne2benxz7IiKC
 f5jKmi0eU1CXcroTpajbkOLdFedvbRRYCL3ZflYq5sgiszs5LNovgFSMvOhPCt3buPKx
 hhWmG8lAzEyfSKqEU7ThphHzL/yCrJpHz+XDKpJ3uIvXlDYsYyFG2b7Wh8+/KzNX/kAL
 dcG90B9B3UPhIMfUdxE+D4yZlqkRb47cp6YZhwuNn1SLjRtllX3p9uF9/trqGYpvyr9c
 +IMg==
X-Gm-Message-State: APjAAAUJRZTMHZa+NwkRMTfhTJXeFYB9KPshb1CKP48QzJgqXduXrC8Q
 889BpCkoQ+V1X43vKP+dLhXL9jlwAXw=
X-Google-Smtp-Source: APXvYqyBqN1t1+2HXztg0qfiEGBi2csv8ds3RfcvYMlQrivtd19QwUA8LAt9LvleA9htDWHG3vBJIw==
X-Received: by 2002:a17:902:6a8c:: with SMTP id
 n12mr4002159plk.152.1578468311419; 
 Tue, 07 Jan 2020 23:25:11 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k21sm2152755pfa.63.2020.01.07.23.25.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 23:25:10 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Jan 2020 23:25:07 -0800
Message-Id: <20200108072507.3672087-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_232512_567410_FE9A93AF 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] tools/pkg-config: run wrapper script though
 shellcheck
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

Added \ and newlines for readability

Fixed SC2068 and SC2086, both are quoting issues.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/pkg-config/files/pkg-config | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/tools/pkg-config/files/pkg-config b/tools/pkg-config/files/pkg-config
index 82cc74ffcb..e90b301e7d 100755
--- a/tools/pkg-config/files/pkg-config
+++ b/tools/pkg-config/files/pkg-config
@@ -1,3 +1,7 @@
 #!/bin/sh
 
-pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
+pkg-config.real \
+--define-variable=prefix="${STAGING_PREFIX}" \
+--define-variable=exec_prefix="${STAGING_PREFIX}" \
+--define-variable=bindir="${STAGING_PREFIX}/bin" \
+"$@"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
