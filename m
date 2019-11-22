Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D4A107B19
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 00:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5qrNsnzO0/otvApywkZX8SArcQ4QrK1xPYrhANcUIXs=; b=lZw3LUdUAXZZUC
	T3xKdFFu47+8UEIFEglx52RN7vjpfgD572HeRuG/cX3NbR4WleS8Q6hAntjRtp+GoJQXYWCI9osYX
	qlvMvhpleH7W+X5mEooY7YVeukLO5fOP3kwFieXszcVomVqCT8w8OmhdezcO9m5M2++DqHogS5M4R
	QqL5+HBHxBePTw2NdwsZt1v9jZ/YxqlLgy0mgVztxh4maj2uiE+LbIVaE+M13ewA7cH7AFaT9ixbC
	CCVy2irEwDZkZFu5RuvlVlIFeXC+fPpGxrOcJm8EqkgZEmrlhCiR6SDnxK94Y5uO0MeWNH9BCCO20
	gE/ofhg9g7Ircbu3KQgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYI37-0003Ez-MT; Fri, 22 Nov 2019 23:09:13 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYI30-0003ES-EN
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 23:09:07 +0000
Received: by mail-pl1-x62b.google.com with SMTP id w7so3712958plz.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 15:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1laC+ptJK7CMO4FlEnDKRzbex4o6JIjr87XDKFBP/Gg=;
 b=oDAKVAWsQJDLqic9MqvS9yeZWhx8DgTUEk7gu7XJqQDvrZ0/aC4P8+AzPFmMxhmBff
 tJEq6nF98GmhcULUi7DfIcJ6kSgcCCJMIuN05evup1iU6luRrGjUqiAFGa19P4K2OX7n
 hf3JBnsuqw6uTEZjXhphQofFExwvXRI1qvtX2zL9DpeLH+igwX3VnO7SLZVgtet05WYG
 rkiOJfwWZU0SdsjLB0X76jTL//GylyI3gkk14wFYQpg0Il8Ybdxg8mYO9I5kPQgl5YmR
 VW67onscpS8MMIZ3ojXODhAbg3+cJU/jH19GzO3bUonthUMg8J0oeJZGBWXPdS8eAWGN
 rxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1laC+ptJK7CMO4FlEnDKRzbex4o6JIjr87XDKFBP/Gg=;
 b=B7F85fjmbpAH9AerEMfj3lpt8pGULVetXrLcpVOTs2l/qf9Q3P4OB2h5OKIEAkDP/a
 S029+sYm8Vn7lUA2U9HtjBLfnESeOWW2mMgf9baPTz52MFIBsLX5gKx6QRjSCvgLEBH6
 Gk3hkGBvg2qjGwQo1jcXapIIk9wVk8nxrZTTzPaYpdTPore9IZS4Jn9XYb0O6OVBkcp7
 rqyitNnerNDPNwJ46gQUQxfndrfPTxM7sjN45ZH3mQj2A0U2Cg1hoKCWjxq6GD3tgFoz
 3Rlxv1hq9ROlENf2Ud7o6zF2fJOBy8jhsz0J8oh9zX+YR6rzUL6j7Bx/REVqIk/gqtGL
 1UzA==
X-Gm-Message-State: APjAAAWA0eRdMRQURM0VtpBw8rOLTwXdptiMl3x7eLFeQk2tSus8JDQM
 pVtKocewCxb9X+HPjMwgrX6Ymb3+JLs=
X-Google-Smtp-Source: APXvYqzwtYbp0hIUBvtkKRoZId+D+veBd37zvpUBRB6fgLhr/t5xgoqCOwbc3jNkrfJf4phnceomBw==
X-Received: by 2002:a17:902:9344:: with SMTP id
 g4mr17280797plp.16.1574464143582; 
 Fri, 22 Nov 2019 15:09:03 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id w8sm8473774pfi.60.2019.11.22.15.09.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 15:09:02 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 15:09:01 -0800
Message-Id: <20191122230901.396227-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_150906_486708_689851B3 
X-CRM114-Status: UNSURE (   5.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] toolchain/gdb: Don't use gdb-arc
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

GDB got support for ARC with version 8.2. No need for this fork.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 toolchain/gdb/Makefile | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/toolchain/gdb/Makefile b/toolchain/gdb/Makefile
index 41ba9853fd..c25d181990 100644
--- a/toolchain/gdb/Makefile
+++ b/toolchain/gdb/Makefile
@@ -7,23 +7,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=gdb
-
-ifeq ($(CONFIG_arc),y)
-PKG_VERSION:=arc-2017.09-gdb
-
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_SOURCE_URL:=https://github.com/foss-for-synopsys-dwc-arc-processors/binutils-gdb/archive/arc-2017.09-gdb
-PKG_HASH:=7e3c2a763bf500a40c5c4591a7e22c591dafc1f214b1d514895c1096e85c883a
-GDB_DIR:=binutils-$(PKG_NAME)-$(PKG_VERSION)
-PATCH_DIR:=./patches-arc
-else
 PKG_VERSION:=8.3.1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@GNU/gdb
 PKG_HASH:=1e55b4d7cdca7b34be12f4ceae651623aa73b2fd640152313f9f66a7149757c4
 GDB_DIR:=$(PKG_NAME)-$(PKG_VERSION)
-endif
 
 HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(GDB_DIR)
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
