Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE13A12CC33
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CiWzDFwlDIdbjxyJHm4wmrMZUzOPlI6l/RBf0/jVY3Q=; b=Df9ixFOlm9elrbNCYRfxboyqOh
	amGbHK/JCWOrJfuY5wakeFJf0TlyP0UScERF3wGnudXJcyI9n87dNt8usY/AufANuqNpT7GPNCMNZ
	TmPNTGJ1juJUy/XV0IpJPAhRuh0NkkwV4j+hLzlkHXfVES0Xvvxr7ESBZOjSOwuON/y4U6SEhWOpE
	2sXDha5iLu8bNu3b2J+BaB/CvVUV9iP/Dk5kCqcVOsKa22QKGYLmFlllffo6uXi08/M53j7tjJwG8
	8bBirmIkRn45COQlhYwYpmP9NbgEndaNUnHB6jOvYv/kiIZZFxAaxGkmgNKqkiaMxphss5d7OQafc
	Tm4lq1Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illxS-0004kJ-IV; Mon, 30 Dec 2019 03:43:06 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illxI-0004jI-Lw
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:42:59 +0000
Received: by mail-pf1-x432.google.com with SMTP id x6so16548948pfo.10
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VqxRSBem9e/bTdEyrhXCsB+6ftoQ+cEuBH56LMQOaxA=;
 b=saxW1MI1c8FRwD0Lp3VRIIj2wCh7q6eTcHrWgE2yGlvnrFOnmp/s/IawpMepDJa38Q
 B2jG3WsiLf5NVz3reh/qAdI3C9ENea2AcXUaWKRJQ2KQDljjPRBhetV0vHraSu6sqceh
 v8jFdZOE5hkKnrjjdYJz0UgI9Y2lJ7NwBU+sgsF0gRm6RD92W5Rf6MN2uXnmrwonsH55
 qM0oNMsdQOLbzoPYGUjh6qc91x2yS1HoiL3AR0ReaJLbrXXI1s7o2kk9QGI2cx173CbN
 C8DnmMn8+bh0+y2ZqhawShBp5v+0/rL8deCtClsB5Mp8ok7I0lHnwyzmJdukpLsdT9ug
 qIhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VqxRSBem9e/bTdEyrhXCsB+6ftoQ+cEuBH56LMQOaxA=;
 b=TYQRozE+RQVZ21+lguvO1A8rbdus9uFWVqdDZHOHIDfsX3OTjAIDtosbgzgXFqLYOp
 e7q6h40nrIiLDgchcf6l8NNFfdpLeFgsaYQ/aqWEbbB71tZwqrEcYmFM+MKgxvXXAx/P
 b6eGwR5aS/pflVgrSjcwn6s4GQ5ZpljVe2CcdR2k7S257OC9Rc3Qj2lnO16wPlQ3lhEd
 PmvBwY0OfaHR/K38A6s7I0xnkv0EC+YpBO9lJhwv+GhoKfSY+6W2VFyxv38Sws0tm0tj
 /qtIP6Fb0eHi8bPdxlkwmZloMcqG4Uytp4YPV/CghHC7OAq7nkSkGCV3izC7ccsKrxh+
 Dj2g==
X-Gm-Message-State: APjAAAU/fNWjcK66llOsuZraDxgVhn7UU07X4kxyJKGN6qswfIxi25oA
 46vUT6YC/5vCQhRylAloYpHGwMcaTh8=
X-Google-Smtp-Source: APXvYqyj7PoAyt6Z9sAecD+fZyNXXniLtvl/zGgD8Xel6Q3o8bAL3W+zB6ZZtTvEa7ZVnH30ZsfdVw==
X-Received: by 2002:aa7:855a:: with SMTP id y26mr66208026pfn.175.1577677375430; 
 Sun, 29 Dec 2019 19:42:55 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z30sm50978449pfq.154.2019.12.29.19.42.54
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:42:55 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:42:49 -0800
Message-Id: <20191230034251.21873-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034251.21873-1-rosenp@gmail.com>
References: <20191230034251.21873-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194257_688813_0660DF2C 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/4] scripts/gen_image_generic.sh: Remove $
 in arithmetic
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

Fixes shellcheck warning:

SC2004: $/${} is unnecessary on arithmetic variables.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 1e35b1b349..9f3e4d024c 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -17,7 +17,7 @@ rm -f "$OUTPUT"
 
 head=16
 sect=63
-cyl=$(( ($KERNELSIZE + $ROOTFSSIZE) * 1024 * 1024 / ($head * $sect * 512)))
+cyl=$(( (KERNELSIZE + ROOTFSSIZE) * 1024 * 1024 / (head * sect * 512)))
 
 # create partition table
 set `ptgen -o "$OUTPUT" -h $head -s $sect -p ${KERNELSIZE}m -p ${ROOTFSSIZE}m ${ALIGN:+-l $ALIGN} ${SIGNATURE:+-S 0x$SIGNATURE}`
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
