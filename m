Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AEA18C025
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 20:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6UH+47XdYQ+dY3r3bXP9kuLU9NpKK116oTJYpDmKBo=; b=DgH2UMm3aOCkNr
	yjowG3CvI0nqeDeQ060kGkdhXobUKW2uQaT8Zf4rdIYt7+TB79Q/UliXcgDb0xMMfzwKiWk1aHqnO
	sazquoc059pydDCVoyEidZ66CpLqmMJItxwHAlKrnyK5XNj8a+16sl6BpyoYWWbTO89M2DPhyJqLA
	KIMYHNs7ZUN4jLljRTeTCrSKciSsc32FG0fnNPATq5B1qloRsABBm14Zt99osMSyEtw7L/nnwvlHo
	V6+ZpoPHyHn1Ts5t4Wu5e50NiKiSNk9hgL6Iy4XA6BDC8FxGQGJ8qxD8Z69X7dEIk7ns7uATt50Ud
	/r67smxUtJ4svXVliFBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF0ax-0003zk-QQ; Thu, 19 Mar 2020 19:12:43 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF0aj-0003rR-70
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 19:12:30 +0000
Received: by mail-qt1-x844.google.com with SMTP id f20so2867992qtq.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Mar 2020 12:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eOB2GcxtWSPLLLDV6MC6PxeHjj5jpDzKzBgje6EcnjQ=;
 b=aeIF96cYNZNLV8cga3u9NRwkArlY3z/TskC3V8Fs2aYJ0FY/fuOL27sGl8QRsRXsz0
 Ub0pIF+ikGKlnvzLSeNmaA8wgsFjG7sF8r0oPS6PG3Lz1EDTpG+p0ra6z/lNCu3sEryr
 oECZB7ymHrDZealQfSispXc8nOmBN9s/zb/+UF2fVvuhXohemIVVuh7l6OuNI8eko+s9
 6qjaF3niBhzNLN6it2OJTkQ25MHZO10iNn+19CVVbpb+mmW+C0FeWcRV7a2Rw11O1Tb7
 HnNy0MkZ7U+pG0QKXFxUR0hdwFqRmimp7OrqoFj2/3FKAPt6YJNIboxRGrkMwOuwxrZ6
 NTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eOB2GcxtWSPLLLDV6MC6PxeHjj5jpDzKzBgje6EcnjQ=;
 b=aGw/ZLjnVkuvbC82OkDFO78kzCs7BIAgNZUXeFrZbMiyYjFC1GAnCUGy5h2EhEXCel
 XEBX1XaGFX/RKH9MO0ENkX8QcQHOkV5JYYAmLitiyW4D2ImcNAEyfhE9R1PUemk3tMcw
 vjdUm3nDkwL+tXSydAXPPwMAqP28i6P/TTFhvcU1Q08XxS7f9y06npjA4Xw7RrRIOhPI
 Y3XF4tPQm1rRJ4rMZp9M7ahTXtRVR9oTxQZq8HXx5UJKG3ldQSQzQfRI5J7lP3b724wc
 4CFeieg6qgiIE7DBe3UxmJLBMOFJLI64EfRaf+gHfd9cnsSOELnste0fmai8C8GHrn9/
 ANPg==
X-Gm-Message-State: ANhLgQ09WUmg8p7WGc5CObITWD4OtAiOO3vsH/UVy0U+gemjsBF4YLjB
 EIO6tgnAaD8XszX8p7svLaiLj8jYpxI=
X-Google-Smtp-Source: ADFU+vujA2YOGsNUN2kLkN8UDdQCGS5EhGefE6yhBcpLsCT3+ng/JaTTX+Be7sQlqVrXCRpFjePZMw==
X-Received: by 2002:ac8:1196:: with SMTP id d22mr4675834qtj.344.1584645146576; 
 Thu, 19 Mar 2020 12:12:26 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id w204sm2112481qkb.133.2020.03.19.12.12.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 12:12:25 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Mar 2020 16:12:14 -0300
Message-Id: <20200319191215.30710-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200319191215.30710-1-cotequeiroz@gmail.com>
References: <20200319191215.30710-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_121229_267972_41CFEF8E 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] openssl: add configuration example for
 afalg-sync
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

This adds commented configuration help for the alternate, afalg-sync
engine to /etc/ssl/openssl.cnf.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index eb267f31f0..ca393be88f 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -11,7 +11,7 @@ PKG_NAME:=openssl
 PKG_BASE:=1.1.1
 PKG_BUGFIX:=d
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
diff --git a/package/libs/openssl/patches/150-openssl.cnf-add-engines-conf.patch b/package/libs/openssl/patches/150-openssl.cnf-add-engines-conf.patch
index 6c7143dd7e..81d41963c6 100644
--- a/package/libs/openssl/patches/150-openssl.cnf-add-engines-conf.patch
+++ b/package/libs/openssl/patches/150-openssl.cnf-add-engines-conf.patch
@@ -1,6 +1,6 @@
 --- a/apps/openssl.cnf
 +++ b/apps/openssl.cnf
-@@ -22,6 +22,53 @@ oid_section		= new_oids
+@@ -22,6 +22,82 @@ oid_section		= new_oids
  # (Alternatively, use a configuration file that has only
  # X.509v3 extensions in its main [= default] section.)
  
@@ -16,8 +16,37 @@
 +#padlock=padlock
 +
 +[afalg]
++# Leave this alone and configure algorithms with CIPERS/DIGESTS below
 +default_algorithms = ALL
 +
++# The following commands are only available if using the alternative
++# (sync) AFALG engine
++# Configuration commands:
++# Run 'openssl engine -t -c -vv -pre DUMP_INFO devcrypto' to see a
++# list of supported algorithms, along with their driver, whether they
++# are hw accelerated or not, and the engine's configuration commands.
++
++# USE_SOFTDRIVERS: specifies whether to use software (not accelerated)
++# drivers (0=use only accelerated drivers, 1=allow all drivers, 2=use
++# if acceleration can't be determined) [default=2]
++#USE_SOFTDRIVERS = 2
++
++# CIPHERS: either ALL, NONE, NO_ECB (all except ECB-mode) or a
++# comma-separated list of ciphers to enable [default=NO_ECB]
++# Starting in 1.2.0, if you use a cipher list, each cipher may be
++# followed by a colon (:) and the minimum request length to use
++# AF_ALG drivers for that cipher; smaller requests are processed by
++# softare; a negative value will use the default for that cipher
++#CIPHERS=AES-128-CBC:1024, AES-256-CBC:768, DES-EDE3-CBC:0
++
++# DIGESTS: either ALL, NONE, or a comma-separated list of digests to
++# enable [default=NONE]
++# It is strongly recommended not to enable digests; their performance
++# is poor, and there are many cases in which they will not work,
++# especially when calling fork with open crypto contexts.  Openssh,
++# for example, does this, and you may not be able to login.
++#DIGESTS = NONE
++
 +[devcrypto]
 +# Leave this alone and configure algorithms with CIPERS/DIGESTS below
 +default_algorithms = ALL

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
