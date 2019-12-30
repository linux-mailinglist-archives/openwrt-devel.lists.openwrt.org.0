Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE8112CC34
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2R6BYq2LTgFrpG1QjQ25PWW13HLf3CVHobfdLYsYduk=; b=YJd9D8B1ehe7qo9uhOjUAzPytH
	J6V/v0IWiEfFFOoqXzP8I0J6vSGuUtNg3Y6lxxcwiuvU2mgHvp23yyZFRkW3iBGNHCKD6IhuDnQ3j
	pCsNrqvQgIpTKy8nr2jKrGNt50ImLo9jfTWulR2VkQ5DwEi6SRubHndT+Pd8cNjKc+BT277IHc2ui
	NtwAyZsQhxYRokMSUj+wsMw4Ik/aCJNh9yEtsXICDFqWOfU4psSEqObqpXt+uCRsfZkeQPbSxUjpG
	dS10blQiryZcKiBXu255GsuWdDSr+76U9bF4PlTmCkkGrWtsSGjVgH5WP6cA39U2d606aSJ9WEVSz
	d/xVqB2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illxc-0004v6-BQ; Mon, 30 Dec 2019 03:43:16 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illxJ-0004jK-Bz
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:42:59 +0000
Received: by mail-pg1-x533.google.com with SMTP id x7so17371412pgl.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=/t+gRlXmdL5tQnC9yt/RuZ4A/INlajKZFkahPAzP1hg=;
 b=DVaLJMvFnlNwj2+Hq7wNJDFQxZ4BjbxYkMH8ZQikCD5ceU5LBfQwl/EJA4R9jUrgBM
 vCzVETnEBQbTdtU9YCToGCArTxaGlFL35qUJhHWugZDhBfZbeP364o5VakG+wLda5ZiA
 fkpUwHq37UJgAret+t3D2kWC9wnQYrZXl7XXiytdDjmGYY3L8sKiIUvRsSnIWVKnrsL3
 MnEcuXrdwXxFbm7UYU1heASRt6jcETtCCuKXiwIKSrYpCHLb1oPCbgSVR+4Pu9VKbZhu
 ulyLcCg13wXV7uLs28msZHjnDtL29kspcpz/lyYziO7+iaXYyQqj41/KcycL8Ggr59K/
 kGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/t+gRlXmdL5tQnC9yt/RuZ4A/INlajKZFkahPAzP1hg=;
 b=kilpAA5twImvCAcAtyTRcuve8UEdFDwXw0dpbRr9IljWssMR+X5o16c+5x/Sz1kwIs
 t19AQX3rL1sUrgyN0dtCn2i1CaFyMynCWa25wV2WifJG2tncdcM6QoB7oEQZyLA+1s3L
 G9ElHLAQ2Cpr7boCZxqCqGhVXXXDpoP6kb1ZXTVUgTJ3yIXg6vLmXWoOVOXDdT5/Wl/n
 0abZ9YDyAtvfA4OJB9lT9nUxwMyrVKXFLti0ktTI/rSmcxBeH9bNfO6Rr0EI9qLIIldm
 01s5i5wJB0yrNWF1XPVv1aIE1tFvc4k6eNKiqEl2o+55d+SSXxMFgzf/cOyZiFGefQvj
 bKDA==
X-Gm-Message-State: APjAAAWEb99697tvPXLgwdygYKhEuQNgBfIJrtd1aDvIbAmwBZqPvV3A
 aFxwk+0/lab3C7q6w7MOkCGHa2EI1eg=
X-Google-Smtp-Source: APXvYqxroEivpUTddGvF59MOm26UcaoOHyg2ZzdzVfTp37Oxp9KtyqWNsnJQRO+YC2BFYwVpWkW/sg==
X-Received: by 2002:a63:f455:: with SMTP id p21mr68479262pgk.436.1577677376271; 
 Sun, 29 Dec 2019 19:42:56 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z30sm50978449pfq.154.2019.12.29.19.42.55
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:42:55 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:42:50 -0800
Message-Id: <20191230034251.21873-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034251.21873-1-rosenp@gmail.com>
References: <20191230034251.21873-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194257_690388_904BAAB0 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:533 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 3/4] scripts/gen_image_generic.sh: Replace
 deprecated `` with $()
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 9f3e4d024c..0832bf91de 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -20,7 +20,7 @@ sect=63
 cyl=$(( (KERNELSIZE + ROOTFSSIZE) * 1024 * 1024 / (head * sect * 512)))
 
 # create partition table
-set `ptgen -o "$OUTPUT" -h $head -s $sect -p ${KERNELSIZE}m -p ${ROOTFSSIZE}m ${ALIGN:+-l $ALIGN} ${SIGNATURE:+-S 0x$SIGNATURE}`
+set $(ptgen -o "$OUTPUT" -h $head -s $sect -p ${KERNELSIZE}m -p ${ROOTFSSIZE}m ${ALIGN:+-l $ALIGN} ${SIGNATURE:+-S 0x$SIGNATURE})
 
 KERNELOFFSET="$(($1 / 512))"
 KERNELSIZE="$2"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
