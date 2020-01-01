Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF5B12DD50
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OtMFWjTgx5Ia1ovYmZ59GSIzY5oYYaQwY3IXuzASktA=; b=rhVgkJJs7Xj9+1CprAWmu3ISO0
	MZlnU8SoE39B1ntWZ0B+09uTJ+/YLJfEoZ6E9c+y83DZmslpp/UsCJaunUkH/R44IOwFgaazrpzAW
	NOifFouMoFqblz8iQFDsV7aCBAWs+mJXb02puvoHuNcUak+YyUb4iUAhAtAP6aJ+bG1Sty86oDa/H
	wtyNubuN2Oimsfdw99d4Kp/z4eY1CLsDquZtC043o/jy5HO3sKDy8cHN7IiR4zfVTJVwBc9FJItLA
	0luxMCm63pROemL8icr5Dl5/1Omv4pFbSJ/u3oFNz9n9I1Uu1FQ+s1vsLWvmZzdw9G0uLqo1Yc42b
	pbPkzR0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTLI-0002XF-JD; Wed, 01 Jan 2020 02:02:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTKe-0001mC-3z
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:01:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id 4so20324663pfz.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KdRwqUo8EIrIXFABKPfkPCIOJ+qcpaRu1nsw4dcfXIM=;
 b=E1gZ1Pf7KEgZQAii4KoSW0DgNx/wVLlfvV9YBiLHsSnn6UOEl46n5kDxf5IQV0CPTN
 X/rv1q7/vo1YchrR/j0VruGZATFCkSwyTte2XJqGiAF42weVJgcK+G8VETk/QSxm7LG3
 tE6h0lvM8WEPuIexqNuviaq29hhnpVveGsDYGTXAlaF9/ebfCJ0RAEfWgZtA7Bp0Uo10
 u4iX9P69Mafw8ctV5AFEPXZjKnebk2NNLsyFrX9pPU7mZFyKBNFmGscj6uzsL/QT14x/
 8Ho+ruttTjn6UMQvcS7AoKa29oy4n7nOwZOu2mTH1bB3nH77aZGCJiF8vk/+P1lPJ5ar
 kSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KdRwqUo8EIrIXFABKPfkPCIOJ+qcpaRu1nsw4dcfXIM=;
 b=UJ+C97JrUQ22yT+KwCEQkymBXnClLrzj3/Ml2WwL6AYKnjqjFWpXlv4D+WetXbMuWz
 ahHzhCc86oGMkL+NbG+69TpOuvOJlvNI/duOx8qD8msx2SGoFNc22UkTiD3kr6zIfo9I
 Sipz5OZ9Xjbg0D8y1Fe/Is32cRyE+ebhIWLF0QRgFPaeNeKH94Pj/Ux66pUctW72E0BG
 lSIfuQnRC6liTZE36IzHlCEhSC1FfoBR3+4YXSZLfDQRtLQyi04tDR0XXrkQDK8D9Tng
 J4cW6uSmqfQsMmeVdRGZCPySRAUdG5EtEDOkbIuhvLsjKCCuvc7sI7pwlso+dfPSw1Ge
 xiDQ==
X-Gm-Message-State: APjAAAWFrtq62DWfx+pDUWJY2mZC+nwTNXAfIggooSHypTpnbMcdpe2G
 mpTNB8fDB7YgxnSC7WGMg2QfgdcnTyM=
X-Google-Smtp-Source: APXvYqzOaljj3kSgsBdVPRZcUVtSeUS5EHxNt6OXg+XO/LDp2XLGct4r/Bx7TJ0XFFAfoL5XLZO2fA==
X-Received: by 2002:a63:e17:: with SMTP id d23mr82240986pgl.173.1577844113883; 
 Tue, 31 Dec 2019 18:01:53 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z26sm52559730pgu.80.2019.12.31.18.01.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:01:53 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:01:46 -0800
Message-Id: <20200101020146.21043-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101020146.21043-1-rosenp@gmail.com>
References: <20200101020146.21043-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180156_173451_84AC6659 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 5/5] scripts/env: use read -r instead of read
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

read mangles backslashes.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/env b/scripts/env
index 848850a778..c81fbf8ddc 100755
--- a/scripts/env
+++ b/scripts/env
@@ -42,7 +42,7 @@ ask_bool() {
 		local VAL
 
 		echo -n "$* ($defstr): "
-		read VAL
+		read -r VAL
 		case "$VAL" in
 			y*|Y*) val=0;;
 			n*|N*) val=1;;
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
