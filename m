Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F363212DD53
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tUElw7PwUQkAoRhS7wacRDRcui6k5BGa87zurjzGmM4=; b=IM7lctYchWwlR9
	7GqcauYp/w9b9spitOUEjS6w4m6ovWqxSGpH49+uuCMHEjPUhbSwwE+l1Vs6A6yoUHToPsEupYpik
	xuaNgFINnZPxJTOTPCZERtr9GRM00FK0AdlNKUIO7FpITa5gZqweBhUUON2W1A6lyl9xBW6iKrJt1
	SGfdLE5zEhr0klGVwNdyHCwXiAEeoArAiHPe6e/L88KH79fXlr194Tifl7H4DHD2w1V8ZBfmXIOUB
	vxLndTzEd1fhtyCHSw23ng8tzJLf6fYDw9o/rCDhgg26A2vxUZLImqmYd1c6gdd099vR91TmDDPdj
	c6JYvIlhPB5VNdQvGuYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTPG-00054A-38; Wed, 01 Jan 2020 02:06:42 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTP7-000539-T0
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:06:35 +0000
Received: by mail-pg1-x52d.google.com with SMTP id q127so20158637pga.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s9PmUKZqxC9fRIsWcH/7WOtACfEVustkzXuA9VIOA/M=;
 b=uOw7fyiYU6fcnTpSbjjmuzbwWxxPgiJbAqoauI0kp0j7Id5j4Bygmg7txgcGXyocNl
 V9r2vAI9QzIPzFRIV80Fnox4Asru4N0APa8HsLw+siV8sD6cr8IkefndIDaDjswN5r2H
 Mbyz6Xlby2N+fYVSPdzmrYGNZX4Cwa7BITNpPMNx82KKQDnNF9H4mMJmdKVcoiZjtXHb
 gu7YhIdUpPJ2CLcRdD6/fWyGpXgML5O1WuvFEyLw57+d0Ynodvjtm2jXd40JocW89yNR
 3iyQFKyGlNlYJbKeZB+Cf+YAy8cK1W2j2iP2OI14cLYefOM4b+Ft+ZYHSa/GJskED8j8
 mn9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s9PmUKZqxC9fRIsWcH/7WOtACfEVustkzXuA9VIOA/M=;
 b=KBhF6jbyBTZ+/CfcMYWQAPqyAzkKRYiq/Gttzb1DbDUrJ+MmU+A9EDCfNHhAExRJsF
 tCa2FgGx8PJWT17SbMek29Vz3QJFpFsrqnSSwGdukHdfWrpd1UKOS80oeIv+4PHmI6Vm
 59tEZNeRsoahwf6nTzH/laz7arXBAqhEQ1vAZpDalosuxZ/xvhLIas2dUNJEyf5FUiRv
 BZL9Ppc8/WwI4GyQYvdYsHy1WCSz6Cl9BdXMvj8kmopojess+YFcQG5YcFmBi1X7VmBY
 fJ7asw59H6X1mt1WZ3vm6XABwNm1FeOh/t6K44iNqzfEFNILu7kJMWKHoM8xnhsnUphQ
 IZ8w==
X-Gm-Message-State: APjAAAWOWYwC3NExoVDLCibAaULnbohN7XSNcxY2xuUZCwB565gxyZXH
 wrzRWORo6K0bYl0zCKAB6YFHjARUWYg=
X-Google-Smtp-Source: APXvYqxITO+qed7DnPa9uPi2l2b3dznTTHcOGy++Onmc6JGKxNk1sudFUQwZUXhk0+oeMP1dboYUXQ==
X-Received: by 2002:a63:cb47:: with SMTP id m7mr81907673pgi.309.1577844390078; 
 Tue, 31 Dec 2019 18:06:30 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id d23sm56366519pfo.176.2019.12.31.18.06.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:06:29 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:06:27 -0800
Message-Id: <20200101020628.21503-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180633_938816_EDD1F329 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/2] scripts/gen-dependencies.sh: replace
 backticks with $()
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen-dependencies.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen-dependencies.sh b/scripts/gen-dependencies.sh
index 0aa01b78ec..01bb5ac037 100755
--- a/scripts/gen-dependencies.sh
+++ b/scripts/gen-dependencies.sh
@@ -24,8 +24,8 @@ find $TARGETS -type f -a -exec file {} \; | \
   awk '$2 ~ /NEEDED/ && $NF !~ /interpreter/ && $NF ~ /^\[?lib.*\.so/ { gsub(/[\[\]]/, "", $NF); print $NF }' | \
   sort -u
 
-tmp=`mktemp $TMP_DIR/dep.XXXXXXXX`
-for kmod in `find $TARGETS -type f -name \*.ko`; do
+tmp=$(mktemp $TMP_DIR/dep.XXXXXXXX)
+for kmod in $(find $TARGETS -type f -name \*.ko); do
 	$OBJCOPY -O binary -j .modinfo $kmod $tmp
 	sed -e 's,\x00,\n,g' $tmp | \
 		sed -ne '/^depends=.\+/ { s/^depends=//; s/,/.ko\n/g; s/$/.ko/p; q }'
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
