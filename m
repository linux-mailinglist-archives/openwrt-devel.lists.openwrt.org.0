Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52BB12CC90
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 06:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fRGqtKyXEkCqL7Lud9adpemrDGiu/9Ymr5U+xBHF9+w=; b=adQfGzxxtjwLkU
	d5zdNAx6Vjwpq5puF0Hzu0tEZbor4FToSxzijKHb1QQRLixqLhfxXmo+gqq/qSiv6DB4hrAwDO5Y1
	C9XdGi/qF4Rfz/C4a/4xjrxezkh+7bNnUYISblgT7XYJMP6DMmt9IhwOV41XUPNe6FmavZoYeoU5o
	QXKXz965BHGp9lXgPYMjSn3FeGuGUBEZB60Eay12GTEFgeEnh58l14/3UYtjvUeCO2y98rvTX4iF6
	Eue6kAv9HFlyjcRxKBlpy7cW8PDRxjC3KLrkM4NS1YC2y/m2cMR3yOyt5VTgOmyobIxgsMjZbR5/F
	kDznqHpn8aRGMOQP8Lwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnHq-0006dd-K3; Mon, 30 Dec 2019 05:08:14 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnHd-0006cK-LE
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 05:08:02 +0000
Received: by mail-pj1-x102c.google.com with SMTP id u63so4324634pjb.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 21:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DqiMXXce4Q0SCc55/7WdV919p6g8wM7krbDv8a4xg3I=;
 b=k/RjvdDGYh471OyaajMLmUzbcWPeG+B+q58sssuJSFkrwU9MRf9WpMYIoYn6pmDUAw
 jAxE9GU1wYf9QawqsncjVQIE7gna8ydIP3WXXdmFl7RY7ToqKA0C/PUaIcFL/ypPvlqL
 WJpViRNUggMGUdeouwsLglZDPaxLgEr4smyvLQh6+NDBjYsxSt9Q+Cj2D7deb8TDJZSA
 xCvuGwsWmQQsILHTL7qEoPZI4Y9wOlU0gwgwqdJLti/NAJpEEI6Y+Qkb0J6Fu+jwseAd
 VUuVOsnboKGOAd3K1JLsNPbi4LK4pV4HdEwz+GNNQ3OJg+bk4f29kutQonn28NDK0iXJ
 KsGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DqiMXXce4Q0SCc55/7WdV919p6g8wM7krbDv8a4xg3I=;
 b=JiYCR5l/2rM9V9Z8DIlp6vJUlxDqWv3hgi/Ye/s/7Kfc826CjFbHX1odw1qFMuYL0x
 N2Zim7qoATfsizSsbAko5FoE883Cy7pwxRIxXSeE7T4nVEziyye7ebh7DMRxjylXzTwE
 NqOxwa8O+TXxOdtJEcGQez0VvUtDR8fjkl+54knL/IOsVLcLLE+Bp779hF4Y1FkWvmRp
 By85gWSBzD6/RG9z0/sr18ltvQikIxOzHBc1EQsf9CFz5VwnLey5gA6ao56FKOJn8Bdp
 sTwwhpwVDYNme8gH92Im4qBIi5IOSWvP1NrakQfKNSGpQy3IMrzvm8l508Ku0Pk48Uk8
 IbQg==
X-Gm-Message-State: APjAAAVp38EAnrhS4XkKrUVLFJKshnURAGMUsvDOEPXeeNJ6vvu7+T9Q
 5mj1h6O/0iEfYPUrl5UELimGsYeW+fM=
X-Google-Smtp-Source: APXvYqxuxj5tmX+k9YqV6K2doew8KroxA3OxWadOvP03xi4D9bEdIwf/YwkUnyOG209Z5jGEMUnBRA==
X-Received: by 2002:a17:902:7d94:: with SMTP id
 a20mr62033114plm.26.1577682480618; 
 Sun, 29 Dec 2019 21:08:00 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id d27sm45505871pgm.53.2019.12.29.21.07.59
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 21:08:00 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 21:07:53 -0800
Message-Id: <20191230050756.3675-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210801_693102_12C183E0 
X-CRM114-Status: UNSURE (   7.26  )
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
Subject: [OpenWrt-Devel] [PATCHv2 1/4] scripts/gen_image_generic.sh: Replace
 -o with ||
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

-o is not well defined.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 2d2fb120ce..1e35b1b349 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,10 +1,10 @@
 #!/usr/bin/env bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
-[ $# == 5 -o $# == 6 ] || {
+if [ $# -ge 5 ] || [ $# -le 6 ]; then
     echo "SYNTAX: $0 <file> <kernel size> <kernel directory> <rootfs size> <rootfs image> [<align>]"
     exit 1
-}
+fi
 
 OUTPUT="$1"
 KERNELSIZE="$2"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
