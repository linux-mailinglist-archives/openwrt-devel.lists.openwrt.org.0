Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ADD1C2FEE
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 00:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7MbzyHKvTB8POee3ZkVovs+WZVmoJ2vDn/pmkN2eF14=; b=Gr+p0A5mQcaBIP
	5AqY0X7yhu9Gknzrh6Z4wQBoCdzrami4SExtyolyoYAT2H6bscAVMYPeLHFtq8Zwk5OUiNsOeJc1/
	eRg9+I17yxKGI8qWY5UQLA23aWpAAojZeoTvvHXjrekeDNi4qSJI8qPwFBHh8aQaDdKBJX9P4zUZ+
	wNQvncECc67s2VNjo1jZEbdoHnpRpQIFvEn1xz9SN9n4QQnKqqVW9NnTS8sTHvtFwNYLselhl8orc
	3XsuGLIRMScOQXDA1zK3MtIIDWX+/wjgB3OjTpSlKPipOWb8IMHm9j2VQ3eaag+FRdlWz1G06NQtK
	qzF8YHg6mywG+amvBY6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVMyW-0005TG-PG; Sun, 03 May 2020 22:20:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVMyR-0005SV-G4
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 22:20:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id d184so4638420pfd.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 May 2020 15:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iRN5KnT8NAw80T6iLtUsbAcG3Z7vRoIdKMtAVV8dzjE=;
 b=V1l7OA0Mc9BuMC1AJJETlMT/g0fXEUyJ4qpQDYCuBGdJq7wY7rR+xDjQg72LT7JpGd
 5YegniySO9qrmQGxb7aUOIlxwuKlJum3HFCOmRCO7CJ+oaUkGPbgrGzy/7cd/eGKZkuE
 BHWdUOrI4h6B7OhMiUjbyr6cN0JA2ywWJqKuWVp0hEvH/fyvRpFutbiRYBeIHh51+s7c
 RLrigGxprESCuNW2uLIbxKEAB3687ND2gYBdxTrddZLw3hb7lWT7Tt9MOI/oVOGfEotj
 PdwxPqal98BDOCVRkKauG1obxLs8he1xE1w3hTpwHNYMl6Tdq1GwM07Thnh3A08py8+A
 3esw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iRN5KnT8NAw80T6iLtUsbAcG3Z7vRoIdKMtAVV8dzjE=;
 b=ro5cFBYNG/teKnSAlfP7WEeKrM/nQ2MaH3iDJVf4rKmpoyGYa+9Kh6m1+Hp8DQ7WuG
 T/VE1ysc0MVYCQZJUlcqV5m0C0z7U3xzu3jCDkDG/aHs49zvtutmdilMv3ooJaq0Xpwb
 0MXu3IKcnc5vI2W5ffShsqQ/BriAe+WLPzLLfH5vC8IcqJe0wOiX09VoLrXa9myKyMKG
 +iyWGNj+mCeMEs6MnDg/65sVphrQ0ZB0GgzKPeBVnEm5LbuQyBdu4WsN0l0u6gzVcyAM
 Nu09W/O6ujfr2zIV8mECnDnGLydnUXh60Cj33FJC79Ow1dl/rdi7iqKqinGeRIFFLWEU
 NnTw==
X-Gm-Message-State: AGi0PuYNdpegJo/8efV13PbelQLdOEq+HhkA3LEyE2SfTohh7UKRcQXD
 j0YCApSiloC5xkUmEhkp931LW94gYY0=
X-Google-Smtp-Source: APiQypIF7zkn7kvPAbwiH1hH35f2w04kyoA4dX1JqIfNDGIxJPLFZ1OAezhPSDynV8MeNx5tycbguw==
X-Received: by 2002:aa7:958f:: with SMTP id z15mr9652832pfj.10.1588544433283; 
 Sun, 03 May 2020 15:20:33 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id u15sm4815308pjm.47.2020.05.03.15.20.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 15:20:32 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  3 May 2020 15:20:31 -0700
Message-Id: <20200503222031.395337-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_152035_558613_860F357E 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] tools/squashfs: fix compilation with GCC10
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fedora 32, it's not compiling because of multiple swap definitions.
Some inlining error probably. Make swap static to avoid a redefinition
error.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/squashfs/patches/140-swap.patch | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 tools/squashfs/patches/140-swap.patch

diff --git a/tools/squashfs/patches/140-swap.patch b/tools/squashfs/patches/140-swap.patch
new file mode 100644
index 0000000000..33f960bbde
--- /dev/null
+++ b/tools/squashfs/patches/140-swap.patch
@@ -0,0 +1,14 @@
+diff --git a/squashfs-tools/mksquashfs.c b/squashfs-tools/mksquashfs.c
+index e773f53..674333c 100644
+--- a/squashfs-tools/mksquashfs.c
++++ b/squashfs-tools/mksquashfs.c
+@@ -88,7 +88,8 @@ int fd;
+ /* filesystem flags for building */
+ int duplicate_checking = 1, noF = 0, no_fragments = 0, always_use_fragments = 0;
+ int noI = 0, noD = 0, check_data = 0;
+-int swap, silent = TRUE;
++static int swap;
++int silent = TRUE;
+ long long global_uid = -1, global_gid = -1;
+ 
+ /* superblock attributes */
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
