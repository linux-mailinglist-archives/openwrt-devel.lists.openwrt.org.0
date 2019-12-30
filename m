Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E1412CC3A
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MbyadmpYlmXNJg+3kTy53sWYNPd6KXvbY8f8DGOHrTw=; b=mSfsCXrGLBsURFtDjD2ijFfNt+
	0KAZDXsgdLc/zLGy3HlB+/6yEQYq0GqxlbKxkwpN4GWKSGjEm2QA7gq9aChmKGkkc4wUJUEmsVRqs
	saRtgarQALS2oneESJEWaUF+siotyNIA0qRj4G6/4wpo8+nQGGgMJhv7FXMTsLxY6UH7ehom4vZ5R
	BX4Igl0Vw0QpMy/I5lHx0XVks+Mhu6ejpX/edGgk7n7hTHHDUaA7Z9WFKDyPPeHmFw2zQBr/SHbue
	p/Debd5CzWWDoJFeg5Nck0IBEfZRxy5ric46Imv+wnI6gu3CY5AnfEsEKJFyrGagSPHw01676s17+
	TGAmZn7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilm3C-0007XW-5F; Mon, 30 Dec 2019 03:49:02 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilm2l-00077B-DE
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:48:36 +0000
Received: by mail-pf1-x42f.google.com with SMTP id q8so17646308pfh.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=mgjAZOGstAF5cVFxH1m7B/iQEce3qLqtvjKPqtjg2sU=;
 b=nWDdHidy/NRJDIk2PxB4VsDS+GIDtKaifW9SvRZ61Girx5bIspF9p47QpprSAOnZgh
 DhIvxIOEY0FlDg/poWHtsVyZnKpIA8e2hN5GWyCYoPYb3ymw3BlsTDPmVdVrd0c80mBr
 bjmDEvYB05DNrqz0vngeutQnEBWw79cUyRU3PDFxYRlrNQ3JiOCQhcyiFTN+3PF3wAgo
 Y84thfEl0M8+KxsayKGMpwFMicroLIVf1lPHfZUqKCFx6T8t8NdRstgQW/FwDcm/hnxi
 3s1K+pi2cLGzPb2yjcMI3UpFBxpW2JmpX1DRUwA30Ox5SNHF03OedAiFjDwiKwh5VoQY
 SVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mgjAZOGstAF5cVFxH1m7B/iQEce3qLqtvjKPqtjg2sU=;
 b=nKfyy/FSwdeaupq2/hejWkmAXsezjkSXcbinIzYonEDdUvIPflbxzoP6xqxBvfBno/
 xTHToa6GYNWZnpwoEhYoy8h6UsRhJ13H2wFJxm9t3Z4HkO978SrARKdIYUHrpRlYZTSv
 knvvu63j3pfKUw7tF659boI/mLCgGteg2wbHkX7hi2rzOy8QRfJnwV1sSyA2SVX6wM+o
 xqA0mXnZbhbGBGNQhlgKFRTeAWDeuTI/zobAtWsup65aKgCsrUieejHryYC51SjelAfT
 iMwFhHpC+kiakErvkh4tuBSwa7XVOgg5sIrpQQY9gYcV06nAwCeVgkK4TND8ngaW3M8W
 iyDQ==
X-Gm-Message-State: APjAAAWeg7gEn+f8m0ECiNfkYh8ejJxMdefGOmA4J9aDjjK7nNe/zryv
 MP23qHw1+WHC3GD5gkdiy4TpB6mx/98=
X-Google-Smtp-Source: APXvYqyONbGJlFUCe2Bm2ksY/VHV2tDpfkdOrtTISkGi+sR3U6Nuo/gpjCyyPBQFcz4raxuzPfbnIA==
X-Received: by 2002:aa7:9522:: with SMTP id c2mr68518007pfp.43.1577677711355; 
 Sun, 29 Dec 2019 19:48:31 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id p28sm46211414pgb.93.2019.12.29.19.48.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:48:30 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:48:26 -0800
Message-Id: <20191230034827.22185-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034827.22185-1-rosenp@gmail.com>
References: <20191230034827.22185-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194835_446937_A486C88C 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 3/4] scripts/clean-package.sh: Remove
 useless cat
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/clean-package.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index e849c41afa..b64d7ad21a 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -8,13 +8,13 @@ IFS=$'\n'
 	echo "File/directory not found"
 	exit 1
 }
-cat "$1" | (
+(
 	cd "$2" || exit 1
 	while read -r entry; do
 		[ -n "$entry" ] || break
 		[ -f "$entry" ] && rm -f $entry
 	done
-)
+) < "$1"
 sort -r "$1" | (
 	cd "$2" || exit 1
 	while read -r entry; do
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
