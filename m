Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC93212D5C0
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1790Cf2qOVuKL9qQlC39VDIaeCgjnRdRGvuZMwdOgCQ=; b=uaLWr2AnFyFGhk
	D3UyYTatzvzjcsKtgpliwmwhnqA3r27SiQ72S2+dkH6AUGiWe8asExjwlwktfOUyE+MyjbIKTPxFV
	05lhb7KIK9iCPApYnbQYSCPrm6pOSG1XAHCPKxQB4LDmDVnIqXTJqmWyxNYmiE+kmVUTqRz9nw//C
	HlvLq2KNzZDuFiIGE8DiyVmmH2S4zPyfThWQAM6fh3ujRt5YQg/fjlRMEaObTD4U/0m3n39BOvUei
	m3z2EvUkVnrWqe1iPemxh9CADglD+HMoCtKjWlpozDbLkdBhK7+QsfssVrkpfAkrRraVwF0N5tzhN
	FjpCS9YWcUHSdoglZfcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im7AR-000653-Uu; Tue, 31 Dec 2019 02:21:55 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im7AH-00063z-07
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:21:46 +0000
Received: by mail-pl1-x62c.google.com with SMTP id x17so15358971pln.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OKlrf0YqUfvSRLlNYwiFtX8+0+y4bzLqMjTBgArUqhQ=;
 b=QkvJFeiFyTz2PF7sto2PohAvXScic+R4xvy3rQcZrMO74csdon24DthBX2Tbnzd+qR
 Cu4AVmcpXSc6jFFzKAGAajxN2Alpclo5QjowxcAdYw+MVbSYw5/wkiRMTT5nDrUSvJMW
 q7Z3HObTt7vgo/D41t4MG3mvWz13DuEMsndLisSLQV3zdj6lcR3Mgit2mRpqdBUoN+HZ
 tI2lDefUkiShGOTtjLCGnWxhUYQs2CfHjsP4g9FO3jexCim0b5RbVH/zcLQDlbtNqphR
 Q5EzjYdZAn4phFhq7kgGx7JNjWxlY/exj/r/8LcVfRlC4bLe2ULzOS9KO59sTmJlb4KA
 hZeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OKlrf0YqUfvSRLlNYwiFtX8+0+y4bzLqMjTBgArUqhQ=;
 b=hiGV7ZxRWBlu4RKEW8cNLc4SVsL3ky0QoxMWX/1dZ1K2YIrhduj8X5cr/3m1MZdjWQ
 ko6y8OMClluOYEUhmpQgOGhfruniBCctb80RBrka25tO+HXPebLsj8pWwvtZCQ5iegdM
 keB3qSiXZYgwXLhzmQ1O+zSPv+0aetreifDBevaRh8ejyUeHiVJ+VsyGAxSfd3HhF11m
 GUtEzi9Yj+nbmCsQD44wib7ZJMSfKXbKs0v9ehxiX22usEvlkkMpbVmO3tG8C1w2SpBP
 8lHWHLVgFQvf9kJznQ8R5uLvpLSUqk4fPI6wvS0luI4RDeKdmNTcHwWYL1GrcWX1tk9R
 x5Uw==
X-Gm-Message-State: APjAAAWRnpsDbHy8otwVNxgObRo1hI9POpz4WC+CjTBQhqkoOlV2y0OO
 4lGCijVElQ1oa0oVTlphMR0WXBLSLac=
X-Google-Smtp-Source: APXvYqxqC7pcrUoponHz3t81B2GM5TNBCEJPz2mUlRIByB4dPnWLWIuJRFKEIxJdUBR8m7uZshTSnQ==
X-Received: by 2002:a17:902:8503:: with SMTP id
 bj3mr70480020plb.180.1577758903040; 
 Mon, 30 Dec 2019 18:21:43 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k1sm908587pjl.21.2019.12.30.18.21.42
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:21:42 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:21:36 -0800
Message-Id: <20191231022140.48222-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_182145_065618_C432ED83 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/5] scripts/mkits.sh: Replace legacy ``
 with $()
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
 scripts/mkits.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index 93c8cedaed..32a978e18d 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -15,7 +15,7 @@
 #
 
 usage() {
-	echo "Usage: `basename $0` -A arch -C comp -a addr -e entry" \
+	echo "Usage: $(basename $0) -A arch -C comp -a addr -e entry" \
 		"-v version -k kernel [-D name -d dtb] -o its_file"
 	echo -e "\t-A ==> set architecture to 'arch'"
 	echo -e "\t-C ==> set compression type 'comp'"
@@ -55,7 +55,7 @@ if [ -z "${ARCH}" ] || [ -z "${COMPRESS}" ] || [ -z "${LOAD_ADDR}" ] || \
 	usage
 fi
 
-ARCH_UPPER=`echo $ARCH | tr '[:lower:]' '[:upper:]'`
+ARCH_UPPER=$(echo $ARCH | tr '[:lower:]' '[:upper:]')
 
 # Conditionally create fdt information
 if [ -n "${DTB}" ]; then
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
