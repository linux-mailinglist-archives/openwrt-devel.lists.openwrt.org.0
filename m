Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CE4CEE22
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 23:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QST/q9TnBMBCeFK6nLAyDYOsDEn4g+AlLgsN2M0jTZE=; b=WyrfM6AsHLQ392
	3TudpUdjtEQblQRHAtY9bjYbHxfl3vou2BgL9+xp1y0Doz1FCfkTaW2qPH9dylzj8dVFkXjb4Homj
	YwmVpWwRMfpSf/vMOXH9JkLmS0hTXOyfBriRBx9PPC/gYzAeFh8CtYCDrd5Vs6/doovHG3wR4AH4s
	HjebAaBbhJzcf6nwB2UlwQGtka5qinHHUTWFVBoVjwcTKforQIO6ZZUhjE/7KqmSQWRT5p9DnocUq
	lGwy204uh9t4EjxWzBAEGGwNqAGAfV71SyghexGK7UZGuFhpeguN4fyCQ380Xsn4CA+6iI7tcdztR
	HVCE2pI8WJpdaC/1uDEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHa9s-0000gI-U9; Mon, 07 Oct 2019 21:03:08 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHa9m-0000fQ-E0
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 21:03:04 +0000
Received: by mail-qt1-x842.google.com with SMTP id u40so21308808qth.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 14:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4XbC4tbCXuBzwPIJEjUiFduVq9+2rZ/RiOnQiBUXLd8=;
 b=LItPfO+aChgl4J9rCHPHBGhSkFo7kmcj5Hc+VCh9W7RPPAzWDxswLVQCYrnI+trrm2
 LWaNC2Gg/bJBVel3M9wEMg8E6Tfks1+5k6SzqwsrS7hUGykSBs9umy5uDnzW74hSv7bp
 NVVI1Oz91Uehf6Q95v63W5u+aFJPGpoJz7jChZnWPhsMSBc9CaW/3XIwPwjgianiXhcg
 HhruhAh28e0RFpB05wf/fVujlGAYRhFjV+B4CSk7qDWf21tf3MgMsDi3efyMZIHi1nhe
 7w7J2H6t4iYLUDH0TjO6ygydF9A4hR7EX/yDmA2bkWPzb9xlT5SMTbKiByL9O33llbOh
 0+9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4XbC4tbCXuBzwPIJEjUiFduVq9+2rZ/RiOnQiBUXLd8=;
 b=bsWCC7jES9Z2cgCqaFDbiBvafk2nVEhZbBO4oeDyprQY8hi0OFG9ABxu6bpu/ReLog
 CVdFzFr0YLHEX0iXxBnJIVt4bmJPxGuZi75jslx/DqTfAeI4HN4UItaIDHrHGLD/hZs2
 IgkbEYQVTD6PMCnn+zYHjncPZpTQHAcaRyhSVnXI0bHYZgbMzIQgrGiPauqAgR/bZGu/
 QEX+lC8HJlA7oqYcjt8RzkQBacFQAO96oUXlpcD53t3PmmlQC7/EO8hYPVlJdRUJZWB6
 hu/Ojkl7guMLXYC6SMD3vyCSltHbw8lVCsJPEIjvZjL3ICuBUn6LdseeyX7hFIMboB7x
 +yOQ==
X-Gm-Message-State: APjAAAVBFJ65AWTpFLLcY4MCXdLzXmHhoHEO3b01Lt+MZ6MN9vvKujFT
 RmMQn3yjMbVN9ZeiDg6qBsEqXVsB
X-Google-Smtp-Source: APXvYqxwlhLjHqyeywfZJIjKO8+y5frBZVGu9QHqw19KdP2xoxIGxTxpXwB+Qj5T2du6ck91+lO5Sw==
X-Received: by 2002:a0c:ea87:: with SMTP id d7mr28581511qvp.173.1570482178633; 
 Mon, 07 Oct 2019 14:02:58 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id a36sm8576709qtk.21.2019.10.07.14.02.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 14:02:58 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	Felix Fietkau <nbd@nbd.name>
Date: Mon,  7 Oct 2019 18:02:38 -0300
Message-Id: <20191007210238.23216-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_140302_469460_73E03051 
X-CRM114-Status: UNSURE (   4.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] hostapd: adjust to removal of
 WOLFSSL_HAS_AES_GCM
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

WolfSSL is always built with AES-GCM support now.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

---
As for 19.07, it needs 94d131332b5adbcf885a92608c40a22b79b3c708
(hostapd: adjust removed wolfssl options) cherry-picked first, then this
as well, since the wolfssl options were all removed in 19.07 too.

diff --git a/package/network/services/hostapd/Config.in b/package/network/services/hostapd/Config.in
index 9ce4b243cc..9dfa44e313 100644
--- a/package/network/services/hostapd/Config.in
+++ b/package/network/services/hostapd/Config.in
@@ -52,7 +52,6 @@ config WPA_WOLFSSL
 	        PACKAGE_wpad-mesh-wolfssl ||\
 	        PACKAGE_eapol-test-wolfssl
 	select WOLFSSL_HAS_AES_CCM
-	select WOLFSSL_HAS_AES_GCM
 	select WOLFSSL_HAS_ARC4
 	select WOLFSSL_HAS_DH
 	select WOLFSSL_HAS_OCSP

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
