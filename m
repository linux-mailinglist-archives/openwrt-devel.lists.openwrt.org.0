Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FF812D5B8
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kLIujBSCF1MtuAJ3xZOZwwOGOrOrezWBORtJ+EVVTQA=; b=IgiPaEt56Ttjjj
	tJbVJaD7vf+rfImDUOIYXIz/dc1KuyonnpeRi66EbxUFzxKI7+0+1jyngaABNil2/w9wgPlye0oEz
	asINqz01v1e2e5uFmTfz3OsmpUj8B69DsWCMn5RvWga487fofiZ30hpE2wmUIq/6Fv2Z9ONd3Fs/j
	ypEy3mcvjG0mVxIzemEngxlj5tkMzlTo++zsCnE9JeMtYrJHiKLBvQW+niMsozmzRH6DwyqIGt3dt
	b9HPfGZ3JK+B0RZCCGbK0HgkJWckqKrKDxmBeg2M3JzHDzYCgD9+EkEVIAz/iQskb7v6ChWfxNt+H
	WblX31mtpO23fbPyQK4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im75N-0003F2-0r; Tue, 31 Dec 2019 02:16:41 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im75F-0003EJ-EW
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:16:34 +0000
Received: by mail-pf1-x42e.google.com with SMTP id z16so19122395pfk.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aGUZyBVRuR5a6y/wXINUPQe5PbQiqNC0ySgSwclDois=;
 b=m0vd8fbS7BG3KqECK1WF36PLpzljnX1Pg/VRu+QxAD0ONO+XSd1geaHz5XOdPx3KsW
 jO1/Tfh2NvM8X78J6fw3dPZyLu66ABORSKjxYggOo/m0Ta0a+Wpz/s4/UYROoNG4Zk5f
 DptHyv5fgRta4b9TEOcd/QpvE2aGXP/oM9hcficbS01M+eB2NKU0ydJGdpoMtQUMzyDB
 zsQt8Ym80JSr9asNH1KFXW0qq5ZIyn0pERFfxUYqV5pVXacFiQ4w45S4T+/thyfxvjQT
 S4n1akwJvDBHKv8m3aDapg0skSjnm4JaZMcOeN4bSd6WjiKSWAs2ZGH7dkHZiGd2jeZt
 L4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aGUZyBVRuR5a6y/wXINUPQe5PbQiqNC0ySgSwclDois=;
 b=CbJLv0nGHaHFdXVCOJIvWieaUr9/9LzDYOeXlgvfqljLvYNV6UpK5fr0NwIvtBvKo2
 OOihZfPqU9ngwn1Qmy3KT2d0JtpnvjkAEvyC2gnN8JxiK8lzfMbBsL8rMYEzGqYnBVDM
 ItWHLYePf95h7LxVwdqWyQ+HBkdzNx9sguOj+opH+3xyXtz7TIZLLxNAzOAUnAeLG3kT
 G0CZqfbM/D4gFWDAeZppd+GG3q+aQq4WRbyrM32IVxCbPzJz4uJq5Hc8MEmR62pBR0hR
 ZmF+2810+DHKqeFlWAC/2l9zojAXEKioEtQkiCKHw5MnypKocjbxBp7K5XrMJ+deWAqw
 dldA==
X-Gm-Message-State: APjAAAU59vcFFrIQZZpLqxaW1/Tz/bw9sNFG7oiQjvr89jRYb+/XTvrO
 kSfMKx9Oyjfajh5utvnGQb0qzxn1A6E=
X-Google-Smtp-Source: APXvYqx5IAaqkkhqdRN/qKe3Ks+96WaU9S392oMdmL/Hfu2exaaNhRJMLyFfL6foX29UwLySgqnTIQ==
X-Received: by 2002:aa7:8007:: with SMTP id j7mr49419510pfi.71.1577758589727; 
 Mon, 30 Dec 2019 18:16:29 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id u13sm883077pjn.29.2019.12.30.18.16.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:16:29 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:16:25 -0800
Message-Id: <20191231021626.47613-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_181633_514652_C815273A 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] scripts/flashing: Switch from echo -en
 to printf
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

echo flags are an extension and not available with sh. printf does the
same as -en.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/flashing/flash.sh | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/flashing/flash.sh b/scripts/flashing/flash.sh
index 7f2cdf5db9..aea1bf1568 100755
--- a/scripts/flashing/flash.sh
+++ b/scripts/flashing/flash.sh
@@ -51,16 +51,16 @@ EOF
 fi
 if [ "$2" = "asus" ]; then
 echo Confirming IP address setting...
-echo -en "get ASUSSPACELINK\x01\x01\xa8\xc0 /dev/null\nquit\n" | tftp 192.168.1.1
+printf "get ASUSSPACELINK\x01\x01\xa8\xc0 /dev/null\nquit\n" | tftp 192.168.1.1
 echo Flashing 192.168.1.1 using "$1"...
-echo -en "binary\nput $1 ASUSSPACELINK\nquit\n" | tftp 192.168.1.1
+printf "binary\nput %s ASUSSPACELINK\nquit\n" "$1" | tftp 192.168.1.1
 echo Please wait until leds stops flashing. 
 elif [ "$2" = "linksys" ]; then
 echo Flashing 192.168.1.1 using "$1"...
-echo -en "rexmt 1\ntrace\nbinary\nput $1\nquit\n" | tftp 192.168.1.1
+printf "rexmt 1\ntrace\nbinary\nput %s\nquit\n" "$1" | tftp 192.168.1.1
 echo Please wait until power led stops flashing. Do not poweroff! Then you can login via telnet 192.168.1.1.
 elif [ "$2" = "toshiba" ]; then
 echo Flashing 192.168.10.1 using "$1"...
-echo -en "rexmt 1\ntrace\nbinary\nput $1\nquit\n" | tftp 192.168.10.1
+printf "rexmt 1\ntrace\nbinary\nput %s\nquit\n" "$1" | tftp 192.168.10.1
 echo Unit will automatically reboot within 5 minutes.  Do not power off.  Then you can login via telnet 192.168.10.1.
 fi
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
