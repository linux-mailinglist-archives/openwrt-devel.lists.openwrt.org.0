Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0905E10DAC3
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 22:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Apr1Fgb0MalO3tSMU1Yu4T+MWOgyrHZzvRgayWk2U3I=; b=orDl9fbbn1m4Dw
	YZx85R6cqCsCzTROJHek4zz69W7pLgT4UV2qw+pKa/JbQKCB8WULsj/DS7LWIbDNPs5tsggujg8Ve
	2JugqhuaRaWkwnwQnCjYuPhrbM2AuDAm5vmBUlboGHR2G9XOxRN/wOwmnZ9O+LKO5TzviA8+JUJtw
	qbjFSsb6RifAQXyz413STAUImzfpD40jzZe0/51TNtRBPrgacG4c5VjEQQmAfMHICbR8P1GnHLb+p
	+Du8u9sil96MjSTCkzzlqbBsSqvHWFtrDghStxmrrAL6BNFEhsZmc3GOyoy72VVx/fMJg2tapswOs
	9DHQc774vN7WNbOWGkpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianUL-0005YH-N9; Fri, 29 Nov 2019 21:07:41 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianUB-0005WW-Du
 for openwrt-devel@lists.openwrt.org; Fri, 29 Nov 2019 21:07:32 +0000
Received: by mail-pj1-x1043.google.com with SMTP id bb19so10293490pjb.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 Nov 2019 13:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OzReNvyohxGSmXjgWFMv7+/ACdAWh3XW5Y4XSq9SrUU=;
 b=DzUbfkB/BNLqkOol9ksBed12hbPXrrHEGNcKr68BTpvUIL0Tg2SYXUaeHNg19fpyHC
 l4plQYEOsrYIstuGuKF/omrkCET3w+soVwZWQdotX/CW/7GRKPkipX/IhxiR9UZeHOUY
 65WVBjbDqqZ3S/Exv/NcCqmuNaUIjMKrDnXxUa/CFqAcOyj0o8PUKGQm0uYBXW57BNx4
 gQV3643MLTE74uwPaBv7wxZFifpCFjpP+RNqaP5ZyHv162ya7N70FIsc+idKGmZ3489j
 3NExzftSIVgzVyekJC3s2uGotus1EG0UJXHYw7Fnsu9rPVRPhwd8SFIx5HiOtiP6s72/
 FPCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OzReNvyohxGSmXjgWFMv7+/ACdAWh3XW5Y4XSq9SrUU=;
 b=PTNf2IZ9PF4uEdTYgOTfh+TrX5Qm6iybLGWvoBN0px4BBCRM3l1eHaE9kFi1UO878Y
 pQk8ZaUMuEjhNcI6i7xGle1hFz81vVy939BtTUVAW8aVNhWoOR91Ov5UkVVpiQULsp+f
 WHjw2FagWLFO+VdkjYAS0z/shHrJMGBZCvGOHcHq2uYIQBF93v755lbMcDIy1r6+DMvo
 YwW8F26g+lZUcZqZY8sucJGstASCws2tknh6AVqyCoDVjZbGLqufoIb5FHBgh3Zwlx87
 meIlhSDq0egmCnqOzd8Kjy4u4M1/lVChvqctKyGoR/V0vSoCofymULBC/uHjMB0mQHza
 mdsw==
X-Gm-Message-State: APjAAAVQF0qLFQuC3nXFicxQG45idZ8P2wbMVxTWgxaA2EGGFR1K/+v5
 2pl15d13P2hbCJgS/j6AvdRgfczlW7o=
X-Google-Smtp-Source: APXvYqwxK9JlThxtXjihCWJmXArGP2JsRfGCLZlGycO5YEkGxoe+m2YatFFIeDGmhgY109aR02Y4BA==
X-Received: by 2002:a17:90a:250a:: with SMTP id
 j10mr10300251pje.134.1575061650373; 
 Fri, 29 Nov 2019 13:07:30 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id e23sm2019007pjt.23.2019.11.29.13.07.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 13:07:29 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 Nov 2019 13:07:29 -0800
Message-Id: <20191129210729.4257-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_130731_470720_D0E95ABE 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] uci: Fix Wformat-nonliteral warning
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

A const char * variable is being passed as a format string. Unfortunately,
this is not correct.

A constant expression needs to be passed so that GCC can determine the
types of the format properly.

Fixes:

error: format not a string literal, argument types not checked
[-Werror=format-nonliteral]
  176 |    error_info);
      |    ^~~~~~~~~~
error: format not a string literal, argument types not checked
[-Werror=format-nonliteral]
  185 |    error_info);

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 libuci.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/libuci.c b/libuci.c
index a9e70e8..96da49b 100644
--- a/libuci.c
+++ b/libuci.c
@@ -142,11 +142,11 @@ uci_get_errorstr(struct uci_context *ctx, char **dest, const char *prefix)
 {
 	static char error_info[128];
 	int err;
-	const char *format =
-		"%s%s" /* prefix */
-		"%s%s" /* function */
-		"%s" /* error */
-		"%s"; /* details */
+#define	format \
+		"%s%s" /* prefix */ \
+		"%s%s" /* function */ \
+		"%s" /* error */ \
+		"%s" /* details */
 
 	error_info[0] = 0;
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
