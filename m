Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53445DDE44
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 13:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FoIv59Ogd+5Ab82bggDBnz/nENGjbasYsHkaZq7taVw=; b=tVKr+VbA0adnIO
	FZkohGoZtVcYKzLiXd0l1Q1ZqwdF+UwzPBDHxmsiRSVnFCd/FSLo48Ln/8n9AJwflXKZaG/AeWqF6
	PAlfCKrmgqh0lBo+EpyijEZSXXAICCo27/aXp1X/jrUksATtEAk+sJr4y5WrHCWjh4ZVzXg4vROwb
	E4xSElcSB869+fcyqlV9Z5UJChpkVX/8xh5bv6rnJEzVvYwpd83JSyt6EbGJpOhrJcW7PhYopcN2d
	CQmOQTjPM0XkbkqpTl/dDmHXLMebupxjJ2G5u3gr3RvZpR41wV+fhnAhVs718IXmT8MxWD0zgE3T5
	6xCzMrbHGmCA1+GhDohA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM9MD-0004t5-9P; Sun, 20 Oct 2019 11:26:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM9M5-0004sa-7c
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 11:26:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id v4so6541998pff.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 04:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yIfx7x5q6VfO1k3FG+/WbYdOYm+zMB3yC9Sw9uNW/Ic=;
 b=Of4C3G1jWiu5rSk8KkjAudnFpKS3OBqdwix4u4cDnxlIMjriElOjKhb/LAcfeOzSEn
 BcNwi2lGyDxQPmnEVA6UkUh32A+sqHfamJ6pMumNIO42vlzDOqu4bhrhlP96vavFpIOi
 D8f14m8X0DfqAgdN1tyT7kwFbPSXZLQKmQmwi7eaiZgiOryv7s9fk8/elEvmUP79yH0s
 O4E1Wy/1rNw+NxOrMs4+XycybG0bz7xY4aNjpv0KesJrztsVcOEjHx3rY2pssevns/VD
 xsnctaGCo4AMYYejnwJOxBzYouRa5rqYq/FtwCy/EUygA4ELsdQc07r2MrZBpRy4D2o+
 GTdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yIfx7x5q6VfO1k3FG+/WbYdOYm+zMB3yC9Sw9uNW/Ic=;
 b=a1qFFDyyScz0G7EQ1LMI1kG5CoBYiHOkbb6ZbEBMPA6i6QEKE/kVYBORwrQLwkCawh
 X0Kb6cDKIa8lNTZ1R53blDfwPoqq3fsuL9KnsBZC9C4UoWjNHCUUgrTZKYaAGpT5XsJH
 wk2Pg1PIZCYwNf16UliBEfhvoy+yZW6GPW6FyPI5+Lg1b9pffyfYSSz9NUhNHJFHrl/f
 vUlRXaUFHVbDR3ROrXAbarFykN3VnmMwrV5GzbBBC3ktZKQIrUg6MZ6JLbFqtA2b0MjZ
 NxML5PWnaOXxoEuxEndu/tTr8JmSisDUoiLaEuIooIaJPJE0KqaIV575EdxRV1L4h6SG
 Idlw==
X-Gm-Message-State: APjAAAUpn2Uw6HMewLWEKr2HELUhb6HKsoJCBInK4v/Po6ZapwlOYrg5
 Pb18VheZWFyyTtBrGHWxOnM=
X-Google-Smtp-Source: APXvYqzyJ63Kb21uqhDblhn30OHk3uUPr2YaIdNYSNJDoNtaLTFRtkUbpnS4Sjk7iFstCrE9auxtgw==
X-Received: by 2002:a63:8b:: with SMTP id 133mr2641426pga.183.1571570795939;
 Sun, 20 Oct 2019 04:26:35 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id q42sm13008983pja.16.2019.10.20.04.26.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 04:26:34 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Sun, 20 Oct 2019 11:26:05 +0000
Message-Id: <20191020112608.129703-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_042637_295719_BB5CD4E8 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH rpcd 1/4] plugin: exec: properly free memory
 on parse error
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
 plugin.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/plugin.c b/plugin.c
index 3740622..d3526aa 100644
--- a/plugin.c
+++ b/plugin.c
@@ -321,11 +321,16 @@ rpc_plugin_parse_exec(const char *name, int fd)
 
 	obj_type = calloc(1, sizeof(*obj_type));
 
-	if (!obj_type)
+	if (!obj_type) {
+		free(obj);
 		return NULL;
+	}
 
-	if (asprintf((char **)&obj_type->name, "luci-rpc-plugin-%s", name) < 0)
+	if (asprintf((char **)&obj_type->name, "luci-rpc-plugin-%s", name) < 0) {
+		free(obj);
+		free(obj_type);
 		return NULL;
+	}
 
 	obj_type->methods = methods;
 	obj_type->n_methods = n_method;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
