Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7EE18A286
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 19:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QXe9vSSq7YxZHbQxJc75GtdzBn2tgmcAcW6auj+u1bw=; b=e1OJcoK8VrcyhP
	HUVeYe5Gp/46lA3+8YFh/0dkYWf3fUTFaaKJVwuefYpCRydW5TcQtJRm+GOUMsiQ0bFZvPTpcyVxv
	6XI5OGKf0exZbKkpWTreBxSrKZiZrZG/loXjjzUwRN6likZi3k7qb6DPLUbIjEAMJD8lhTJiTNpCc
	Ji8fuaQqYl4fhUAUscnu5uoWFUsQjEWb6nwVIG6ZqJM3Dy2np5oAe8/CAkmcyZyMIKou/9fa7Ow/J
	ErTJHan88a5ftJImFtVIWMUgcfyTND7y381UYlZfcGVzNJS9IOnrpskkgwqJxrOR2sgiNumF4x1l7
	dOLh1ue0ybdB6zCCtl9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdc0-0005C0-Io; Wed, 18 Mar 2020 18:40:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdbj-00056p-MG
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 18:40:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id m3so4606865wmi.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 11:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clKceI34jnf3Jh1b+esUfpvPuXQkeisu5A2qK6U4E5Y=;
 b=Es8eROJuNrI4AhHRRPUXEWRzYHGEgNZYx3yi0oFOQk4OMYs6O3kgyVIkg/wtlsFlpo
 5EmX0lHEvf1sigFLLALUn4AAHfr+bHMG3lOBkSpzGFJe8vAlqwXz3IOarev6e9DR3+qw
 OnIctbuAYgU5Jzs5juYZPFwbJtIo0U+20McEN5aSy1skhBfjz2oMFgDSctWY87DHUe98
 IcCIQkFFg5tAYHsqo0bt85tnh5G8AXIhLfT2P8HTRsRvxfJsO84dOOgkCG14gue2tNVe
 uMywN44A3eWNWNIKx7YjHOOM4kVxueucrnz5hd9BVcS6lnBsrISEJmJHKkoLI7FLNXij
 DH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clKceI34jnf3Jh1b+esUfpvPuXQkeisu5A2qK6U4E5Y=;
 b=GS6TvZ1ZVHtODnRDgJKsFYU1gmeZyhoDLG6CvjtqlONRqIAgMZP0uQIYWQSvwJKneU
 UzU8apuw7E0bAFTPch9eTYDkN/DU1ww9vxZ24kBd8xvFTjS4j6fKvTzPgZzTbBhSCnRU
 +12+h0KE5OGpmrf2WVLpcrVNI1N0tIeYYcRTJEl+X9rmPH31jRCNg4r/PMDdfKkK1a0x
 wnZMCgxsHAeTp4f4pu/y60Qri7TPhrc5JWKStzS5tZy8ACYE0AJIzDyIq858wogls0bt
 /vMKgMmUHuYBG9OV6wCo9IrS6hSrmVckA6gdkdvS9UiMKSMZWIIgPIUmsVdWTleCGKKi
 GCyg==
X-Gm-Message-State: ANhLgQ3bNzhLP3Hzqx5vazEDb3NjUVmQpnh9Sg4ncSQbAEvhfjBbnuj0
 j0Z4sJe635dYEKznsrcFSQ5DJ4nyl/gNqgwaXTcsqcqlw1Bw07QPZW4Z6WlJpi5t4Oq08OWrId9
 MMTjHvr3MXxEx6XufoWu6n5HmLbf2aX7KO4nPLOmPeW8l/WZodMkau27ALfQm/RUAoqjrQQZJQj
 8pUm1sLDVT
X-Google-Smtp-Source: ADFU+vvqAGgcp5DtwxMTAWnk7w4+By6NTLo5GSgGZ1nrbR+DDJkWJ4kjZcD+UUUQVcVuLYXkIlYOBQ==
X-Received: by 2002:a7b:c0cf:: with SMTP id s15mr6889656wmh.106.1584556797061; 
 Wed, 18 Mar 2020 11:39:57 -0700 (PDT)
Received: from localhost.localdomain (dh207-97-24.xnet.hr. [88.207.97.24])
 by smtp.googlemail.com with ESMTPSA id q4sm2266526wmj.1.2020.03.18.11.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 11:39:56 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
X-Google-Original-From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 19:39:43 +0100
Message-Id: <20200318183943.529630-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_113959_870050_01C59419 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] build: add GCC 10 version detection
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

Lets add GCC 10 detection to the build system as distributions like Fedora 32 have started shipping with it.
Some tools like mtd-utils need work to compile under GCC10, but that will be next step.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 include/prereq-build.mk | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/include/prereq-build.mk b/include/prereq-build.mk
index 19904853f1..156b3f3722 100644
--- a/include/prereq-build.mk
+++ b/include/prereq-build.mk
@@ -28,8 +28,8 @@ $(eval $(call TestHostCommand,proper-umask, \
 
 $(eval $(call SetupHostCommand,gcc, \
 	Please install the GNU C Compiler (gcc) 4.8 or later, \
-	$(CC) -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?)', \
-	gcc -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?)', \
+	$(CC) -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?|10\.?)', \
+	gcc -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?|10\.?)', \
 	gcc48 --version | grep gcc, \
 	gcc49 --version | grep gcc, \
 	gcc5 --version | grep gcc, \
@@ -37,6 +37,7 @@ $(eval $(call SetupHostCommand,gcc, \
 	gcc7 --version | grep gcc, \
 	gcc8 --version | grep gcc, \
 	gcc9 --version | grep gcc, \
+	gcc10 --version | grep gcc, \
 	gcc --version | grep -E 'Apple.(LLVM|clang)' ))
 
 $(eval $(call TestHostCommand,working-gcc, \
@@ -47,8 +48,8 @@ $(eval $(call TestHostCommand,working-gcc, \
 
 $(eval $(call SetupHostCommand,g++, \
 	Please install the GNU C++ Compiler (g++) 4.8 or later, \
-	$(CXX) -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?)', \
-	g++ -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?)', \
+	$(CXX) -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?|10\.?)', \
+	g++ -dumpversion | grep -E '^(4\.[8-9]|[5-9]\.?|10\.?)', \
 	g++48 --version | grep g++, \
 	g++49 --version | grep g++, \
 	g++5 --version | grep g++, \
@@ -56,6 +57,7 @@ $(eval $(call SetupHostCommand,g++, \
 	g++7 --version | grep g++, \
 	g++8 --version | grep g++, \
 	g++9 --version | grep g++, \
+	g++10 --version | grep g++, \
 	g++ --version | grep -E 'Apple.(LLVM|clang)' ))
 
 $(eval $(call TestHostCommand,working-g++, \
-- 
2.26.0.rc2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
