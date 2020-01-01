Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F25F12DD4D
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8WPyi1a3t4k4CKK2lIR3ZVvPk0w+U3mEJRj0o+jxTCI=; b=Mbt7xcU1FNrSB2
	NlngAhBsXEjwoFauMb9AMafbmtaie3jAXBS8skAXO9FNgZIBgqQMNbYp1aEIH5zXfxoIYDzvRBQ+m
	RQ7jBeZ9eFt88ZrA9fRJwL4ktkk/IVj3v2MQNSWIZthU+GxgHR5JWm2sx+FtDTdebJq/dYbdMMim/
	6/vfUcx9facp4HQVCvYu+zV0UPvD9KaxKoZX5KglTOK4brARRC3T2AaevVO3nXEJrVsQ3ccwMkapD
	v/5sA5BD6WHg0eb2W/F/iexENT2zLzPLgj5diR/Xed/5YpxZUciYnIKeoD0R2JQDN3XCrQTTxOjJD
	Q8fPinIsrEmFudXHeSvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTKk-0001nc-Ir; Wed, 01 Jan 2020 02:02:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTKd-0001lb-2N
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:01:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id x17so16405857pln.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HlRTebLLMo8Rzwh9UYDcvcdzy39tWjZXP5sqbQZ/qFg=;
 b=LwQIBUndUtEZr3E4STW5GdzwQBtgL/Q1drhYQBKPrP+6NDJ8dVt1M5dSmSO+RvZMt0
 3tvMiHG+VpRGJO4Rx7s4qyzxEVArMszx4/3SlzLqgnIvEFC/EzL+PygfPc81OyP44fex
 bPENdT8zGfLHZVJS90GJLFx9zOyrxAlgnHtjX1+2UiccUaX8Gtz0O/pabv7KXbPSzhUB
 Dts6KB/8LYvc/HspiAcf1IpjePV76iGPp5B+PFiZaGFMETvD5Wh5syYFxG8VXqdDc9Mh
 l4zNLVKq0vpeRWAupHqg8W/rX5nmuwRZk2l3SEks1gw2mYb2mzZwhoJ21m10QTq/U0xB
 t9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HlRTebLLMo8Rzwh9UYDcvcdzy39tWjZXP5sqbQZ/qFg=;
 b=amV2nZIukNLXfsK3KkNx6m0WWRxjua2DlY1kvK8jADf7kaadMKaa0ELgfJ97KJ3NjR
 34aPGS7kxpAFXe2nv3yXLS7VDdxnU71t8B3P5319nXJSjtfmIOKFzBYmDUrxATa3fu6R
 kR0L123qQvANQWXD2EuxRzzN1L/LlwZsPx2yeNvhONz5PrLLT5/feawY7GnW9KqgOVRZ
 WiMJhFYK2KDm91Kop99z822nFUTqJrgBNSXNvI2JN+7CPVPaUCIDMTqhNvM2iMlvjUfh
 +C4aeIu3IJi4vxwwjV1Q6a+CoNfcr9C2mvVgUfJ4UFkwDoG+qnr0+wF6AgGvuOd0+SWF
 c6wA==
X-Gm-Message-State: APjAAAWQUR53k8B80Wwalv1yXbYTld5Kr5YukPB7sDG0AdCO7iUwPCvL
 FmgJaNFQzqokoMFvFVpahNvyq3xPkrk=
X-Google-Smtp-Source: APXvYqyOE62nOydX78N3SIHjD1LE0c1aGlbdMU7dBKmD+IYn18tEmVhzrgHN/TboRbWO0mvceoMqPw==
X-Received: by 2002:a17:902:59c9:: with SMTP id
 d9mr76020147plj.184.1577844109898; 
 Tue, 31 Dec 2019 18:01:49 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z26sm52559730pgu.80.2019.12.31.18.01.48
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:01:49 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:01:42 -0800
Message-Id: <20200101020146.21043-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180155_113715_061E8833 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/5] scripts/env: use explicit find location
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

Some find binaries do not imply the current directory.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/env b/scripts/env
index 69b63895b4..fd49e1c817 100755
--- a/scripts/env
+++ b/scripts/env
@@ -136,7 +136,7 @@ env_clear() {
 	env_init
 	[ -L "$BASEDIR/.config" ] && rm -f "$BASEDIR/.config"
 	[ -L "$BASEDIR/files" ] && rm -f "$BASEDIR/files"
-	[ -f "$ENVDIR/.config" ] || ( cd "$ENVDIR/files" && find | grep -vE '^\.$' > /dev/null )
+	[ -f "$ENVDIR/.config" ] || ( cd "$ENVDIR/files" && find . | grep -vE '^\.$' > /dev/null )
 	env_sync_data
 	if ask_bool 1 "Do you want to keep your current config and files"; then
 		mkdir -p "$BASEDIR/files"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
