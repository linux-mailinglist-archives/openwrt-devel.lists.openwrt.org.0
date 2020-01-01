Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAB112DD4F
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IOvfxKiIv6E1tiQdtR/COZFnmB+zOIf8AykkWuAUUkM=; b=b5xda7onxvIFAD0jx5gFGBVy9F
	dm2VRgZPeUptgTG8tHyjZI3uDOXx5u2bXfh+eLVcOuXsh9hp44GpbiFpwyhaWV9amRBtS1tATwnQX
	d43Cmn3Ys08691WjVXQnuFRejJfxi/nF9xnGVKYhy0Lz+rG9jCgv36H5YRcNxgjmFGY/KGXnxe6My
	7wJpwv4zWzPt1/qhMSzb9yOvcKq5umFLLNm867xE9LzaZRqNDuBV6fH+V21EYVl5bShWn091BPeyj
	mSge2rWiPU6yxAo5Qw4VopDqKELaiQk1q1T7ImZ0M/0wzuB5UhdwAS5hTFi8O7IXyiAUPLdVp2OJW
	YIWkpKrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTKx-000208-4V; Wed, 01 Jan 2020 02:02:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTKd-0001lr-4e
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:01:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so20326475pfs.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ONXscCcyyILlRJgDgap/ZJqpwI1I3Jbf16HVziVrxVM=;
 b=nnzbBTVm3MUKNIQ2+jDJKaO2Aa/1YvBQY5sybxDrq1Gp0z+yOqPkKAsTcR65BsB8xD
 ki41zOmKHfZV/bw5+ArMnRWnMZ12is38Mdc/7qZMfclD2Kb35s2i3UNaQMUSn/KsfjM3
 eIbGvonppRFzEj9kSeu0ynQn44kH4zOjRMUHGnuX4HsEd4K7m7P4IA0DewmT3uLyg1LF
 dxbX3G9cSaAGl39Mmp/EZMdPHfjQKIXZAKnUvq+JoU8k/VKyQTAqU9tN81uRrxpXo+88
 HQZVj5YyA78APVgsZ9hUmz83xzrGAcy5uQh9qPyo87pTenaMVEXnVeslKp8sJfRV5E0K
 6g/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ONXscCcyyILlRJgDgap/ZJqpwI1I3Jbf16HVziVrxVM=;
 b=FhvgdquCHoPGgq/JZUjM3fGdZEx6jy+cGjw6ZnUTgLg9H2ZAweUZboyhZepqarxOSR
 +UZd42tb2g4NugiAl9nx+KWVakuVNSxaaV0tAbmI4bU7PljecNUWc14YdxzbgdPFuhuS
 nNohIZg0kMVnIiUATT25CjLzwElfOhoyFz8RRZ9EkoPyjvS4UlmiQXan7BVsewoKAzAH
 FVi9/dffYxOKhsN/4IiVvcnecnWWOmRKQPLvaGgAqOlEo7MNzHGtDYM/T4B2n1T979cE
 rggVuYuhQwgEAC6d7rfy6Sew09hSssn8hawgal/o1zGxGrl+HT168K90iKK+XsNvZs08
 37nw==
X-Gm-Message-State: APjAAAUMxKK/Rl9bakghLkUz0tr+9oXtLnOgQLdR1E+mz2rylozLyJ48
 x7Y2gVdY4gAL602JLwWxC1mBD6o9vn8=
X-Google-Smtp-Source: APXvYqzBVmmf62sZrWpr2MGjRB1MuBB2Oz15m34DsPx7yFhbTtZscQMUjUD84PZoY7CP98EnLjZaaQ==
X-Received: by 2002:a63:2cc8:: with SMTP id
 s191mr80871944pgs.206.1577844112080; 
 Tue, 31 Dec 2019 18:01:52 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z26sm52559730pgu.80.2019.12.31.18.01.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:01:51 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:01:44 -0800
Message-Id: <20200101020146.21043-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101020146.21043-1-rosenp@gmail.com>
References: <20200101020146.21043-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180155_180065_BF149C42 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 3/5] scripts/env: replace \! with !
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

The latter is more standard. The former throws an error under
shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/env b/scripts/env
index 563f39c1cf..19cfa13841 100755
--- a/scripts/env
+++ b/scripts/env
@@ -73,7 +73,7 @@ env_init() {
 }
 
 env_sync_data() {
-	[ \! -L "$BASEDIR/.config" ] && [ -f "$BASEDIR/.config" ] && mv "$BASEDIR/.config" "$ENVDIR"
+	[ ! -L "$BASEDIR/.config" ] && [ -f "$BASEDIR/.config" ] && mv "$BASEDIR/.config" "$ENVDIR"
 	git add .
 	git add -u
 }
@@ -195,7 +195,7 @@ env_new() {
 	git checkout -b "$1" "$from"
 	if [ -f "$BASEDIR/.config" ] || [ -d "$BASEDIR/files" ]; then
 		if ask_bool 1 "Do you want to start your configuration repository with the current configuration?"; then
-			if [ -d "$BASEDIR/files" ] && [ \! -L "$BASEDIR/files" ]; then
+			if [ -d "$BASEDIR/files" ] && [ ! -L "$BASEDIR/files" ]; then
 				mkdir -p "$ENVDIR/files"
 				shopt -s dotglob
 				mv "$BASEDIR/files/"* "$ENVDIR/files/" 2>/dev/null
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
