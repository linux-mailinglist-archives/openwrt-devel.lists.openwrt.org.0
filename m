Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77CC467A2
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 20:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFgrWqlJ+IKD8xlEpGWEjCUUC0tRQZ21vvtkVVm3rMI=; b=L+Cfp1sdDxgqNt
	1+IMd3GojQzCQusFKLJ8hKWtMjRzHbrSiq31xGzplrykJ5s1QwVG5IoMr/PHIvwF7DBck/bPPU40x
	6iXPpQ+Fsx4LtMqekdloEb/vLwJ75JwexVNeMv5GDPaBT9mDawSkxRB9e5jGS9t5fziHc+NmWADQu
	rT9MFLm/ZZdFZm1aCFBVxGbrAumcgWaxMyYASZkkE9wX4f00gmxMbrDb9iBuMPyak8gBMLUb2+W/+
	JmuKZxyQOr2hc6o3UySIIuFsdSaD+ST1lA9dNRgh00TVKZjJpWxmdxguar8U66o5uNUmMsRFjK/ch
	L+agHMgLN//KJm8JMmag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbr3q-0002ZQ-El; Fri, 14 Jun 2019 18:36:26 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbr3E-00029B-D4
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 18:35:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so1353586plb.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 11:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kqH5lBg5HE8GGrdZX2pyEIrW7c/cm4WNl1buVDaqKyM=;
 b=vOCKW1Q/4FLAZQk4iCC8oGNLn3DpQOmWFlipq7IojSfY+7Hunq49u86z2QIz3LMAE7
 3h7DwyTup0eflHmsSv6OMzjjH+g/hKBDwy5IBeowmLVpeFj1AbMJu1/3Zuq3aKBYB4/W
 nPBHFMmkFiiBYXp670WLAxxtlDzYV2QMPv/QcdGg9wLTMnOm8mjtmXE9NeN3HiXEpGBj
 2LMozV5wHpwMLxk9bskiAdFLUpz3XhKQSNSwD/fUmIEfDyinyxBv8pMNYH/+fE2W/WCQ
 P+5xBwnzu1QZsG5bIv821OnSOp8bqLcfFxIwr1BgQNRu0/1rqEwaNlJjvRySZdJpu927
 KXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kqH5lBg5HE8GGrdZX2pyEIrW7c/cm4WNl1buVDaqKyM=;
 b=Nfh04M/+JgWOzK+T8c1/TakpdoGOtMnNbR6Tqa+jcI4Gxp0VogNwYNuZPlDm6nk9l1
 MxFQq5/6GcviLNSNZtaoLZGRn6G3UL4IYaCmW/1o+YPIrk/P37KOvSnft9Rfb3qlZtTJ
 VfQOxaqACCv6YEmVJHljz/CyBMde/28cC8LzmZnCx9eaxE/XdA52TmEIGQ0xmT6Bq/zA
 oR8s8HFp/3QWvSbDEa2B90dBRQBjVEGYfVmpUT3Dg/fY+9xX+lDsDxNAebZdYDkkiQJz
 vOGMT/E8qPpjBgS8WVdLVX+sq7YrRinR6/V47O6AM4XOKJPGwT/vM1vzCqxRF4Md2fRk
 /ywA==
X-Gm-Message-State: APjAAAUr+53mxngH20oV7qRNoRSwqO4C4SQczphW0NWrB7rOql2pLjEl
 blM6KFMralgC6O0v4Pi/rzPqVhRyoZg=
X-Google-Smtp-Source: APXvYqzRdl6kziTnJeJ08O9thMa8CwJVMBeVL9eIoLBvhl+R9cjobYQ3CjCmmNcbzALDjC1hQ8gMYQ==
X-Received: by 2002:a17:902:2884:: with SMTP id
 f4mr8179685plb.286.1560537347584; 
 Fri, 14 Jun 2019 11:35:47 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id a24sm3388775pgb.85.2019.06.14.11.35.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:35:47 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 02:35:31 +0800
Message-Id: <20190614183534.14768-3-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614183534.14768-1-jeffery.to@gmail.com>
References: <20190614183534.14768-1-jeffery.to@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_113548_455477_1D98888D 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 3/6] tools: Fix unintended lib link in
 $(STAGING_DIR_HOST)/lib
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently, if the $(STAGING_DIR_HOST)/lib64 link already exists, ln (in
tools/prepare) will interpret $(STAGING_DIR_HOST)/lib64 as a directory
rather than a link name.

The result is a symbolic link named "lib" inside
$(STAGING_DIR_HOST)/lib, pointing to itself.

This adds the -n option to ln so that $(STAGING_DIR_HOST)/lib64 is
treated as a link name.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 tools/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/Makefile b/tools/Makefile
index d7207ba89d..f3d8debe23 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -138,7 +138,7 @@ $(STAGING_DIR_HOST)/.prepared: $(TMP_DIR)/.build
 	mkdir -p $(BUILD_DIR_HOST)/stamp $(STAGING_DIR_HOST)/include/sys
 	$(INSTALL_DATA) $(TOPDIR)/tools/include/*.h $(STAGING_DIR_HOST)/include/
 	$(INSTALL_DATA) $(TOPDIR)/tools/include/sys/*.h $(STAGING_DIR_HOST)/include/sys/
-	ln -sf lib $(STAGING_DIR_HOST)/lib64
+	ln -snf lib $(STAGING_DIR_HOST)/lib64
 	touch $@
 
 endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
