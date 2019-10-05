Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FD9CC951
	for <lists+openwrt-devel@lfdr.de>; Sat,  5 Oct 2019 12:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C9cApCc2xTJRAKrF4kJdkaOzQlStYWG68UAS5+wqrY4=; b=cIKcpYSN004AZX
	6AdZBLZoG64SXFq0Ur8L+BoQKA0UmxW5+NouJ0jiUbhNIT/eaqC7hwYgoMoo2W3o/0jPrCMw4Zsvh
	CnurrTUsZjpF2z2ndb2TMGzjsVLTO5vXmEc0znV0Yv8Y9Tvjb4+u87zNPz2KRFDB/bBUSbZbaVzg3
	j1PFnUJfs2UsjFI43vrSUNXy+iT7vuNgJlWLKmvzVkG950DDjqzVPsv0XrP6FbHNYDDlqpZ/6x7C6
	cb3cJGI2V8yz+y0fDiusYBJDVGLQKS/wnYEC7qpcYNPc5rYfICwe9DsPAykC4KkAK6IuqFF3yzuMS
	tXded55uwGh0VMShpiGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGh7N-0007AR-1A; Sat, 05 Oct 2019 10:16:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGh7E-00079Z-G3
 for openwrt-devel@lists.openwrt.org; Sat, 05 Oct 2019 10:16:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id q7so5182134pgi.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 05 Oct 2019 03:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Jigh0VKlD5aUeU9Mh6m4irxtK07Ufli598NKFgZ7iYA=;
 b=nkewq7xyXw0fzllWuc/zXQzONp9PC3sPGe2Mh8Jo8MFzqP0L0sdsx8REZnvkgUNOH4
 CINNh1bF5g3ijZbtC4FVvmt0IO+sUI5DYado9s3Xy2C5e3ltetJzjcz3Zc+MqOMXmFEk
 kSdWJJIzu+RPUkaO+HgHFHQOQm0D/AP0YrMjipR6B4gzq26QKF2PcB3Aj3amICnRJRbU
 cQsqIA/A0nfEyWNiJc6gqas1wUZcE43h7+5Z82BB+wbT5C2QhhMnMdDJetn4wxXqma3o
 ad/HJmL4Pd858ZpqCftAXqzODA0+sKmrcLTb1j02BIRReKBJm+BLF9K9HHWmHilq05nu
 T5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Jigh0VKlD5aUeU9Mh6m4irxtK07Ufli598NKFgZ7iYA=;
 b=mEpqYfmRkO5UlmzXo98b2eUumXfnykcpF8Y9ENJheUkr1xWk1W1I2bhhERNK2Y26ju
 Tl7EZoM0zkMvzuQvLhddqGxg4hrdJPjgeFuIDEJSQtFFamFoWenm9LP/4hJdee1+v9/y
 YfLxDMDzn3umGVW9Ueekx9r4bE/X7nNToG/YYWS6Q7Q9EaFU6apPmvgEhWiAsccGfkuM
 kO+GseCJG79yTEECnwulh6mZmj6toYi0TJRG1S6Zg66l/G+haMdAUpeuy1VeK63zhjKe
 Q9K5EaMo5xexVJYejmLeGSS2L0yuhWri2/YsF+mX9WhVH3BKXMobMcihkmLc9Zf3Tdpl
 ZiOA==
X-Gm-Message-State: APjAAAVojegYbpprhrNsAnQcADzvfUPCNpacRCPb4Qv3e3m12iYTsK+r
 JizvXCpAfEz7E7QCFv5aNVwde7uJDB8=
X-Google-Smtp-Source: APXvYqwRXhQlRmXoh/S7adHpICZC114AEkCA/ULxmKgmkL7Q4RSJVrOeH9PtEIQ+Lpero/vMt3gxnw==
X-Received: by 2002:a17:90a:cf0c:: with SMTP id
 h12mr21341268pju.110.1570270601615; 
 Sat, 05 Oct 2019 03:16:41 -0700 (PDT)
Received: from localhost.localdomain ([149.248.38.231])
 by smtp.gmail.com with ESMTPSA id s73sm7623771pjb.15.2019.10.05.03.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 05 Oct 2019 03:16:41 -0700 (PDT)
From: zhouruixi@gmail.com
To: openwrt-devel@lists.openwrt.org
Date: Sat,  5 Oct 2019 18:16:33 +0800
Message-Id: <20191005101633.6649-1-zhouruixi@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_031644_535855_0E0B5A27 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhouruixi[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] NFSD: add dependency kmod-crypto-arc4 for
 kmod-fs-nfs-common-rpcsec
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
Cc: Ruixi Zhou <zhouruixi@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Ruixi Zhou <zhouruixi@gmail.com>

crypto-arc4 move into a module with commit c3a78955f34a61d402044f357f54f21c75a19ff9,
fs-nfs-common-rpcsec compile error without arc4 support.

Ref: https://github.com/openwrt/packages/issues/9912

Signed-off-by: Ruixi Zhou <zhouruixi@gmail.com>
---
 package/kernel/linux/modules/fs.mk | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/kernel/linux/modules/fs.mk b/package/kernel/linux/modules/fs.mk
index 47170058b2..3ffe82cbe8 100644
--- a/package/kernel/linux/modules/fs.mk
+++ b/package/kernel/linux/modules/fs.mk
@@ -389,7 +389,8 @@ define KernelPackage/fs-nfs-common-rpcsec
 	+kmod-crypto-md5 \
 	+kmod-crypto-sha1 \
 	+kmod-crypto-hmac \
-	+kmod-crypto-ecb
+	+kmod-crypto-ecb \
+	+kmod-crypto-arc4
   KCONFIG:= \
 	CONFIG_SUNRPC_GSS \
 	CONFIG_RPCSEC_GSS_KRB5
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
