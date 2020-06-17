Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1DA1FD318
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 19:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rNizrFzC0DTX6olnfyb774NQ6c/BiQYnw9lXYiBaE1Y=; b=tkC3bhk5m19KC/
	rXvABPndlhCzMxpVh68x9Qnbyu58CjuRQ1eMqbVzPoz7hlV5ofZKUyZmWqjxTa/q+XBeJm6QZ+8Cw
	0/x3wSfejZN4Wf3epftZB/iAF2afLwtpUJaCC7hpaSwAynHQz4R582zI2k+A+25gAU6T45jkBjM4V
	F5wRZFcnnGkxOoI9EDPr+2xPnM1O+IqlxID6RsjwbmGoEsHlfXvltDqM9g0mbI+bXc+LU04ANNbYs
	Xu9/tJMeJvHiny+4xV7WH7XfflsPdbVio3/AhOHliE4dY60w1ELQSLsB9D2PLx7wizxTrWBYYWYpG
	xAzcnDQ+ddGx/GWg/qrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbV2-0003E4-H1; Wed, 17 Jun 2020 17:05:20 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbUu-00035l-TF
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 17:05:14 +0000
Received: by mail-qt1-x841.google.com with SMTP id i16so2084816qtr.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 10:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5/k2omDGZijSQC0itnlziQqPS3/cK4s5OG79PpiFh+k=;
 b=kl0uf/MbqRc9OuHIOkGWoIbh4WSxKFvyaF1+D+7QzNgggYuKGkw8/SW1MLW7BRUefR
 duccsrNbV6iMhHktwgn1YXT7gHZKh2MGMFZC21+xkKEBRK2IWinYjUKaclSr1VsTATLp
 4d0T8jYE/laPJvyDS1fRC4N3tbX/1uiXzunRuKZdx6citXKk83wZolcKCzfl+sjGGxA+
 H9EX59KQ4vbCDR5g7M2Pj2ZnjJR43vv9+XG1P/7bPxJaWSz+aBWZOIfiIUzDi+/4xXI/
 rZorATmWj+HpmxRMGxnQ3m2F5KrKLs+sNMSvu/2wOIr2Ffk1T9APAvxWyLcfFBsbDfix
 1rDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5/k2omDGZijSQC0itnlziQqPS3/cK4s5OG79PpiFh+k=;
 b=akRQWGS1zdklTTWVbCignkvwVnTk282YMfJm0G4S+DGwf/1iI8W5m/rQIdxa9ashih
 f/QBkD/4572sliHnRZvfDw2RhSJXOSjvKvbY6XOyO3hW37sJUAvJogQL5Q/w9g3Z80z4
 yJJrK8ccw1eWUxk3q0sDvOxTh1uylvRPWo0vOQ2jZwCCthyncV6mvA+RIWfRJ1lzr5Ge
 WlxnsLS4Y24FxvWg86so1l0qMr30sa5V9yw+72IJoPgAG8GVrY3mzSHrncVQR8fn35Ph
 nu8v+aQqKacvykNtQKu+zqrUXiNHRcKSUfk5tnw+IIMzl5m0nKnfa4IL9MCoW/jBmq6c
 8jHw==
X-Gm-Message-State: AOAM532qQwVSvo4D4IZPuVUMZb27n9Ynx5aYkci4uUWHGcHu/dVm1Y5a
 70NeGsMzfvURFLqcaohGkQ==
X-Google-Smtp-Source: ABdhPJxaLMPRe27KaN45ZruOvBXRCj7Q8UfPm4nrXk/eD2SIBYgB5QW6XKq0Z1juJy1g8utknswueA==
X-Received: by 2002:ac8:4d0e:: with SMTP id w14mr31260qtv.266.1592413510829;
 Wed, 17 Jun 2020 10:05:10 -0700 (PDT)
Received: from presler.lan (a85-139-207-71.cpe.netcabo.pt. [85.139.207.71])
 by smtp.gmail.com with ESMTPSA id z20sm388521qtn.93.2020.06.17.10.05.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 10:05:10 -0700 (PDT)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: freifunk@adrianschmutzler.de
Date: Wed, 17 Jun 2020 18:04:28 +0100
Message-Id: <20200617170426.123307-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_100512_958021_E4E221B9 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH] mvebu: refresh config
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
Cc: openwrt-devel@lists.openwrt.org, Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CONFIG_GRO_CELLS and CONFIG_PAGE_POOL added.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 target/linux/mvebu/config-5.4 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/mvebu/config-5.4 b/target/linux/mvebu/config-5.4
index ac3e73c7f0..feb1ccac8c 100644
--- a/target/linux/mvebu/config-5.4
+++ b/target/linux/mvebu/config-5.4
@@ -216,6 +216,7 @@ CONFIG_GPIO_MVEBU=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_SYSFS=y
+CONFIG_GRO_CELLS=y
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDEN_BRANCH_PREDICTOR=y
 CONFIG_HARDIRQS_SW_RESEND=y
@@ -380,6 +381,7 @@ CONFIG_OUTER_CACHE=y
 CONFIG_OUTER_CACHE_SYNC=y
 CONFIG_PADATA=y
 CONFIG_PAGE_OFFSET=0xC0000000
+CONFIG_PAGE_POOL=y
 CONFIG_PCI=y
 CONFIG_PCI_BRIDGE_EMUL=y
 CONFIG_PCI_DOMAINS=y
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
