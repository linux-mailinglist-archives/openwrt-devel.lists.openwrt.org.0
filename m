Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE9C193410
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 00:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UHeKvjqnL14ACal/6xwfSepgFXeM8siZTKY3I/3ZBpk=; b=hR6bwkgbiMARGZ
	l9cI91fsBrIACSVao/lOlTFTsxF3GQRt3VkfycSa9MP3ZhO2TcGvugRQ6ZOMAlDDclKr3cGMEkMWs
	6ar984P6ODrIBH6pBx2zgikcja4Zjxx66GwrcUIhqrekpiM2FMPHB3nT2tjW71XRuAjQ02i0EBCkd
	ZMbKeq3mxZusfaEqawtTuvgUetPmY4FoWYZ4r8W0lxYo92uxPoi3dl3teKZaGQCwWYNw7iDMNiytD
	bCSjfjmRsdJVqr5E7k0NiF6Kr3+lGWnj3vZ9lFQxhgTLf8NbmRzaBtjxU0boWVS4YukrukuxkL6Wy
	p70y/FogI70+6PvbEq/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHF0Z-0007nu-KN; Wed, 25 Mar 2020 23:00:23 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHF0I-0007O6-DU
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 23:00:07 +0000
Received: by mail-pj1-x1042.google.com with SMTP id np9so1667702pjb.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 16:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2X0OZUKndbFDgyxXGMjpAt8qFxvhqSj+zgpKUtrLvJU=;
 b=uVG91VwcO5/saeNZ8c2e97UWG2hRpdS8LpMufjDrv5m/LlGP/KmtmFJVgBtJx/BIRI
 oG6hYVaaB6sWs2GPsIklp1ilKdT/oulq2XIdRmaszUj/Nk2tN/rP/ye77JOnPnZurax4
 QCkhkdxizdUMHeZpEn6n13TEP7G52ul8o8APm/88zTuFOx0c5JSEm4b6O0thxqlzqWdc
 pRqXyVZpWOcUYkdjeoyI/pzCKWp74mremz8boG9696vRofI8ovthxuUBKE3B+BU6oVTb
 hz9wR5kP7+h2/FQq4T6oZPFchSYfasFn5KXxhq5xPM2RLJ4uJ93TewuMMQbTFRBJiVrc
 Wq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2X0OZUKndbFDgyxXGMjpAt8qFxvhqSj+zgpKUtrLvJU=;
 b=FddwRcwmxiITCK2KKsUuo6uYTGIsWn2lSXZJ/5MnwHzU5VakYGoGCLfSuciX/OPTJt
 /b0oUzIReHsm8HCuGpDRM5DYnvkivI54W7hg38LkhP0ff8WmNzYTg4CI4GXCuIvghaMS
 bpkmPavW0b6vobhYj5Im8MaOVc3iilWeDZaHI9iUiw9Q/kowAez/ymHT5bcZH+t2onXE
 5d/lYnQpFOGDg8r/f02Snn9MuTsKNWe68hLPPxcnvJfJrJr6GrHlPF6+UGI8ghIIMH0G
 r1G2KPqiSD8KCiel2AbYytT1hsIfTm3pbRymk8OMQXNdDctQkhRw/JHJ/FOuQjbawnbq
 sr3A==
X-Gm-Message-State: ANhLgQ1NW6e0fUjLfwx1tchtq9JGPjDJnEhXH9UMD6ki7PtpzYcXw/6J
 Zka2ROV90Dw0+VdF7OucCI8in7V7oJ4=
X-Google-Smtp-Source: ADFU+vs1Wx/2kVbN0XuNm4pixrrLCYOiwxadG1dVFlKeoi5tpjbLeMSa/zX+zhZ+cQ8jjmQ711OXUQ==
X-Received: by 2002:a17:902:6808:: with SMTP id
 h8mr5336245plk.294.1585177205357; 
 Wed, 25 Mar 2020 16:00:05 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id k3sm160717pfp.142.2020.03.25.16.00.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 16:00:04 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 16:00:03 -0700
Message-Id: <20200325230003.5899-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_160006_464093_ED8B2D63 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] netifd: fix compilation with musl 1.2.0
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

Switched to the plain function instead of the now gone syscall.

Added an rt link flag to fix compilation with glibc.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: switch to function
 CMakeLists.txt | 2 +-
 system-linux.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index d6203aa..964ea8c 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -24,7 +24,7 @@ SET(SOURCES
 
 
 SET(LIBS
-	ubox ubus uci json-c blobmsg_json)
+	rt ubox ubus uci json-c blobmsg_json)
 
 IF (NOT DEFINED LIBNL_LIBS)
   FIND_LIBRARY(libnl NAMES libnl-3 libnl nl-3 nl)
diff --git a/system-linux.c b/system-linux.c
index d533be8..d36d287 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -2421,7 +2421,7 @@ time_t system_get_rtime(void)
 	struct timespec ts;
 	struct timeval tv;
 
-	if (syscall(__NR_clock_gettime, CLOCK_MONOTONIC, &ts) == 0)
+	if (clock_gettime(CLOCK_MONOTONIC, &ts) == 0)
 		return ts.tv_sec;
 
 	if (gettimeofday(&tv, NULL) == 0)
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
