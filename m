Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7866F5C154
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 18:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LQrfFHJeFYLJUMjhl4eyb4JthSUyYscSADf5VBPprU=; b=HlR9V9rqdW59ix
	mtUyFnNLP5RRosphH5Pti8KEw7LixTgp8zmpACbfA7qEN59vPGK72bGW90x57vow5QmF79Z4qx+L2
	Hr7LyxedLt1dsydZoheQQrphsdPzW6xZGv168ZX94yzHzGnI0z8AlOEq4AYzXcTa5C7s5U4S2wtky
	VG876Noin//1wdBl1ZoCAfZtilmlgrls7HUTuQaRTFhVLRi/ikW0RmZX643TbOZp1Cb6t/ntHZ8bp
	6jZ9E+pkYmhRKN/nP5A13zB+jcYTA3zr1sMSGXH0VgLut2nrqwuqgjHthkxasuZvbVRVTc0rmR4dk
	U0x42N6POG+d1YmLW2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzMN-0006r2-Vz; Mon, 01 Jul 2019 16:40:55 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzM1-0006eM-Dp
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 16:40:34 +0000
Received: by mail-qk1-x72b.google.com with SMTP id r6so11556591qkc.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jul 2019 09:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n5FhWexsacs/yPslc0cU7YLmj/QsoXdwQYCR/cT47KE=;
 b=soA3nVgzAwp6YD8LIYgY0FvAyndV5kOwIEL/R3nT/ewKaM5aPYvxd6SG12zABskgU7
 9gOV25L1/aDsjnVXgjFXDjI7cW3WVgCmspUGQG6CjQ/pu2cNxl3PHWnmWgomZ1l0wd1g
 4NQhJhow+JDaJkO25WOaedy7smZsTbszxappYwILutduwxfFqz3YTKZxHnzOVjSSSkHy
 5XkMswTloUpjHmVjFPYT+kTW/uz0SkmP0GiGiQ9+QHV2flMXKIkevlMgYX2DkbArVtaB
 FCTpc+xDaJSELI5uugMIsfYe+pBmfNUDjeTZaA47dQjj/G3DIx7tFCzFiPpzl5rHGaE2
 YW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n5FhWexsacs/yPslc0cU7YLmj/QsoXdwQYCR/cT47KE=;
 b=Ghiw5PQ+ICipMCnEhRDxKRhIZw+wYdBYSdBPD69upILAqRktQeY7tpfN6y6PXiGT5b
 3gqWUPJSxkBYkAcfyHr6Y+qBA/yQE1GP2In7qW5Tkw2O6Thbo7lsluPAOI64sTD2c0ft
 4nZToF5gfqXpCJ7zBpnjdE7k1ciVucsgiYBFH+O8rQxwP4w6R0Wuch+Uz6y2KuiP5lHs
 pJm8CbUHMdNFb4ZmY8ACpP8almCfr89uBb+eHIwYHhKs2769bwDdMseQX62G9Wh0LJDk
 2lxbTeUMbrbwzO+XA/4747Hc9vuz1EBjMW1nIqjLx7VfzhksqmRG71B7VRxajvfk5nmK
 r0vw==
X-Gm-Message-State: APjAAAVILwYNC2SO0uPK9fKkgktBCf76/FAL4SFz3L+TX7vD+fxMXniT
 qCPVorrYd6tz//INTNrM/mkG0fQG
X-Google-Smtp-Source: APXvYqxrVSL2kcQog/Bi6V4OV++NIwDyHtm8OlkbiPeB4wLSC9WIQdq5/M113acTK9wPe8rKT6ZZBQ==
X-Received: by 2002:a05:620a:14a1:: with SMTP id
 x1mr22261620qkj.164.1561999232134; 
 Mon, 01 Jul 2019 09:40:32 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id 70sm4780910qkj.118.2019.07.01.09.40.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 09:40:31 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  1 Jul 2019 13:40:01 -0300
Message-Id: <20190701164002.13915-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701164002.13915-1-cotequeiroz@gmail.com>
References: <20190701164002.13915-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_094033_466676_78A1918E 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 3/3] hostapd: adjust removed wolfssl
 options
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This edjusts the selection of recently removed wolfssl options which
have always been built into the library even in their abscence.
Also remove the selection of libwolfssl itself, allowing the library to
be built as a module.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/network/services/hostapd/Config.in b/package/network/services/hostapd/Config.in
index 1966067219..9ce4b243cc 100644
--- a/package/network/services/hostapd/Config.in
+++ b/package/network/services/hostapd/Config.in
@@ -51,15 +51,11 @@ config WPA_WOLFSSL
 	        PACKAGE_wpad-wolfssl ||\
 	        PACKAGE_wpad-mesh-wolfssl ||\
 	        PACKAGE_eapol-test-wolfssl
-	select PACKAGE_libwolfssl
 	select WOLFSSL_HAS_AES_CCM
 	select WOLFSSL_HAS_AES_GCM
 	select WOLFSSL_HAS_ARC4
-	select WOLFSSL_HAS_DES3
 	select WOLFSSL_HAS_DH
-	select WOLFSSL_HAS_ECC
 	select WOLFSSL_HAS_OCSP
-	select WOLFSSL_HAS_PSK
 	select WOLFSSL_HAS_SESSION_TICKET
 	select WOLFSSL_HAS_WPAS
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
