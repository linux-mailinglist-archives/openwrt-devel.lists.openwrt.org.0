Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9599512CC39
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bIsyI1Y4sEDzOahPS7Lh4RmdYmCEPxz8UZ5QG8laSDo=; b=Zfs8PrOGknPRwd
	nTE3WyTyn2D6F1fDqhT9SaRc8gndZH2VMXKhr1DknnkNLKHMfEYkQA84Y6TatxlpcmR6j3jlqN9ZS
	1SNxhfKE0ddnzgYjW6kJHcGU45x+tmCPqAnLQkXlOH6vU+mwYSI56KOwYmriqNBeWgxEnFdsZQY86
	qEQ8YKIAe1u6eXQKpc1k3sZ9Ozlpc4LQJyX+4EVgXWwuHdP8zIHxtuN78SYYL++thHfOLpAiM1LhV
	lMbYOS6HK7sgip96ZORUBD/6B7mjCJIpqBQR4f9Z+KOImsy6b7tWfCNjlrdpvK+ZlbFkR3SYjTlur
	18ya4dEDu7LaDMC/v9wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilm34-0007J5-Ka; Mon, 30 Dec 2019 03:48:54 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilm2l-000779-Cz
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:48:36 +0000
Received: by mail-pg1-x529.google.com with SMTP id r11so17407019pgf.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dFv/luSfR7m65iag0EAL5PFpm7G9KjBqKzyr7kUR0Pg=;
 b=SuW4eLmNpo7OQpQhQweVsk2sWHJNJCfwtcxmRvy19jjayDOwjnVEC/Jp73RPm2q/ks
 hSUW1nuJYbLnP4dGSAILfJrV5zN5nFZ5Pn+bL5TIiMlb9QNfEnrnSuQkRdbMO5A931OE
 ffzbtpV9BP22EHs5tJHfyNTPPodllBZNl0cxhV/oO5LHLU4Hw0dcYdawtc5RI2qw6lKl
 51Wa9u1EfXy7sPeM6k/jdWAXSzJl/2V0YUttTvr5NU0Gfx0414lZIhJkyeNVNqTme9zB
 rEd/tZuJcgKq0wmGyusM0la+5RnzTPxyKrik0akwuq39DP9MztZZNgOOoCmDlm2QtEt/
 sP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dFv/luSfR7m65iag0EAL5PFpm7G9KjBqKzyr7kUR0Pg=;
 b=TqkNFjAiGCpM8AbcH6hgUUiZMFNsLHLyJYdNQEyVvT15iZapT/MoyqrspAwRYl+ijg
 wiqoueQ1uXPhiGEJKAEvXxBg5a/e5PPsUKOoGnQcwUDwu0jYo62E5Qga4EINUfeqZd1n
 P8O+w3hrGm4GE+qAzeDbma2STle9hTB9PbPnLD7an8KOAgeTLcXt/isTh83dsGcHqpxj
 WKWqL2MQoVjyrWwdRGirR7h0QTI7fq+7VKB1cgpAatxeX1mBkkDCD5KtIgMOFYf5NNPL
 6SNaNN8NdPkt9GWxug/Dko58QxkMHnrABPSsfY04qRIOWBEgPo5UDc1brlOzd11KY1Gi
 Nftg==
X-Gm-Message-State: APjAAAX2GzykYn0slJ5zEQIMm/B75zDO6VmPQl7LNKORc3vJ85QDvK+7
 EDyKYyzKIyftCrT4ThItVNiXplJBA18=
X-Google-Smtp-Source: APXvYqycU5RAxOl/v+sZq0seMcex8uYWnxJo2QR7QnJl/jjb35gsFyGoQP3GhkexUlmQoD6au9auOA==
X-Received: by 2002:aa7:86d4:: with SMTP id h20mr64489574pfo.232.1577677709487; 
 Sun, 29 Dec 2019 19:48:29 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id p28sm46211414pgb.93.2019.12.29.19.48.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:48:28 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:48:24 -0800
Message-Id: <20191230034827.22185-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194835_441982_E3326EE5 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/4] scripts/clean-package.sh: exit in case
 cd fails
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
 scripts/clean-package.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index 6dd9bf7306..987e6685a8 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -9,14 +9,14 @@ IFS=$'\n'
 	exit 1
 }
 cat "$1" | (
-	cd "$2"
+	cd "$2" || exit 1
 	while read entry; do
 		[ -n "$entry" ] || break
 		[ -f "$entry" ] && rm -f $entry
 	done
 )
 sort -r "$1" | (
-	cd "$2"
+	cd "$2" || exit 1
 	while read entry; do
 		[ -n "$entry" ] || break
 		[ -d "$entry" ] && rmdir "$entry" > /dev/null 2>&1
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
