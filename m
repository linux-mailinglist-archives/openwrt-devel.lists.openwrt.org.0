Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78575C3658
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 15:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sd9rcRvMO+0iGbg3acKPzKKJ3PuEGMvz3t0MUnON3jA=; b=J9DRYBmE0hnPGF
	cpSUTpkk1g2Gm2Sf33At1WUkE7xdHaiW9npccL99WGZobK7lusv2QDPTZeVHewMEkgowWjCmVcffI
	3JvwNcvZocfViAw2jzADKHo+jjc/SQMFxVV6NSqaVlF4I2p607TKTFejIaZmNhwvq3wRVxr25c6X5
	UH9B4Me9ZzY1f4BGYW60QV5h0cRv5DmtFQf9upFjJELTqW80ZyG6AS2TPDd/fLQvGRHpXV5pWBkK1
	s44kIxI8Gd8+ZjSuHqDdmJ146TQbHDCJ/H75fzq0UTnQ8RMKdpGDH3a9ZKKtFj/w2NhMLI6HpsQPh
	dyf1cjsFKmV0c9GSdr+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIYJ-0002cm-Cv; Tue, 01 Oct 2019 13:50:55 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIYC-0002bi-6j
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 13:50:49 +0000
Received: by mail-qt1-x835.google.com with SMTP id 3so21692908qta.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 01 Oct 2019 06:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PljsCP6K5SQ9s5oiZVZEbUip8buPi38vkX+jNJ92Jd4=;
 b=C4KSl96MAzeeXWkLsxKcu8+tty6imD6ty+K/t0WviZPfl7vL1vW0NlPBjb37JAVbZV
 TmtFLpxqkCIFiNif9SnKjYJDo323SX/whCwJd1yXhedc4CQ2J0AvHr23qwz3TseNYb58
 FxfgHAJhgTweTpz0uFp+3g6K0pcFrmc1I6vk3dxGZouiOYlj1xVQO5Utu5QYDQsPycfB
 rAfdvS7MV+jFaC1bGtAvkoFenPxnlbqFBprP074dJdFjAItagG+yRpKxlaoDtbpzIpVK
 JUdg/IFG+R9bTiiJOEW6UCXwC/Han6mgklmjRNiDcAaLhrOXJKHEugUvvughKoabQBJ0
 +0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PljsCP6K5SQ9s5oiZVZEbUip8buPi38vkX+jNJ92Jd4=;
 b=Hw5xCEFNYtJlgsAGr+71ylfPAt1j49TMO/pjk8NdyELHKABza2ODg7eILOtkpJhkVM
 XP/0qfOmtDpcsR1vJ0LC6dKCLuT2sRV2uLrlNKoUHkGihI8B3KHwF4RQ8eclchYBqqOi
 6ogFCGrG3cFH4eGqCNGjgLyzMyVyTrGuM3M2s21VS5K29z1YKTgHCF2J6bdmy0EsvNTF
 UAQGb+NjHJm20yPTzXQd/V8DywXF+RKqpy7JZABQk6Ga8W0sbeNlMUAZ7PSv2dPi0SBt
 fLw9Pd/iYGpqN033csQsgI8j1ant9xObpSGwdrrbSvs90tmDcxqUErNuN4BwE+EKi2Nm
 DO2A==
X-Gm-Message-State: APjAAAUlgz6uCo3PJLNqjJg3Lpo6ggr92TF7LNlyz4o2NNcY7z1GlSfY
 9ODO2pEF5vgTxvIkg2vxx5QfeZJo
X-Google-Smtp-Source: APXvYqzEUVcbDqhNzKdSKmNfWapXH22qIw3Mndr+mWnkV8/N1+yP6w448MYwG4iEXkQbzOrgsHjIEg==
X-Received: by 2002:ac8:7a93:: with SMTP id x19mr30804264qtr.149.1569937845948; 
 Tue, 01 Oct 2019 06:50:45 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e5sm11327731qtk.35.2019.10.01.06.50.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:50:45 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  1 Oct 2019 10:50:34 -0300
Message-Id: <20191001135034.14546-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_065048_246440_A23BFC70 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:835 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] openssl: Add engine configuration to
 openssl.cnf
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

This adds engine configuration sections to openssl.cnf, with a commented
list of engines.  To enable an engine, all you have to do is uncomment
the engine line.

It also adds some useful comments to the devcrypto engine configuration
section.  Other engines currently don't have configuration commands.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
This should be cherry-picked to 19.07.
Run-tested on WRT3200ACM without engines, and with devcrypto & afalg.

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 28625bad05..eb267f31f0 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -11,7 +11,7 @@ PKG_NAME:=openssl
 PKG_BASE:=1.1.1
 PKG_BUGFIX:=d
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
diff --git a/package/libs/openssl/patches/150-openssl.cnf-add-engines-conf.patch b/package/libs/openssl/patches/150-openssl.cnf-add-engines-conf.patch
new file mode 100644
index 0000000000..5cfe7866a2
--- /dev/null
+++ b/package/libs/openssl/patches/150-openssl.cnf-add-engines-conf.patch
@@ -0,0 +1,56 @@
+--- a/apps/openssl.cnf
++++ b/apps/openssl.cnf
+@@ -22,6 +22,53 @@ oid_section		= new_oids
+ # (Alternatively, use a configuration file that has only
+ # X.509v3 extensions in its main [= default] section.)
+ 
++openssl_conf=openssl_conf
++
++[openssl_conf]
++engines=engines
++
++[engines]
++# To enable an engine, install the package, and uncomment it here:
++#devcrypto=devcrypto
++#afalg=afalg
++#padlock=padlock
++
++[afalg]
++default_algorithms = ALL
++
++[devcrypto]
++# Leave this alone and configure algorithms with CIPERS/DIGESTS below
++default_algorithms = ALL
++
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
++# CIPHERS: either ALL, NONE, or a comma-separated list of ciphers to
++# enable [default=ALL]
++# It is recommended to disable the ECB ciphers; in most cases, it will
++# only be used for PRNG, in small blocks, where performance is poor,
++# and there may be problems with apps forking with open crypto
++# contexts, leading to failures.  The CBC ciphers work well:
++#CIPHERS=DES-CBC, DES-EDE3-CBC, AES-128-CBC, AES-192-CBC, AES-256-CBC
++
++# DIGESTS: either ALL, NONE, or a comma-separated list of digests to
++# enable [default=NONE]
++# It is strongly recommended not to enable digests; their performance
++# is poor, and there are many cases in which they will not work,
++# especially when calling fork with open crypto contexts.  Openssh,
++# for example, does this, and you may not be able to login.
++#DIGESTS = NONE
++
++[padlock]
++default_algorithms = ALL
++
+ [ new_oids ]
+ 
+ # We can add new OIDs in here for use by 'ca', 'req' and 'ts'.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
