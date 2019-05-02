Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7140A1210B
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 19:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XSUTN+Wq/EPGrgzmrff+ctwaQ7aSTMugZyyeLrUROok=; b=FIO9ua/N44/hr8
	zzCOIXW6BMJ9/zDl3UX3QxufCr1AqqGoyolELkfi5dVOjDKhvyNiAZZDuEC8nKVxvSu7uezfqZipw
	BIjA9bra+0MooCbJB+VLyIxm0Lz+UkQay+x6ywBESIXXyWHbHJeY9NgxjdFqirZejWirvXTQuYtGG
	vELWPIEIvBNm+1PELejgjGSFCQ7N3xOV1BHNROgzcxQLvDD2IoaO+Bwi+DmWVu+v0aiXSQHhaWFDF
	WizneNFH9Kh06eqHnhJpbTTZqX7ZbKBSZmwm//UOWGRroxR0a4QaWBGSb7bCJaAuSiTTvLKKi+Mym
	/NWMTPXKlMDGGagWkFog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFaY-0002WO-SR; Thu, 02 May 2019 17:33:42 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFaS-0002Vn-Hb
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 17:33:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id ck18so1353836plb.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 10:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gqser3S3sueIBHuG32tUWkMTlA9pISvzwgAZhjfsFaE=;
 b=bKPzOsXUSW8WJkXwgtMV0t0c/cjeKxl4yY4+8gkLcN8Z9JhxErNycvnRIjBqZ/RIqn
 SsecVp1taewmB5QUGiq61TuGnkHHUhJ6k435Sz6HW+blyP/niNgZn1F85hlKsuGlz7Cd
 M8O0A/U4Ue1aDTr4NwQu25ItQu0JyRT3aSVpuKSuyLZntCMSCJPp5Exk28C8ODyl5sUT
 QZI+pvtiaBZZ1a0dxen6O4KyH+8X4oGc2Y3+OQPJWFlnlEfBMKVFsopJW3lqPB5gFBUI
 M16Fb4YJjdsgY07Zv6fNXSE7/jM48/UGobIvJFGakEHOeW6NPIXEHTj7+sn7rzhBzrxS
 b6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gqser3S3sueIBHuG32tUWkMTlA9pISvzwgAZhjfsFaE=;
 b=gSgVcm5Tva8dgyZVNqUi0AIgqf9g761pAemd5QfSvmcgf4UkXou+cH9BOe+FjUD0+I
 NLi6Yh2nd+YdFj4QrC+UPvQdkqb99PVDxfeghSNwFx7C545vPdzC6hlpIc59YWjwuRpL
 6K+2Z6XXOfgYzevrA/WoEfAGDUgytpyZu5WnB1MSGNK/Fv3qMJYoFVfS6dHfRUXPD8ty
 7dra++AY9dpcOOpzKzzSbq0b5hsDF42b7pKPAVmw2bncnUCjBOwAzdZI//EGU6aAjXVD
 MdPbgHxafM8j61gBHs3MjZeov666WpxOctu6lGsvtInyVCSwMthjfUtAkDXBfP9hpX3M
 JM6w==
X-Gm-Message-State: APjAAAWCk57gF1OoH3pCWdFWIrXnxzMRx3f4XqGSnHQmNtWU/B9Nlbhn
 C36bq8T91AQR2LADi+qq7L9q5NhS
X-Google-Smtp-Source: APXvYqxRf3+U4POXUJbRSIILU/sLwkUv/rukoEmnePkEokQeHK9PZL9aOHhSMpuLocIi+kE/n+a5bw==
X-Received: by 2002:a17:902:362:: with SMTP id
 89mr4884773pld.172.1556818415361; 
 Thu, 02 May 2019 10:33:35 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id q144sm50861820pgq.76.2019.05.02.10.33.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 10:33:34 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 01:33:27 +0800
Message-Id: <20190502173327.23285-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_103336_610957_B80695DB 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] build: fix STAGING_DIR cleaning when
 filenames contain spaces
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When looping through a package's STAGING_FILES_LIST (a list of
file/directory paths delimited by newlines), if the path contains
spaces, then the path will be split by the while loops, and the
file/directory will not be deleted/removed.

This sets the internal field separator to the newline only so that the
entire path is considered when deleting/removing.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 scripts/clean-package.sh | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index e580566a52..3a824929c6 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -1,4 +1,6 @@
 #!/usr/bin/env bash
+IFS="
+"
 [ -n "$1" -a -n "$2" ] || {
 	echo "Usage: $0 <file> <directory>"
 	exit 1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
