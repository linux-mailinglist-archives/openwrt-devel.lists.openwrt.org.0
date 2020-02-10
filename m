Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4E6156EA9
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 06:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mNYO3blTYhZbMTnN7r9Q6gZssMCiIqH0/vKyGwgtip0=; b=ocRflanr+P85nl
	0Gz0KJ5vhwhNQFcFlg0TlDHAsYDFpg+1nUQai6Bh/YjXFr6tfXdDotyZUVnFEpWJ8SNXQSfZambpy
	EYugzVLjmmknulEiY5Kc9Iy4l7ktBYPze5RW//YGTZMw1RIYn5caUnvYD/FyrNPWUo2Ccfbe2/3AO
	Ec/zbGpb2FD88gsbQjrNB3+MmSRyKyBd7pa4goUXzOxQ71TGZuq9RHp4ctTbv3iPoN4W0gBPrwxmt
	5XcHMitKd4zXJc38HzNOM7UWpHYWpJ1D39JP06gEVUBCr6SBu5TY7c66Ct8Ma88yPuvNm9er44Ol9
	4BuGymm6fyt2OdtHoxHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j11VY-0001Yu-PY; Mon, 10 Feb 2020 05:21:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j11VS-0001YX-K7
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 05:21:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id 4so3106310pfz.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 09 Feb 2020 21:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D48smOIpUNYmWvMVXl561I5KxcSs4AehJoEsQMK2CeE=;
 b=Q2ztXXc3Z+bsbe14HKDmVKHe2DajLIIdpx7fXIM+aySjCjMJ80ue3oBAxQYHgI6iy4
 dA5QaEwh7ixQlOPjgK/WMUfVKXuJ41GinOy3UefCl+scjuux0vswcYSOsJ20wd0zkxHS
 Hrzaz0cegLUvfPCQPw5S211+GWpEI0/77ORXNmp/btJiR8IQZRFS1fBeKgjYEHaI9/zg
 TuqlKt7QC37MNIuZeAx2XyX40FCm1Lb4VUikUkhXbE14P9ViY+ZgbnuGOOtjNeFGp+8c
 vYUNanoLuiv32ic7INZcmMdpIFh+BMzps7lVU3SHUm+i5y1Vcorfzp4/MAcpfgsSv8gq
 LdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D48smOIpUNYmWvMVXl561I5KxcSs4AehJoEsQMK2CeE=;
 b=LzRLqHSAibb2kvwww85ft2BbjLSbllSekAMBsEhn6gxyDBbmGFhyAtBLmTiG7I/pQe
 EODDENLT3rbMgv5Gurf3GklPJI2DLxLmqfbXa4NMUfcYSr/NxJVOT4CF9/xXqcHqdf0j
 qzYDgeDFAEMbcYgMhiPa/dv/p2QxxSOexb7i1ZEwZaSTWfiGKxHWk1CP0UmPYdU5KNtN
 boH4MWGtNtgQHyUTrvolMc7XbT3KgcEv5Aqlx3jmBwe/k70//X+HBIdsRjYmE3k1X23X
 eV26mqvLLm6QHGnv7oQjkIsY4+Mu+8kbzoevSIMQmBtok2f7inKcBlbwHiW7g1QwPJm+
 VVXw==
X-Gm-Message-State: APjAAAWoSZMTNRsJGNO46+SFk6WIJMDUimqJFGQhcUkypVcLOggkUkhg
 8U67G9mYlTWTBI6fiMMsWlH1TtLjONk=
X-Google-Smtp-Source: APXvYqzBcDLopQU0h7xX4f8IbmWMwR6n5DBlssMkau/WUukQQviJufkwanICRL1u/RVQ7d6x9/u9Qw==
X-Received: by 2002:a63:6704:: with SMTP id b4mr12966920pgc.424.1581312072232; 
 Sun, 09 Feb 2020 21:21:12 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id q12sm10368611pfh.158.2020.02.09.21.21.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 21:21:11 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  9 Feb 2020 21:21:09 -0800
Message-Id: <20200210052109.668526-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_212114_686539_B336AA35 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] libnl-tiny: install pkgconfig file
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

This will allow getting rid of InstallDev in the Makefile.

It also allows compilation with CMAKE_BINARY_SUBDIR.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 CMakeLists.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 10bf4e8..581015c 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -32,6 +32,7 @@ CONFIGURE_FILE(
 )
 
 INSTALL(TARGETS nl-tiny LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
+INSTALL(FILES ${CMAKE_BINARY_DIR}/libnl-tiny.pc DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig)
 INSTALL(
 	DIRECTORY ${CMAKE_SOURCE_DIR}/include/
 	DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/libnl-tiny
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
