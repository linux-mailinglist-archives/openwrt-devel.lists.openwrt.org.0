Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E25130C18
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7fWmVjWW7awZ5DzIj57fvkiX3+JwwJH1/7jM/kP/pXQ=; b=ktzAoASNVYiFuo
	RmHelRRwftmZYEbXXEHp1evb84BMqgIsRpbQbjtdrSxlyfysrKpi6xkly+tcwQnGSQnk/apzxH1eX
	TtKMWNZQ6muadk4ncMjmK3znfS/EWq0bMkKYvK1t0A4uzL2WSg7DTmFceTjF5wJ5p7sr3Qj7mGnUt
	PW5YoNMvYN5fBttI1EZZzY2U3CPQ45466ODtIwVMrQoQzoaCOda7TkzGQWdciz1m+zYEoljy3EEPq
	axNb2QAfululnoV7pZUPUVgGkfvY4F7S5W1SrDa6uWiMOxe40dL0ZxBLRyrBPm9SLiAzGrbY07eyA
	4bUetTGs1raZVCsXmLIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioI7d-0008EN-J6; Mon, 06 Jan 2020 02:28:01 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioI6p-0007lU-4E
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:27:15 +0000
Received: by mail-pg1-x52d.google.com with SMTP id x7so26149205pgl.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vVYFxQkamBhtgTJJcDfi4vQyXguZDDDqHLyXtf3z08I=;
 b=cB7HxY6NAKrOcCfAT8zprC7JwuHUQR6ZOaOiP4ajHJhA0SUuu+tS7RiunsxbS6E/me
 N4/XsmbIll0Fs0KZaN0QFdc7wT5/pgho32PyNaQXi0UHBMwUKR5FIm+mO7vskmmHognf
 Z0IvpACOzvm6dxWBtJiP3DztS1xK+bpRrc8khOCNZXhdkqXSW7GEAXz0Oi7WN6bUWBBu
 cpa+gsqSQOwTcRJQ8/eLosibD1NaxtiIoDNpzJdKHf+r1e9BYR086hBSfWPKdcbE6cm0
 cFd4L3yZS3AS0dgTreY9XmdnPDYu/0EE5Iie8xUWhY/D7g0Hiwo5Mo7rEWncF4v4FMx6
 gt/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vVYFxQkamBhtgTJJcDfi4vQyXguZDDDqHLyXtf3z08I=;
 b=fGnKqcPFHDjkuzDFqgqGFseJs3MydGHNav4qb56O50gczowLGZfTb0MNJfoPI4gV5e
 DnaESmrO1HdV1h7w6CncmwM6tkPkmSbeMx/tumTotluMskOqH+aLnz7ZOIYG0tY1BsYp
 dofph/VvrEgMg5+A+y57rSKHCivqgrtKbrhZE/8jRNarokjSQigZHNKT3V/w8NzSEuRP
 wVqbTyAXPqvBjwjCv8Kn8LRcULb8elUHgM1rw3kPxvOT83gMtaajuW8XD7oQ8vM6n1LW
 2PgNEkshpL5FAnqqiUiYpw0cTd8aDnt/MWiHU28V6GH2H5ivzwTN+H7aQAEhC2CpFx2T
 H3aA==
X-Gm-Message-State: APjAAAX4V0I6GVU5oZQPQqHJM4dSzSJzf3tGjfMnN2vQ6ApO88jxGfI7
 CJANi1AwgedoOOHK879RZPProkvoE3E=
X-Google-Smtp-Source: APXvYqwtVCZXV2xZHZOaxzoIm6iS2XiOSpPmLULE9nDEC+Oy95LMArBmUR0bNj02TN14bhDxJ6TlGw==
X-Received: by 2002:a63:7d6:: with SMTP id 205mr111387790pgh.131.1578277630000; 
 Sun, 05 Jan 2020 18:27:10 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k21sm62361514pfa.63.2020.01.05.18.27.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:27:09 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:27:06 -0800
Message-Id: <20200106022708.170281-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_182712_864268_D3962DA0 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/3] scripts/flashing/flash.sh: Add missing
 quotes
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

These are in if statements (where they should be), and echo output that is
not piped to anything. These should be safe.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/flashing/flash.sh | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/flashing/flash.sh b/scripts/flashing/flash.sh
index 3499581ef4..7f2cdf5db9 100755
--- a/scripts/flashing/flash.sh
+++ b/scripts/flashing/flash.sh
@@ -20,8 +20,8 @@
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 #
 
-if [ -z "$1" ] || [ ! -f $1 ] || [ -z $2 ]; then
-    echo Usage: $0 firmware vendor
+if [ -z "$1" ] || [ ! -f "$1" ] || [ -z "$2" ]; then
+    echo Usage: "$0" firmware vendor
 cat << EOF
 IMPORTANT:
 Notes for Linksys / Asus WL500gx router: 
@@ -52,15 +52,15 @@ fi
 if [ "$2" = "asus" ]; then
 echo Confirming IP address setting...
 echo -en "get ASUSSPACELINK\x01\x01\xa8\xc0 /dev/null\nquit\n" | tftp 192.168.1.1
-echo Flashing 192.168.1.1 using $1...
+echo Flashing 192.168.1.1 using "$1"...
 echo -en "binary\nput $1 ASUSSPACELINK\nquit\n" | tftp 192.168.1.1
 echo Please wait until leds stops flashing. 
 elif [ "$2" = "linksys" ]; then
-echo Flashing 192.168.1.1 using $1...
+echo Flashing 192.168.1.1 using "$1"...
 echo -en "rexmt 1\ntrace\nbinary\nput $1\nquit\n" | tftp 192.168.1.1
 echo Please wait until power led stops flashing. Do not poweroff! Then you can login via telnet 192.168.1.1.
 elif [ "$2" = "toshiba" ]; then
-echo Flashing 192.168.10.1 using $1...
+echo Flashing 192.168.10.1 using "$1"...
 echo -en "rexmt 1\ntrace\nbinary\nput $1\nquit\n" | tftp 192.168.10.1
 echo Unit will automatically reboot within 5 minutes.  Do not power off.  Then you can login via telnet 192.168.10.1.
 fi
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
