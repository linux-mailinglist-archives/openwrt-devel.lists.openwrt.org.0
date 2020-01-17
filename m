Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3624C140314
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 05:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ym9NZGH8QSAAhhYmbphNLlcf4WEKxauraGdEa8kqDbk=; b=UVo+76vAbHmkLwYOY34+SGz9Wn
	EYzhYJ9g0rn1rJNUxXR2fdQCZ2tdTZMLkpLtEzKy4FYAYTXVYT9Hx8aCokbVA0kBalVJj3MQSFgVO
	hvZCl54IqMAIIM8jACJhb6/GF+o2JYhk3Awt2WUY7CznV5e3O21zKEAwaZa8/0CZs1t2pT9a5b4rK
	c1vd7YlkkUwtA5TYd/z1k551+ipe4ItLW7wY1ckiDACchZn2tKR7fHh/h0PG639ysvVaDCIgkT9xk
	s+b7g71a4cgcOGuoyFzBs5fIbmAL1+vM8+rXll/rcwaploj7uVNBxJm+m1NI4B9kDLWg9rrvB4JNc
	yLcJd2Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJVe-0004H3-B5; Fri, 17 Jan 2020 04:45:26 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJUO-0001tH-El
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 04:44:09 +0000
Received: by mail-pg1-x534.google.com with SMTP id a33so11040690pgm.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 20:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=FhrrbT4x50vbUY3vl8hJWJpo4znh93HhWYnLrcoy164=;
 b=ApFjL7/65bVOcTUBI+iGiKgEFg5zZcBRGcLNO3qY9qIi+Pu7hUCo4x0FoWXDITPGiO
 2wGdAnxB2AcokeZjwc/4JN3vcBi9ea6BupnIsnV0fFgYCZ+mWHRQImCERhIW+NvxeeHz
 gEnbL2DAAN07BkpCyORVw2E3UbEo8d0c7nSHjaURaGlbzy3Z0gc1pzgt7akxIqZomEjD
 XOFaQ2ZUrS/7JSKh3vtFRP9t/AyxgQRURw0ikANx9z7pWt+rUZiDLtja6Hm+pmOJwc2x
 Wm9bSNsKsZthMjuvyGXowHZX/hbP9rLjBr2uTWNemrol6SBB1kgGHz4jYOzUSO+czVA5
 MEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FhrrbT4x50vbUY3vl8hJWJpo4znh93HhWYnLrcoy164=;
 b=CK1m9Hqle3kQrCPxD8OzxwgWX9xQknWqlSkG1S2hR45U/u3Ygt0cbEFaXzIY8LjQ5X
 be4sRRSEOO1r6d6yBYBDw8IripfceE4DJAtAuaBKZzMfJ5ntn+t8jszliNCpBEwGDHiR
 cgMZASqQjAVlaZgYsnRINL35oXZdKcPjF3U894Aj1oBo9qeShvDSnQnHchim/V0S2Wps
 5+VWdniEO+ROReJt5Ad7Nriqr4VVZkYX7pFJKj6SHqfzqQB2LivfUBLNSn2HrVmIZK4K
 nh39QlIScSo6FmVwtnPh8mz/2UI3hBY/LT5mD5ZvbENrpF3wD5k1a4hCQrmCBOVsijtX
 LV1g==
X-Gm-Message-State: APjAAAX9z2V0e4fmF+Ob1my/Z16ytMKHYzh5Tgk94PR+dL9Z26h0vRBm
 uXsINLtfzz6n6PmV+BGwyCN/pilF
X-Google-Smtp-Source: APXvYqyxYrCuo7SypO7WkWcWULGYSuD6bgSP1gl+Dj+oth3C8C3wYOTkYJAA3wxbo0OUP5mcP+ecvA==
X-Received: by 2002:a63:1b47:: with SMTP id b7mr42639178pgm.446.1579236247357; 
 Thu, 16 Jan 2020 20:44:07 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm26790055pfa.39.2020.01.16.20.44.06
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 20:44:06 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 20:43:58 -0800
Message-Id: <20200117044359.1923979-6-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117044359.1923979-1-rosenp@gmail.com>
References: <20200117044359.1923979-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_204408_498520_9E35D975 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:534 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 6/7] base-files/functions.sh: do not iterate
 over ls
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

It does word splitting and glob expansion, which is undesirable.

https://github.com/koalaman/shellcheck/wiki/SC2045

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/files/lib/functions.sh | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index 82a2169260..048bfd2b2a 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -283,7 +283,8 @@ default_postinst() {
 include() {
 	local file
 
-	for file in $(ls $1/*.sh 2>/dev/null); do
+	for file in "$1"/*.sh; do
+		[ -e "$file" ] || break
 		. $file
 	done
 }
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
