Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1705F1669DA
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 22:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4rCtnw6aj5fv198EbrFF40WMpYjvbgKOKfRUr9V9Tk=; b=DLeg2rYzdsZPse
	B7nq4obvlCaqqYLv1Ocxq9DteSyHqtg1xyu0C2QYaZkP8ehqpFOVxCNcZC0Vs6QUMiOwZIkjCzmbv
	lgP5zk8oJ/klwl8DDaA/60Ucm50SrfVUQdMufN27XShvOyDEDAvpXq72y42hyD7X4F5HFt7AzApFC
	ewGEGpDG1lqDtaM15MPiX6chjfhBB7/PHWcqHeYemVEqHxpAVlPyy2w8Mvi9FUvCI92rGb8gWhOyA
	8pnqsrnHzrfZsFkVGhaCGr4VK/lKwCToxtZ1zg1jtsllgRETuskJZf01Kxnj4m3autjJL6fS6j5VV
	XzRczgLcVGEd9xJ7fgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tOl-0001zv-RW; Thu, 20 Feb 2020 21:30:19 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tO7-0001ZV-Us
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 21:29:41 +0000
Received: by mail-qt1-x843.google.com with SMTP id j23so3988998qtr.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 13:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Grk3tsnF92Je6Jh3WcFsp47QfKD3/H9iQLEBvEUg240=;
 b=SKW/LJDEzsygWSxdcDsxJLGkedrnpCUgNjZsgi696bmFtrwcFRIP7QiDEU0zMF8OAr
 pruoU9Ll4Bj7mfF0+XBHhoTYMtULX47bP8JelGmcToFn8uH+Y02rsyVe09Sew49CSMoW
 cImBDc/2jeIGmRT2vOCk0Lz/J+jTlOD/CsWseFsLyGMom+9KTCBHjZq9ZMhthI+l8xw+
 c7B+mzw3zmKgG/AFdKP0WI6IMni3IZnBMALq56LjA9jWbZrrhw4JQDSJGBCPud0ji204
 r6QAFjfItsncGEs7l2Jcm1Aa7BQB/C7/YEYhRT7gqa1L+1MMgAqYLceshw5pvL7rp7Q+
 TbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Grk3tsnF92Je6Jh3WcFsp47QfKD3/H9iQLEBvEUg240=;
 b=q8bv6NM3iFvhwA368NF3ZYWMgLTjFd5QZAprQnlWIUwLbI6CKJK4G84FUlR2NACyQu
 GpvgcnPEd/A9Wrti8tUKdso9Tm4DlU8G/f6Xmqo7mkREv26fKH42ahmG1t400KOLY2jM
 Y/NvTOFgUrv+aho1wL1C8ueimfAbx0VOQEFhLM/YEd4/W+A/HRqNiUqW4LHL7uyV9C4u
 z10Jk1FfPsWYbwrMhWCGhVaxRZrkuppQ4xCANnyKh47QD07Qg0n/okvPz81wnR6xO92t
 XWXRZoQyHpR44dKn6nQGJ0miHOzvfeE763vWbQ8PRrs/JgB/i0vlCv2ZUeVVhXEOyEw+
 CoDg==
X-Gm-Message-State: APjAAAUELVF17JPNu4DXLG/eQztt0NLVDRNdcE83rRGflmqeBOWchUHl
 UHVcgYYjCg0H2dTWbY7JC1v9tPUG
X-Google-Smtp-Source: APXvYqwPlSnrWbspKQ2KeklKChx/JqL/d67j1gLfJS4FL31vZVftBrfKxe+Fh/w2gtuq3GOGRDCTzg==
X-Received: by 2002:aed:24b2:: with SMTP id t47mr28047331qtc.337.1582234178417; 
 Thu, 20 Feb 2020 13:29:38 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id t23sm412480qtp.82.2020.02.20.13.29.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 13:29:38 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 18:29:03 -0300
Message-Id: <20200220212904.2444-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200220212904.2444-1-cotequeiroz@gmail.com>
References: <20200220212904.2444-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_132939_994033_60939C1B 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 2/3] build: call ipkg-remove using xargs
 if #args>=512
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

To avoid that, a maybe_use_xargs function was created that runs the
command straight as usual if the number of arguments is < 512, or saves
the list in a temporary file and feeds it to xargs otherwise.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/include/package-ipkg.mk b/include/package-ipkg.mk
index cd052698e2..351cf25394 100644
--- a/include/package-ipkg.mk
+++ b/include/package-ipkg.mk
@@ -18,10 +18,20 @@ IPKG_REMOVE:= \
 
 IPKG_STATE_DIR:=$(TARGET_DIR)/usr/lib/opkg
 
+# 1: command and initial arguments
+# 2: arguments list
+# 3: tmp filename
+define maybe_use_xargs
+  $(if $(word 512,$(2)), \
+    $(file >$(3),$(2)) $(XARGS) $(1) < "$(3)"; rm "$(3)", \
+    $(1) $(2))
+endef
+
 # 1: package name
 # 2: candidate ipk files
 define remove_ipkg_files
-  $(if $(strip $(2)),$(IPKG_REMOVE) $(1) $(2))
+  $(if $(strip $(2)), \
+    $(call maybe_use_xargs,$(IPKG_REMOVE) $(1),$(2),$(TMP_DIR)/$(1).in))
 endef
 
 # 1: package name

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
