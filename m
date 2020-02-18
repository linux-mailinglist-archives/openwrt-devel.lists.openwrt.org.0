Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D71163497
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Feb 2020 22:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L9Tp32S19ly7DzCp5iLy+6nD+uNg6jGJAP/nACWWS2E=; b=cleDAdL8sGFJRj
	9l8s3HInXWN1mlLwG6ID02ntB5hF+evOloPaoxn5d3peCxfr7ypcYzPoxfR01Cjp63HK9yQ+NyS03
	YKHt8tF0rZcVnHcHxdeYrwqGyWDnItgjtcJ4boRo/hAz5jj1ayMm9usPlP7ve4ORYtQZ19f6hI5Uj
	qOKdn8ua+4po5O/XI9s2qm9glVyvuPJ7Lkakb84EZg/1IrTsTen8vQDQ/naZjslKeVUWkcpD8YAy/
	b1B7vTdJYWQd90Wwo5idcDt6neqmAkzApiK3WZgAcPhaJ8b4RtW5ggBA4LcRlIPiDcbTSyz4mTq8i
	Q2criHIcUKBNgpSUdPNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ADF-0001bz-Pc; Tue, 18 Feb 2020 21:15:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AD6-0001Uv-EM
 for openwrt-devel@lists.openwrt.org; Tue, 18 Feb 2020 21:15:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id a6so8590345plm.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 18 Feb 2020 13:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hm3PfWyQOPxP8Lc9IOj2z05szWJdoDRvtkF+Q+e1MGo=;
 b=kN0KvZNbZrbfy+QAXY3WuZJ5NpKu9JS0niLLjI0xCKjaVaSc0l4KTgkp7JBw9UVHVe
 QzB+g4LBOEZPv0a8u/QbrjL8oSO2HH9iNq+hcv3qCATFa2mxJwATxxBlfQGGDr1Zxtdh
 f4vz8PUI8rWB83YmZy+QlEMndbA0PoK+Cr6GJuKHxWFY9CgqSb1COhhpJ094VJRzXJ+7
 OTBzx+l/wEAS33csI2cqKatT4HXt23lv5JqvOAV/V2Fx71TJxxf9LiUc5O4DSY1i13SF
 ZNCmhE9ieun6jgyzM2i0ny8sas6NBNq+FpulgsZ14cQd+IFhfKchV4dKI0E4HFMsFil+
 /6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hm3PfWyQOPxP8Lc9IOj2z05szWJdoDRvtkF+Q+e1MGo=;
 b=W1omPI+I5JvhsFp6NWUGAfAB2oUZgidxybGF/hdZfFZPEBqoQJxeeOVewgK4tzfdDc
 ix44evQz2V9ACZq2j1SZT0u1lnsyOB8FJku7PaHunUZUaUpbJFWJ4hD2ITOMZNtDq5J8
 UwV90kn8hEUcIv/4S7nqHfvuSyybNu61ZQGGATP5qxw9+aTDalQgkW8jHTSJdGy8hiVA
 YMUgnHU4B5IucYvI3I8LDBJmWK82r8/rxnfCTwywvfiRUNd15K4D3QHVxYk9FywqI1C2
 VBT2qzZAd4IehVBGztGSLKgw7/skf/tJDFf0r+fQGNnvJhpy/RfDdRegSRKe6+ieushk
 5pAg==
X-Gm-Message-State: APjAAAV66QvdRJ/Ql0XkLdeA2x4qdinduHYR8PqJb+WJefVAW2xbPck1
 zJQiAXAUbgS4ztAFq0TWz1UvtEH1
X-Google-Smtp-Source: APXvYqyFW85OO2hd7GMhoThsTyfVUOZQdy9wHSBuzHEnk1X0KOL0CQDRRFceB5ET6QeM5qjXSdkjXw==
X-Received: by 2002:a17:902:264:: with SMTP id
 91mr23210955plc.335.1582060511366; 
 Tue, 18 Feb 2020 13:15:11 -0800 (PST)
Received: from computer.lan (119246229239.ctinets.com. [119.246.229.239])
 by smtp.gmail.com with ESMTPSA id v184sm5387129pfc.67.2020.02.18.13.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:15:10 -0800 (PST)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Feb 2020 05:15:04 +0800
Message-Id: <20200218211504.14756-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_131516_487227_F3FB9309 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] build: Fix directory symlinks not removed
 when cleaning STAGING_DIR
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

Currently, a symbolic link whose target is a directory will not be
removed when cleaning packages from STAGING_DIR.

In the first cleaning pass in scripts/clean-package.sh, the -f test for
a directory symlink returns false (because the link target is a
directory) and so the symlink is not removed.

In the second pass, the -d test returns true for a directory symlink,
but the symlink is not removed by rmdir because rmdir only removes
(real) directories.

This updates clean-package.sh to remove all non-directories (including
symbolic links) in the first pass.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 scripts/clean-package.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index 6dd9bf7306..035725625d 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -12,7 +12,7 @@ cat "$1" | (
 	cd "$2"
 	while read entry; do
 		[ -n "$entry" ] || break
-		[ -f "$entry" ] && rm -f $entry
+		[ ! -d "$entry" ] || [ -L "$entry" ] && rm -f "$entry"
 	done
 )
 sort -r "$1" | (
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
