Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A56141437
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 23:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rkW639zopZsmWoZPnWhX6GES/UNEkBBeZc2gB9nZ+90=; b=tCdOLyZLTWFcJU
	VTQxVHP716xSI+PKjGupc9BZiy4rNjc19nxHQsFBrLvZ7Nm+gacJqGwk0MtbS+Uuu4RcQsTC9L1h5
	8SBLCGquzmjGS9uF36pLhAGJyUIkhI5+HESkw2beb/Ro3A7EjtQGazhZuxIhdJqFWGfJEBufpouLw
	OcGPc0OfdUGfkcQKqpHft+DwAI1FXs1z6ZTDkdS932o4qWfz9A3c18VgCOmBP8QiT3UeCMvFUK8bA
	tWuoajGBPrHoK7QTVGqnhwxDvPQ3nlnJfhC129+iYDm9JQvFd0RI1xtyRvaoXGBcjqGJ4Nz5wHmq/
	uIZuW43XYLYwZIQY7ZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isaEL-0001U5-S8; Fri, 17 Jan 2020 22:36:41 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isaEC-0001TP-PA
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 22:36:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so10410045pll.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Jan 2020 14:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e1axjNtd7gFeL5q60rNGhJvmj3eJpK6vlyR6oEKvXO0=;
 b=Puz1IzUITxvvi3W4Sv79af+f/rxG0xVcM3ydSeZBEkY3UcOVP7ZCugU9ya4NhP+vj+
 3VVOYY2Wiz/x0ahIk1llhND9fmh2Fx+Jwhi4H0Uw9ujrQwkXxt/CtTmU6/He1DwqB7BJ
 pCbxnZJMR3SCbCaAa6E9Fvct3HMEknAcEnyxMI5y1qD5WtpNlH1ZRNXBzLA2GaMlB6oL
 Q01GLKeyn0oMxWmlCU8hK1Opm24LRnubnWt40EtO6W5GyjbxQYMx7XiJJ+o5jw7xhG5U
 xqYuvgPtLxirVU2DaWwm31NYIQT3ljwD+P9kU/JPQDP6BQch7TRn9c7LlMkRCEpDoMxk
 jVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e1axjNtd7gFeL5q60rNGhJvmj3eJpK6vlyR6oEKvXO0=;
 b=OWLrvdgzA0SdS22DiyZx/cSRtCHxuLNGyoZAvem6HWcfjI5bg2DGOqiK2+ldjmrY0g
 O+CHKibdYwhA99fjiXZtpKICognpFbYJTWZCoIjkEKJ2p0H3CGBOZe02cvj92jqCyeN0
 jtD5g/nVneSSFpLutOqK7IIq/A/XUUF8AXMFhnQhXUP+WO3qZar0Vz3Piog+3aUQc1aY
 NwUObKHx4jAkym5wIbmsz0FvBTrmpPGYLBm1eTj4msvDkKMYycTMZStfIaJk15hGRVgD
 yjlsQsSRdhxzQ7Mvb0Nv2cIZTA655zdmERm9c2CYB0MHMWV36iGq0hJtSjm9uyEc8VZ4
 BYGg==
X-Gm-Message-State: APjAAAUFM1hDa7ytdZJESr1inahtIGd3M0rL6kFXZnks6BZA/1JUNqRG
 JQ/ufy/L4N7QrFhjxmyeiGlXQRsZ
X-Google-Smtp-Source: APXvYqw/71DrkRVrMjjJOnzAfzOS/35Nc0clcqxRXb1VNoxS3Ooj59wiROmZtsu7RV67xcmb6N2hPQ==
X-Received: by 2002:a17:902:264:: with SMTP id
 91mr1536335plc.271.1579300591967; 
 Fri, 17 Jan 2020 14:36:31 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id o6sm29172400pgg.37.2020.01.17.14.36.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:36:31 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Jan 2020 14:36:29 -0800
Message-Id: <20200117223629.22902-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_143632_814453_702C1471 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2] base-files/functions.sh: use grep -q
 instead of []
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

It's cleaner and faster as it does not need to do extra work.

Also removed $() to avoid executing the output. The shell can handle it.

https://github.com/koalaman/shellcheck/wiki/SC2143

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Fixed &&/|| typo.
 package/base-files/files/lib/functions.sh | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index 8e189e4f4d..207fe96ce6 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -326,7 +326,7 @@ group_add_next() {
 	fi
 	gids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/group)
 	gid=65536
-	while [ -n "$(echo "$gids" | grep "^$gid$")" ] ; do
+	while echo "$gids" | grep -q "^$gid$"; do
 	        gid=$((gid + 1))
 	done
 	group_add $1 $gid
@@ -336,8 +336,8 @@ group_add_next() {
 group_add_user() {
 	local grp delim=","
 	grp=$(grep -s "^${1}:" ${IPKG_INSTROOT}/etc/group)
-	[ -z "$(echo $grp | cut -d: -f4 | grep $2)" ] || return
-	[ -n "$(echo $grp | grep ":$")" ] && delim=""
+	echo "$grp" | cut -d: -f4 | grep -q $2 || return
+	echo "$grp" | grep -q ":$" && delim=""
 	[ -n "$IPKG_INSTROOT" ] || lock /var/lock/passwd
 	sed -i "s/$grp/$grp$delim$2/g" ${IPKG_INSTROOT}/etc/group
 	[ -n "$IPKG_INSTROOT" ] || lock -u /var/lock/passwd
@@ -354,7 +354,7 @@ user_add() {
 	[ -z "$uid" ] && {
 		uids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/passwd)
 		uid=65536
-		while [ -n "$(echo "$uids" | grep "^$uid$")" ] ; do
+		while echo "$uids" | grep -q "^$uid$"; do
 		        uid=$((uid + 1))
 		done
 	}
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
