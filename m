Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C751C2DF4
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 09:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VsimPD+F5TXqAoSf2bsnhOefL53Psnc3aApI5smuzQc=; b=X4E2tDM7HUGNTNUVE6aq3rHvD
	hl41BC8DJy+86nxtbLU+3HkVX2Xgb2geODnIMEzh6rtp9XAlD/qrTHvYol0H4Kfj+BVR+EKh/VEin
	pQ3QAAo1izNaIYikmuIXJbFb1vfF5B7R0dP9cUpybhWEsWtVFzfbjJPDnA/3OBN+gTCD8k2OAG+H3
	t2WQ/RBRN/le6TE4XghsVVPPSv9A+atiitHZ3KGhakpwU23GXZdT3fZ7q/DV7YrhEj8p7rm2+qC0N
	FFp7saiDZ3dWc8uES2Qm3waSVoli7T02qkWUUuJBh2T9fwYSCfJ9/m8RE3I8HWr8/NsGwF417oMgV
	245yZNBzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCr7-0006HR-Py; Tue, 01 Oct 2019 07:45:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCr1-0006Gv-O2
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 07:45:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id z9so1019163wrl.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 01 Oct 2019 00:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=P8cgQXiUjfS7Qm4Qs5nLPFc2TCA1Ji2GIYlEFi7Wl9A=;
 b=XxItanyURyP0nK53I+6RuHg/e42UBsOO8QbZ/37TDxRdF1x89xNGYTeL6oAMAxlUu5
 mdQWjWiTguj0i6Dgj3bLi/qi8XmDxSB2A+t+XViryqcTxw6cS+AVZUMCI0kU+lNwQbAG
 L57iO6bg5O4pUh4DTa1GKcOFEANrrpOeyNvRh0UoYm5tNTyO8e6mTdHqAfYPKLQKbaL0
 DZ4yXXrn4X8cf2nD9JtEx+s0IqeKm4oQVPFWfgu8N3THLuhi05+gWVqZCjmneEoKnHtf
 0tHadrhpT2cqDrc+jqXz/m+vcI7MX8LECAHrKMfT1szPIC+sAccTDrBN4egEGdQJDNbM
 ad/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=P8cgQXiUjfS7Qm4Qs5nLPFc2TCA1Ji2GIYlEFi7Wl9A=;
 b=fMgsNu0hhWcFb0ZcvXR1ifmhBjhgjt99mheP2CtbuppbJYJecIpu2OHxkWwOb0O/4Z
 ge8JEJ+LUXfUjdjkldfvEJhu+Cyu2sC9QHNQGmwLwRJLHOONVsxvzfduUqs55ijvStoP
 LZu+wt901c8/5ebztQRYpEkaWL0n9K/SK8pGkVpHdajTY6vWSMIbV8un33QC/eFWVaTk
 K0QUuVxzFUr2XMKm7zWe6Ls2ya9xbxmkj7zQUAQFs0RtDsJ2cAHf2o3UOnqz00NB6unF
 uM4zKmM71ENkasJPaMWCz3mvxh/d5iwzXOdbrob3JzZcUUDKQZ9oAHcTkUpKYXG142jf
 Mzhw==
X-Gm-Message-State: APjAAAVrTLJXELbcYehfQIXhBHqSkYa/kcUcoOqBbCuI5yHxTD0NvXQw
 fAldN9IYxpjk4StlFl/gfasnaO7G
X-Google-Smtp-Source: APXvYqzXeR75FP4otsduVcKNo3aa6zCNjzKGh0dxGwskhXOeDVCQSs2G7qZiRJn7hm2cH4jrH61V/w==
X-Received: by 2002:a5d:4251:: with SMTP id s17mr17258694wrr.126.1569915949532; 
 Tue, 01 Oct 2019 00:45:49 -0700 (PDT)
Received: from mamamia.internal (a89-182-146-189.net-htp.de. [89.182.146.189])
 by smtp.gmail.com with ESMTPSA id
 l6sm1724038wmg.2.2019.10.01.00.45.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2019 00:45:48 -0700 (PDT)
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20190928204447.19627-1-mail@aparcar.org>
From: Andre Heider <a.heider@gmail.com>
Message-ID: <b8c01354-65d6-3cd2-0c76-62c538351137@gmail.com>
Date: Tue, 1 Oct 2019 09:45:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190928204447.19627-1-mail@aparcar.org>
Content-Type: multipart/mixed; boundary="------------28B8B88D8A377655B20EA1AF"
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_004551_804141_9DF20390 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain/gcc: switch to version 8 by
 default
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--------------28B8B88D8A377655B20EA1AF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 28/09/2019 22:44, Paul Spooren wrote:
> Main motivation for this commit is the introduction of
> `-ffile-prefix-map=` which alows reproducible build path.

compilation failed for me, it tried to use -iremap. Maybe you used 
CONFIG_GCC_USE_EMBEDDED_PATH_REMAP?

Attached a fixup that works for me, runtime tested on sunxi.

Regards,
Andre

--------------28B8B88D8A377655B20EA1AF
Content-Type: text/x-patch;
 name="fixup.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="fixup.patch"

commit 818244878603e8cb45d06473f2a5a72c5f9254a7
Author: Andre Heider <a.heider@gmail.com>
Date:   Tue Oct 1 09:37:52 2019 +0200

    fixup gcc8

diff --git a/config/Config-build.in b/config/Config-build.in
index 9669fc86c7..872e5c12ab 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -243,7 +243,6 @@ menu "Global build settings"
 		config PKG_CC_STACKPROTECTOR_STRONG
 			bool "Strong"
 			select GCC_LIBSSP if !USE_MUSL
-			depends on !GCC_VERSION_4_8
 			depends on KERNEL_CC_STACKPROTECTOR_STRONG
 	endchoice
 
@@ -258,7 +257,6 @@ menu "Global build settings"
 		config KERNEL_CC_STACKPROTECTOR_REGULAR
 			bool "Regular"
 		config KERNEL_CC_STACKPROTECTOR_STRONG
-			depends on !GCC_VERSION_4_8
 			bool "Strong"
 	endchoice
 
diff --git a/rules.mk b/rules.mk
index b140fbca70..7063cf3ad6 100644
--- a/rules.mk
+++ b/rules.mk
@@ -139,11 +139,11 @@ else
   TOOLCHAIN_DIR_NAME:=toolchain-$(GNU_TARGET_NAME)
 endif
 
-ifeq ($(or $(CONFIG_EXTERNAL_TOOLCHAIN),$(CONFIG_GCC_VERSION_4_8),$(CONFIG_TARGET_uml)),)
-  ifeq ($(CONFIG_GCC_USE_EMBEDDED_PATH_REMAP),y)
-    iremap = -fmacro-prefix-map=$(1)=$(2)
-  else
+ifeq ($(or $(CONFIG_EXTERNAL_TOOLCHAIN),$(CONFIG_TARGET_uml)),)
+  ifeq ($(CONFIG_GCC_USE_IREMAP),y)
     iremap = -iremap$(1):$(2)
+  else
+    iremap = -ffile-prefix-map=$(1)=$(2)
   endif
 endif
 
diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
index 7d7f34210a..3882815d7f 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -21,6 +21,11 @@ choice
 		bool "gcc 9.x"
 endchoice
 
+config GCC_USE_IREMAP
+	default y if ( GCC_USE_VERSION_5 || GCC_USE_VERSION_7 )
+	default n
+	bool
+
 config GCC_USE_GRAPHITE
 	bool
 	prompt "Compile in support for the new Graphite framework in GCC 4.4+" if TOOLCHAINOPTS
diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index 1a86bcb8a6..0658f3d52b 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -10,11 +10,6 @@ config GCC_VERSION_9
 	default y if GCC_USE_VERSION_9
 	bool
 
-config GCC_USE_EMBEDDED_PATH_REMAP
-	default y if ( GCC_VERSION_8 || GCC_VERSION_9 )
-	default n
-	bool
-
 config GCC_VERSION
 	string
 	default "5.5.0"		if GCC_VERSION_5

--------------28B8B88D8A377655B20EA1AF
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------28B8B88D8A377655B20EA1AF--

