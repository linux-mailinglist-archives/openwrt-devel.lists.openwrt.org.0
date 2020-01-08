Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AA813479A
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 17:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GP2SDtD5RcJnyEyoG68IgtR3jBSuepxMkUI5+dO1qrc=; b=axGPJJu0qFN0fy
	tviC+gjOVOBpko7wvBmQWGkFbXH6YOjTnvoncmHEfmWI/W0zbb4S4HcXpVh3HtwRu828XcufjBILZ
	JB9+V0bkLJigMDKH1k4/t+nloDUtlJVZn1WYnAPi046sAvxJHKGZLKQCqI6VqhD8KSxMEPkZ+N/h8
	czm2if+u3whIrmf8gHpu+5HZm3Qp624CBc3VwGz4wNeGa1thEZDHTfvHWSO72LUO8TwVhe5CDWcK2
	uUTizD4WE5qdq+dosNs+AVUNZci78BElqpzqg2M0BFFelcAHw5pPFqWq8aSKG4n8HQ0con6E+MLCg
	V3Vu+uyJex2wlaJ5Ns2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipE5V-0000VL-Hz; Wed, 08 Jan 2020 16:21:41 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipE5N-0000Ut-KI
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 16:21:34 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t101so1299930pjb.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 08:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R+IXCk5V0i0Yi9TFxygmH/LguPr9loQSfZGOP3plcJg=;
 b=LPXdT/in96QPVu4YZHnYjmSNqptnupybT6zqQeQ8iAJQxuNAH4cgeQUv8gvzeIX0E4
 wAQeMbbydmHk1FFgS1CIT5Jy3CcNOdIblbHerRT8BEZzUEKrjdiu/zK0CvpvgCk8AWcz
 xp65KZXMHVoje7XsGQe5zk/iB2egs2Llz7qFA5nkD9P4XL8mnD5NLaFDcwRXg+PhlYt4
 MBhb0ClK+9h50RoQnz0UqXOEnc2sjvDd7fLOAyaLIekzJDoly+8kHeYk/lgslitWqbT8
 uHwlM4l1VmvsgjsmgIEOdd2p6Yamwh0ZvFiVVo5/wej+O009BM/rsf6A7Kivtn6cVGpb
 d5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R+IXCk5V0i0Yi9TFxygmH/LguPr9loQSfZGOP3plcJg=;
 b=k1N3R1+/ZjnHNOJqksHBCIX0NUaElkzs7agVg5FpD6+84m6ZyelSR2pQ5kOSki59z4
 gVd3Nr8pRr9cLtRL9Y/hvbTc+MUxqvi1DZ4hEyOnwzNykaFaCmo+cSN+ZkqAS/siba3U
 FPVOqHum7SvUE8nO8kcbFmKiVjjK9+81IP3rdDUgvtlH3ky7oqBx4g11MbzOWof2zOYN
 s4ps/nAk6uhdiBd3NawNwgQI7Psex5T7uwqDXMIukHP+k311w3c4b/LGhQUKZ+x+rcB5
 vFRZJTMOcDc5h1XUspzuTXAxkEsJiKm1835d3SNgFATf7nF/CCM3lnhiEk3TT38/R9p4
 PCFg==
X-Gm-Message-State: APjAAAW3B7ftO3FUIotAIzlhZWHwuSB5EfQN6YmjJ/pbwAaUOkJqcNHC
 /7wnlW8eKlSjx6Pm8vlRyTWfwxMgeTSz/g==
X-Google-Smtp-Source: APXvYqyk31OgjXFeU9IjzwgV7n7dGcpjOKqAkKolAUo/i7M7PcE01QwDJR9AFwRfEeIoGoWF7OhN4A==
X-Received: by 2002:a17:90a:4d02:: with SMTP id
 c2mr5239497pjg.94.1578500492218; 
 Wed, 08 Jan 2020 08:21:32 -0800 (PST)
Received: from localhost.localdomain ([240e:379:975:79::fa3])
 by smtp.gmail.com with ESMTPSA id v9sm4300375pfi.37.2020.01.08.08.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:21:31 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Jan 2020 00:20:43 +0800
Message-Id: <20200108162043.2553391-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_082133_666963_232CE343 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: gl-ar750s: reduce kernel size to 2M
 in image Makefile
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
Cc: Jeff Kletsky <git-commits@allycomm.com>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

u-boot splits nand factory firmware at 2M offset, flash the first
part as kernel into spi nor and the other part as ubi into nand
flash. With previous commit increasing kernel size to 4M, generated
factory firmware is broken because ubi is at 4M offset.

This commit reduces kernel size definition to 2M in image Makefile,
producing proper factory image. Partition size in dts is kept
unchanged so that sysupgrade to a firmware with 2M+ kernel still
works.

Fixes: b496a2294c ("ath79: GL-AR750S: provide NAND support; increase kernel to 4 MB")
Reported-by: Jeff Kletsky <git-commits@allycomm.com>
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 target/linux/ath79/image/nand.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index c6a1441ed9..cc775d52b6 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -82,7 +82,7 @@ define Device/glinet_gl-ar750s-common
   DEVICE_MODEL := GL-AR750S
   DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb2 \
 	kmod-usb-storage block-mount
-  KERNEL_SIZE := 4096k
+  KERNEL_SIZE := 2048k
   IMAGE_SIZE := 16000k
   PAGESIZE := 2048
   VID_HDR_OFFSET := 2048
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
