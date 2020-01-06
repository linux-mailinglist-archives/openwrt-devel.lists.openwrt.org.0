Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A2B130C22
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OtMFWjTgx5Ia1ovYmZ59GSIzY5oYYaQwY3IXuzASktA=; b=UphTgSs6Da69e0LNKwrHOenaqB
	OGnamSd7AEPHokViTcB3B6iJzqYq95aJ9FV+7qSb7BXnQknt8HKlxSHxuPw9T/2YCA/btst/cv/q4
	yRKPmyHRP7inGnM88IyIary0KxEw+7pkMcqrbfZiWXVbT6/LLTYqEY934LgmgTO0aeSCFutvL3h8r
	NwhgRMbCyP92CuYwGQWObx1r8v7hWKbQZyxrFiXp8zDsjkULEnT0gTo4bGp3yHElqNHsvxgv7L6iT
	w2/wKBLwUpejx0Ys3R2l399i0349YiC6bOZsB/5n+QKjVA9f/iHlN7X4sjBgL75KJunBoYUv4F3cP
	bi1i++aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioICv-00038U-Qp; Mon, 06 Jan 2020 02:33:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioICC-0002UC-Dp
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:32:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id r11so26184393pgf.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KdRwqUo8EIrIXFABKPfkPCIOJ+qcpaRu1nsw4dcfXIM=;
 b=eAqpHMxRs9kZLaaRnB1PKnOiDtoSv8epHdQI/IvdOH5wWBHIihNpsB0HYz6FOiyUtG
 oHbg+XAmAa3hBpouvXKUnxUOnrvZbEX1cNuHCit4n8ts+JNgLIuXKilxlsxM9GJ1YBhu
 HAlVEnJ6SJZzhZFcoSU4DDYIaJLowf6Otefag4YlJ4BlGg/m7qibrbxNp2CNLMVLH/Py
 AHbp0MhNxhoMJ2xa3dMoAbm88jFsFU7tEhQBXU5772ps7qgM5RHN5BW1ecb/eKz940wT
 xpkgF6laM/MI/c03pMX4DOxpnktMlgsfd/+krC51nBnjB3IthrngN02AisrTNkHHf1sO
 vlOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KdRwqUo8EIrIXFABKPfkPCIOJ+qcpaRu1nsw4dcfXIM=;
 b=e48z5+C20XzX9GwSkcd7wrNJWtVLLibHvo/aYqn23ZpJHxWMVEwpzK2VrYDLZzVc3v
 14wJwc4JaZxsdZp/c3H7bhwwO2MQ6mTWYdf+R4ZodYW0NHi54qozE8846G3fc3mMI/+r
 V2VuO3VjWhCWv5jhAJJMgxxfNBcRQiXvqPPcYmJYlA2v1Ss0HMIKcFGphEDERMz3mDQj
 dQmo2y+KiAdPeyGzYvMaspY4h4/P35W/voSRhc4ahzB2a0rF0Rfq8hWIGNpTk58n6iDi
 wxaBlV4gK/Yby+Jx5jPXcxDbWgq/Nbhb/qUNfGukZFV06u/ocATjpp2cK8jECfZX5q8+
 KuNg==
X-Gm-Message-State: APjAAAWJQJIAEsna0yWkneCWVTeFf/vDe4hzf+nTrPDCKzQTKZ8NUjxb
 vUkNSnWcRg4QGlm+4si7VWQLpOqtkhM=
X-Google-Smtp-Source: APXvYqwPe1n8prXrBhjS6N4/805tVIk97WGVtGFChRs15ttlxUB2duV9ylLqa8n+nJUiCPRNkHHf2w==
X-Received: by 2002:a63:4853:: with SMTP id
 x19mr109941326pgk.385.1578277963613; 
 Sun, 05 Jan 2020 18:32:43 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j9sm62628168pff.6.2020.01.05.18.32.42
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:32:43 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:32:38 -0800
Message-Id: <20200106023238.170677-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106023238.170677-1-rosenp@gmail.com>
References: <20200106023238.170677-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183244_468548_70BAE2E7 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 4/4] scripts/env: use read -r instead of read
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
