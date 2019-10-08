Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED3BCF01C
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tyEUIUcD67NWQOTgAHRVjLC9lSvvKH9NhE8ftMluDF8=; b=guf6BSaSrvr5plPeG8BIM6ZO4L
	yCOeX9RER0tySfrZsj6DM3c4LwPSGNq++Ua1YiUebSDmdNy8ibg1JsS0LiXY93IXI6s/+PiCjVy9T
	PLVdFi1LUowcW2TN2wg91XhN3DtAM0W3kOn8OO2pul3FbvxqGcsxDt6QcmrdtssairToYOqqOIIFl
	D+oyDdp7LFUpC2p5eUNl1BBQtYQMW+uo5KnDa9F+3r+kkczEbl2ah8k0UR056UIaR8DGctev8wnFt
	bUX92Y9/s6u+HQM4f4Qs8IOH+4NSv5TKwWKuqSEVZ4rjWBWHVgUzcSmrpdzSTDsvhTzONHXyPv7bV
	EcAqvWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHdtx-0005x0-NA; Tue, 08 Oct 2019 01:02:57 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtW-0005lZ-Co
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:32 +0000
Received: by mail-pg1-x531.google.com with SMTP id d26so9263478pgl.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=nyIISXg/EGAmGoLbEGF+8k2+rQY0LPt6G7+qUvM86XI=;
 b=SiYFUX569PX0+5/87nHhPr3ZQpQySp+WclyvanesyQ/F87yk5iDUweqMLkFqs+7dDv
 Xcmilb0+r/VlV8Z4Trs/JfVi7onyfcDaKFvnIrQZkctcz7Vh2pgPGeUqA7/uqY0Yz3UD
 69dfoNqcTF4p752WmXSHG3Bhd9+peDB79pKVDfUkHjJx6chh4rPHDRO0qGGq42Juzspj
 JT0MMciswYFF+v6PFjmygcgWd2uvzDQW5+V/6TbAyBuEVuAknvjbNVFH/pVZl1a25MYH
 rreBBGCdNPhuuEHIiD5V3ix4MYtOb5QNmKwnZUEN9asIiHyRsjBHDQ1H//XoOw5uDves
 3CzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=nyIISXg/EGAmGoLbEGF+8k2+rQY0LPt6G7+qUvM86XI=;
 b=gjlWqu0/pxBryUgO1N126XeYpP0y1bwSYmzVRuZyNG+Q4E1bCctBJa7cNz8Ox9ZofQ
 8Wgrw8OKvsd8UV+rK+JnHzgcfOe/fqMeV5Wr4tsvaalUmwCQvq6dag1vXI1Jm5Bbzpqt
 j9VxbN5EV1WBGIjx+HfsZx2gNmLFEQ+cSh35QqW4HVni0H9Wm2PRWGPqcWfcsOSgXGEu
 XCHGKTuCYEx0NuZCviu4Zhgds7jcjLDzBzfn2l+SpT1C0ypvkigA9fUlYz1d4J54H+dt
 6oB1zZiDIm5ovpb88z0ThVwysRXSRg1jsHtXCK1XnrCXqw9ab4/0+X7L5uZ5Z+Cs9yUa
 80+Q==
X-Gm-Message-State: APjAAAUJLKHTjmVvEDaZ3d88nZucyJuyUA+RLt4tSUXMVEmKsXQgVA+0
 LHMHIu89T1tUrtxXrB/hjI0gJEke
X-Google-Smtp-Source: APXvYqxdBXX80du9lTLKuqAiAoLU1IrPatqvH/EjeXSPVbydeji1IljfoqnqzQ2n7y0yUaNpnSOMZw==
X-Received: by 2002:a17:90a:c684:: with SMTP id
 n4mr2448975pjt.33.1570496548819; 
 Mon, 07 Oct 2019 18:02:28 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:28 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:19 -0700
Message-Id: <20191008010225.8822-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
References: <20191008010225.8822-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180230_463329_EE6B352A 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/8] scripts/patch-specs: add cygwin
 compatibility
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alexey Loukianov <lx2@lexa2.ru>

Fix patch-specs.sh to also look for "*-cpp.exe"
when searching for C preprocessor.

Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
(Small title edit)
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/patch-specs.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/patch-specs.sh b/scripts/patch-specs.sh
index 2262e218fe..8c6c0a9655 100755
--- a/scripts/patch-specs.sh
+++ b/scripts/patch-specs.sh
@@ -11,7 +11,7 @@ fi
 
 echo -n "Locating cpp ... "
 for bin in bin usr/bin usr/local/bin; do
-	for cmd in "$DIR/$bin/"*-cpp; do
+	for cmd in "$DIR/$bin/"*-cpp "$DIR/$bin/"*-cpp.exe; do
 		if [ -x "$cmd" ]; then
 			echo "$cmd"
 			CPP="$cmd"
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
