Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F02E1384BB
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 05:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3L24ynosQtnv7xbNMy4AZHMkHxjDtw33bw96R09t0Y4=; b=KB+aomD1caHQHF
	WPc8otnIF9iPxnW0NAQzX9vOuNXwEery8Xsn+XdRRmuPvDlWbPBwMS4kkHdgbk6fja07WMKJts1TT
	HWZfvAh9/2K0+pGWBvkBYb2k+GCGHfQ5q0gZuPrHzFjGODZ+SZg2cMjmOIvacnebCNaNPs2b3XPpr
	hjtuv0wcVIx3vBZmL5+TE/57ZyW4Dr2N8n51s92DEhWBIaI3lo4YESMqXYtrI15kt7ga7WD+V/aEY
	1T1f0enNc03UNLADlYNCkpo+eeolW25axDtPJSNbCV4LC6rYzbwSXBw+EMw+KqDTsYVivy6A/dpaQ
	e9afGgJIfO3DrCb0tyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqV8a-0006Io-EP; Sun, 12 Jan 2020 04:46:08 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqV8U-0006IU-BT
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 04:46:03 +0000
Received: by mail-pf1-x42a.google.com with SMTP id n9so3173793pff.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Jan 2020 20:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U3wRqrtY8im9WBclQaUt5Jd9Z1l9bGxyIAmVYTCdlYM=;
 b=CYMi3668ltL33M8ZHAktyAfV06+UOPOCtKC6w3MyBR7agf4RM4POzSqP4mPC+3yOni
 sE2hVjMdjhio/hutPzB7+58rlRjt+rDtQsAtnN/FP2VIvIvMaKBNDlL197W6wOOy/i0Q
 EZ+A2jB7FaxruBXCN+ZDadtjmsv7tgz4ilbl5iPDVkLg5BE63N/EXcpa7w6lk1oqWbzv
 9w2/qPJj7kZzd+rzGKxzFWQGFofDZANtmk5pbnKEo8HyeVL8k/KSB/7yP3QMMDm13/DT
 PgpiFBDRUgqVVvgskTxABaye34a28CxZYcmewXh7tHjhAIf16BN5lMhjfFNffnBKHt0M
 YPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U3wRqrtY8im9WBclQaUt5Jd9Z1l9bGxyIAmVYTCdlYM=;
 b=VjdtI7/uwkmjcoIgP/jR4zgTF8WBZ/qOAomY67U8ouhLYzlZqte0EMnoAhU78LUAu5
 8Ue0+4rqReI8ExqBxL9DzFtW0axxH4kKlCEykUOgsdxG0+S32mFY9n9E+0AtR0pmWP4g
 zbxu8i4ZBrYGwGnYIcI/vjoziMiIxflo+gL5p1UaeP4ORFnqzwKmRZNbGTXXX/9+tSSP
 UXzVjqq6eweRuEivRVkDtJtoQRsB9SXpa1P15TvBw60ADeVyF3++x38jr4wmy9fSZVdh
 8H6xYVHjb7PPq/RLUtDpGOpiWVGDSd9cif2gHrx52FNSRUDKl4ePSo520tVD3FohBq41
 Fn/w==
X-Gm-Message-State: APjAAAXj95PXaqG0LsEsmmDTQOBUrrE8Bowpho/ySljPBpUOmFKh0x9L
 jBYoWL4T5/B/25pn55E7k5hPe9qDxso=
X-Google-Smtp-Source: APXvYqzSzlxW/htiEE1Dl8CP4TRoxxcAGVHN7LDB95uNOYLLPJWalaCRx0JDG/tfFlYbR6iN7CMIFw==
X-Received: by 2002:a63:a511:: with SMTP id n17mr14211477pgf.338.1578804361311; 
 Sat, 11 Jan 2020 20:46:01 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j14sm8129764pgs.57.2020.01.11.20.46.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 20:46:00 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 Jan 2020 20:45:59 -0800
Message-Id: <20200112044559.633608-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_204602_393362_B250F9F8 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH-19.07] toolchain/nasm: Do not build for
 pentium targets
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

NASM builds completely broken files with pentium targets. This causes
ffmpeg to fail compilation. Instead of working around the problem in the
ffmpeg Makefile, it's easier to just not build for broken platforms.

Not even objdump can figure out what the generated files are.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 This should only be applied to 19.07. I don't think we can change the
 toolchain there.
 toolchain/Config.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index 762f4e10d7..f55e756877 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -226,7 +226,7 @@ source "toolchain/gcc/Config.in"
 
 config NASM
 	bool
-	depends on ( i386 || x86_64 )
+	depends on (x86_64 || (i386 && !(TARGET_x86_geode || TARGET_x86_legacy)))
 	prompt "Build nasm" if TOOLCHAINOPTS
 	default y
 	help
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
