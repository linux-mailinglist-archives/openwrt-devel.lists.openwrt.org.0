Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B070598349
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 20:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TF9zOj+CMlGYvi1NkrG9wzbDvpGxAKB4qkGbIhm3Kg8=; b=iIvdFUgSEic7p7
	JtLM3WZLP/J+zhm3uSKRuEt6kvsIQt5/wZYKYvjoH1I09+7n3j99FBBsh5qjDYm/FyL0KXtYQmAKH
	pcTwhXNBxHSyvDY30zoKL/gYSYsdV+lFb5XXlquO9zSpFUW0xJdmyHeXhFXBNhp6eMEun6s74rVLq
	o7ve6qxHs7UxULprS6SI5rsFmEFsAX2TsMeuVdHwLeuQZRrKd0Se+/pogss2KvsH1e1y0f3L/Q0yZ
	MoLfhC10GCQ2W9kjX9nhubxzPffIJ06q1PErhih7AQ/mnqzV+srOvhimy2wdZ0bSzZoPUrZApkgqj
	sxseKNHvyIDwOc5ULcdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VZt-0005yl-OG; Wed, 21 Aug 2019 18:43:25 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VYz-0005Zx-EO
 for openwrt-devel@lists.openwrt.org; Wed, 21 Aug 2019 18:42:30 +0000
Received: by mail-wm1-x32b.google.com with SMTP id f72so3135745wmf.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 21 Aug 2019 11:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T792BjPB/3YM4fWDRGKdJ8SfeC+5RMgjkqYjxecX4lY=;
 b=ismPvOAxsnC8Ao4jac23VLArV++J5oIVFrj3uqk+V3882+Z/YPjbcxM8qbJu4c4K4F
 OgbDSO7pM6Lb0sygovIHhAf5aHK2+xXGZEojaqIYHpXyjrM5bqPeEllo0Z3QegMSOzIE
 0aJhcn1tVY1Qbmbbvw55sVc+GJrS4JPXp8xC0PIaKKlOc91QDl1nyln2QiYGlJ8ZjNNa
 Q7IbiQ9fRU1LTnVAjUdDznDe8r/Ee4Un5GcdrlyvlgwEIXQWknqPloSE6XLhRBJI5fzj
 3+5QwGV5MT5kPCKh5fIhEnhHv0x0hJpXkYFMXO+Fabf2pkNpxm/tx1nFu/ZOu4B98mg+
 PL3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T792BjPB/3YM4fWDRGKdJ8SfeC+5RMgjkqYjxecX4lY=;
 b=paGIjK8/HvchjYMgkWSnW9HURHJ2RXgX6zyH31AvEcbMm9+tOPDqTxleNp33cvJo8m
 FLPkELxgDC9YcNNYgOF4Z2v+BBYduoYF+bFmKv+Jqv/AcQr4YYiGcf3yQvv5XWmFLVok
 gIK2eq1YYKyBsAluXABdYNC/vVFH8ziRYzxH5lDEM9MW1EncupeX7dsUuS3W+uQ7Rl6x
 V6lbQoJ2nAPAIUmgLqWzDPOADGqBad5ngCBS9BlVNy+Vvj4ct6m/t9huViehl+VIOhpY
 knlTEkaEaOzXHE59Ocn8d6X1ayMnZtpDhstmWj9NIuFNu+TbGlUrx+fEvdJI/CIUzPf4
 FK7g==
X-Gm-Message-State: APjAAAW0hXgcrGUJEZOiidiz90jkh8M7lPxgKmuumJz6SkZnc/ZQrFJf
 i69e6JhSc7MFCxJYM+71eSwkJbxr
X-Google-Smtp-Source: APXvYqw0jpSMbU2DjSjN66aLJeE8REgGk44QdsNRBkjCcu9oMVH4BS2pKvTVGTeg4egfamFeHoUTUg==
X-Received: by 2002:a7b:c928:: with SMTP id h8mr1661050wml.93.1566412947222;
 Wed, 21 Aug 2019 11:42:27 -0700 (PDT)
Received: from tool.localnet (180.151.117.91.dynamic.reverse-mundo-r.com.
 [91.117.151.180])
 by smtp.googlemail.com with ESMTPSA id l15sm17036165wru.56.2019.08.21.11.42.25
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:42:26 -0700 (PDT)
From: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 21 Aug 2019 20:42:24 +0200
Message-ID: <1662596.22zBrbYt3g@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_114229_495181_48948058 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dgcbueu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] brcm63xx: R5010UNv2: fix flash partitions
 for 16MB flash
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

The router Nucom R5010UN v2 has the partitions defined for a 8MB flash, but the 
flash chip is 16MB size. Fix it

Fixes: 474cde61234c ("brcm63xx: probe SPI flash through DT")
---
 target/linux/brcm63xx/dts/r5010unv2.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/brcm63xx/dts/r5010unv2.dts b/target/linux/brcm63xx/
dts/r5010unv2.dts
index a782126300..89d9b763bd 100644
--- a/target/linux/brcm63xx/dts/r5010unv2.dts
+++ b/target/linux/brcm63xx/dts/r5010unv2.dts
@@ -95,13 +95,13 @@
 			};
 
 			linux@10000 {
-				reg = <0x010000 0x7e0000>;
+				reg = <0x010000 0xfe0000>;
 				label = "linux";
 				compatible = "brcm,bcm963xx-imagetag";
 			};
 
-			nvram@7f0000 {
-				reg = <0x7f0000 0x010000>;
+			nvram@ff0000 {
+				reg = <0xff0000 0x010000>;
 				label = "nvram";
 			};
 		};
-- 
2.23.0





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
