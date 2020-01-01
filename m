Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8837F12DD4E
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A8yeozAxEXY150myt6rIyHSLcYfp1kVm/oJAYZfESGE=; b=FgSbykK48fUU4+XOIFYOd8EJBj
	j30MOjot/5BgGosAvoKO7emjPtL5JaD6kg7jykPupzIqN6YvVZpdE6fXY11JTzYle/Rlz9QA2nUBf
	9jFOAvMrdd0Bp6Ix6s9+XVS/BE0LthamNd0wQqHHP2VmT58+vQBi1o71vZRFWlXtdqh3J1SfRRank
	0xaEp9SnREomqkZNeGzayca+vjFkS6SeNbG+u6lmN+IdmSHNRyrgFs2RStRoISsKVjIx9o6eNIe6Q
	o3zTTB2pvYyC3dijUxGkMijQIe7N7AM2BrTmQFm9LDJyhJha7ECQfgP8WhYlY+Krv2KEUPTGP+tMF
	CwG1xrzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTL7-0002EI-LX; Wed, 01 Jan 2020 02:02:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTKd-0001lm-4g
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:01:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id w62so20328220pfw.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=SAXbZCkEv3GRp8tSjlgWaky5maj/O/XoeAd7DhVfDX0=;
 b=KNMc+JdbjjSmWtkBay1i6gOich3FuhWwwdK9YReM9V1OldNJ5q5orMOMKzVBgSaXru
 3JXet9SP1wNWBEKQ6C6pZtULfug8q1QsbWCRzGTsJZm3jOzWU3d2bvYCpHeKl3U+rRXk
 jiqvWLycB2LuTVsjmAykikewl8Zx8tBZh6HEk0cRLe6wPtlRot2TD3Azo6w7tMnYAq+3
 Yye41gyfbXs0yLPXGwplXC3I/EZ52+u1C4sP2U4OmDan7MliCfg5n4GbT5BsgbfoypCm
 mi4NpYvlk65iTY1uboMIGtNNgrYBTpOE/rLtQuqzseGAm9cCBVehCrEYBZlvlGtQb9+o
 2/rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SAXbZCkEv3GRp8tSjlgWaky5maj/O/XoeAd7DhVfDX0=;
 b=dhmlAMwbGvOfpUUAf+EgmrqQM0HP1ZlxOUZy2S5I9M9O/aFs7JkVxsV9exCPci3hes
 tFxNcSpco46Ike9H7oeMO+6mCuoFyjXUdtOxwyDUODmK4KDhIt17XOi7SKyar6wpNisk
 tIRHMtw55dNckpUhlHfM5d+xJqy6Tl4TL0+WVM6CTo/fVvkWZXRcF6gMNy2Ms9smxy2o
 lI1buR5q0FPVUZUuFGpZMQAriYkavTucskLiP30GUBuERj3UHuWhnPRZJmtWCvwwkMdc
 J5s2Kp+EH1xPG6iH4c4Pa3avz4J4W13EeY714gAVpPsWSHH3wH8uZNgTsl3j/6vdrq/O
 1Row==
X-Gm-Message-State: APjAAAXQ8SLvHsK4azAlM+7VtZ9vOtYYkp9a+ov6xiv2qUsb71oc3gVX
 o7XFiQfROlPmZgPobC6nt9A/mIK5EOI=
X-Google-Smtp-Source: APXvYqxd9vkV3zC/thSkrt9m3CqHiIkbMw9ZO/N8ruwC/zrZinTElaSsoAvUfxS63ZvZsOviTt3tpg==
X-Received: by 2002:a63:c748:: with SMTP id v8mr79614444pgg.451.1577844110872; 
 Tue, 31 Dec 2019 18:01:50 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z26sm52559730pgu.80.2019.12.31.18.01.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:01:50 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:01:43 -0800
Message-Id: <20200101020146.21043-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101020146.21043-1-rosenp@gmail.com>
References: <20200101020146.21043-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180155_185132_ACEDBF0C 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/5] scripts/env: replace -a and -o with
 &&/||
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

The former are not well defined.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/env b/scripts/env
index fd49e1c817..563f39c1cf 100755
--- a/scripts/env
+++ b/scripts/env
@@ -73,7 +73,7 @@ env_init() {
 }
 
 env_sync_data() {
-	[ \! -L "$BASEDIR/.config" -a -f "$BASEDIR/.config" ] && mv "$BASEDIR/.config" "$ENVDIR"
+	[ \! -L "$BASEDIR/.config" ] && [ -f "$BASEDIR/.config" ] && mv "$BASEDIR/.config" "$ENVDIR"
 	git add .
 	git add -u
 }
@@ -185,7 +185,7 @@ env_new() {
 	env_init 1
 	
 	branch="$(git branch | grep '^\* ' | awk '{print $2}')"
-	if [ -n "$branch" -a "$branch" != "master" ]; then
+	if [ -n "$branch" ] && [ "$branch" != "master" ]; then
 		env_ask_sync
 		if ask_bool 0 "Do you want to clone the current environment?"; then
 			from="$branch"
@@ -193,15 +193,15 @@ env_new() {
 		rm -f "$BASEDIR/.config" "$BASEDIR/files"
 	fi
 	git checkout -b "$1" "$from"
-	if [ -f "$BASEDIR/.config" -o -d "$BASEDIR/files" ]; then
+	if [ -f "$BASEDIR/.config" ] || [ -d "$BASEDIR/files" ]; then
 		if ask_bool 1 "Do you want to start your configuration repository with the current configuration?"; then
-			[ -d "$BASEDIR/files" -a \! -L "$BASEDIR/files" ] && {
+			if [ -d "$BASEDIR/files" ] && [ \! -L "$BASEDIR/files" ]; then
 				mkdir -p "$ENVDIR/files"
 				shopt -s dotglob
 				mv "$BASEDIR/files/"* "$ENVDIR/files/" 2>/dev/null
 				shopt -u dotglob
 				rmdir "$BASEDIR/files"
-			}
+			fi
 			env_sync
 		else
 			rm -rf "$BASEDIR/.config" "$BASEDIR/files"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
