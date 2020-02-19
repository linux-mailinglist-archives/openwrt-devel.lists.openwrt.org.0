Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0551651ED
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Feb 2020 22:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UB1lQgoSygb109mGbCoeiFgULI45ICijPbo68WhWpzs=; b=g5Sr68vo0XhH4C
	b7UfKHcQdRdImQ+m9G1mOllE7ggNCHbzuMa1lkiPzJiAdrp+L7GCWaqemLtvnwBnBug7TaUThju4x
	Adsn9sYjYCNHO4/Q1T5gEICWuPhsIiZCtzM7MB7wuPYrkjih3+Cd6KOIaJ+CazexIqPMyBO8n61yi
	OZK0DpwLb2K8NUXwjcsYltnc6soYcmJZaY2dqEnQuKDQP4z0lhm4x/dQP1nPpg1o5JMw0df8JWnNU
	q8+Dxx1RZtg2EsPQVQtEG8T7FaFq/p+Zglwr9R78jzdm6l7zRw0a3j+9voOPR4nPI1Gd3FcCjfnC5
	jI6NoXT8ofYdbod91q+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XHH-0004LP-5z; Wed, 19 Feb 2020 21:53:07 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4XGr-0003yD-4i
 for openwrt-devel@lists.openwrt.org; Wed, 19 Feb 2020 21:52:42 +0000
Received: by mail-qt1-x844.google.com with SMTP id d5so1426872qto.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Feb 2020 13:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wmdDmwGLAeNOPbtbCSsOXFy76M04Pl7sLcDC1bxol0Y=;
 b=EaBVhP18HgqKXMSG3ckjm8lOWVD91xxjqQksQ3OJo0ssuOvzVH19DM1cz41GNuiPlw
 IH4r3JKYVIuGsm//XP0vBmc6PxT3UTRcNOgRuHd5HjxyOF/LCJC7j0M0JW43Jb9LCUtC
 F39p5+DU9QEWjHOnCwewpEt4S3zqD0KXjE5GtzUX44wH9cjtV4BYH/MDPvDi+UFBDLY4
 ooo3rkiJP/+Oim5VHfF25906hdSf6WWjfT3dpfIBj3HARvDuZbVi4OGcNM1+sj+rRGFE
 LVE80MLLPVkMfNesW/OBlyR3Vp10/448ztDEOe8WkitVkDwBZsr9NUa0XuxMKheIYjni
 PKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wmdDmwGLAeNOPbtbCSsOXFy76M04Pl7sLcDC1bxol0Y=;
 b=rZajxN/bJiD3tdg2Qbg2D6TnfHozX2kD6AfF6EoTwMFORE9hhUBBxT1Gv1JFGAMuxR
 L+RmANvwJuaWkSGWZ4Kv0V66g/8VBYUcHEn0gZUzV6/uPZC4Olwt818tutXZ1gGNbhxI
 313+scDm5oGgyGl6AG8Czphvr0x47zCMJP0HsbKmIOlRgJaWJTRMkp+0lgjAcYVop0xW
 1Som6oU4+UlhRE16jq7vBBO/zbok/2fK2OZqqHUMSJ5A290EIxCMlWeKdCK9qCkbrUPF
 Qqhg0OvOmx2zrJDDTBkaGPz/lSrN1tdbki0z7eg8xvusbrZNSLhhuTDXBruN8kTuB4JQ
 RcfQ==
X-Gm-Message-State: APjAAAXVgf6Ka8v787RhGfIodFCTCTkTpZdm+QgX1Px+jtJmXkbEK4dJ
 bOo3aK5n80HKCVU/f2MNalFyVuFH
X-Google-Smtp-Source: APXvYqzYOkRYeC7HiKL+F44FFLfefJr51UTOjnZP1QKZHDvJc/T+Oh8Afxf8wCb0qEPC7CJXqWgroQ==
X-Received: by 2002:ac8:65da:: with SMTP id t26mr23880920qto.5.1582149159693; 
 Wed, 19 Feb 2020 13:52:39 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id x3sm714904qts.35.2020.02.19.13.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 13:52:39 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Feb 2020 18:52:12 -0300
Message-Id: <20200219215212.31263-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200219215212.31263-1-cotequeiroz@gmail.com>
References: <20200219215212.31263-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_135241_209555_FFBD9AD4 
X-CRM114-Status: UNSURE (   6.36  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/2] build: call ipkg-remove using xargs if
 #args>=512
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

The wildcard call to clean up luci package (luci*) can pick up over
2,300 files when the full tree is built. Running make package/luci/clean
or a second run of make package/luci/compile would fail with an
'Argument list too long' error.

To avoid that, a MaybeUseXargs function was created that runs the
command straight as usual if the number of arguments is < 512, or saves
the list in a temporary file and pipes it to xargs otherwise.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/include/package-ipkg.mk b/include/package-ipkg.mk
index 5f7f2583a2..f2c31d1d3c 100644
--- a/include/package-ipkg.mk
+++ b/include/package-ipkg.mk
@@ -18,10 +18,20 @@ IPKG_REMOVE:= \
 
 IPKG_STATE_DIR:=$(TARGET_DIR)/usr/lib/opkg
 
+# 1: command and initial arguments
+# 2: arguments list
+# 3: tmp filename
+define MaybeUseXargs
+  $(if $(word 512,$(2)), \
+    $(file >$(3),$(2)) cat "$(3)" | $(XARGS) $(1); rm "$(3)", \
+    $(1) $(2))
+endef
+
 # 1: sourcename
 # 2: package files
 define RemoveOpkgPackageFiles
-  $(if $(strip $(2)),$(IPKG_REMOVE) $(1) $(2))
+  $(if $(strip $(2)), \
+    $(call MaybeUseXargs,$(IPKG_REMOVE) $(1),$(2),$(TMP_DIR)/$(1).in))
 endef
 
 # 1: package name

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
