Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5990A55DF8
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 03:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3YzmZgA4j3jMfFjtXhUfXKdHtVqCJNV/IXDHP3pjNg=; b=AXKunCjeoADki0
	bJ5T5H/637SMj4LwqKE0Kr1IHGjgGmWKx1sAUPW2JDzHGVaZdIz0OchNhJnUt8/hItwkO0PGp5yPv
	0HjaRzXzkzEb56KQ5FEzPyUbL6WZMa8QglVY9g6yTDiBrAmEQJADksOY1CUpLSvf9pdgigNghCV6B
	0x7555otrDK+gWSHATZTfkmzX4X3lVWNFVHilOagqpDMvapay0cW+GsmBtobFn+nAKHI6MQUdcN/2
	5Yq53FcgUyzAEQYhhZMJ7+vbWpQAG0eBaWqtUMbMO/daFUDIiPYt8eM92/SL1CxZ8cJNUauEGv/+A
	QLj1gZEFLqA5chzGFszw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfx64-0005e9-Jg; Wed, 26 Jun 2019 01:51:40 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfx4s-0004vD-Mt
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 01:50:28 +0000
Received: by mail-qt1-x843.google.com with SMTP id n11so694219qtl.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 18:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Giz/tsPpTyW9yztEoYtJ2Vh87xjSR4TzvGjoDv4dI4o=;
 b=W1DC6Kwa90EgPY6Bsh3apm8dUDAyb+G0dKn/Rkud8kG1xrDEkEdc0rw1gy1wgRdMed
 yl0nQMLgrsoduUg4/1eK/L7gkRAb31F2c22/veNpbpH2DQnFPdNwbgzjPCEWrPAsni3I
 BmwNy2ZjTB4CyZTdYyUTXR7GHDavoQsxzZYjR9p4pModYd66Se4NsVce/zPem+7XVrKs
 c9EuuSl92LeFE6qS8BkeSTSthyhS/68mHSs6nC/PThEttnkcF4cRm0GV0sYkHZgheEI1
 NK3gNWuKHNKnwNkgOpYawlLkVkMLKeygsyeuJtsE4Zn6GlS3MnXp8JVSoyPHOCdUHkrz
 /kCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Giz/tsPpTyW9yztEoYtJ2Vh87xjSR4TzvGjoDv4dI4o=;
 b=UDl8woTVr77kzYtblvshdfXa7JJ5g/gf3aYf6/FDqhgCp2FbyFgjK9o+Ti0cr9D/1n
 pM64bqP329lWhroNwBpj8bGfsTFFkAGW+aEPc4RUziOEIvDj0CFKXLiLZO9dQ4NJMdUA
 vzjxyxA3VI2BjzV0gR0HKX/b7UeHl3JxOXPnE+QkAv8TYjXLNhG5bNWduHVQRa8Xt5tN
 TIj+fwJpBh+7/7/9Eu2Q+uSFP2AcqOdeHtV6QJkvo1C0DjEZIDxRWNg1Hjxd+5VKYL0I
 imq85C7pa+tBTd4c0F3Uf5kKo+xp4XNyvNy44sYWiccPz58Qyhtgg2JepVgkc3vSx3ox
 C4ew==
X-Gm-Message-State: APjAAAU16IGlkFKjXcYpEb5cGfJLztHtoEq28t3iB5UyZ8qrGTSQrUnv
 BhlNo7LPvcEta3lbUiJ8AOvRqnsU2ONyfw==
X-Google-Smtp-Source: APXvYqxomLRD5Lkrbi3TGCdl8/ytt9NOLMjzEDwCn7jTQUUQzzMPncdAdCdOBf66LCUVOJGPrBx1GQ==
X-Received: by 2002:aed:220e:: with SMTP id n14mr1380151qtc.388.1561513825357; 
 Tue, 25 Jun 2019 18:50:25 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id a54sm6523437qtk.85.2019.06.25.18.50.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 18:50:24 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Jun 2019 22:49:47 -0300
Message-Id: <20190626014947.19818-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626014947.19818-1-cotequeiroz@gmail.com>
References: <20190626014947.19818-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_185027_298310_0D78CBEA 
X-CRM114-Status: UNSURE (   4.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 3/3] hostapd: adjust removed wolfssl options
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 Eneas U de Queiroz <cote2004-github@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Eneas U de Queiroz <cote2004-github@yahoo.com>

This adjusts the selection of recently removed wolfssl options which
have always been built into the library even in their absence.
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
