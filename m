Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECA61F66E
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 16:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jbV5yl1pAWntYPIGze2XSZFxj+26IMjCVFto5O1a75I=; b=ZerRN56P6fWx4Z
	qBuwSWeXWZNh8UaI8NCYh311dNbUytMLYdRlYr6nFmy6YREVdx3sd6bV+IYOAyJbF9x6WSJGi//in
	uG5YgVlfFZtIVm0Cr8/g6NA1B0cBfv52SdaYO1SpltSfz+lHGOX3NNtgti8z1luB6DHo2owssItBb
	j8IKD/ncslm/WHTm1cYqCbGsQdP60mxbUcMLdaDPgSmD4V9qKBnF8LPobLdpE7f7cczEQ31TnwByV
	ErCAIRpNgYld0P3e/eBIxrj3zREgXzkmhx+6XDFKmM9AnnSkm03xxLOZjKY5KeOsFzziP7iqEI41g
	CE7vkTH4CzQiw0C/9QqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQulk-0006LX-Ao; Wed, 15 May 2019 14:20:32 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQulb-0006IX-6c
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 14:20:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id b76so61061pfb.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 07:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9zTFe2B9kfIT/RgHM6PwQndUSKJi8O59747n2/kl/2g=;
 b=XDpQ2aWdZs2SU27Ckr4lXzlxd8UzzLwQA3xAs2zP71nC+RP384CYRXYJg8aEDWzqtL
 L1IDSCxUh+G9dO16ycnCazaRQ/CtS6W9xG/NZupuvUt7DvrdMTgfocfEwg2zueu/9k83
 wratIPenbUj1983k6gJm2GV0ygKkZE9Bpy4fJ6bop7pDUKixJ9k1yuAJXuma3cBZgZii
 5C56sX9dyEwvGX+RyjwOQzCUQHs2taULBBsIeUYfl2qcASApbNLBHcyRkVP7eV+RB+gt
 Er+3HOXCO9ho7unm87XIoodc9O4Sg3KlFIbqhNwCPFLCIKhCBdF3c7SxgqQmzCxUpkTm
 TY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9zTFe2B9kfIT/RgHM6PwQndUSKJi8O59747n2/kl/2g=;
 b=mRcrNV03IXnDcPKMRs/3JkxqVnRuhRVfgVQqjLObKbtNCiJlhCL+3tE/ty0LjAkTxR
 fU16coQuVWj2RIO3sXbAqyPFvqTAgcfB1fJZBFtIu/QerlZ/+8O8rUa9mjLFXI4IgGFV
 qK1iRKleVJ3zabvD7Vslf7e/hb9tsoYMWK+24iTuBCJ4tbaBGkOyeUaTH1ngGDxv1n4V
 h3Z816eF2jKx1f8dTj0w3ZXa+de/yZHQK+myjmDS9r/GqY2g9940A3clpJFYpqFebASE
 2Sj+w11ga7LeLpv04A/GupjuR8ElvKhD8ZhfZXUUmnV+iGS9Faf3FajWxDZyWZmROabj
 hcAw==
X-Gm-Message-State: APjAAAXrx2TqrZsgdtoY2F6Pyd0RU2M6vdN/SsSG2fEgYxsvkHIZsUyn
 7e8FIvnQfkLKJX9SO2YzfEjvP1e+
X-Google-Smtp-Source: APXvYqzurwaMDLvGF2O9GhCksEdI3ef83OGcC9uzK9GsNw1nyUqGyqnKMvcrq6+qLzvjnF/61WtRZA==
X-Received: by 2002:a62:7a8f:: with SMTP id
 v137mr47629940pfc.243.1557930022124; 
 Wed, 15 May 2019 07:20:22 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id d15sm3559021pfr.179.2019.05.15.07.20.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 07:20:21 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 May 2019 22:20:17 +0800
Message-Id: <20190515142017.27290-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_072023_260493_BF521672 
X-CRM114-Status: UNSURE (   8.77  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] build: fix STAGING_DIR cleaning when
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
v2: use ksh93 syntax

 scripts/clean-package.sh | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index e580566a52..6dd9bf7306 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -1,4 +1,5 @@
 #!/usr/bin/env bash
+IFS=$'\n'
 [ -n "$1" -a -n "$2" ] || {
 	echo "Usage: $0 <file> <directory>"
 	exit 1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
