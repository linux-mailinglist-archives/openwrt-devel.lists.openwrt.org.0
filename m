Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C42B130C1F
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IOvfxKiIv6E1tiQdtR/COZFnmB+zOIf8AykkWuAUUkM=; b=WIpypHAEyjbYAayoybfz4BqD7I
	4BiqaHpyvX+lSRAXr5BdhzGqs3VyOgNEsCuxYWX/gTq4IOxCqEXFsjjVaOWBbwjhpb0vMCj2VeFNO
	H8+hmsETHA2jfOgUogeQK8nDPHRm/NRZmxyAqSjB3xM+D1e+iDrU1eSKmudbzH65Je/o1aSzGjArh
	Hhc2NbN+xZui1ztWgZnXLPVZl1cJyYIXgflhdj4IZFJfklJFSd5uhO7b8h27uBBimPsWxn1pecrE2
	0M+k80w0s0RufmZDMtCD312ue31962tt85rIDTcay4UnMOif7jYt0q3ABka492iN3m0S0XitPtgmW
	6K3+aQjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioICN-0002Uz-2o; Mon, 06 Jan 2020 02:32:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioICA-0002TW-HV
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:32:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id 195so25388869pfw.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ONXscCcyyILlRJgDgap/ZJqpwI1I3Jbf16HVziVrxVM=;
 b=B+yNe51ofopQKNCj62GmpkS+KzDK+neVNsWVT5xniTULzJtSxRyA5HYhYgDHFPGftd
 lc/AhxmttaJo1Ng6yyL1sZfwIaW7GTnf5sfGTvDetVLz6DKCTge+6XJWZTz6OAj7U6Xb
 SAC2yEfqE4Ni1yHeVBJzgzJriuL1YowHJOnLUq+oHmyrPErcoFrBqQvKPe7piei6bcXc
 tMlhqUDyhLae3QU3M3R9Ei7qS6WEbAW6MI70+2OV1lhV7+wSjJiMvLa6r8xmPk/6wC8d
 fc/kdnMMXwO+NxGqHYA1w6GKSrmPOkTrYz8mGlsbLT38sCT5fH30EuD0biIoMoBIxQeg
 +puA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ONXscCcyyILlRJgDgap/ZJqpwI1I3Jbf16HVziVrxVM=;
 b=omeOJaQQPTO1Z65crZUS1J5xqQlltsn2BmZI+ypcbVK8Ggg4j0CpP5kjJUuOiHIVqL
 aybImCA2E/N9CXdtfDsEDvlg6/k5Wb2c8mrG3Jl6ah4eo6vt/wOW90ToIhtmIIlqOUBj
 J0Ux8G5aWuZX9uHp0af7xVsTFOh6NH7lZsnP3lXyoKSqEcBmUTnMztYoOORBOqYcdfev
 TarGaiextVOkRpZMV6YddyZMOnUNrD6/YZsipgm0aYan/NVLcDK8shxVy1PGJY7zwQKS
 jNFHCrpNMnDUCHEfb672M78nSuMXpurrpIOlKvZmh0ogVZoRS+sSm3ALRPzaRHioy9sL
 E28A==
X-Gm-Message-State: APjAAAV1bHjcrs8ZjZAYLjdkJV/CBJ2+0yyRwHTM/GBzdOLT09JYigXM
 XzoteTAAhyJkCzHuhl/2NYqs1898DnY=
X-Google-Smtp-Source: APXvYqz6q/kv2YoUlsyprhqaCjQHH5i/xKgVE8UrJ3ptg4to0Vp1dNS0bw5hAtmJYHgZwGgC9t9vmg==
X-Received: by 2002:a63:5512:: with SMTP id
 j18mr104439043pgb.189.1578277961705; 
 Sun, 05 Jan 2020 18:32:41 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j9sm62628168pff.6.2020.01.05.18.32.40
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:32:41 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:32:36 -0800
Message-Id: <20200106023238.170677-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106023238.170677-1-rosenp@gmail.com>
References: <20200106023238.170677-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183243_714776_C5DC1D1C 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 2/4] scripts/env: replace \! with !
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

The latter is more standard. The former throws an error under
shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/env b/scripts/env
index 563f39c1cf..19cfa13841 100755
--- a/scripts/env
+++ b/scripts/env
@@ -73,7 +73,7 @@ env_init() {
 }
 
 env_sync_data() {
-	[ \! -L "$BASEDIR/.config" ] && [ -f "$BASEDIR/.config" ] && mv "$BASEDIR/.config" "$ENVDIR"
+	[ ! -L "$BASEDIR/.config" ] && [ -f "$BASEDIR/.config" ] && mv "$BASEDIR/.config" "$ENVDIR"
 	git add .
 	git add -u
 }
@@ -195,7 +195,7 @@ env_new() {
 	git checkout -b "$1" "$from"
 	if [ -f "$BASEDIR/.config" ] || [ -d "$BASEDIR/files" ]; then
 		if ask_bool 1 "Do you want to start your configuration repository with the current configuration?"; then
-			if [ -d "$BASEDIR/files" ] && [ \! -L "$BASEDIR/files" ]; then
+			if [ -d "$BASEDIR/files" ] && [ ! -L "$BASEDIR/files" ]; then
 				mkdir -p "$ENVDIR/files"
 				shopt -s dotglob
 				mv "$BASEDIR/files/"* "$ENVDIR/files/" 2>/dev/null
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
