Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACC0DE471
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 08:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoIv59Ogd+5Ab82bggDBnz/nENGjbasYsHkaZq7taVw=; b=ULG/vLYGEkP7QB
	YTabviHXhkyapq7df9tvDyx/cSR4GPq/7rYzQQtDSEx0EsQUK7xMSRVlnDdPb4R2g7zBdG/Lqj2cx
	WFy0iKS7q+SEqD0ZMthCZ8ipBE2aqGs/4rzadpUtiWvmVt2xNiPFWQvitCILf6vlw2rdXyQ8T9lyL
	pG7Z4IyF68V5piu6UEVnNREJ9AN0w/9nlBBCvIO1qZgtlYQXSroTkEbrvOvZ8T5F2DNnqPOiyjgzr
	esdl7JHfkPkvUtyu7YZ4oZNrsn93MfckhPEQq2VyLN0HlEfdehS8EJwfexsf7pfAL7b60oChQNNGU
	kWCXWeQu0aN8TpUOxq2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR3i-0003Qg-0r; Mon, 21 Oct 2019 06:20:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR2x-0001e8-Jh
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 06:20:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id q5so7719906pfg.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 23:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yIfx7x5q6VfO1k3FG+/WbYdOYm+zMB3yC9Sw9uNW/Ic=;
 b=K9PwKdxj+jF4sP9XKPsOsNEFBVizk+oozcRG7yCKzf2RZvMUglDpOOD/hMjvFZ0/zM
 RHMk7m2vOZ2pjs1pZ/9l80ocNlgYSdeTdbNzwUTbs4JSA6DEDeLsz6TPoWcjGfmfA4ql
 jqvJSEB89Dk/In5bFGLGmyO3K7IzFgrvlgCOce5E4ZPTFp1FKJV9ybZ1JClSIVR0IyNc
 ufGKhdfMR11J6j12TKLRJS2RKxA8kUu3l7uUDLEACiNJhd1e3//5ijpRe/Chzop6/d5k
 u52gLMkwoA647JQthymY6oKHnuZDZJldxISS4LtmCnYyfGGUt9UY0pUgOW0EaLIqVCim
 sG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yIfx7x5q6VfO1k3FG+/WbYdOYm+zMB3yC9Sw9uNW/Ic=;
 b=Y2apK/vRZct0uy1ByBUgr/Qb09NfaVo/F+TJ29D2hapMNL0JmUyaJbgMEfww+wYTva
 mpnb848gOkWM89CxfZ2TYH/r++WrxcdfRuwqC647ZeuAX/eYntM2GDAck97PyZrSQNjT
 smyrGeqAmCyjDi5ODKsEL2SaKgFuYxU/0sjANvmjGCpeFQTgFgknnKLoo6d2rZMn6oIJ
 Z7dlK8d9/S+ENqaN975p+YwvmQ1VXtq3ERS0stjmAP4yvO/FPZO0zf0sXumIPd2EgGmA
 FVnt6x7k+hVezoGrIgQKsByeUMpYs2JhwQWG7zla3RffcgOr5RTx6WeCdVcGeO1W8HzK
 vraA==
X-Gm-Message-State: APjAAAV9ZTnNkyK9KSc5cuejvIegad9q7x3mGC5nB8/i6U7so4iiN84q
 t6yC0nhSe+fhepFtRH3MFpI=
X-Google-Smtp-Source: APXvYqxVHh1BYaCjd7rgpj1q3JRT1P2yX7yxRa8Zg9DJoDXTFDKWbqqQNOjhwvDjSeBJ76Ua8G6FkQ==
X-Received: by 2002:a17:90a:8c02:: with SMTP id
 a2mr26702275pjo.79.1571638800776; 
 Sun, 20 Oct 2019 23:20:00 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id b22sm13524784pfo.85.2019.10.20.23.19.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 23:19:59 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Mon, 21 Oct 2019 06:10:26 +0000
Message-Id: <20191021061031.81230-2-yszhou4tech@gmail.com>
In-Reply-To: <20191021061031.81230-1-yszhou4tech@gmail.com>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_232004_222835_5448EB41 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH rpcd v2 1/6] plugin: exec: properly free
 memory on parse error
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, ynezz@true.cz,
 openwrt-devel@lists.openwrt.org
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
