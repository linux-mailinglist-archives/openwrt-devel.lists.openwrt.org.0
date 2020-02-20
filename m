Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F4C1655CD
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 04:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wiQAfF0AUnbpEmYvFqx8tjrJ85BbasqHfHeLi5RE2RI=; b=FISNQkSWwTsGpp
	q6/wqPtxIUMvY81b+2JzofTNHZVpuVGKGCg/M7F44U8LYPPtlAs3cqf+Yq45FEh+bn04Phrq6Es4d
	NjBj5UcaXIu70ki/ChXSjXBgAS1a4mAMR2sIpiOjEOTO9KLi52svgqQKW4rhSAOwIbA0PGRW6PFfY
	xs2EChdBONyy/amOtAgnN7aQbqu9g5VQsaBo/sli2t+3/KyVOzHu8L56U03jVkcMFJPYKCzyAO3kj
	5D+a3HNQN7EsCbe+KL9OZSed+h439NIL6NBc0PW9j1kAntkME9viAcmlVrU0XM8/2VBRQbkFu7YC9
	XFUvFEwvuQw6ZgU8DAFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ckW-0000Gj-FE; Thu, 20 Feb 2020 03:43:40 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ckP-0000GL-Ml
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 03:43:34 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q39so296102pjc.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Feb 2020 19:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pNUhsldaem8N8x+pkqml4zm90oTfQu99ZBALGa3aCYw=;
 b=Y31ZEIx7qc/W3x+aco8axba92Xf6mSl/QyPc7/QivUwx9hSgzQigidIuQGaEYjRWTM
 A5rFxJN12LjRyoabIEU5g24o6klVawQ9KXwrLMHL6mzPnrB9PCTQc/syXLNF4y2GCD2v
 GEtDgwJ2SalW8JAe/ZW+GfayFgvh44Wh7mhwHhbCHj9rMXWEt+tFu4rWWREhIkfo7lSG
 cIMWDD+4Gpbjxn/3IF/Hew2nr9ZvcWWYmHh3oT/M3m45iaamDSw/FzFTerdxy72HeoMP
 AWmGd18Z11zgk2wwzvGMfP8j2Ybv9auVMTA1nzA4CHdCR2ROV9S+XT2P+ShfiRdSoZMk
 PBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pNUhsldaem8N8x+pkqml4zm90oTfQu99ZBALGa3aCYw=;
 b=deivO7AfyPDbHoOQDgmEruKfX6lQgm2gy70lPBPUYP+Fza04enlo/VIqe8rVwdU5Nc
 Ob+poPNAG9Gg7Kw4gLak33ZlBP+yxZxIdmgmVEqPSxUdvChjO+DPJnD8y/KS/awvMWbU
 SXw/b8hE2Fx5tlUgcm0IkQ4ur8vD5pTY4p0NL8qlwXSB6DT8vxlJxzgg5mqq/cL1R2qr
 eOwKBcxrjU2GgTXZ88zmYLxxZRsFcUfh3jv5jiocaSY5b+YunviyVYFNwZBf2EJG061R
 6VLxwamOFhMaEn3us4iutnVjpQSFLURcmhovmwuji3hkfoMMY/GeFbfMP+pO9ZeYezce
 ctqw==
X-Gm-Message-State: APjAAAV7dFhX9e/rPEuDm4GCEr/ZAJxLoNa2fNPfKLjJilUUrZ2H+tZC
 RwzTi6Tae3he/b77sx4gfMQIbReK78U=
X-Google-Smtp-Source: APXvYqw+kLQS+kDy50LnbYgtXwNr+VOdrIubFhw7Nik8VRlrMRkGWVXH+l8a4v0gxq95VDeoWvc5jQ==
X-Received: by 2002:a17:90a:ead7:: with SMTP id
 ev23mr1121516pjb.139.1582170212703; 
 Wed, 19 Feb 2020 19:43:32 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c19sm1192226pgh.8.2020.02.19.19.43.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 19:43:32 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Feb 2020 19:43:31 -0800
Message-Id: <20200220034331.472229-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_194333_747310_351945EC 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] netifd: install binary from ipkg-install
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

This works with CMAKE_BINARY_SUBDIR.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/config/netifd/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/config/netifd/Makefile b/package/network/config/netifd/Makefile
index 8a1bab8c44..29fd517e93 100644
--- a/package/network/config/netifd/Makefile
+++ b/package/network/config/netifd/Makefile
@@ -38,7 +38,7 @@ CMAKE_OPTIONS += \
 
 define Package/netifd/install
 	$(INSTALL_DIR) $(1)/sbin
-	$(INSTALL_BIN) $(PKG_BUILD_DIR)/netifd $(1)/sbin/
+	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/netifd $(1)/sbin/
 	$(CP) ./files/* $(1)/
 	$(CP) $(PKG_BUILD_DIR)/scripts/* $(1)/lib/netifd/
 endef
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
