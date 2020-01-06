Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F3C130C16
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kLIujBSCF1MtuAJ3xZOZwwOGOrOrezWBORtJ+EVVTQA=; b=ZqgEKlHhweC0OstpZVC0V44yIg
	nHoMCIAeOTb14iQCtCDA4++/+FnIkCoZ3atsfX1CzT82ys21UD0vU5Q8NUTnuUox6/HFby20OwnZy
	cESeCI4VvxkBcFvdQ7uctp/w/dYPzLmPxmGA5mtjqhujHeAre6w+DcoOAonUtp5N7cjY27AIR5ySO
	kdPzaXBm7I8jTj3zEc4eiijhX+veKL7VgEt7phfo8WVDaIVX0j9vRA3jZoKLWVy2wR1UClfyV5zVj
	rQKUGKZoqSQ45W9c5kYWiH4Xrz94bSqZHEiUvH2DU4kwUUWAaZOB5RIskqJb+O1WLOg2dT4HcpjK3
	Mgl8XLSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioI7O-0007xu-1T; Mon, 06 Jan 2020 02:27:46 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioI6p-0007lV-UH
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:27:15 +0000
Received: by mail-pf1-x42b.google.com with SMTP id q8so26244968pfh.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=aGUZyBVRuR5a6y/wXINUPQe5PbQiqNC0ySgSwclDois=;
 b=mBNK8rFJY8u2F0VKtXyGi9LIkXsqjdChSM/m0v+uWbvrDAI5wMx7qyG1jmJlH7D/xy
 ZTMKtg/OMKmrH6o8daWRk9R6UvwBC2CAkWImbbuAwB253eX0nAazfunQm5VXMY4uEjxU
 9u0IHF0jKvXB9TIWKnb8j3XDSchOK6TsIw864dNeBqpmVbyHhPqdhtjmxt9k2IM2XhkO
 BNcUqZUzXQe37FnFDzrBNMUr/dDZCLZeZNAnDtSKWx8vVzPoH65xUHHVk/1jxrL1yiJr
 EI+0V2mAY5yYd1s6h2mi3I9hcmzeGMel1v5qEsxLhuuIWyReHrmfdytGcvJBmekeSi5K
 DLPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aGUZyBVRuR5a6y/wXINUPQe5PbQiqNC0ySgSwclDois=;
 b=dVZzCf6n4mectsU23tBWdMd1VnWG+ofqw1zcGWP9/itRtflfSzVarhQO1QrkXFjlxS
 KERjFOaeI4r2wfhmsoF8voOItn1LCdkPSLAnlaE/LJfOVBnDXZvnpRSfkXfT+Dqp/86y
 03/vntiqXzM34x1tkpo2OGJaj8o6qUluqSJ0IjgOyADHQqDhehgIVidyUAAGrqIfy30c
 cGgiyVyHfbJqUrGzO5j/T79Cg/ZAL3QS2XwcQxFtHnoxyqNtpNTZ5PIYAmiNTvAcilXZ
 2sfjbBEcwKgVbePxHLkbqK+3Vog0NmCC2+x8cY7aiMvMXbqG8+WBNg1H/ChbERv21e8I
 DYGw==
X-Gm-Message-State: APjAAAXloje6VUgbFMgB0i4uCEifZ30WtKHFdf1/bmfCTTfDyFTGuInL
 sQnzSepYwm9Db9ObwhB91nedx8uz7NQ=
X-Google-Smtp-Source: APXvYqxsLgK0ESMhOE/Kbi6ZWpgdExA+HahhgigZ9dnwnn8+8II6eB4T8TmLiCQ1e76gfRIHwhSN5w==
X-Received: by 2002:a63:4287:: with SMTP id
 p129mr107189308pga.122.1578277630832; 
 Sun, 05 Jan 2020 18:27:10 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k21sm62361514pfa.63.2020.01.05.18.27.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:27:10 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:27:07 -0800
Message-Id: <20200106022708.170281-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106022708.170281-1-rosenp@gmail.com>
References: <20200106022708.170281-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_182712_871122_D6452C31 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3] scripts/flashing/flash.sh: switch from
 echo -en to printf
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
