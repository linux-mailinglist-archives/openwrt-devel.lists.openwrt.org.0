Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A00814E511
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 22:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Em5cTtaEqfE0fxghCsi3m2GWTS09OTiUjoRfnAZGlX4=; b=ZNcV8Y5gkDOO5b
	SGWHyqYOynCHwFkpH425osmFBWIRF4IPtZrp1GrvFBEKnTqRWLq3X6w8oFYayot+dyY+fF1AuX2MS
	n1YLkbyFU+lOLqNfeRqwvUzT7COFMSAGVwDFUlXm9vvYmejXWN52W8TCFZs1RYCIVe15scW9c8mbY
	BIGKJlfX+ZMnQrV6BBfpT4E6KqZaccN5NeyUv/rH5QQGeAHuT29Lf4hhC0Pt9481Lz8c+vGsNifw8
	a2DgMVRZOaC52eXEnXimjL+kE65jcqWUMcE+q0rM3uqWF9f0OyKjQXW/z5t2RA0TzF0NTY43AdmG1
	CuphC+BCHzluOocZFMZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixHfC-00017M-3w; Thu, 30 Jan 2020 21:47:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixHf6-00016u-GK
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 21:47:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so6002196wre.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Jan 2020 13:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N/+Ek7g9qExaFvSyEonwXPK1+dDZZIkSQp7OUoI5j7Q=;
 b=oG8HXfQEj0I3XLlsVtyHBPq9yOS2pvN3E7djTicGm1Rg/4TWiwZ9sVzRACokQchoFd
 1bsVKk6TO85NhPyvmftwVDHupgECQcPHsDBtR2EGhZJtU/Md17yzVMXzb4dJn8YzGLZO
 4jGTNpSU8oSzVlpnsQvJxaWozpS9K/cPmZjnr3ri1CyqISouJvuXxUmHylbkEaPR6BWX
 v0fLu//x5/c3lmzHTMFiTfunZtVOXKlig6GgaBFx7JbXxAKPnmmvdFy0dw3iuuhqlHZ6
 BWkXTMmyzcmeMrXPyQVDuuxPemY04PXTHD5uwzGBGhozAH8e5jMRrZGSAy2d4OdW3AdD
 gkjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N/+Ek7g9qExaFvSyEonwXPK1+dDZZIkSQp7OUoI5j7Q=;
 b=pFScLmlqG3ZN61sRqgMkmz5UErFPjUnEoI5H/vGH0FDv4l+/p61oxZ729QapFV5cwP
 H0WuhiB9uMK6jZ/JjXxY0QnAwJ10RlstgChxn7CQW8+61fXxvNDwcZPGKvWmGXa1QMn+
 FrQNB4vrb013PLLRr03ybdShzxPGmFsOzRmXrM6/Iz6mXWOqhSO3Tc0MUbavyJ2Ae4ox
 2apTfkFiM4lBhK1og8tQ1yBHgHZyKo5o4PSQDNsk/2RIzNA0QEziSrGRndjjn0HfXInG
 V7b76R6hhj8attoksFcs2l9EluLcpf7pZEJ35c7JQkVQ0s0uT1AYUJ4Xa2hRB/mCAVjo
 xDEg==
X-Gm-Message-State: APjAAAWH75fgtItH4kipeohMHC4fmyTcsenbTBnM6mjp5Va0axMOB52L
 S8vuaJWoVyJWU/syRH7jd3l62AIkZ3gj8uPnC30Rdu+QEXKl9VnmI4an3uHs/NQEeODQ4qVrPTC
 gaHS4eLVeclVHSSrhAQGMsf5oKEzBy272ZofWUQ43G8Co5My3khApfzFSFkgL9Pala48lZpw9MY
 Vhy5m236c/5pM=
X-Google-Smtp-Source: APXvYqxBEYPKjLeaUmu7bNbXSB3W0ZhhgvXtLDE13W6aj1xosgL/nG6D9LpYAEZVCAJbyYAaIbVfzg==
X-Received: by 2002:adf:e88f:: with SMTP id d15mr7382211wrm.186.1580420861954; 
 Thu, 30 Jan 2020 13:47:41 -0800 (PST)
Received: from localhost.localdomain ([188.252.202.221])
 by smtp.googlemail.com with ESMTPSA id y8sm7666433wma.10.2020.01.30.13.47.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 13:47:41 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
X-Google-Original-From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 30 Jan 2020 22:47:29 +0100
Message-Id: <20200130214729.838597-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_134744_600166_C2DE0E31 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] iwinfo: add device id for Qualcomm Atheros
 QCA9990
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
Cc: Robert Marko <robert.marko@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robert.marko@sartura.hr>

Lets add the PCI ID for QCA9990

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 hardware.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/hardware.txt b/hardware.txt
index c1fe8f3..4c6f3fe 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -159,6 +159,7 @@
 0x168c 0x003c 0x168c 0x3223    0      0  "Qualcomm Atheros" "QCA9880"
 0x168c 0x003c 0x1a56 0x1420    0      0  "Qualcomm Atheros" "QCA9862"
 0x168c 0x003c 0x19b6 0xd03c    0      0  "Mikrotik" "R11e-5HacT"
+0x168c 0x0040 0x168c 0x0002    0      0  "Qualcomm Atheros" "QCA9990"
 0x168c 0x0046 0x168c 0xcafe    0      0  "Qualcomm Atheros" "QCA9984"
 0x168c 0x0050 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9887"
 0x168c 0x0056 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9886"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
