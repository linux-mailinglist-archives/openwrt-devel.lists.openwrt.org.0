Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAADD130C1C
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=flOsxyKUZKZgCtCsQnAy+gcvs10wlxRkWfRbzs0pl1Q=; b=pM4ae9MCvIAUcVOVrwl727weqQ
	OTebO2FsroabLhYqXgvcHa/97Q2YffSDrrv6+RiJFEk78hAOi92fbrFpUVaS/Kse4OhXh4JH48JaL
	vhp+ma9Y2td5tFXXrCJvf49z4ne/gVklXviybvwyg2oRqrXtX0pMi76okL2BGzQZTX7VrCoAuqv8g
	Dfbov+5dnCaxktLbMYX8hTRNMQUTcY+j7uOa3SLfGgbaEUCsR/GcxjsuJ6m2veq/4TUu0ZKN4si4A
	jRpS6atB9zXpwy7GXshDCOPXbVX5pu37s9k1fcvQf4EF0a7BKKXS4nGgHadZ8UlHaQKyt8RQj8qbU
	kFcJTWrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIBP-0001qf-2a; Mon, 06 Jan 2020 02:31:55 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIAw-0001Qc-Da
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:31:27 +0000
Received: by mail-pg1-x536.google.com with SMTP id x7so26153230pgl.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4UbFv+NdbiZ9F2Xo1g5YQOdHAXpc9sKL97aPfZ6oaQw=;
 b=aE5x1iysEMVu4IZo29HWTXdlaJrHRc4LB4qGCa8CmbOKKxTV7RZVKg5bjvSHhE2mTN
 yM/aedb+GgQ4Pyv/KspgCpiuSDwzPlgRky4TJjJMGUtgHon8ioe7n7Ci1Paa6dpnAvD4
 1wRekPptMf+xhe3KDYKPVGPmo/xLATtfk7g5YrypaNvMVjkD1uVoWr0hKD8/jMm+kv+/
 ktues9EWTU9U1WJVRYtqh7n4dFPKlLcJv5FypZOf5c3g5L2qKsDxzkdTUAW95C62+LF4
 zxQcql2Reuj3V02uXVCEDypiOevHPFJ9ZG5/mFyIzYP4FpZ9m/n0JODVPucpLtGgA5ZD
 3+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4UbFv+NdbiZ9F2Xo1g5YQOdHAXpc9sKL97aPfZ6oaQw=;
 b=AXq2FylqV2akhviY9iW7qOMWd+uMnamDgPL7QwEzWr52+DDPJF6/q5/oS6zJVlJUXI
 sHG9zFjdOSEsTTnVqWWATLKiC84xivo/e+YanFfnLIAqsKRwc8ccOoLtjyS62ty/gE+b
 zGDqMIm2g9wpX5STnDAT8fv/ZvR9QCuikgaR00sBJgR3/UCl05yPQ92xhBtUJnQPaiZE
 SdGPvmjkS+tVlM+Urq9hk/g0WaND9fjHmsn/P7quPgp9HyX/DsiQ4ulwTXXqJuHRhbzr
 15iv+hIaYmn/OYd50muygjDbY9KvdHxnplbb8f93yG2ceDIPqw/oe82zs0oBBCJOh6cP
 KqpQ==
X-Gm-Message-State: APjAAAVxQnLU+3FuLdygHI6m/sI5ymSatLSnr18N5rOWwnaQYblPIZvs
 KwNmWa+cP01Ut1JL8LvmHbd+8RZ1Okk=
X-Google-Smtp-Source: APXvYqy/9TQ1EXUtxbt9Q008axoO4aAehdT0LRBO6E5HM1XviF0sR2LHL8N/JeQH69HB6FvP0goyBw==
X-Received: by 2002:aa7:9315:: with SMTP id 21mr93038184pfj.162.1578277883410; 
 Sun, 05 Jan 2020 18:31:23 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id q21sm73960609pff.105.2020.01.05.18.31.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:31:23 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:31:18 -0800
Message-Id: <20200106023120.170525-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106023120.170525-1-rosenp@gmail.com>
References: <20200106023120.170525-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183126_484715_71AD57EF 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 2/4] scripts/mkits.sh: add missing quotes
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
 scripts/mkits.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index def3d3c7c2..53b9ec5f20 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -55,7 +55,7 @@ if [ -z "${ARCH}" ] || [ -z "${COMPRESS}" ] || [ -z "${LOAD_ADDR}" ] || \
 	usage
 fi
 
-ARCH_UPPER=$(echo $ARCH | tr '[:lower:]' '[:upper:]')
+ARCH_UPPER=$(echo "$ARCH" | tr '[:lower:]' '[:upper:]')
 
 # Conditionally create fdt information
 if [ -n "${DTB}" ]; then
@@ -115,4 +115,4 @@ ${FDT_NODE}
 };"
 
 # Write .its file to disk
-echo "$DATA" > ${OUTPUT}
+echo "$DATA" > "${OUTPUT}"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
