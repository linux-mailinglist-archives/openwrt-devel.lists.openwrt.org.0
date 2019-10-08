Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3A5CF024
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qL87U5V3HPw5i7nH27yF1sNF/S9rLor8O0Uh4m6i3NM=; b=d1h36HjO31jA55moAgE6hf+TAo
	UYH9LPGAmLwHBxqnBosJk7IVtgLIaXe+ihOD0ILDNQZUlopClO4dIpeB5hnoSnewvab9oEKks+89F
	um1kSST2aCrf8mx7iRPVjpqTTLDYHEeXviKPUPv+Km1qFQGc6BLJP662g384P1s68Zr3ngqCfDRdt
	4aX1608Yj/x/AJPNsipte9U7paW63xPIHJXHNqWog8VTDQiVDtgG9pqpYuOiT6BJWhrsmBtxg6TSl
	n6CZSQj72DIDDwIJcDGHir8esO7/7+g/VkMcpxjuhd/qmxrBcnY8vjUqIxb9psFNt5XBzU19ZS9pt
	76PrWclA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHduj-0006wY-9l; Tue, 08 Oct 2019 01:03:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtZ-0005mo-Mj
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so9790544pfl.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=AdDKINR2WMY6kHz3IxEDSNGQrQBAX4T451uo+JB+stg=;
 b=kgqHBk8JBuo+oXS3IFYe0v7iSjaWOW3uhVDIg8ys+H+CJQWyGacyQ4s5mQnO9KmX7u
 vUwXVofvZGpnFnvy7KgXMrW8hfd6Eu6tlL5qxfE4FE5ozaulrqxo+fO0TFnCa6s2B3WC
 x9OTVzSxiTyrk3PGADDTiY1oFS9h3Q0bCqIfgM9LRE5ZdfuClUTwqx3LUequsl3YFDHR
 nqPeYr6RvA2rZaZD9gycDHNDdsypF0kOfW/NofR6aEJ4liqov7p1Cl2IGvxFTLjPl02y
 9RuQnER3WWtuW2nBz6nlm2AsisOOr7Ze77eZ8Un7VLneR6XjM/suZbc/UILjVWkt/gt+
 VJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=AdDKINR2WMY6kHz3IxEDSNGQrQBAX4T451uo+JB+stg=;
 b=rHVLvx8mZirbIXTonlscMXtAJr+EJ4HOr6BdfonHEaqMuFpf2lqeJXWBofj16pOc3r
 zNY24BLlNcSsdS04WuD0REn1BPN7iHHhiOwGFT4fK1ScBuKyagIdBenEp3OBliftLKGM
 S64C4sLjuZb/pyQDLTEF1iiaLK2ofmc7nYRj8afayGqCboEtj76mD7fcxIVYGQeJ1tHE
 UWKtqDe0A/ul/ezwMDlLaSns/pKG364X9Tnn87U7s8SIEtfVFLv8o8R9XZFTknKnWvga
 CdHVmACu6MI5/wV8gif66YdjRHfZzzYE35pyGKnvnMwBkmQ2c5W4I2f0ijbs8I1Ufyq+
 gQBg==
X-Gm-Message-State: APjAAAUyLIOGPNwLJ4+uW74u3x9DRlMsmVemrOHQfFdEF8xOvDZ/OIJg
 CgHAatjz+LBZsXWbrcqveVmg7suI
X-Google-Smtp-Source: APXvYqytGtAgwScZNrDtURHQ2VYv2IKZ6MiGS/oxz8pOJyT1gb7rDJJ6P0RpekKWTxEQaU3K8RKceQ==
X-Received: by 2002:a17:90a:65c8:: with SMTP id
 i8mr2407182pjs.51.1570496552890; 
 Mon, 07 Oct 2019 18:02:32 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:32 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:23 -0700
Message-Id: <20191008010225.8822-6-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
References: <20191008010225.8822-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180233_736894_AB70ED74 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 6/8] tools/firmware-utils: add cygwin
 compatibility
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alexey Loukianov <lx2@lexa2.ru>

This patches mkheader_gemtek.c to handle endiannes on CYGWIN
hosts the same way it is handled on Linux.

Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/firmware-utils/src/mkheader_gemtek.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/firmware-utils/src/mkheader_gemtek.c b/tools/firmware-utils/src/mkheader_gemtek.c
index 9e618efbad..65c41322d1 100644
--- a/tools/firmware-utils/src/mkheader_gemtek.c
+++ b/tools/firmware-utils/src/mkheader_gemtek.c
@@ -46,7 +46,7 @@
 # include <libkern/OSByteOrder.h>
 # define le32 OSSwapHostToLittleInt32
 #else
-# if defined(__linux__)
+# if (defined(__linux__) || defined(__CYGWIN__))
 #  include <endian.h>
 #  if __BYTE_ORDER == __BIG_ENDIAN
 #   define CPU_BIG_ENDIAN
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
