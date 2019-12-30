Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79E612CC3B
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qTH6bXiDmWMwYAEP2KnMuRtPdyR6tMQ5hG33CieUwb0=; b=t2//uv8yc4gYf5AIGHlEqYob/T
	qz+twuBGUgfJDN6gYdglLI4PESagitpkzScQMvSL5sXp1mCyHaS48rYH/rxyK3r2hPO6w0RD9vuXT
	TARw72hZBpYSZqlPLi1dqdwfdJgoeF8+jEy3xpwdp9XDbYaJvHUySW1iBj4nL1To7Ag+zMUHvTfsF
	LGnE3HVjbx/phwzdZi9lPHcV4vWskvwf4C7KIwm9BvLZooWdE3dknyGmO5xpwChB9xCACBk/bb8vU
	7SrTuAQ7trgUD3jwuywCJ/TQylUWyotjCwxVSlc1Mf1Wz358A5WPd4bE6E/7jlACw6xyfOuKFlQfq
	rYVI6Lmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilm3N-0007rv-Ez; Mon, 30 Dec 2019 03:49:13 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilm2l-00077A-D9
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:48:37 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a6so7285959pjh.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nm2f3HgZOoBXbZLXelfcia7eOMbB89dFQa84hu1Hm9c=;
 b=sJBmWS/LswjdmFsv3npcgK5QvRTFwfE+rSg1ebWPtyzTnZYGQOIyN8j9saHTA/9hWD
 QUVQnUvekVXoCVlO8MQJDsYWm9n6lh56fQNkF14rhwJu4rDB/JCBj2fx7VpKAiHabRLQ
 oKanNoqdXaFXDoEDgq7WqPfwi1GPa92EpWOLpWXeIvHHbGkX5OeV//1km4xiojtf1uev
 BE7NYdmJrQWnf9pN4pTzmnC/tvNyefo3CYwQsPOq24IEDXOCnQxambM3oqZZ3R9KPhvu
 sBMm/Ovwh7rbZ3shocpGgYRyq4JKJjQF147ND67Y3Bsr9Z6s59WVuxg4deMwOmlyDxak
 /wGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nm2f3HgZOoBXbZLXelfcia7eOMbB89dFQa84hu1Hm9c=;
 b=lN8ZN+KhKvmZExcN2ZOOvkHHe9+eMhswUDjqH4YylLon5VmJfT/AchrhqizPnZWCuO
 QbuzzxTNwUOmTJabVCVnqT0E6mmfdVUBImeUEahY8pE9aE3PgMjoM/p09z7BL/9rQ4fO
 N1yGpnxewrUJ5y+9NGpOIiTNOHtr/IOFMB614etOeh5w2tp/4FqfB/bR0p0ySqsoY0yO
 rqBfFhS2dCpT3FsbMfl+6MBsPy706oNfrJHwBli2XeFJawIOsdYcf/4p6r+MVAyXQYdQ
 8fXwUFsfcKDAfxmoetbPvW5hporf+0kjSmjrUD3e5e3w218WoScfOLInHk6CAFzL6aw6
 PaSA==
X-Gm-Message-State: APjAAAX7ilc9HVPQYkU658mV9W2kD6TNxAgqvs4xm50HzBiswj/SmIUm
 cVT4xH/+ALKHYNo+ah9nRUGsbf12uT8=
X-Google-Smtp-Source: APXvYqy/S3xu0kkLde7rF44GHtNqfLpUpihhRr/dx7Vsa1GXF1rd8+xW6vFUgEgvlbB9KjsGBtc0lQ==
X-Received: by 2002:a17:90a:e389:: with SMTP id
 b9mr43015242pjz.7.1577677710532; 
 Sun, 29 Dec 2019 19:48:30 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id p28sm46211414pgb.93.2019.12.29.19.48.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:48:30 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:48:25 -0800
Message-Id: <20191230034827.22185-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034827.22185-1-rosenp@gmail.com>
References: <20191230034827.22185-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194835_447839_72AEC729 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Subject: [OpenWrt-Devel] [PATCH 2/4] scripts/clean-package.sh: Use read -r
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

read will mangle backslashes.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/clean-package.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index 987e6685a8..e849c41afa 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -10,14 +10,14 @@ IFS=$'\n'
 }
 cat "$1" | (
 	cd "$2" || exit 1
-	while read entry; do
+	while read -r entry; do
 		[ -n "$entry" ] || break
 		[ -f "$entry" ] && rm -f $entry
 	done
 )
 sort -r "$1" | (
 	cd "$2" || exit 1
-	while read entry; do
+	while read -r entry; do
 		[ -n "$entry" ] || break
 		[ -d "$entry" ] && rmdir "$entry" > /dev/null 2>&1
 	done
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
