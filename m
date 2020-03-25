Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B321920E1
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 07:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bvdlyWezuzGAhNxFQ5H0J5xBmJ5Zz3s4GVzvu5d+MF8=; b=YJnuFbiHK7GTcg
	MghMEv2005nvqsxnxLCEex979MmQippq55Z5niuWS8q/lCLkf2cAv+uyxFIknioKXhx7NmJQuGchz
	MJpAtZPMK20kN+8BI36ZNMTOxZcAJ4Goa2w+vFqJUn5eIYZRuNSuVQ8NBLvjMePWmlMJHSg0ysT0G
	Mwpjkdn1AAdUyoMAPWjnSqraQw7ro6OKzcwq5FCT4O7lf+FOg+ZgvOnVVcMWdYvXbC9Z3gTRvOxbf
	ZAd5pNdvLUefZLU9qtqHJ6/UIhcbXjvFfzvDja6RKhXnr0KKfv+h3PSJcvBepN5Eoi6wMm8etNXBu
	B8SlqPkTRCe2PotOlHyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGz9j-0008Se-9a; Wed, 25 Mar 2020 06:04:47 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGz9b-0008S8-OQ
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 06:04:41 +0000
Received: by mail-pj1-x1043.google.com with SMTP id np9so579152pjb.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 23:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DwlhhyUBsfPazyfjI3oyKCUOYi9nodXhZsXqeFu8Xak=;
 b=CRTOD9RLw5g0cTBjUCult7OEBV0VmYa/OoJ95ArCM3+E7R4hgER0JMk+UcVGS7F4sj
 ju0SfJWquJi52ZquBwG8EOPnUy3Ncd0KCzEjMr4V9Dck/ycDoap7tfuTBwGLvEHpKFlZ
 2bd+GAZQ7dhZ2spoVRJgeQCX0QE6r2x/Y5vjnanhiqLDJCpF4RRqybg1ASMvdHlw1kaE
 uGzONQkczsOGMTT9SQnkz873apVgqNHk5d4ktsL8DgLl+to20LMyMPXJ7F9Mb98elDsc
 IZytsR/01/ZdICSQZVt7gset/+mgGL7C4a0JKnlH39hs++V402O9Nn2oO6S6yVneTEPh
 B3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DwlhhyUBsfPazyfjI3oyKCUOYi9nodXhZsXqeFu8Xak=;
 b=ZWwI2KP9wX88OBnR+LHC90bZHMJ8kxUbGc/JYz4KKPokiisOWj1XX2UuZIBDAxKPEK
 9mu5DORyM1VLU621EJHFnEcWWqQioo0ljhdq8MFaN+6VDj12FC/opdXdDTo68qMDFfbq
 OCXVBpwGN2l9Ti4nOWXzR06+NXK25U1lig0bT/9YmS5MySVpkw1/UY/4fqB4a1FAWomT
 NO+o0UdGyi6e4CfBU18r27pVoov2MLMrflzDabFbiXPsLI1IRdq9ASV3053ZKyDsx6Ay
 rkwLrDf74hKP5q3FkMjQUlDV8IDtvaFIc2oH6Xsdw3iNMq+4QnrOUDpm6MMbp9/LH+e9
 QqJA==
X-Gm-Message-State: ANhLgQ3yo5hTaWd/jhJyDq1WHHK77KvVqNDIamSbkUnqN2gMWhO0EgwV
 EM947U+Oone4YdWyBJ8EH8VwIymLb6Q=
X-Google-Smtp-Source: ADFU+vs5/LV7hymgIlZGerDgDLaVOEprmtVI/FZ8KDa3nh/gqPFKantRBw6dKKeXqWzTJFmjAky1ow==
X-Received: by 2002:a17:90a:21ac:: with SMTP id
 q41mr1896887pjc.41.1585116274691; 
 Tue, 24 Mar 2020 23:04:34 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id x4sm15707573pgi.76.2020.03.24.23.04.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 23:04:34 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 23:04:32 -0700
Message-Id: <20200325060432.176224-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_230439_820382_160066D1 
X-CRM114-Status: UNSURE (   6.73  )
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] odhcp6c: fix compilation with musl 1.2.0
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

SYS_clock_gettime is gone with musl 1.2.0. Define it to the 64 bit version
as musl 1.2.0 uses a 64-bit time_t.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 src/odhcp6c.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/src/odhcp6c.c b/src/odhcp6c.c
index 19a86f2..6077850 100644
--- a/src/odhcp6c.c
+++ b/src/odhcp6c.c
@@ -44,6 +44,10 @@
 #endif
 #define ARRAY_SEP " ,\t"
 
+#ifndef SYS_clock_gettime
+#define SYS_clock_gettime SYS_clock_gettime64
+#endif
+
 static void sighandler(int signal);
 static int usage(void);
 static int add_opt(const uint16_t code, const uint8_t *data,
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
