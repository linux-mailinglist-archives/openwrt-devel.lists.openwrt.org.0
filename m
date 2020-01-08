Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75277134F70
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 23:34:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+dbbhbC4HzW11DKtDruC8aNAJkVVUeAFzuPPljQ+lh0=; b=hZA2XvylBV6EEw
	Wi+D7zZD13CJIWMMMz6HRbQy5AhsCezCHJyRRZFk0BQ4ORGtkSxZ1pCHdtpvQn/CfdadFhMF6Hyp6
	b7rB/Vn5g+iX0m/HFiGYoxnaZECYCyf57FGzKBsMPH8469Az6wIqoMc2GQbiPtryzI8Xaewh7Hh6u
	YJjJWX+ceLgCr5Pe07raXQMV/OZVFuRZXpOH1QRwHK1yDTfDRPqpvWcr8qO1O237vtTjP1zGHELvu
	zGDq/mZ273ffLRXnv1slqke7PGvejzdof9zkU2e+QkZGffjn2CJrynZOJxEH34f/IT4un2xXt303P
	oYDKrxHL4hOw1xAAksxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJuC-0000Ed-V6; Wed, 08 Jan 2020 22:34:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJu5-0000Do-Pv
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 22:34:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id x17so1709470pln.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 14:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5SWgIZrY276J5XZXc8l1iNViGzCqI4HJbsg6CQo2rx4=;
 b=Oo06vwY04dm992MDz6jPDiIVHbQl9V6BU+fSWIC3XALgLA8ki3NRLm1wH1fiAyQ+ta
 NJ4gCXC1VKqs0PqxplqyhLiNaJOWhAnPuLJ8epICjRKtCf8tkn64UBljo1VkdjJD+K/l
 3c/9oq41t65I9mtDjIE2b8cnPL2QWAbqgURlgMG/wJBVshqrZmx22WM+QMxzZPkq8RQo
 sdZuWW/vKFaP+Eg0sAXvXPLaP0CDXRxbuV6JhdUhG/9JdvhhVtRyE27JaHA+2S9NhQx/
 PCpywlTI3G6c4N42EyZvGdNyGDJ/5vHdleGqOFVyIgYF5gfXqLsLQgvofM4KXK4JbY84
 glBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5SWgIZrY276J5XZXc8l1iNViGzCqI4HJbsg6CQo2rx4=;
 b=tMNrZlhz6/m27CLBEk9NvKzy5DXBPy4N9YehFgIMRgcna7p7nSVv4m0owJgZrt/0fF
 FwlIKFhomX0oj4geK5OOE7wfSvp+OQreFS7WiCx5zdhdJ0g1l22Q8q/m4G+TJa9dTTBF
 SY5EsDuqFUbvPgDPrBy3PaD0083HfKxPFt4m7WxV/e6Yc7RURKk+IsvsCR9nqkTWhQKa
 eGnKIVt8qg+PAhEBnBQ133gtNFdZGEsfZEnue1s3Q9+XO4GrV+p9tu01PZNoeyIhWQ0f
 NnngSWEyu7Y5kX176crqZe5QKGU4JX9tPVNOvdetEdOXmtqJLYXWB0VW+naJcGW9ZZCj
 D2vQ==
X-Gm-Message-State: APjAAAWwc+IZuarYohjrx1uAKr1UMcCoz5Qe5TO78y1VeldsN/+NvN3b
 X0tiP4NpmDUSvFZxsQAfSezlZs8cLcE=
X-Google-Smtp-Source: APXvYqwnFT9n7nZvPWTnRu2jqumvEIrYyJ6uTVc4Sw1CnkwLvhD0px7lRTn8GgQQRXryCT+Z9e7YTQ==
X-Received: by 2002:a17:902:b908:: with SMTP id
 bf8mr7591387plb.293.1578522855098; 
 Wed, 08 Jan 2020 14:34:15 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id d14sm5132192pfq.117.2020.01.08.14.34.14
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 14:34:14 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Jan 2020 14:34:11 -0800
Message-Id: <20200108223413.520991-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_143417_841331_B1BEE7B9 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: ag71xx: use netif_receive_skb_list
 on 4.19
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

From: Chuanhong Guo <gch981213@gmail.com>

This new function make batch processing of network packets possible,
which slightly improves performance.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
Tested-by: Rosen Penev <rosenp@gmail.com>
---
 around a 20mbps improvement is measured on a TP-LINK Archer C7v2
 .../net/ethernet/atheros/ag71xx/ag71xx_main.c | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
index 0924b81b92..8831a51acc 100644
--- a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
+++ b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
@@ -1106,14 +1106,22 @@ static int ag71xx_rx_packets(struct ag71xx *ag, int limit)
 	unsigned int offset = ag->rx_buf_offset;
 	int ring_mask = BIT(ring->order) - 1;
 	int ring_size = BIT(ring->order);
+#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
+	struct list_head rx_list;
+	struct sk_buff *next;
+#else
 	struct sk_buff_head queue;
+#endif
 	struct sk_buff *skb;
 	int done = 0;
 
 	DBG("%s: rx packets, limit=%d, curr=%u, dirty=%u\n",
 			dev->name, limit, ring->curr, ring->dirty);
-
+#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
+	INIT_LIST_HEAD(&rx_list);
+#else
 	skb_queue_head_init(&queue);
+#endif
 
 	while (done < limit) {
 		unsigned int i = ring->curr & ring_mask;
@@ -1155,7 +1163,11 @@ static int ag71xx_rx_packets(struct ag71xx *ag, int limit)
 		} else {
 			skb->dev = dev;
 			skb->ip_summed = CHECKSUM_NONE;
+#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
+			list_add_tail(&skb->list, &rx_list);
+#else
 			__skb_queue_tail(&queue, skb);
+#endif
 		}
 
 next:
@@ -1167,10 +1179,16 @@ next:
 
 	ag71xx_ring_rx_refill(ag);
 
+#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
+	list_for_each_entry_safe(skb, next, &rx_list, list)
+		skb->protocol = eth_type_trans(skb, dev);
+	netif_receive_skb_list(&rx_list);
+#else
 	while ((skb = __skb_dequeue(&queue)) != NULL) {
 		skb->protocol = eth_type_trans(skb, dev);
 		netif_receive_skb(skb);
 	}
+#endif
 
 	DBG("%s: rx finish, curr=%u, dirty=%u, done=%d\n",
 		dev->name, ring->curr, ring->dirty, done);
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
