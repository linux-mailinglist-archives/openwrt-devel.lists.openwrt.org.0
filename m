Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C583A1933D3
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 23:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nh5LLRjIyDm9osUYwE0EVaN00MdDEu4k1cUZuOKCsjk=; b=CdDfDf9zuGwXc6
	pnv31cVYQS6R517I4odQDcH0MkH40mDBXDQ/6Fc8OLidGkvS0Tit4EyGN+FYq16V+zLX95hLFiK2k
	ul8jm+28I3qIxR02WkVcmJZU83XzqBfrBOple1TV7+L6WPN3FnA8cKhapuVNMgPum2U2Znz+YRPsU
	VXzk7iYUgzYncFXwfsmRfsAzQaVkVNlnNuRe2rOYdlNRmuKhjvWJzF6j9tBQ/NH3fpcnrfggoJc4K
	RvjvF0wlQGPtx23z3g/rGnOZDboyq01ATbFirCKxa/m8VBnG8MPA3keTp1MGfrwSCdMpgKM6kRhYy
	xrH3p2v2t1ghk81tIOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHEiO-0000mf-AT; Wed, 25 Mar 2020 22:41:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHEiF-0000m9-QB
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 22:41:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id e1so1376697plt.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 15:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mbjq/rwgb76lJUFz2DlDv9ybGOJLg9TZqERWBW0E6EI=;
 b=Hga9+l4Ud2ZlkmHxrZ/NQK2fgltMGygMihNMUuZs4YX7pV2pM0UK6Pp/zIDaY5Jt0S
 MLis59RfXLRIArMFxeCirSflSVfXbEYdJX8S+iMyurHWzCCAPcdiMBP5P8DfKU4/YRXO
 YZkcBFPULAr2WZJiIpocJcyviMbBHn6Ny8QE2deEz9ARByKQTOvj7wGuxLYM+P6p6XuS
 gT00338BCZ7KipwQMcb7iSfcQ7DL3N9X5om/J36FU05Waa75M4KgzG7XaJWkWjb4I1pB
 8ibe4l2jywpPDITb8kZK8njirBvLfuWbDdkXQDUnoAywpkOvQRFeythmqA6sZvStAEZV
 p5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mbjq/rwgb76lJUFz2DlDv9ybGOJLg9TZqERWBW0E6EI=;
 b=q7fWF4bZkvEWVQ/piiVhhPxpUzDduxtLd2AMAlb9bb2aphyWbPe5xTYTiUKRfk/UTF
 X5hUQ3DOM66hssGaZqcSTQFsEVar0rW7hLyA8pRxdzjZTAkRXn9g6eubQuABS8IGkzHw
 vkZAj5tDr6OZK6aGxKhMmkVCpsqU4Mw/KRHBrAJCTwofPzkAPtXF3om6C4sAnpcxSZSR
 UArrt+WbXBk/2+fmpniN1UQbeM6opCE/zzEY6QbknOw0H4e1tTP3DnYjBfVcVNe0PB4s
 z+lzyePWexYMR+vmmNeQoX/F6sg7zN7NjptUH+BZsBO9CxuS/PU7HrN01DDKPD4mU6VX
 QhIw==
X-Gm-Message-State: ANhLgQ0+YLMfUYT+r7vE9sfpUFTbUqEGq/WPjZgASw0VmhDv4wHeVdvq
 h3IkkWxcw2dgjPp1jniplUArYv/Xh40=
X-Google-Smtp-Source: ADFU+vteQIRrjs9KpriqtqIAk/Qv0bmo3qX8ieJ7d+OmAcMdJTpnPweoOuE1Uz6cGcokcwdRpiUxog==
X-Received: by 2002:a17:90b:4c0e:: with SMTP id
 na14mr5572182pjb.73.1585176086652; 
 Wed, 25 Mar 2020 15:41:26 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id d3sm243589pjz.2.2020.03.25.15.41.25
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 15:41:26 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 15:41:24 -0700
Message-Id: <20200325224125.4629-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_154127_853712_21890AE3 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] odhcpd: fix compilation with musl 1.2.0
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

SYS_clock_gettime is gone with musl 1.2.0. Switched to the function.

Also fixed two format strings that fail as time_t is 64-bit with 1.2.0.

Added a link to librt as that is needed for glibc.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: switched to function
 CMakeLists.txt | 2 +-
 src/odhcpd.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 3c3e0ae..371eda9 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -31,7 +31,7 @@ if(${DHCPV4_SUPPORT})
 endif(${DHCPV4_SUPPORT})
 
 add_executable(odhcpd src/odhcpd.c src/config.c src/router.c src/dhcpv6.c src/ndp.c src/dhcpv6-ia.c src/netlink.c ${EXT_SRC})
-target_link_libraries(odhcpd resolv ubox uci ${libnl} ${EXT_LINK})
+target_link_libraries(odhcpd resolv rt ubox uci ${libnl} ${EXT_LINK})
 
 # Installation
 install(TARGETS odhcpd DESTINATION sbin/)
diff --git a/src/odhcpd.c b/src/odhcpd.c
index 4b8e589..26094b1 100644
--- a/src/odhcpd.c
+++ b/src/odhcpd.c
@@ -440,7 +440,7 @@ int odhcpd_urandom(void *data, size_t len)
 time_t odhcpd_time(void)
 {
 	struct timespec ts;
-	syscall(SYS_clock_gettime, CLOCK_MONOTONIC, &ts);
+	clock_gettime(CLOCK_MONOTONIC, &ts);
 	return ts.tv_sec;
 }
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
