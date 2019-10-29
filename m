Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7487E890F
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 14:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Fs4rrxfhjwC6jyayW2HztrSKVbEGb2+M6Td3pTgrU8=; b=dmHArwdXLKFNuG
	rYW3WxDEDk+c8ofLe5GwJva7zY0Si3Vc3vD8ZjGTx2hQJ3zhINvY+bsQXOoPwKJyZE5tSoP0K3VyL
	H8wImP/UTJ9UgGZohKqBmKlBTVphzRk6J3YKkRRqo+ExYTiYP54WXRY2AvLXSN+0gOUeTQPoUZ+l9
	qdi0qQeuOl+FW6WkXqCFNTCwTGkoGBX1aFL4OaV8ud7TI5NixZZtQ/46h7vGJuwZzXSNxmBSfdxBc
	9wrX6IMPZaRxBFVfqji7egv8YrL2mIfJk3pcgAMJ5OTmudV7LHQeSnKPRrLOzCrXMu+2oHibW9Spm
	x4DtVFpy0l5HHl51jbaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRFO-0000ql-6H; Tue, 29 Oct 2019 13:09:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRFE-0000q9-IU
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 13:09:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id w3so9554450pgt.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 06:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+MY5MPxTH9GdTdD1qYUl/VqeXDw5LIjpLFz4vDwlZM4=;
 b=NsXKdWSaULza+uBt0TqzVhxFCuavmWyBmj1E7ar31/N6HEmaZ6XKIubPxSb0NwtSws
 uBdw2jF7gvenEgH9Lp1XXh8ygMy04HiAT935hYr60wa9u4dnEciUwM2Pjm0VIbVnzoD4
 D90E7LHvlRyjZa3SOaYbTzdoYRUBHvgb0W0sjr4KgNFWtEOs2HjbeSyvJPsjGogyfUMS
 qwp1K49EJ8zYOq/BlW3ir60Yp085AEoeCW5ujFAZ9d2+/CxPuHiuGQGkBsEe67WQWe/B
 /qQHyHVs4YohQdVVwlUDhVPnBpNJMfiZTCfm2OL+vW4fhxkavba6i30iaAe4J/XFFXpD
 RdPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+MY5MPxTH9GdTdD1qYUl/VqeXDw5LIjpLFz4vDwlZM4=;
 b=OHB+RzPCrSCleAG9f4Ot3F2O9GB9JKnN6sTmQvCAJ/Rp787zbmBMmiyuyTtBp/iOj1
 rKygD8ho061FdgSkrA35+7J2/69b/LBPcCS9oJu23ql18xrU/dED4M41dH8CgR/cJS0k
 kxsHYN0Qt1ZM8e6VwY40Sbbs+qsas6TQk1yDU+113sc9UMUxp1XJb+wAvvTRtf0mwbs/
 gtDgijc51PX4BXsqtcz2j6s4Y4bVZwjX314KpkDi+LO0QimooT/9fj04ET4xvqjKCS+H
 gyjya9C4lgRpUoAtwlDVpqqVpH6Ruz2XixdFFYf6tqkHaJlAkuqQ8lhbqO0TXNr9qEIb
 Vu3A==
X-Gm-Message-State: APjAAAXrdHySs8L5yu6xySQ0IVszTSohCTZSa+VmIcjJGFXqfszSkH3V
 2jGZADEJdZYyF+Ux4pecTbo=
X-Google-Smtp-Source: APXvYqyc7YCuSl8kNbZWBPXaryJu/LEx8X9fHXJONC9cIihkr/wFNH3uW0sA3spWFfeM9MsRQsTm9g==
X-Received: by 2002:a63:2042:: with SMTP id r2mr5875727pgm.32.1572354547865;
 Tue, 29 Oct 2019 06:09:07 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id e198sm14590934pfh.83.2019.10.29.06.09.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 06:09:07 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: nbd@nbd.name
Date: Tue, 29 Oct 2019 13:08:49 +0000
Message-Id: <20191029130849.45971-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_060908_638385_8BF525FA 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH libubox] vlist: add more macros for loop
 iteration
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 vlist.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/vlist.h b/vlist.h
index 8170abf..ff6b138 100644
--- a/vlist.h
+++ b/vlist.h
@@ -72,4 +72,19 @@ void vlist_flush_all(struct vlist_tree *tree);
 #define vlist_for_each_element(tree, element, node_member) \
 	avl_for_each_element(&(tree)->avl, element, node_member.avl)
 
+#define vlist_for_each_element_reverse(tree, element, node_member) \
+	avl_for_each_element_reverse(&(tree)->avl, element, node_member.avl)
+
+#define vlist_for_first_to_element(tree, last, element, node_member) \
+	avl_for_element_range(avl_first_element(&(tree)->avl, element, node_member.avl), last, element, node_member.avl)
+
+#define vlist_for_first_to_element_reverse(tree, last, element, node_member) \
+	avl_for_element_range_reverse(avl_first_element(&(tree)->avl, element, node_member.avl), last, element, node_member.avl)
+
+#define vlist_for_element_to_last(tree, first, element, node_member) \
+	avl_for_element_range(first, avl_last_element(&(tree)->avl, element, node_member.avl), element, node_member.avl)
+
+#define vlist_for_element_to_last_reverse(tree, first, element, node_member) \
+	avl_for_element_range_reverse(first, avl_last_element(&(tree)->avl, element, node_member.avl), element, node_member.avl)
+
 #endif

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
