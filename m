Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BDF121D8
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 20:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5JovB4UWQ8Cdm2lbWEQwTEbT9/X4qu5FuKr6KvA4ksY=; b=HZaFnZlohCY5aF
	g3brEWOiXfk3hg3CfQPKiAZeR2BTfJhC5NOSMhRicDsReREXVf3hG69CDqOP9jzFYOt7mzuVQ66EH
	UJsqfsbO32OGURQ9bUmQCnwlwEgIc26OmAA+F22zUwWo3uH2Sa3qrKOPlhzhQ3T5BI09U+YWKEMy1
	L4Xkcq7mQiIVJsbQvzvkEDYohHpNKmMoJ4NRxM1dl/sGyuATNuwlz84Fgyl6M04MvCRcqK33bvySq
	otRMGSn4MACR0BXmGGyymOn3sd6x1+evTGcKKtr4YlNXDEkiiusQIVbOjSw52Lye/nwuyEQxFdtjJ
	S46ssaoGswqKZLU0qYoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGNy-0004D9-DI; Thu, 02 May 2019 18:24:46 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGNr-0004Ch-DA
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 18:24:40 +0000
Received: by mail-pf1-x42f.google.com with SMTP id j11so1510870pff.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 11:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=enTAHtNneXEmGrgOgPK7VISZEl8UF6Q41bOj7THlkH4=;
 b=MMuOuVJ+4zpnJ+FoXgkdvnP7gkNE5yHfEM2yFxYYHRoYvkZOgrKLaZSukekthkvy0C
 2gxQU3y4VK7/NFfEX4PByVKNt5ulhe8EYHuF5P70wloRiv4r9B04IsfZpsyRmCnJ7ArM
 2wV7H9zq+ifezJETekAaPSUD1PoDGqEH9fL8zkVnXuUku2N2a2CEhr72wdRtnrP3fcGb
 DMzzbEOET+4ENfDofawtdDWyk/zyINSW0AlpCBoSq7Y10sWiB6AN27Q7vK5PZfv3jzeE
 jVL1IF6M9j8pp2p1YJHXCceRRLHh9wE8L9pyVwe8HgzSY00KmGFAxpKOpUyGSfxH1oCY
 KCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=enTAHtNneXEmGrgOgPK7VISZEl8UF6Q41bOj7THlkH4=;
 b=DBrJJKGUmBAcVjW8tv6s5TmDaRz3Fninvh1gYfohsHOOvuCFcmULayyCGpsO52O9yB
 uOy6SUhuQHTOGSu1T14axczxrQe7jQkmJTK/ogryiQlbUvQxXepbQg1fTRs2KxqgKj0N
 nvw5QxN+QRpXBfBbWjgMYXNvDUX+CKQlWB66QY3qzOa3FeXmhtfB8tU04Tj/kToWdB8K
 EEAchZAMKCPqAgAgkJp02RmbvnEeYXrobNauPVNLQSl1skc6Y8PVyGCgKCh5acRRXNkh
 FkbWzm7wnrucXCqUiEfD8LJf4Ao7qY3Hz+fmZZ3JEmcXJR8P+o+X0fbQB6njqJNX7g1O
 MlXQ==
X-Gm-Message-State: APjAAAXgl7KMKnaBXu62YMIY/92fY/+9QAWCoYamKsCZY2FJaPEjC7HF
 Tf4gc6UD+1jqD9UkSt0iRNMqQi7t
X-Google-Smtp-Source: APXvYqzgpeFNom4wONdUCpQGQW8t7BaeNv1sBXlJekUDZ9o4PnvXki5qjS8l9EF7VIiCNowU2UUx8g==
X-Received: by 2002:a62:560f:: with SMTP id k15mr5783705pfb.15.1556821476981; 
 Thu, 02 May 2019 11:24:36 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id i10sm101027778pfj.7.2019.05.02.11.24.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 11:24:36 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 02:24:27 +0800
Message-Id: <20190502182427.6400-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_112439_471308_CA40FEAA 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] base-files: Add /etc/shinit for non-login
 shell init
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Because /etc/profile (and ~/.profile) are read by login shells only,
aliases and functions defined there are not available to non-login
shells, e.g. when using screen or tmux.

If the ENV environment variable exists (exported by /etc/profile or
~/.profile) and references an existing file, then all interactive shells
(login or non-login) will read that file as well.

This sets the ENV environment variable in /etc/profile, pointing to
/etc/shinit.

This also adds /etc/shinit, which:

* Contains alias and function definitions originally in /etc/profile

* Sources /etc/mkshrc if the user is using mksh (also originally in
  /etc/profile), as /etc/mkshrc is meant for all interactive shells

* Sources ~/.mkshrc if the user is using mksh, to compensate for the
  fact that mksh will not read ~/.mkshrc if ENV is set

* Sources ~/.shinit if the user is not using mksh

This also removes the shebang from /etc/profile, as the file is sourced,
not executed.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 package/base-files/Makefile                   |  1 +
 package/base-files/files/etc/profile          | 21 +------------------
 package/base-files/files/etc/shinit           | 21 +++++++++++++++++++
 .../lib/upgrade/keep.d/base-files-essential   |  1 +
 4 files changed, 24 insertions(+), 20 deletions(-)
 create mode 100644 package/base-files/files/etc/shinit

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index 609ffa2c38..f31f304af6 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -63,6 +63,7 @@ define Package/base-files/conffiles
 /etc/services
 /etc/shadow
 /etc/shells
+/etc/shinit
 /etc/sysctl.conf
 /etc/sysupgrade.conf
 $(call $(TARGET)/conffiles)
diff --git a/package/base-files/files/etc/profile b/package/base-files/files/etc/profile
index 9a3ac069a2..0beff1608f 100644
--- a/package/base-files/files/etc/profile
+++ b/package/base-files/files/etc/profile
@@ -1,4 +1,3 @@
-#!/bin/sh
 [ -e /tmp/.failsafe ] && export FAILSAFE=1
 
 [ -f /etc/banner ] && cat /etc/banner
@@ -13,6 +12,7 @@ export PATH="%PATH%"
 export HOME=$(grep -e "^${USER:-root}:" /etc/passwd | cut -d ":" -f 6)
 export HOME=${HOME:-/root}
 export PS1='\u@\h:\w\$ '
+export ENV=/etc/shinit
 
 case "$TERM" in
 	xterm*|rxvt*)
@@ -20,16 +20,6 @@ case "$TERM" in
 		;;
 esac
 
-[ -x /bin/more ] || alias more=less
-[ -x /usr/bin/vim ] && alias vi=vim || alias vim=vi
-
-alias ll='ls -alF --color=auto'
-
-[ -z "$KSH_VERSION" -o \! -s /etc/mkshrc ] || . /etc/mkshrc
-
-[ -x /usr/bin/arp -o -x /sbin/arp ] || arp() { cat /proc/net/arp; }
-[ -x /usr/bin/ldd ] || ldd() { LD_TRACE_LOADED_OBJECTS=1 $*; }
-
 [ -n "$FAILSAFE" ] || {
 	for FILE in /etc/profile.d/*.sh; do
 		[ -e "$FILE" ] && . "$FILE"
@@ -48,12 +38,3 @@ in order to prevent unauthorized SSH logins.
 --------------------------------------------------
 EOF
 fi
-
-service() {
-	[ -f "/etc/init.d/$1" ] || {
-		echo "service "'"'"$1"'"'" not found, the following services are available:"
-		ls "/etc/init.d"
-		return 1
-	}
-	/etc/init.d/$@
-}
diff --git a/package/base-files/files/etc/shinit b/package/base-files/files/etc/shinit
new file mode 100644
index 0000000000..6b715c1ef9
--- /dev/null
+++ b/package/base-files/files/etc/shinit
@@ -0,0 +1,21 @@
+[ -x /bin/more ] || alias more=less
+[ -x /usr/bin/vim ] && alias vi=vim || alias vim=vi
+
+alias ll='ls -alF --color=auto'
+
+[ -z "$KSH_VERSION" -o \! -s /etc/mkshrc ] || . /etc/mkshrc
+
+[ -x /usr/bin/arp -o -x /sbin/arp ] || arp() { cat /proc/net/arp; }
+[ -x /usr/bin/ldd ] || ldd() { LD_TRACE_LOADED_OBJECTS=1 $*; }
+
+service() {
+	[ -f "/etc/init.d/$1" ] || {
+		echo "service "'"'"$1"'"'" not found, the following services are available:"
+		ls "/etc/init.d"
+		return 1
+	}
+	/etc/init.d/$@
+}
+
+[ -n "$KSH_VERSION" -o \! -s "$HOME/.shinit" ] || . "$HOME/.shinit"
+[ -z "$KSH_VERSION" -o \! -s "$HOME/.mkshrc" ] || . "$HOME/.mkshrc"
diff --git a/package/base-files/files/lib/upgrade/keep.d/base-files-essential b/package/base-files/files/lib/upgrade/keep.d/base-files-essential
index 978d4b58bc..7a7a253466 100644
--- a/package/base-files/files/lib/upgrade/keep.d/base-files-essential
+++ b/package/base-files/files/lib/upgrade/keep.d/base-files-essential
@@ -6,5 +6,6 @@
 /etc/profile
 /etc/shadow
 /etc/shells
+/etc/shinit
 /etc/sysctl.conf
 /etc/rc.local
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
