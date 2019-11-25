Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763D310941E
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4UBg5PiqHeys5KaX8P7Oyl9sOYMXIfX4avvedIpjzbY=; b=SGoldOHG7BD4g4pbnbg9Ka4aB3
	zH0j9DMmQK33eETgxbz/S9q8A6ci0cxikArkir/WFExBMrtg883rE+WGlxRpwoASlwWVLAuJGEnqa
	5wfVq3P4M3me1LTMtrg26b7WYc5D+wkVor6jYuKWj3+8WBohRTI8MuekaheVSq1p89MncoQ+n19AL
	4ia+mA2tO5R0zqgx5JI1AjmV25Ctf6QEal86rtir8KLp3EzKXon4/TYOR5tkKBTWTCsyWPbni5Usk
	33s3p91tLW2Et9G4J+Ig52xskrEm9ZMz6GMj9w6WmaZRkls2M4PKdnVFfCig4Cy7h8sDo7gLEB1f6
	6HH20T9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJrC-00041m-Q4; Mon, 25 Nov 2019 19:17:10 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo6-0007ES-VA
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:14:00 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 6so3114654pgk.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=gerS1REM8GHr9gUlQNrTBOWlgCgHUct+XSEkh5CGTbI=;
 b=mmbMxjqT9XFYpgKtXAbZZhuxCnbNrjK/7ra3MWsiOVKJYW2iGNXXUsi1vy2+/8bW0W
 RdBKljM13nN/IC8ZMB4VUBAyuVST8HHOwvTZpph0A6jbIuL5OqlfthuJ0W5n7/dWYmWZ
 JuOkBGSWsePgO90kEY/aMax+i1TDBtYBmiXByqCo8sC2Jz+lOUYEGfAmBLOwTCXUxNOK
 1JeLdMYri7bi9lVBivWB92muyb/bo9TBsCCJPG016Qd87jpplXyUfPTfglu7nYP3bZjM
 VNK5cogcVEY6IwUXw5a1d87blJ1IuavQgCAbdFMQSmrzH9v+URoklZiwNFU30wLvcqQs
 X4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gerS1REM8GHr9gUlQNrTBOWlgCgHUct+XSEkh5CGTbI=;
 b=n989B0k4oovYKTEPo9iTGKNMrLb5J6rKsksUB2EONGclKpIjBmqYCwNgbsnoMTfh93
 V/aQOPpQYS8dQQXptvq7aKhy0D7VUxoS+fHyMM7Y37QKDT1kfWRuvXxgjFPZkh/+n2po
 dQFBBfONoQThAMW/ApoCW44avEy4wQMLbpa8dlidnKxMHGHSl0LTI77GEl1KxDorURU5
 YNXIEVo3mukX4j/lm4dr4yHiBDtEoNElB1pVd6okrFSo8r01l4GeVRM/d+OJpj/95VOs
 ttEjO9/JkFoDE9lsMOQKsSp4ePUOuji5CWPKlXQvWNXPF9nnkqNS7TlxXSoI5ikXxd19
 0cEw==
X-Gm-Message-State: APjAAAVdOAyDwYZBAvmvatsrr+sLra3BV++9deOCvC+qIKaVD+ZKlhuk
 +XO0ukZ2TjNxqX/UCkLFsudPeEZ1ylg=
X-Google-Smtp-Source: APXvYqwCkqc0f7gj1+D424rocq31qtJG+MCYhyiU21KHa3G6hw7wkZHBw+DVz2x0GGT3tmfaw7JRTg==
X-Received: by 2002:a63:3cd:: with SMTP id 196mr34184690pgd.150.1574709237028; 
 Mon, 25 Nov 2019 11:13:57 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.56
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:56 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:40 -0800
Message-Id: <20191125191340.5980-17-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111359_052606_D3FA183C 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 17/17] mbl_gen_hdd_img.sh: Switch to /bin/sh
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

Nothing here needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/apm821xx/image/mbl_gen_hdd_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/apm821xx/image/mbl_gen_hdd_img.sh b/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
index 1fb868b5b3..0e11e10226 100755
--- a/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
+++ b/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 set -x
 [ $# -eq 5 ] || {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
